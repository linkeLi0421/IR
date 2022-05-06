; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.ieee80211_txrx_stypes = type { i16, i16 }
%struct.wiphy_vendor_command = type { %struct.nl80211_vendor_cmd_info, i32, ptr, ptr, ptr, i32 }
%struct.nl80211_vendor_cmd_info = type { i32, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_reg_rule = type { %struct.ieee80211_freq_range, %struct.ieee80211_power_rule, %struct.ieee80211_wmm_rule, i32, i32, i8 }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.ieee80211_power_rule = type { i32, i32 }
%struct.ieee80211_wmm_rule = type { [4 x %struct.ieee80211_wmm_ac], [4 x %struct.ieee80211_wmm_ac] }
%struct.ieee80211_wmm_ac = type { i16, i16, i16, i8 }
%struct.brcmu_chan = type { i16, i8, i8, i8, i32, i32 }
%struct.brcmu_d11inf = type { i8, ptr, ptr }
%struct.brcmf_if = type { ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, ptr, i32, i32, [6 x i8], i8, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, [8 x %struct.in6_addr], i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.in6_addr = type { %union.anon.40 }
%union.anon.40 = type { [4 x i32] }
%struct.brcmf_cfg80211_vif = type { ptr, %struct.wireless_dev, %struct.brcmf_cfg80211_profile, i32, %struct.vif_saved_ie, %struct.list_head, i16, i8, i32, i32, i32, i32 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.brcmf_cfg80211_profile = type { [6 x i8], %struct.brcmf_cfg80211_security, [6 x %struct.brcmf_wsec_key], i32, i16, i8 }
%struct.brcmf_cfg80211_security = type { i32, i32, i32, i32 }
%struct.brcmf_wsec_key = type { i32, i32, [32 x i8], [18 x i32], i32, i32, [3 x i32], i32, i32, %struct.anon.122, [2 x i32], [6 x i8] }
%struct.anon.122 = type { i32, i16 }
%struct.vif_saved_ie = type { [512 x i8], [512 x i8], [512 x i8], [512 x i8], [512 x i8], i32, i32, i32, i32, i32 }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.118, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
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
%struct.possible_net_t = type {}
%struct.anon.118 = type { i64, i64, i8 }
%struct.brcmf_scan_params_le = type { %struct.brcmf_ssid_le, [6 x i8], i8, i8, i32, i32, i32, i32, i32, [1 x i16] }
%struct.brcmf_ssid_le = type { i32, [32 x i8] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.brcmf_cfg80211_info = type { ptr, ptr, %struct.brcmf_p2p_info, ptr, ptr, %struct.mutex, ptr, %struct.brcmf_cfg80211_connect_info, %struct.brcmf_pmk_list_le, i32, ptr, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, %struct.escan_info, %struct.timer_list, %struct.work_struct, %struct.list_head, %struct.brcmf_cfg80211_vif_event, %struct.completion, %struct.brcmu_d11inf, %struct.brcmf_assoclist_le, %struct.brcmf_cfg80211_wowl, ptr, [8 x i8] }
%struct.brcmf_p2p_info = type { ptr, i32, [6 x i8], [6 x i8], [6 x i8], [4 x %struct.p2p_bss], %struct.timer_list, i8, %struct.ieee80211_channel, i32, i8, %struct.completion, %struct.afx_hdl, i32, i32, %struct.completion, i8, i8, i8, i8 }
%struct.p2p_bss = type { ptr, ptr }
%struct.afx_hdl = type { %struct.work_struct, %struct.completion, i8, i32, i8, i16, i16, [6 x i8] }
%struct.brcmf_cfg80211_connect_info = type { ptr, i32, ptr, i32 }
%struct.brcmf_pmk_list_le = type { i32, [16 x %struct.brcmf_pmksa] }
%struct.brcmf_pmksa = type { [6 x i8], [16 x i8] }
%struct.escan_info = type { i32, ptr, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.brcmf_cfg80211_vif_event = type { %struct.wait_queue_head, %struct.spinlock, i8, ptr }
%struct.brcmf_assoclist_le = type { i32, [128 x [6 x i8]] }
%struct.brcmf_cfg80211_wowl = type { i8, i32, ptr, ptr, %struct.wait_queue_head, i8, i8 }
%struct.parsed_vndr_ies = type { i32, [5 x %struct.parsed_vndr_ie_info] }
%struct.parsed_vndr_ie_info = type { ptr, i32, %struct.brcmf_vs_tlv }
%struct.brcmf_vs_tlv = type { i8, i8, [3 x i8], i8 }
%struct.brcmf_tlv = type { i8, i8, [1 x i8] }
%struct.brcmf_mp_device = type { i8, i32, i32, i8, i8, i8, ptr, ptr, %union.anon.123 }
%union.anon.123 = type { %struct.brcmfmac_sdio_pd }
%struct.brcmfmac_sdio_pd = type { i32, i32, i8, i32, i32, i8, i16, i16, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.96, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.115, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.96 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%union.anon.115 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.brcmf_fil_country_le = type { [4 x i8], i32, [4 x i8] }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }
%struct.brcmfmac_pd_cc = type { i32, [0 x %struct.brcmfmac_pd_cc_entry] }
%struct.brcmfmac_pd_cc_entry = type { [4 x i8], [4 x i8], i32 }
%struct.brcmf_gtk_keyinfo_le = type { [16 x i8], [16 x i8], [8 x i8] }
%struct.cfg80211_gtk_rekey_data = type { ptr, ptr, ptr, i32, i8, i8 }
%struct.brcmf_chanspec_list = type { i32, [1 x i32] }
%struct.brcmf_fil_bwcap_le = type { i32, i32 }
%struct.brcmf_event_msg = type { i16, i16, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, i8 }
%struct.brcmf_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_mkeep_alive_pkt_le = type <{ i16, i16, i32, i16, i8, [0 x i8] }>
%struct.brcmf_wowl_wakeind_le = type { i32, i32 }
%struct.brcmf_bus = type { %union.anon, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.brcmf_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cfg80211_wowlan = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr }
%struct.cfg80211_pkt_pattern = type { ptr, ptr, i32, i32 }
%struct.brcmf_fil_wowl_pattern_le = type { [4 x i8], i32, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_sched_scan_request = type { i64, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, %struct.cfg80211_bss_select_adjust, ptr, ptr, i32, i8, %struct.callback_head, i32, i8, %struct.list_head, [0 x ptr] }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.cfg80211_wowlan_wakeup = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr }
%struct.brcmf_mbss_ssid_le = type { i32, i32, [32 x i8] }
%struct.iface_combination_params = type { i32, i8, [13 x i32], i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.brcmf_wsec_pmk_le = type { i16, i16, [65 x i8] }
%struct.brcmf_join_params = type { %struct.brcmf_ssid_le, %struct.brcmf_assoc_params_le }
%struct.brcmf_assoc_params_le = type { [6 x i8], i32, [1 x i16] }
%struct.brcmf_fil_bss_enable_le = type { i32, i32 }
%struct.cfg80211_ap_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, i32, i32, ptr, i32, i32, %struct.cfg80211_crypto_settings, i8, i32, i32, i32, i8, i8, ptr, i8, %struct.cfg80211_bitrate_mask, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.cfg80211_fils_discovery, %struct.cfg80211_unsol_bcast_probe_resp, %struct.cfg80211_mbssid_config }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.120] }
%struct.anon.120 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.cfg80211_fils_discovery = type { i32, i32, i32, ptr }
%struct.cfg80211_unsol_bcast_probe_resp = type { i32, i32, ptr }
%struct.cfg80211_mbssid_config = type { ptr, i8, i8 }
%struct.brcmf_wsec_sae_pwd_le = type { i16, [128 x i8] }
%struct.brcmf_scb_val_le = type { i32, [6 x i8] }
%struct.station_del_parameters = type { ptr, i8, i16 }
%struct.station_parameters = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, ptr, ptr, i8, i8, i32, i16, ptr, i8, ptr, i8, ptr, i8, i8, i8, i32, ptr, i8, i16, %struct.sta_txpwr, ptr }
%struct.sta_txpwr = type { i16, i32 }
%struct.brcmf_pktcnt_le = type { i32, i32, i32, i32, i32 }
%struct.brcmf_sta_info_le = type { i16, i16, i16, i32, i32, [6 x i8], i32, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, [4 x i8], [4 x i8], i16, i16, i16, i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, %union.anon.131 }
%union.anon.131 = type { %struct.anon.134 }
%struct.anon.134 = type { i32, i16, i16, %struct.anon.135, i16, i8, i8, i32, i32, i32 }
%struct.anon.135 = type { i16, i16, i32, [16 x i8], [16 x i8], [8 x i16], [8 x i16] }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.anon.136 = type { i32, %struct.brcmf_bss_info_le }
%struct.brcmf_bss_info_le = type { i32, i32, [6 x i8], i16, i16, i8, [32 x i8], %struct.anon.129, i16, i16, i8, i16, i8, i8, i32, i8, [1 x i32], i8, [3 x i8], [16 x i8], i16, i32, i16 }
%struct.anon.129 = type { i32, [16 x i8] }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.cfg80211_bss_selection = type { i32, %union.anon.121 }
%union.anon.121 = type { %struct.cfg80211_bss_select_adjust }
%struct.brcmf_ext_join_params_le = type { %struct.brcmf_ssid_le, %struct.brcmf_join_scan_params_le, %struct.brcmf_assoc_params_le }
%struct.brcmf_join_scan_params_le = type { i8, i32, i32, i32, i32 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.brcmf_cfg80211_conf = type { i32, i32, i32, i32 }
%struct.cfg80211_pmksa = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i8 }
%struct.cfg80211_mgmt_tx_params = type { ptr, i8, i32, ptr, i32, i8, i8, i32, ptr }
%struct.brcmf_fil_af_params_le = type { i32, i32, [6 x i8], [2 x i8], %struct.brcmf_fil_action_frame_le }
%struct.brcmf_fil_action_frame_le = type { [6 x i8], i16, i32, [1800 x i8] }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.137 }
%union.anon.137 = type { %struct.anon.143, [16 x i8] }
%struct.anon.143 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.brcmf_rssi_event_le = type { i32, i8, [8 x i8] }
%struct.mgmt_frame_regs = type { i32, i32, i32, i32 }
%struct.brcmf_tdls_iovar_le = type { [6 x i8], i8, i16, i32 }
%struct.cfg80211_pmk_conf = type { ptr, i8, ptr, ptr }
%struct.brcmf_pno_scanresults_le = type { i32, i32, i32 }
%struct.brcmf_pno_scanresults_v2_le = type { i32, i32, i32, i32 }
%struct.brcmf_pno_net_info_le = type { [6 x i8], i8, i8, [32 x i8], i16, i16 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.cfg80211_wowlan_nd_match = type { %struct.cfg80211_ssid, i32, [0 x i32] }
%struct.cfg80211_wowlan_nd_info = type { i32, [0 x ptr] }
%struct.brcmf_escan_params_le = type { i32, i16, i16, %struct.brcmf_scan_params_le }
%struct.brcmf_scan_results = type { i32, i32, i32, [0 x %struct.brcmf_bss_info_le] }
%struct.brcmf_wsec_key_le = type { i32, i32, [32 x i8], [18 x i32], i32, i32, [3 x i32], i32, i32, %struct.anon.130, [2 x i32], [6 x i8] }
%struct.anon.130 = type { i32, i16 }
%struct.brcmf_join_pref_params = type { i8, i8, i8, i8 }
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }
%struct.cfg80211_roam_info = type { ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params }
%struct.brcmf_if_event = type { i8, i8, i8, i8, i8 }
%struct.brcmf_cfg80211_edcf_acparam = type { i8, i8, i16 }
%struct.brcmf_cfg80211_assoc_ielen_le = type { i32, i32 }
%struct.brcmf_escan_result_le = type { i32, i32, i16, i16, %struct.brcmf_bss_info_le }

@.str = private unnamed_addr constant [4 x i8] c"mpc\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: fail to set mpc\0A\00", align 1
@__func__.brcmf_set_mpc = private unnamed_addr constant [14 x i8] c"brcmf_set_mpc\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: Scan abort failed\0A\00", align 1
@__func__.brcmf_notify_escan_complete = private unnamed_addr constant [28 x i8] c"brcmf_notify_escan_complete\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"pmkid_info\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%s: not suitable type\0A\00", align 1
@__func__.brcmf_vif_set_mgmt_ie = private unnamed_addr constant [22 x i8] c"brcmf_vif_set_mgmt_ie\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: extra IE size too big\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"%s: no space in mgmt_ie_buf: len left %d\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"vndr_ie\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"%s: vndr ie set error : %d\0A\00", align 1
@brcmf_cfg80211_ops = internal global %struct.cfg80211_ops { ptr @brcmf_cfg80211_suspend, ptr @brcmf_cfg80211_resume, ptr null, ptr @brcmf_cfg80211_add_iface, ptr @brcmf_cfg80211_del_iface, ptr @brcmf_cfg80211_change_iface, ptr @brcmf_cfg80211_add_key, ptr @brcmf_cfg80211_get_key, ptr @brcmf_cfg80211_del_key, ptr @brcmf_cfg80211_config_default_key, ptr @brcmf_cfg80211_config_default_mgmt_key, ptr null, ptr @brcmf_cfg80211_start_ap, ptr @brcmf_cfg80211_change_beacon, ptr @brcmf_cfg80211_stop_ap, ptr null, ptr @brcmf_cfg80211_del_station, ptr @brcmf_cfg80211_change_station, ptr @brcmf_cfg80211_get_station, ptr @brcmf_cfg80211_dump_station, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmf_cfg80211_scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmf_cfg80211_connect, ptr @brcmf_cfg80211_update_conn_params, ptr @brcmf_cfg80211_disconnect, ptr @brcmf_cfg80211_join_ibss, ptr @brcmf_cfg80211_leave_ibss, ptr null, ptr @brcmf_cfg80211_set_wiphy_params, ptr @brcmf_cfg80211_set_tx_power, ptr @brcmf_cfg80211_get_tx_power, ptr null, ptr null, ptr null, ptr @brcmf_cfg80211_set_pmksa, ptr @brcmf_cfg80211_del_pmksa, ptr @brcmf_cfg80211_flush_pmksa, ptr @brcmf_p2p_remain_on_channel, ptr @brcmf_cfg80211_cancel_remain_on_channel, ptr @brcmf_cfg80211_mgmt_tx, ptr null, ptr @brcmf_cfg80211_set_power_mgmt, ptr null, ptr @brcmf_cfg80211_set_cqm_rssi_range_config, ptr null, ptr @brcmf_cfg80211_update_mgmt_frame_registrations, ptr null, ptr null, ptr @brcmf_cfg80211_sched_scan_start, ptr @brcmf_cfg80211_sched_scan_stop, ptr null, ptr null, ptr @brcmf_cfg80211_tdls_oper, ptr null, ptr null, ptr @brcmf_cfg80211_get_channel, ptr @brcmf_p2p_start_device, ptr @brcmf_p2p_stop_device, ptr null, ptr null, ptr null, ptr null, ptr @brcmf_cfg80211_crit_proto_start, ptr @brcmf_cfg80211_crit_proto_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmf_cfg80211_set_pmk, ptr @brcmf_cfg80211_del_pmk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"%s: ndev is invalid\0A\00", align 1
@__func__.brcmf_cfg80211_attach = private unnamed_addr constant [22 x i8] c"brcmf_cfg80211_attach\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"%s: Could not allocate wiphy device\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"%s: Failed to init iwm_priv (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"%s: Failed to get D11 version (%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"%s: Could not register wiphy device (%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"%s: Setting wiphy bands failed (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"obss_coex\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"%s: FWEH activation failed (%d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"%s: P2P initialisation failed (%d)\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"%s: BT-coex initialisation failed (%d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"%s: PNO initialisation failed (%d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"tdls_enable\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.brcmf_parse_vndr_ies = private unnamed_addr constant [21 x i8] c"brcmf_parse_vndr_ies\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"invalid vndr ie. length is too small %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"\00P\F2\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"%s: WLC_DISASSOC failed (%d)\0A\00", align 1
@__func__.brcmf_link_down = private unnamed_addr constant [16 x i8] c"brcmf_link_down\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"%s: failed to change PSK in firmware (len=%u)\0A\00", align 1
@__func__.brcmf_set_pmk = private unnamed_addr constant [14 x i8] c"brcmf_set_pmk\00", align 1
@.str.28 = private unnamed_addr constant [60 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"wowl_wakeind\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"wowl\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"wowl_activate\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"wowl_pattern\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"%s: Invalid result count, expected 1 (%d)\0A\00", align 1
@__func__.brcmf_wowl_nd_results = private unnamed_addr constant [22 x i8] c"brcmf_wowl_nd_results\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"mkeep_alive\00", align 1
@__func__.brcmf_keepalive_start = private unnamed_addr constant [22 x i8] c"brcmf_keepalive_start\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"keep-alive packet config failed, ret=%d\0A\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"wowl_clear\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"%s: Get wowl_wakeind failed, err = %d\0A\00", align 1
@__func__.brcmf_report_wowl_wakeind = private unnamed_addr constant [26 x i8] c"brcmf_report_wowl_wakeind\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"%s: No result for wowl net detect\0A\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"%s: FALSE PNO Event. (pfn_count == 0)\0A\00", align 1
@__func__.brcmf_notify_sched_scan_results = private unnamed_addr constant [32 x i8] c"brcmf_notify_sched_scan_results\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"%s: insufficient event data\0A\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"escan\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"%s: error (%d)\0A\00", align 1
@__func__.brcmf_run_escan = private unnamed_addr constant [16 x i8] c"brcmf_run_escan\00", align 1
@.str.45 = private unnamed_addr constant [37 x i8] c"%s: iface validation failed: err=%d\0A\00", align 1
@__func__.brcmf_cfg80211_add_iface = private unnamed_addr constant [25 x i8] c"brcmf_cfg80211_add_iface\00", align 1
@.str.46 = private unnamed_addr constant [41 x i8] c"%s: add iface %s type %d failed: err=%d\0A\00", align 1
@__func__.brcmf_mon_add_vif = private unnamed_addr constant [18 x i8] c"brcmf_mon_add_vif\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"Failed to attach %s device\0A\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"%s: timeout occurred\0A\00", align 1
@__func__.brcmf_ap_add_vif = private unnamed_addr constant [17 x i8] c"brcmf_ap_add_vif\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"%s: no if pointer provided\0A\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"%s: Registering netdevice failed\0A\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"ssid%d\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"bsscfg:ssid\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"%s: setting ssid failed %d\0A\00", align 1
@__func__.brcmf_cfg80211_request_ap_if = private unnamed_addr constant [29 x i8] c"brcmf_cfg80211_request_ap_if\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"interface_remove\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"%s: interface_remove failed %d\0A\00", align 1
@__func__.brcmf_cfg80211_del_ap_iface = private unnamed_addr constant [28 x i8] c"brcmf_cfg80211_del_ap_iface\00", align 1
@__func__.brcmf_cfg80211_change_iface = private unnamed_addr constant [28 x i8] c"brcmf_cfg80211_change_iface\00", align 1
@.str.56 = private unnamed_addr constant [55 x i8] c"%s: type (%d) : currently we do not support this type\0A\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"%s: WLC_SET_INFRA error (%d)\0A\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"%s: invalid key index (%d)\0A\00", align 1
@__func__.brcmf_cfg80211_add_key = private unnamed_addr constant [23 x i8] c"brcmf_cfg80211_add_key\00", align 1
@.str.59 = private unnamed_addr constant [30 x i8] c"%s: Too long key length (%u)\0A\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"%s: Invalid cipher (0x%x)\0A\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"wsec\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"%s: get wsec error (%d)\0A\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"%s: set wsec error (%d)\0A\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"wsec_key\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"%s: wsec_key error (%d)\0A\00", align 1
@__func__.send_key_to_dongle = private unnamed_addr constant [19 x i8] c"send_key_to_dongle\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"%s: WLC_GET_WSEC error (%d)\0A\00", align 1
@__func__.brcmf_cfg80211_get_key = private unnamed_addr constant [23 x i8] c"brcmf_cfg80211_get_key\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"%s: Invalid algo (0x%x)\0A\00", align 1
@__func__.brcmf_cfg80211_config_default_key = private unnamed_addr constant [34 x i8] c"brcmf_cfg80211_config_default_key\00", align 1
@.str.68 = private unnamed_addr constant [30 x i8] c"%s: Regulatory Set Error, %d\0A\00", align 1
@__func__.brcmf_cfg80211_start_ap = private unnamed_addr constant [24 x i8] c"brcmf_cfg80211_start_ap\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"%s: Beacon Interval Set Error, %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [33 x i8] c"%s: DTIM Interval Set Error, %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"%s: BRCMF_C_DOWN error %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"apsta\00", align 1
@.str.73 = private unnamed_addr constant [24 x i8] c"%s: SET INFRA error %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"mbss\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"%s: setting AP mode failed %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"chanspec\00", align 1
@.str.77 = private unnamed_addr constant [39 x i8] c"%s: Set Channel failed: chspec=%d, %d\0A\00", align 1
@.str.78 = private unnamed_addr constant [27 x i8] c"%s: BRCMF_C_UP error (%d)\0A\00", align 1
@.str.79 = private unnamed_addr constant [42 x i8] c"%s: brcmf_parse_configure_security error\0A\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"%s: SET SSID error (%d)\0A\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"closednet\00", align 1
@.str.82 = private unnamed_addr constant [29 x i8] c"%s: %s closednet error (%d)\0A\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.85 = private unnamed_addr constant [38 x i8] c"brcmf_parse_configure_security error\0A\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"ssid\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"bss\00", align 1
@.str.88 = private unnamed_addr constant [33 x i8] c"%s: bss_enable config failed %d\0A\00", align 1
@chandef_to_chanspec.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@chandef_to_chanspec.__already_done.89 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.90 = private unnamed_addr constant [39 x i8] c"%s: sae_password must be less than %d\0A\00", align 1
@__func__.brcmf_set_sae_password = private unnamed_addr constant [23 x i8] c"brcmf_set_sae_password\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"sae_password\00", align 1
@.str.92 = private unnamed_addr constant [53 x i8] c"%s: failed to set SAE password in firmware (len=%u)\0A\00", align 1
@.str.93 = private unnamed_addr constant [31 x i8] c"%s: no multicast cipher suite\0A\00", align 1
@__func__.brcmf_configure_wpaie = private unnamed_addr constant [22 x i8] c"brcmf_configure_wpaie\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"%s: ivalid OUI\0A\00", align 1
@.str.95 = private unnamed_addr constant [36 x i8] c"%s: Invalid multi cast cipher info\0A\00", align 1
@.str.96 = private unnamed_addr constant [29 x i8] c"%s: no unicast cipher suite\0A\00", align 1
@.str.97 = private unnamed_addr constant [35 x i8] c"%s: Invalid unicast security info\0A\00", align 1
@.str.98 = private unnamed_addr constant [28 x i8] c"%s: no auth key mgmt suite\0A\00", align 1
@.str.99 = private unnamed_addr constant [27 x i8] c"%s: Invalid key mgmt info\0A\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"wme_bss_disable\00", align 1
@.str.101 = private unnamed_addr constant [30 x i8] c"%s: wme_bss_disable error %d\0A\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"bip\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"%s: bip error %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"%s: auth error %d\0A\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"%s: wsec error %d\0A\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"mfp\00", align 1
@.str.108 = private unnamed_addr constant [18 x i8] c"%s: mfp error %d\0A\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"wpa_auth\00", align 1
@.str.110 = private unnamed_addr constant [23 x i8] c"%s: wpa_auth error %d\0A\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"\00\0F\AC\00", align 1
@__func__.brcmf_configure_opensecurity = private unnamed_addr constant [29 x i8] c"brcmf_configure_opensecurity\00", align 1
@.str.112 = private unnamed_addr constant [33 x i8] c"%s: Setting WEP key failed (%d)\0A\00", align 1
@__func__.brcmf_cfg80211_reconfigure_wep = private unnamed_addr constant [31 x i8] c"brcmf_cfg80211_reconfigure_wep\00", align 1
@.str.113 = private unnamed_addr constant [26 x i8] c"%s: Set Beacon IE Failed\0A\00", align 1
@__func__.brcmf_config_ap_mgmt_ie = private unnamed_addr constant [24 x i8] c"brcmf_config_ap_mgmt_ie\00", align 1
@.str.114 = private unnamed_addr constant [30 x i8] c"%s: Set Probe Resp IE Failed\0A\00", align 1
@.str.115 = private unnamed_addr constant [26 x i8] c"Set Assoc Resp IE Failed\0A\00", align 1
@__func__.brcmf_cfg80211_stop_ap = private unnamed_addr constant [23 x i8] c"brcmf_cfg80211_stop_ap\00", align 1
@.str.116 = private unnamed_addr constant [25 x i8] c"%s: BRCMF_C_UP error %d\0A\00", align 1
@.str.117 = private unnamed_addr constant [45 x i8] c"%s: SCB_DEAUTHENTICATE_FOR_REASON failed %d\0A\00", align 1
@__func__.brcmf_cfg80211_del_station = private unnamed_addr constant [27 x i8] c"brcmf_cfg80211_del_station\00", align 1
@.str.118 = private unnamed_addr constant [43 x i8] c"%s: Setting SCB (de-)authorize failed, %d\0A\00", align 1
@__func__.brcmf_cfg80211_change_station = private unnamed_addr constant [30 x i8] c"brcmf_cfg80211_change_station\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"tdls_sta_info\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"sta_info\00", align 1
@.str.121 = private unnamed_addr constant [29 x i8] c"%s: GET STA INFO failed, %d\0A\00", align 1
@__func__.brcmf_cfg80211_get_station = private unnamed_addr constant [27 x i8] c"brcmf_cfg80211_get_station\00", align 1
@.str.122 = private unnamed_addr constant [29 x i8] c"%s: Could not get rssi (%d)\0A\00", align 1
@.str.123 = private unnamed_addr constant [33 x i8] c"%s: BRCMF_C_GET_RATE error (%d)\0A\00", align 1
@__func__.brcmf_cfg80211_get_station_ibss = private unnamed_addr constant [32 x i8] c"brcmf_cfg80211_get_station_ibss\00", align 1
@.str.124 = private unnamed_addr constant [33 x i8] c"%s: BRCMF_C_GET_RSSI error (%d)\0A\00", align 1
@.str.125 = private unnamed_addr constant [40 x i8] c"%s: BRCMF_C_GET_GET_PKTCNTS error (%d)\0A\00", align 1
@.str.126 = private unnamed_addr constant [33 x i8] c"%s: Failed to get bss info (%d)\0A\00", align 1
@__func__.brcmf_fill_bss_param = private unnamed_addr constant [21 x i8] c"brcmf_fill_bss_param\00", align 1
@brcmf_cfg80211_dump_station.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.127 = private unnamed_addr constant [39 x i8] c"%s: BRCMF_C_GET_ASSOCLIST unsupported\0A\00", align 1
@__func__.brcmf_cfg80211_dump_station = private unnamed_addr constant [28 x i8] c"brcmf_cfg80211_dump_station\00", align 1
@.str.128 = private unnamed_addr constant [42 x i8] c"%s: BRCMF_C_GET_ASSOCLIST failed, err=%d\0A\00", align 1
@.str.129 = private unnamed_addr constant [36 x i8] c"%s: Scanning already: status (%lu)\0A\00", align 1
@__func__.brcmf_cfg80211_scan = private unnamed_addr constant [20 x i8] c"brcmf_cfg80211_scan\00", align 1
@.str.130 = private unnamed_addr constant [42 x i8] c"%s: Scanning being aborted: status (%lu)\0A\00", align 1
@.str.131 = private unnamed_addr constant [39 x i8] c"%s: Scanning suppressed: status (%lu)\0A\00", align 1
@.str.132 = private unnamed_addr constant [30 x i8] c"%s: Connecting: status (%lu)\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.133 = private unnamed_addr constant [21 x i8] c"%s: scan error (%d)\0A\00", align 1
@.str.134 = private unnamed_addr constant [18 x i8] c"%s: Invalid ssid\0A\00", align 1
@__func__.brcmf_cfg80211_connect = private unnamed_addr constant [23 x i8] c"brcmf_cfg80211_connect\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"wpaie\00", align 1
@.str.136 = private unnamed_addr constant [29 x i8] c"%s: Set Assoc REQ IE Failed\0A\00", align 1
@.str.137 = private unnamed_addr constant [36 x i8] c"%s: wl_set_wpa_version failed (%d)\0A\00", align 1
@.str.138 = private unnamed_addr constant [34 x i8] c"%s: wl_set_auth_type failed (%d)\0A\00", align 1
@.str.139 = private unnamed_addr constant [35 x i8] c"%s: wl_set_set_cipher failed (%d)\0A\00", align 1
@.str.140 = private unnamed_addr constant [33 x i8] c"%s: wl_set_key_mgmt failed (%d)\0A\00", align 1
@.str.141 = private unnamed_addr constant [37 x i8] c"%s: brcmf_set_sharedkey failed (%d)\0A\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"sup_wpa\00", align 1
@.str.143 = private unnamed_addr constant [36 x i8] c"%s: failed to enable fw supplicant\0A\00", align 1
@.str.144 = private unnamed_addr constant [40 x i8] c"%s: failed to clean up user-space RSNE\0A\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c"join\00", align 1
@.str.146 = private unnamed_addr constant [34 x i8] c"%s: BRCMF_C_SET_SSID failed (%d)\0A\00", align 1
@.str.147 = private unnamed_addr constant [30 x i8] c"%s: set wpa_auth failed (%d)\0A\00", align 1
@__func__.brcmf_set_wpa_version = private unnamed_addr constant [22 x i8] c"brcmf_set_wpa_version\00", align 1
@.str.148 = private unnamed_addr constant [26 x i8] c"%s: set auth failed (%d)\0A\00", align 1
@__func__.brcmf_set_auth_type = private unnamed_addr constant [20 x i8] c"brcmf_set_auth_type\00", align 1
@.str.149 = private unnamed_addr constant [34 x i8] c"%s: invalid cipher pairwise (%d)\0A\00", align 1
@__func__.brcmf_set_wsec_mode = private unnamed_addr constant [20 x i8] c"brcmf_set_wsec_mode\00", align 1
@.str.150 = private unnamed_addr constant [31 x i8] c"%s: invalid cipher group (%d)\0A\00", align 1
@.str.151 = private unnamed_addr constant [33 x i8] c"%s: could not get wpa_auth (%d)\0A\00", align 1
@__func__.brcmf_set_key_mgmt = private unnamed_addr constant [19 x i8] c"brcmf_set_key_mgmt\00", align 1
@.str.152 = private unnamed_addr constant [28 x i8] c"%s: invalid akm suite (%d)\0A\00", align 1
@.str.153 = private unnamed_addr constant [33 x i8] c"%s: could not set wpa_auth (%d)\0A\00", align 1
@__func__.brcmf_set_sharedkey = private unnamed_addr constant [20 x i8] c"brcmf_set_sharedkey\00", align 1
@.str.154 = private unnamed_addr constant [28 x i8] c"%s: Invalid algorithm (%d)\0A\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"join_pref\00", align 1
@.str.156 = private unnamed_addr constant [30 x i8] c"%s: Set join_pref error (%d)\0A\00", align 1
@__func__.brcmf_set_join_pref = private unnamed_addr constant [20 x i8] c"brcmf_set_join_pref\00", align 1
@__func__.brcmf_cfg80211_update_conn_params = private unnamed_addr constant [34 x i8] c"brcmf_cfg80211_update_conn_params\00", align 1
@__func__.brcmf_cfg80211_disconnect = private unnamed_addr constant [26 x i8] c"brcmf_cfg80211_disconnect\00", align 1
@.str.157 = private unnamed_addr constant [22 x i8] c"%s: wsec failed (%d)\0A\00", align 1
@__func__.brcmf_cfg80211_join_ibss = private unnamed_addr constant [25 x i8] c"brcmf_cfg80211_join_ibss\00", align 1
@.str.158 = private unnamed_addr constant [32 x i8] c"%s: WLC_SET_BCNPRD failed (%d)\0A\00", align 1
@.str.159 = private unnamed_addr constant [33 x i8] c"%s: WLC_SET_CHANNEL failed (%d)\0A\00", align 1
@.str.160 = private unnamed_addr constant [30 x i8] c"%s: WLC_SET_SSID failed (%d)\0A\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"rtsthresh\00", align 1
@.str.162 = private unnamed_addr constant [16 x i8] c"%s: Error (%d)\0A\00", align 1
@__func__.brcmf_set_rts = private unnamed_addr constant [14 x i8] c"brcmf_set_rts\00", align 1
@.str.163 = private unnamed_addr constant [11 x i8] c"fragthresh\00", align 1
@__func__.brcmf_set_frag = private unnamed_addr constant [15 x i8] c"brcmf_set_frag\00", align 1
@.str.164 = private unnamed_addr constant [27 x i8] c"%s: cmd (%d) , error (%d)\0A\00", align 1
@__func__.brcmf_set_retry = private unnamed_addr constant [16 x i8] c"brcmf_set_retry\00", align 1
@.str.165 = private unnamed_addr constant [38 x i8] c"%s: TX_POWER_FIXED - dbm is negative\0A\00", align 1
@__func__.brcmf_cfg80211_set_tx_power = private unnamed_addr constant [28 x i8] c"brcmf_cfg80211_set_tx_power\00", align 1
@.str.166 = private unnamed_addr constant [25 x i8] c"%s: Unsupported type %d\0A\00", align 1
@.str.167 = private unnamed_addr constant [30 x i8] c"%s: WLC_SET_RADIO error (%d)\0A\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"qtxpower\00", align 1
@.str.169 = private unnamed_addr constant [25 x i8] c"%s: qtxpower error (%d)\0A\00", align 1
@__func__.brcmf_cfg80211_get_tx_power = private unnamed_addr constant [28 x i8] c"brcmf_cfg80211_get_tx_power\00", align 1
@.str.170 = private unnamed_addr constant [38 x i8] c"%s: Too many PMKSA entries cached %d\0A\00", align 1
@__func__.brcmf_cfg80211_set_pmksa = private unnamed_addr constant [25 x i8] c"brcmf_cfg80211_set_pmksa\00", align 1
@.str.171 = private unnamed_addr constant [27 x i8] c"%s: Cache entry not found\0A\00", align 1
@__func__.brcmf_cfg80211_del_pmksa = private unnamed_addr constant [25 x i8] c"brcmf_cfg80211_del_pmksa\00", align 1
@.str.172 = private unnamed_addr constant [48 x i8] c"%s: No p2p device available for probe response\0A\00", align 1
@__func__.brcmf_cfg80211_cancel_remain_on_channel = private unnamed_addr constant [40 x i8] c"brcmf_cfg80211_cancel_remain_on_channel\00", align 1
@.str.173 = private unnamed_addr constant [41 x i8] c"%s: Driver only allows MGMT packet type\0A\00", align 1
@__func__.brcmf_cfg80211_mgmt_tx = private unnamed_addr constant [23 x i8] c"brcmf_cfg80211_mgmt_tx\00", align 1
@.str.174 = private unnamed_addr constant [33 x i8] c"%s: invalid action frame length\0A\00", align 1
@.str.175 = private unnamed_addr constant [30 x i8] c"%s: unable to allocate frame\0A\00", align 1
@.str.177 = private unnamed_addr constant [33 x i8] c"%s: net_device is not ready yet\0A\00", align 1
@__func__.brcmf_cfg80211_set_power_mgmt = private unnamed_addr constant [30 x i8] c"brcmf_cfg80211_set_power_mgmt\00", align 1
@.str.178 = private unnamed_addr constant [14 x i8] c"pm2_sleep_ret\00", align 1
@.str.179 = private unnamed_addr constant [36 x i8] c"%s: Unable to set pm timeout, (%d)\0A\00", align 1
@.str.180 = private unnamed_addr constant [11 x i8] c"rssi_event\00", align 1
@.str.181 = private unnamed_addr constant [37 x i8] c"%s: Scanning suppressed: status=%lu\0A\00", align 1
@__func__.brcmf_cfg80211_sched_scan_start = private unnamed_addr constant [32 x i8] c"brcmf_cfg80211_sched_scan_start\00", align 1
@.str.182 = private unnamed_addr constant [14 x i8] c"tdls_endpoint\00", align 1
@.str.183 = private unnamed_addr constant [40 x i8] c"%s: tdls_endpoint iovar failed: ret=%d\0A\00", align 1
@__func__.brcmf_cfg80211_tdls_oper = private unnamed_addr constant [25 x i8] c"brcmf_cfg80211_tdls_oper\00", align 1
@__func__.brcmf_convert_nl80211_tdls_oper = private unnamed_addr constant [32 x i8] c"brcmf_convert_nl80211_tdls_oper\00", align 1
@.str.184 = private unnamed_addr constant [27 x i8] c"unsupported operation: %d\0A\00", align 1
@.str.185 = private unnamed_addr constant [26 x i8] c"%s: chanspec failed (%d)\0A\00", align 1
@__func__.brcmf_cfg80211_get_channel = private unnamed_addr constant [27 x i8] c"brcmf_cfg80211_get_channel\00", align 1
@.str.186 = private unnamed_addr constant [35 x i8] c"%s: failed to set frameburst mode\0A\00", align 1
@__func__.brcmf_config_dongle = private unnamed_addr constant [20 x i8] c"brcmf_config_dongle\00", align 1
@.str.187 = private unnamed_addr constant [32 x i8] c"%s: Scan assoc time error (%d)\0A\00", align 1
@__func__.brcmf_dongle_scantime = private unnamed_addr constant [22 x i8] c"brcmf_dongle_scantime\00", align 1
@.str.188 = private unnamed_addr constant [34 x i8] c"%s: Scan unassoc time error (%d)\0A\00", align 1
@.str.189 = private unnamed_addr constant [34 x i8] c"%s: Scan passive time error (%d)\0A\00", align 1
@.str.190 = private unnamed_addr constant [12 x i8] c"bcn_timeout\00", align 1
@.str.191 = private unnamed_addr constant [28 x i8] c"%s: bcn_timeout error (%d)\0A\00", align 1
@__func__.brcmf_dongle_roam = private unnamed_addr constant [18 x i8] c"brcmf_dongle_roam\00", align 1
@.str.192 = private unnamed_addr constant [9 x i8] c"roam_off\00", align 1
@.str.193 = private unnamed_addr constant [25 x i8] c"%s: roam_off error (%d)\0A\00", align 1
@.str.194 = private unnamed_addr constant [37 x i8] c"%s: WLC_SET_ROAM_TRIGGER error (%d)\0A\00", align 1
@.str.195 = private unnamed_addr constant [35 x i8] c"%s: WLC_SET_ROAM_DELTA error (%d)\0A\00", align 1
@init_vif_event.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.196 = private unnamed_addr constant [15 x i8] c"&event->vif_wq\00", align 1
@wl_init_priv.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.197 = private unnamed_addr constant [15 x i8] c"&cfg->usr_sync\00", align 1
@brcmf_notify_connect_status_ap.generation = internal unnamed_addr global i32 0, align 4
@.str.198 = private unnamed_addr constant [41 x i8] c"%s: No IEs present in ASSOC/REASSOC_IND\0A\00", align 1
@__func__.brcmf_notify_connect_status_ap = private unnamed_addr constant [31 x i8] c"brcmf_notify_connect_status_ap\00", align 1
@.str.199 = private unnamed_addr constant [33 x i8] c"%s: WLC_GET_BSS_INFO failed: %d\0A\00", align 1
@__func__.brcmf_inform_ibss = private unnamed_addr constant [18 x i8] c"brcmf_inform_ibss\00", align 1
@.str.200 = private unnamed_addr constant [11 x i8] c"assoc_info\00", align 1
@.str.201 = private unnamed_addr constant [35 x i8] c"%s: could not get assoc info (%d)\0A\00", align 1
@__func__.brcmf_get_assoc_ies = private unnamed_addr constant [20 x i8] c"brcmf_get_assoc_ies\00", align 1
@.str.202 = private unnamed_addr constant [14 x i8] c"assoc_req_ies\00", align 1
@.str.203 = private unnamed_addr constant [34 x i8] c"%s: could not get assoc req (%d)\0A\00", align 1
@.str.204 = private unnamed_addr constant [15 x i8] c"assoc_resp_ies\00", align 1
@.str.205 = private unnamed_addr constant [35 x i8] c"%s: could not get assoc resp (%d)\0A\00", align 1
@.str.206 = private unnamed_addr constant [11 x i8] c"wme_ac_sta\00", align 1
@.str.207 = private unnamed_addr constant [31 x i8] c"could not get wme_ac_sta (%d)\0A\00", align 1
@.str.208 = private unnamed_addr constant [31 x i8] c"%s: Could not get bss info %d\0A\00", align 1
@__func__.brcmf_update_bss_info = private unnamed_addr constant [22 x i8] c"brcmf_update_bss_info\00", align 1
@.str.209 = private unnamed_addr constant [11 x i8] c"dtim_assoc\00", align 1
@.str.210 = private unnamed_addr constant [31 x i8] c"%s: wl dtim_assoc failed (%d)\0A\00", align 1
@.str.211 = private unnamed_addr constant [48 x i8] c"%s: Bss info is larger than buffer. Discarding\0A\00", align 1
@__func__.brcmf_inform_single_bss = private unnamed_addr constant [24 x i8] c"brcmf_inform_single_bss\00", align 1
@__func__.brcmf_notify_rssi = private unnamed_addr constant [18 x i8] c"brcmf_notify_rssi\00", align 1
@.str.212 = private unnamed_addr constant [30 x i8] c"insufficient RSSI event data\0A\00", align 1
@.str.213 = private unnamed_addr constant [34 x i8] c"%s: scan not ready, bsscfgidx=%d\0A\00", align 1
@__func__.brcmf_cfg80211_escan_handler = private unnamed_addr constant [29 x i8] c"brcmf_cfg80211_escan_handler\00", align 1
@.str.214 = private unnamed_addr constant [31 x i8] c"%s: invalid event data length\0A\00", align 1
@.str.215 = private unnamed_addr constant [41 x i8] c"%s: Invalid escan result (NULL pointer)\0A\00", align 1
@.str.216 = private unnamed_addr constant [37 x i8] c"%s: Invalid escan buffer length: %d\0A\00", align 1
@.str.217 = private unnamed_addr constant [36 x i8] c"%s: Invalid bss_count %d: ignoring\0A\00", align 1
@.str.218 = private unnamed_addr constant [42 x i8] c"%s: Ignoring invalid bss_info length: %d\0A\00", align 1
@.str.219 = private unnamed_addr constant [26 x i8] c"%s: Ignoring IBSS result\0A\00", align 1
@.str.220 = private unnamed_addr constant [35 x i8] c"%s: Buffer is too small: ignoring\0A\00", align 1
@.str.221 = private unnamed_addr constant [39 x i8] c"%s: Version %d != WL_BSS_INFO_VERSION\0A\00", align 1
@__func__.brcmf_inform_bss = private unnamed_addr constant [17 x i8] c"brcmf_inform_bss\00", align 1
@.str.222 = private unnamed_addr constant [19 x i8] c"%s: timer expired\0A\00", align 1
@__func__.brcmf_escan_timeout = private unnamed_addr constant [20 x i8] c"brcmf_escan_timeout\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.223 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@brcmf_cipher_suites = internal constant [5 x i32] [i32 1027073, i32 1027077, i32 1027074, i32 1027076, i32 1027078], align 4
@brcmf_txrx_stypes = internal constant [13 x %struct.ieee80211_txrx_stypes] [%struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 -1, i16 8208 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 15381 }, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 -1, i16 8208 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 15381 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 8208 }, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer], align 2
@brcmf_vendor_cmds = external dso_local constant [0 x %struct.wiphy_vendor_command], align 4
@.str.224 = private unnamed_addr constant [40 x i8] c"%s: could not obtain band info: err=%d\0A\00", align 1
@__func__.brcmf_setup_wiphy = private unnamed_addr constant [18 x i8] c"brcmf_setup_wiphy\00", align 1
@__wl_band_2ghz = internal constant %struct.ieee80211_supported_band { ptr null, ptr @__wl_rates, i32 0, i32 0, i32 12, %struct.ieee80211_sta_ht_cap zeroinitializer, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, align 4
@__wl_2ghz_channels = internal global [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], align 4
@__wl_band_5ghz = internal constant %struct.ieee80211_supported_band { ptr null, ptr getelementptr (i8, ptr @__wl_rates, i64 48), i32 1, i32 0, i32 8, %struct.ieee80211_sta_ht_cap zeroinitializer, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, align 4
@__wl_5ghz_channels = internal global [29 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 1, i32 5170, i16 0, i16 34, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5180, i16 0, i16 36, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5190, i16 0, i16 38, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5200, i16 0, i16 40, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5210, i16 0, i16 42, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5220, i16 0, i16 44, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5230, i16 0, i16 46, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5240, i16 0, i16 48, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5260, i16 0, i16 52, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5280, i16 0, i16 56, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5300, i16 0, i16 60, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5320, i16 0, i16 64, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5500, i16 0, i16 100, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5520, i16 0, i16 104, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5540, i16 0, i16 108, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5560, i16 0, i16 112, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5580, i16 0, i16 116, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5600, i16 0, i16 120, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5620, i16 0, i16 124, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5640, i16 0, i16 128, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5660, i16 0, i16 132, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5680, i16 0, i16 136, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5700, i16 0, i16 140, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5720, i16 0, i16 144, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5745, i16 0, i16 149, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5765, i16 0, i16 153, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5785, i16 0, i16 157, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5805, i16 0, i16 161, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5825, i16 0, i16 165, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], align 4
@brcmf_wowlan_support = internal constant %struct.wiphy_wowlan_support { i32 6, i32 8, i32 128, i32 1, i32 1500, i32 0, ptr null }, align 4
@.str.225 = private unnamed_addr constant [40 x i8] c"%s: only support basic wowlan features\0A\00", align 1
@__func__.brcmf_wiphy_wowl_params = private unnamed_addr constant [24 x i8] c"brcmf_wiphy_wowl_params\00", align 1
@brcmf_wiphy_wowl_params.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.226 = private unnamed_addr constant [24 x i8] c"&cfg->wowl.nd_data_wait\00", align 1
@__wl_rates = internal global [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 2, i16 0 }, %struct.ieee80211_rate { i32 1, i16 20, i16 4, i16 0 }, %struct.ieee80211_rate { i32 1, i16 55, i16 11, i16 0 }, %struct.ieee80211_rate { i32 1, i16 110, i16 22, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 12, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 18, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 24, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 36, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 48, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 72, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 96, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 108, i16 0 }], align 4
@.str.227 = private unnamed_addr constant [41 x i8] c"%s: not an ISO3166 code (0x%02x 0x%02x)\0A\00", align 1
@__func__.brcmf_cfg80211_reg_notifier = private unnamed_addr constant [28 x i8] c"brcmf_cfg80211_reg_notifier\00", align 1
@.str.228 = private unnamed_addr constant [8 x i8] c"country\00", align 1
@.str.229 = private unnamed_addr constant [42 x i8] c"%s: Country code iovar returned err = %d\0A\00", align 1
@.str.230 = private unnamed_addr constant [39 x i8] c"%s: Firmware rejected country setting\0A\00", align 1
@brcmf_regdom = internal constant { %struct.callback_head, i32, [3 x i8], i32, [4 x %struct.ieee80211_reg_rule] } { %struct.callback_head zeroinitializer, i32 4, [3 x i8] c"99\00", i32 0, [4 x %struct.ieee80211_reg_rule] [%struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2402000, i32 2482000, i32 40000 }, %struct.ieee80211_power_rule { i32 600, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2474000, i32 2494000, i32 20000 }, %struct.ieee80211_power_rule { i32 600, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5140000, i32 5360000, i32 160000 }, %struct.ieee80211_power_rule { i32 600, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5460000, i32 5860000, i32 160000 }, %struct.ieee80211_power_rule { i32 600, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }] }, align 4
@.str.232 = private unnamed_addr constant [13 x i8] c"gtk_key_info\00", align 1
@.str.233 = private unnamed_addr constant [39 x i8] c"%s: gtk_key_info iovar failed: ret=%d\0A\00", align 1
@__func__.brcmf_cfg80211_set_rekey_data = private unnamed_addr constant [30 x i8] c"brcmf_cfg80211_set_rekey_data\00", align 1
@.str.234 = private unnamed_addr constant [8 x i8] c"vhtmode\00", align 1
@.str.235 = private unnamed_addr constant [6 x i8] c"nmode\00", align 1
@.str.236 = private unnamed_addr constant [22 x i8] c"%s: nmode error (%d)\0A\00", align 1
@__func__.brcmf_setup_wiphybands = private unnamed_addr constant [23 x i8] c"brcmf_setup_wiphybands\00", align 1
@.str.237 = private unnamed_addr constant [8 x i8] c"rxchain\00", align 1
@brcmf_setup_wiphybands.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.238 = private unnamed_addr constant [25 x i8] c"%s: rxchain unsupported\0A\00", align 1
@.str.239 = private unnamed_addr constant [24 x i8] c"%s: rxchain error (%d)\0A\00", align 1
@.str.240 = private unnamed_addr constant [42 x i8] c"%s: brcmf_construct_chaninfo failed (%d)\0A\00", align 1
@.str.241 = private unnamed_addr constant [10 x i8] c"txstreams\00", align 1
@.str.242 = private unnamed_addr constant [13 x i8] c"txbf_bfe_cap\00", align 1
@.str.243 = private unnamed_addr constant [13 x i8] c"txbf_bfr_cap\00", align 1
@.str.244 = private unnamed_addr constant [7 x i8] c"bw_cap\00", align 1
@.str.245 = private unnamed_addr constant [12 x i8] c"mimo_bw_cap\00", align 1
@.str.246 = private unnamed_addr constant [31 x i8] c"%s: invalid mimo_bw_cap value\0A\00", align 1
@__func__.brcmf_get_bwcap = private unnamed_addr constant [16 x i8] c"brcmf_get_bwcap\00", align 1
@.str.247 = private unnamed_addr constant [10 x i8] c"chanspecs\00", align 1
@.str.248 = private unnamed_addr constant [30 x i8] c"%s: get chanspecs error (%d)\0A\00", align 1
@__func__.brcmf_construct_chaninfo = private unnamed_addr constant [25 x i8] c"brcmf_construct_chaninfo\00", align 1
@.str.249 = private unnamed_addr constant [33 x i8] c"%s: Invalid channel Spec. 0x%x.\0A\00", align 1
@.str.250 = private unnamed_addr constant [45 x i8] c"%s: Ignoring unexpected firmware channel %d\0A\00", align 1
@.str.251 = private unnamed_addr constant [44 x i8] c"Firmware reported unsupported bandwidth %d\0A\00", align 1
@.str.252 = private unnamed_addr constant [14 x i8] c"per_chan_info\00", align 1
@__func__.brcmf_enable_bw40_2g = private unnamed_addr constant [21 x i8] c"brcmf_enable_bw40_2g\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @brcmf_update_pmklist], section "llvm.metadata"
@switch.table.brcmf_cfg80211_connect.253 = private unnamed_addr constant [6 x i32] [i32 1, i32 2, i32 1, i32 4, i32 1, i32 4], align 4
@switch.table.brcmf_configure_wpaie = private unnamed_addr constant [6 x i32] [i32 64, i32 65, i32 66, i32 64, i32 68, i32 65], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @channel_to_chanspec(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.brcmu_chan, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, 1000
  %7 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %6) #17
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 1
  store i8 %8, ptr %9, align 2
  %10 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 4
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.brcmu_d11inf, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  call void %12(ptr noundef nonnull %3) #17
  %13 = load i16, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret i16 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_set_mpc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %5, i32 0, i32 3
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %1) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @net_ratelimit() #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.brcmf_set_mpc) #18
  br label %20

20:                                               ; preds = %16, %13, %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_notify_escan_complete(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.brcmf_scan_params_le, align 4
  %6 = alloca %struct.cfg80211_scan_info, align 8
  %7 = zext i1 %2 to i8
  %8 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %5, i8 0, i32 68, i1 false), !annotation !8
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  store ptr null, ptr %10, align 4
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 21, i32 0, i32 1
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 21
  %17 = tail call i32 @del_timer_sync(ptr noundef %16) #17
  br label %18

18:                                               ; preds = %15, %4
  br i1 %3, label %19, label %37

19:                                               ; preds = %18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %5, i8 0, i32 68, i1 false)
  %20 = getelementptr inbounds %struct.brcmf_scan_params_le, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(6) %20, i8 -1, i32 6, i1 false) #17
  %21 = getelementptr inbounds %struct.brcmf_scan_params_le, ptr %5, i32 0, i32 2
  store i8 2, ptr %21, align 2
  %22 = getelementptr inbounds %struct.brcmf_scan_params_le, ptr %5, i32 0, i32 8
  store i32 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.brcmf_scan_params_le, ptr %5, i32 0, i32 4
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.brcmf_scan_params_le, ptr %5, i32 0, i32 5
  store i32 -1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.brcmf_scan_params_le, ptr %5, i32 0, i32 6
  store i32 -1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.brcmf_scan_params_le, ptr %5, i32 0, i32 7
  store i32 -1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.brcmf_scan_params_le, ptr %5, i32 0, i32 9
  store i16 -1, ptr %27, align 4
  %28 = call i32 @brcmf_fil_cmd_data_set(ptr noundef %1, i32 noundef 50, ptr noundef nonnull %5, i32 noundef 68) #17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %19
  %31 = call i32 @net_ratelimit() #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.wiphy, ptr %35, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.brcmf_notify_escan_complete) #18
  br label %37

37:                                               ; preds = %33, %30, %19, %18
  %38 = phi i32 [ %28, %33 ], [ %28, %30 ], [ 0, %19 ], [ 0, %18 ]
  %39 = call zeroext i1 @brcmf_feat_is_quirk_enabled(ptr noundef %1, i32 noundef 1) #17
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load ptr, ptr %1, align 4
  %42 = getelementptr inbounds %struct.brcmf_if, ptr %1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %43, i32 0, i32 3
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %40
  %49 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 1) #17
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = call i32 @net_ratelimit() #17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.brcmf_pub, ptr %41, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.wiphy, ptr %56, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.brcmf_set_mpc) #18
  br label %58

58:                                               ; preds = %54, %51, %48, %40, %37
  %59 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 12
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 29
  br label %64

64:                                               ; preds = %74, %62
  %65 = phi i32 [ %60, %62 ], [ %75, %74 ]
  %66 = call i32 @llvm.cttz.i32(i32 %65, i1 true) #17, !range !9
  %67 = shl nuw i32 1, %66
  %68 = xor i32 %67, -1
  %69 = and i32 %65, %68
  store i32 %69, ptr %59, align 4
  %70 = load ptr, ptr %63, align 4
  %71 = call i64 @brcmf_pno_find_reqid_by_bucket(ptr noundef %70, i32 noundef %66) #17
  br i1 %2, label %74, label %72

72:                                               ; preds = %64
  %73 = load ptr, ptr %0, align 4
  call void @cfg80211_sched_scan_results(ptr noundef %73, i64 noundef %71) #17
  br label %74

74:                                               ; preds = %72, %64
  %75 = load i32, ptr %59, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %64

77:                                               ; preds = %58
  %78 = icmp eq ptr %11, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  %80 = getelementptr inbounds %struct.cfg80211_scan_info, ptr %6, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i8 %7, ptr %80, align 2
  call void @cfg80211_scan_done(ptr noundef nonnull %11, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  br label %81

81:                                               ; preds = %79, %77, %74
  %82 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 9
  %83 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %82) #17
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #17
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_data_set(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @brcmf_pno_find_reqid_by_bucket(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_results(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_scan_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_abort_scanning(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 20
  %3 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 1, ptr noundef %3) #17
  %4 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7, %1
  store i32 0, ptr %2, align 4
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 20, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @brcmf_notify_escan_complete(ptr noundef %0, ptr noundef %13, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %15

15:                                               ; preds = %11, %7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %3) #17
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_update_pmklist(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 8
  %4 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %3, i32 noundef 356) #17
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_vif_set_mgmt_ie(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.parsed_vndr_ies, align 4
  %6 = alloca %struct.parsed_vndr_ies, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %5, i8 0, i32 84, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %6, i8 0, i32 84, i1 false), !annotation !8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %160, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 2048) #19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %160, label %15

15:                                               ; preds = %8
  switch i32 %1, label %30 [
    i32 16, label %16
    i32 2, label %18
    i32 1, label %21
    i32 32, label %24
    i32 4, label %27
  ]

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 4, i32 5
  br label %37

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 4, i32 1
  %20 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 4, i32 6
  br label %37

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 4, i32 2
  %23 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 4, i32 7
  br label %37

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 4, i32 3
  %26 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 4, i32 8
  br label %37

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 4, i32 4
  %29 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 4, i32 9
  br label %37

30:                                               ; preds = %15
  %31 = tail call i32 @net_ratelimit() #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %158, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.brcmf_pub, ptr %10, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.wiphy, ptr %35, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.brcmf_vif_set_mgmt_ie) #18
  br label %158

37:                                               ; preds = %27, %24, %21, %18, %16
  %38 = phi ptr [ %28, %27 ], [ %25, %24 ], [ %22, %21 ], [ %19, %18 ], [ %11, %16 ]
  %39 = phi ptr [ %29, %27 ], [ %26, %24 ], [ %23, %21 ], [ %20, %18 ], [ %17, %16 ]
  %40 = icmp ugt i32 %3, 512
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = tail call i32 @net_ratelimit() #17
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %158, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.brcmf_pub, ptr %10, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.wiphy, ptr %46, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.brcmf_vif_set_mgmt_ie) #18
  br label %158

48:                                               ; preds = %37
  %49 = icmp ne ptr %2, null
  %50 = icmp ne i32 %3, 0
  %51 = and i1 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  call fastcc void @brcmf_parse_vndr_ies(ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %6)
  %53 = load i32, ptr %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %55, %52
  %56 = phi i32 [ %64, %55 ], [ 0, %52 ]
  %57 = phi i32 [ %63, %55 ], [ 0, %52 ]
  %58 = getelementptr %struct.parsed_vndr_ies, ptr %6, i32 0, i32 1, i32 %56
  %59 = getelementptr i8, ptr %13, i32 %57
  %60 = load ptr, ptr %58, align 4
  %61 = getelementptr %struct.parsed_vndr_ies, ptr %6, i32 0, i32 1, i32 %56, i32 1
  %62 = load i32, ptr %61, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %59, ptr align 1 %60, i32 %62, i1 false)
  %63 = add i32 %62, %57
  %64 = add nuw i32 %56, 1
  %65 = icmp eq i32 %64, %53
  br i1 %65, label %66, label %55

66:                                               ; preds = %55, %52, %48
  %67 = phi i1 [ false, %52 ], [ false, %48 ], [ true, %55 ]
  %68 = phi i32 [ 0, %52 ], [ 0, %48 ], [ %63, %55 ]
  %69 = icmp eq ptr %38, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, ptr %39, align 4
  br label %158

71:                                               ; preds = %66
  %72 = load i32, ptr %39, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %101, label %74

74:                                               ; preds = %71
  %75 = icmp ne i32 %68, 0
  %76 = icmp eq i32 %68, %72
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = tail call i32 @bcmp(ptr nonnull %38, ptr nonnull %13, i32 %68)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %158, label %81

81:                                               ; preds = %78, %74
  call fastcc void @brcmf_parse_vndr_ies(ptr noundef nonnull %38, i32 noundef %72, ptr noundef nonnull %5)
  %82 = load i32, ptr %5, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %84, %81
  %85 = phi i32 [ %99, %84 ], [ 0, %81 ]
  %86 = phi i32 [ %98, %84 ], [ 0, %81 ]
  %87 = phi ptr [ %97, %84 ], [ %13, %81 ]
  %88 = getelementptr %struct.parsed_vndr_ies, ptr %5, i32 0, i32 1, i32 %85
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr %struct.parsed_vndr_ies, ptr %5, i32 0, i32 1, i32 %85, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = tail call i32 @strscpy(ptr noundef %87, ptr noundef nonnull @.str.6, i32 noundef 4) #17
  %93 = getelementptr i8, ptr %87, i32 4
  store i32 1, ptr %93, align 1
  %94 = getelementptr i8, ptr %87, i32 8
  store i32 %1, ptr %94, align 1
  %95 = getelementptr i8, ptr %87, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %95, ptr align 1 %89, i32 %91, i1 false) #17
  %96 = add i32 %91, 12
  %97 = getelementptr i8, ptr %87, i32 %96
  %98 = add i32 %96, %86
  %99 = add nuw i32 %85, 1
  %100 = icmp eq i32 %99, %82
  br i1 %100, label %101, label %84

101:                                              ; preds = %84, %81, %71
  %102 = phi ptr [ %13, %71 ], [ %13, %81 ], [ %97, %84 ]
  %103 = phi i32 [ 0, %71 ], [ 0, %81 ], [ %98, %84 ]
  store i32 0, ptr %39, align 4
  %104 = icmp ne i32 %68, 0
  %105 = and i1 %104, %67
  br i1 %105, label %106, label %145

106:                                              ; preds = %123, %101
  %107 = phi i32 [ %128, %123 ], [ 512, %101 ]
  %108 = phi i32 [ %142, %123 ], [ 0, %101 ]
  %109 = phi i32 [ %141, %123 ], [ %103, %101 ]
  %110 = phi ptr [ %140, %123 ], [ %102, %101 ]
  %111 = getelementptr %struct.parsed_vndr_ies, ptr %6, i32 0, i32 1, i32 %108, i32 2, i32 1
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = add nuw nsw i32 %113, 12
  %115 = icmp slt i32 %107, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %106
  %117 = tail call i32 @net_ratelimit() #17
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %145, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.brcmf_pub, ptr %10, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.wiphy, ptr %121, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.brcmf_vif_set_mgmt_ie, i32 noundef %107) #18
  br label %145

123:                                              ; preds = %106
  %124 = getelementptr %struct.parsed_vndr_ies, ptr %6, i32 0, i32 1, i32 %108
  %125 = getelementptr %struct.parsed_vndr_ies, ptr %6, i32 0, i32 1, i32 %108, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = add i32 %126, 12
  %128 = sub i32 %107, %127
  %129 = load ptr, ptr %124, align 4
  %130 = tail call i32 @strscpy(ptr noundef %110, ptr noundef nonnull @.str.8, i32 noundef 4) #17
  %131 = getelementptr i8, ptr %110, i32 4
  store i32 1, ptr %131, align 1
  %132 = getelementptr i8, ptr %110, i32 8
  store i32 %1, ptr %132, align 1
  %133 = getelementptr i8, ptr %110, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %133, ptr align 1 %129, i32 %126, i1 false) #17
  %134 = load i32, ptr %39, align 4
  %135 = getelementptr i8, ptr %38, i32 %134
  %136 = load ptr, ptr %124, align 4
  %137 = load i32, ptr %125, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %135, ptr align 1 %136, i32 %137, i1 false)
  %138 = load i32, ptr %39, align 4
  %139 = add i32 %138, %137
  store i32 %139, ptr %39, align 4
  %140 = getelementptr i8, ptr %110, i32 %127
  %141 = add i32 %127, %109
  %142 = add nuw i32 %108, 1
  %143 = load i32, ptr %6, align 4
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %106, label %145

145:                                              ; preds = %123, %119, %116, %101
  %146 = phi i32 [ %109, %119 ], [ %109, %116 ], [ %103, %101 ], [ %141, %123 ]
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %158, label %148

148:                                              ; preds = %145
  %149 = tail call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef nonnull %13, i32 noundef %146) #17
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %148
  %152 = tail call i32 @net_ratelimit() #17
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.brcmf_pub, ptr %10, i32 0, i32 2
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.wiphy, ptr %156, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.brcmf_vif_set_mgmt_ie, i32 noundef %149) #18
  br label %158

158:                                              ; preds = %154, %151, %148, %145, %78, %70, %44, %41, %33, %30
  %159 = phi i32 [ -1, %33 ], [ -1, %30 ], [ -12, %44 ], [ -12, %41 ], [ %149, %154 ], [ %149, %151 ], [ 0, %148 ], [ 0, %145 ], [ 0, %78 ], [ 0, %70 ]
  tail call void @kfree(ptr noundef nonnull %13) #17
  br label %160

160:                                              ; preds = %158, %8, %4
  %161 = phi i32 [ %159, %158 ], [ -19, %4 ], [ -12, %8 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %5) #17
  ret i32 %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_parse_vndr_ies(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(84) %2, i8 0, i32 84, i1 false)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %40, %3
  %6 = phi ptr [ %48, %40 ], [ %0, %3 ]
  %7 = phi i32 [ %45, %40 ], [ %1, %3 ]
  %8 = load i8, ptr %6, align 1
  %9 = icmp eq i8 %8, -35
  br i1 %9, label %10, label %40

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.brcmf_vs_tlv, ptr %6, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp ult i8 %12, 5
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = tail call i32 @net_ratelimit() #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %40, label %17

17:                                               ; preds = %14
  %18 = load i8, ptr %11, align 1
  %19 = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_parse_vndr_ies, ptr noundef nonnull @.str.23, i32 noundef %19) #17
  br label %40

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.brcmf_vs_tlv, ptr %6, i32 0, i32 2
  %22 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %21, ptr noundef nonnull dereferenceable(3) @.str.24, i32 3)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.brcmf_vs_tlv, ptr %6, i32 0, i32 3
  %26 = load i8, ptr %25, align 1
  %27 = add i8 %26, -1
  %28 = icmp ult i8 %27, 2
  br i1 %28, label %40, label %29

29:                                               ; preds = %24, %20
  %30 = load i32, ptr %2, align 4
  %31 = getelementptr %struct.parsed_vndr_ies, ptr %2, i32 0, i32 1, i32 %30
  store ptr %6, ptr %31, align 4
  %32 = load i8, ptr %11, align 1
  %33 = zext i8 %32 to i32
  %34 = add nuw nsw i32 %33, 2
  %35 = getelementptr %struct.parsed_vndr_ies, ptr %2, i32 0, i32 1, i32 %30, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr %struct.parsed_vndr_ies, ptr %2, i32 0, i32 1, i32 %30, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %36, ptr noundef nonnull align 1 dereferenceable(6) %6, i32 6, i1 false)
  %37 = load i32, ptr %2, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %2, align 4
  %39 = icmp ugt i32 %38, 4
  br i1 %39, label %51, label %40

40:                                               ; preds = %29, %24, %17, %14, %5
  %41 = getelementptr inbounds %struct.brcmf_tlv, ptr %6, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = add i32 %7, -2
  %45 = sub i32 %44, %43
  %46 = icmp slt i32 %45, 3
  %47 = getelementptr i8, ptr %6, i32 2
  %48 = getelementptr i8, ptr %47, i32 %43
  %49 = icmp eq ptr %48, null
  %50 = or i1 %46, %49
  br i1 %50, label %51, label %5

51:                                               ; preds = %40, %29, %3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_bsscfg_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_vif_clear_mgmt_ies(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @brcmf_vif_set_mgmt_ie(ptr noundef %0, i32 noundef 16, ptr noundef null, i32 noundef 0)
  %3 = tail call i32 @brcmf_vif_set_mgmt_ie(ptr noundef %0, i32 noundef 2, ptr noundef null, i32 noundef 0)
  %4 = tail call i32 @brcmf_vif_set_mgmt_ie(ptr noundef %0, i32 noundef 1, ptr noundef null, i32 noundef 0)
  %5 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(2580) %5, i8 0, i32 2580, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @brcmf_cfg80211_get_ops(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @kmemdup(ptr noundef nonnull @brcmf_cfg80211_ops, i32 noundef 460, i32 noundef 3264) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.brcmf_mp_device, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.cfg80211_ops, ptr %2, i32 0, i32 44
  store ptr null, ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %4, %1
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @brcmf_alloc_vif(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @brcmf_get_ifp(ptr noundef %4, i32 noundef 0) #17
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 3916) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %7, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %7, i32 0, i32 1, i32 1
  store i32 %1, ptr %12, align 8
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %7, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(1016) %13, i8 0, i32 1016, i1 false) #17
  %14 = icmp eq i32 %1, 3
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = tail call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %5, i32 noundef 0) #17
  br i1 %16, label %17, label %31

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 23
  br label %19

19:                                               ; preds = %23, %17
  %20 = phi ptr [ %18, %17 ], [ %21, %23 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %18
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 -3880
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %19

27:                                               ; preds = %23, %19
  %28 = xor i1 %22, true
  %29 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %7, i32 0, i32 7
  %30 = zext i1 %28 to i8
  store i8 %30, ptr %29, align 2
  br label %31

31:                                               ; preds = %27, %15, %9
  %32 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %7, i32 0, i32 5
  %33 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 23
  %34 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 23, i32 1
  %35 = load ptr, ptr %34, align 4
  store ptr %32, ptr %34, align 4
  store ptr %33, ptr %32, align 8
  %36 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %7, i32 0, i32 5, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %32, ptr %35, align 4
  br label %37

37:                                               ; preds = %31, %2
  %38 = phi ptr [ %7, %31 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_get_ifp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_feat_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_free_vif(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 5
  %3 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  tail call void @kfree(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_cfg80211_free_netdev(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1412
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %3, i32 0, i32 5
  %7 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %3, i32 0, i32 5, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  tail call void @kfree(ptr noundef nonnull %3) #17
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @brcmf_map_prio_to_prec(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = and i8 %1, -3
  %6 = icmp eq i8 %5, 0
  %7 = xor i8 %1, 2
  %8 = select i1 %6, i8 %7, i8 %1
  br label %30

9:                                                ; preds = %2
  %10 = zext i8 %1 to i32
  %11 = icmp ugt i8 %1, 3
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 30
  %14 = getelementptr %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 30, i32 %10
  %15 = load i8, ptr %14, align 1
  %16 = load i8, ptr %13, align 4
  %17 = icmp eq i8 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = shl i8 %15, 1
  br label %30

20:                                               ; preds = %12, %9
  switch i8 %1, label %25 [
    i8 6, label %21
    i8 4, label %21
    i8 1, label %21
    i8 0, label %21
  ]

21:                                               ; preds = %20, %20, %20, %20
  %22 = getelementptr %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 30, i32 %10
  %23 = load i8, ptr %22, align 1
  %24 = shl i8 %23, 1
  br label %30

25:                                               ; preds = %20
  %26 = getelementptr %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 30, i32 %10
  %27 = load i8, ptr %26, align 1
  %28 = shl i8 %27, 1
  %29 = or i8 %28, 1
  br label %30

30:                                               ; preds = %25, %21, %18, %4
  %31 = phi i8 [ %19, %18 ], [ %24, %21 ], [ %29, %25 ], [ %8, %4 ]
  ret i8 %31
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @brcmf_map_prio_to_aci(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = zext i8 %1 to i32
  %6 = getelementptr %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 30, i32 %5
  %7 = load i8, ptr %6, align 1
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i8 [ %7, %4 ], [ %1, %2 ]
  ret i8 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_cfg80211_up(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [2 x i32], align 8
  %3 = alloca [2 x i32], align 8
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %8) #17
  %9 = getelementptr i8, ptr %0, i32 1412
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %10, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %11) #17
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.brcmf_pub, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %14, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %14, i32 0, i32 15
  %18 = load i8, ptr %17, align 2, !range !10
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %137

20:                                               ; preds = %1
  %21 = tail call ptr @brcmf_get_ifp(ptr noundef %16, i32 noundef 0) #17
  %22 = getelementptr inbounds %struct.brcmf_if, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 70
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr i8, ptr %23, i32 1408
  %27 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %26, i32 noundef 2, i32 noundef 0) #17
  %28 = load ptr, ptr %26, align 4
  %29 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %26, i32 noundef 185, i32 noundef 40) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %20
  %32 = tail call i32 @net_ratelimit() #17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.wiphy, ptr %36, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.187, ptr noundef nonnull @__func__.brcmf_dongle_scantime, i32 noundef %29) #18
  br label %58

38:                                               ; preds = %20
  %39 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %26, i32 noundef 187, i32 noundef 40) #17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @net_ratelimit() #17
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.wiphy, ptr %46, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.188, ptr noundef nonnull @__func__.brcmf_dongle_scantime, i32 noundef %39) #18
  br label %58

48:                                               ; preds = %38
  %49 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %26, i32 noundef 258, i32 noundef 120) #17
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = tail call i32 @net_ratelimit() #17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.wiphy, ptr %56, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.189, ptr noundef nonnull @__func__.brcmf_dongle_scantime, i32 noundef %49) #18
  br label %58

58:                                               ; preds = %54, %51, %48, %44, %41, %34, %31
  %59 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %14, i32 0, i32 14
  %60 = load i8, ptr %59, align 1, !range !10
  %61 = icmp eq i8 %60, 0
  %62 = select i1 %61, i32 0, i32 2
  %63 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %26, i32 noundef 86, i32 noundef %62) #17
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %137

65:                                               ; preds = %58
  %66 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store i64 17179869109, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store i64 12884901908, ptr %3, align 8, !annotation !8
  %67 = getelementptr inbounds %struct.brcmf_pub, ptr %66, i32 0, i32 21
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.brcmf_mp_device, ptr %68, i32 0, i32 3
  %70 = load i8, ptr %69, align 4, !range !10
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %71, i32 2, i32 4
  %73 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %26, ptr noundef nonnull @.str.190, i32 noundef %72) #17
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = tail call i32 @net_ratelimit() #17
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %118, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.brcmf_pub, ptr %66, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.wiphy, ptr %80, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.191, ptr noundef nonnull @__func__.brcmf_dongle_roam, i32 noundef %73) #18
  br label %118

82:                                               ; preds = %65
  %83 = load ptr, ptr %26, align 4
  %84 = getelementptr inbounds %struct.brcmf_pub, ptr %83, i32 0, i32 21
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.brcmf_mp_device, ptr %85, i32 0, i32 3
  %87 = load i8, ptr %86, align 4, !range !10
  %88 = zext i8 %87 to i32
  %89 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %26, ptr noundef nonnull @.str.192, i32 noundef %88) #17
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %82
  %92 = tail call i32 @net_ratelimit() #17
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %118, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.brcmf_pub, ptr %66, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.wiphy, ptr %96, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.193, ptr noundef nonnull @__func__.brcmf_dongle_roam, i32 noundef %89) #18
  br label %118

98:                                               ; preds = %82
  %99 = call i32 @brcmf_fil_cmd_data_set(ptr noundef %26, i32 noundef 55, ptr noundef nonnull %2, i32 noundef 8) #17
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = call i32 @net_ratelimit() #17
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.brcmf_pub, ptr %66, i32 0, i32 2
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.wiphy, ptr %106, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.194, ptr noundef nonnull @__func__.brcmf_dongle_roam, i32 noundef %99) #18
  br label %108

108:                                              ; preds = %104, %101, %98
  %109 = call i32 @brcmf_fil_cmd_data_set(ptr noundef %26, i32 noundef 57, ptr noundef nonnull %3, i32 noundef 8) #17
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %108
  %112 = call i32 @net_ratelimit() #17
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.brcmf_pub, ptr %66, i32 0, i32 2
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.wiphy, ptr %116, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.195, ptr noundef nonnull @__func__.brcmf_dongle_roam, i32 noundef %109) #18
  br label %120

118:                                              ; preds = %94, %91, %78, %75
  %119 = phi i32 [ %89, %91 ], [ %89, %94 ], [ %73, %75 ], [ %73, %78 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  br label %137

120:                                              ; preds = %114, %111, %108
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  %121 = load ptr, ptr %25, align 4
  %122 = getelementptr inbounds %struct.wireless_dev, ptr %25, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = call i32 @brcmf_cfg80211_change_iface(ptr noundef %121, ptr noundef %23, i32 noundef %123, ptr noundef null) #17
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %120
  call void @brcmf_configure_arp_nd_offload(ptr noundef %26, i1 noundef zeroext true) #17
  %127 = call i32 @brcmf_fil_cmd_int_set(ptr noundef %26, i32 noundef 219, i32 noundef 1) #17
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %126
  %130 = call i32 @net_ratelimit() #17
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.brcmf_pub, ptr %16, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.wiphy, ptr %134, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.186, ptr noundef nonnull @__func__.brcmf_config_dongle) #18
  br label %137

136:                                              ; preds = %126
  store i8 1, ptr %17, align 2
  br label %137

137:                                              ; preds = %136, %132, %129, %120, %118, %58, %1
  %138 = phi i32 [ 0, %1 ], [ %63, %58 ], [ %124, %120 ], [ %127, %132 ], [ %127, %129 ], [ 0, %136 ], [ %119, %118 ]
  call void @mutex_unlock(ptr noundef %8) #17
  ret i32 %138
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_cfg80211_down(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %5, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %6) #17
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 1412
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %11, i32 0, i32 3
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call fastcc void @brcmf_link_down(ptr noundef %11, i16 noundef zeroext 1, i1 noundef zeroext true) #17
  tail call void @msleep(i32 noundef 500) #17
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 20
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 1, ptr noundef %19) #17
  %20 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23, %17
  store i32 0, ptr %18, align 4
  %28 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 20, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @brcmf_notify_escan_complete(ptr noundef %9, ptr noundef %29, i1 noundef zeroext true, i1 noundef zeroext true) #17
  br label %31

31:                                               ; preds = %27, %23
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %19) #17
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %19) #17
  %32 = load ptr, ptr %10, align 4
  %33 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %32, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %33) #17
  tail call void @mutex_unlock(ptr noundef %6) #17
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @brcmf_cfg80211_get_iftype(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %3, i32 0, i32 1, i32 1
  %5 = load i32, ptr %4, align 4
  ret i32 %5
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @brcmf_get_vif_state_any(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 23
  %4 = lshr i32 %1, 5
  %5 = and i32 %1, 31
  %6 = shl nuw i32 1, %5
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %3, %2 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -2584
  %13 = getelementptr i32, ptr %12, i32 %4
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, %6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %7, label %17

17:                                               ; preds = %11, %7
  %18 = xor i1 %10, true
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_cfg80211_arm_vif_event(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 24, i32 1
  tail call void @_raw_spin_lock(ptr noundef %3) #17
  %4 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 24, i32 3
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 24, i32 2
  store i8 0, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %6 = load i16, ptr %3, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @brcmf_cfg80211_vif_event_armed(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 24, i32 1
  tail call void @_raw_spin_lock(ptr noundef %2) #17
  %3 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 24, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ne ptr %4, null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %6 = load i16, ptr %2, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_cfg80211_wait_vif_event(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 24
  %6 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 24, i32 1
  tail call void @_raw_spin_lock(ptr noundef %6) #17
  %7 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 24, i32 2
  %8 = load i8, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %9 = load i16, ptr %6, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %11 = icmp eq i8 %8, %1
  %12 = icmp eq i32 %2, 0
  %13 = and i1 %12, %11
  %14 = select i1 %13, i32 1, i32 %2
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %11, i1 true, i1 %15
  br i1 %16, label %34, label %17

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #17
  br label %18

18:                                               ; preds = %31, %17
  %19 = phi i32 [ %2, %17 ], [ %32, %31 ]
  %20 = call i32 @prepare_to_wait_event(ptr noundef %5, ptr noundef nonnull %4, i32 noundef 2) #17
  call void @_raw_spin_lock(ptr noundef %6) #17
  %21 = load i8, ptr %7, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %22 = load i16, ptr %6, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %6, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %24 = icmp eq i8 %21, %1
  %25 = xor i1 %24, true
  %26 = icmp ne i32 %19, 0
  %27 = select i1 %25, i1 true, i1 %26
  %28 = select i1 %27, i32 %19, i32 1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %24, i1 true, i1 %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %18
  %32 = call i32 @schedule_timeout(i32 noundef %28) #17
  br label %18

33:                                               ; preds = %18
  call void @finish_wait(ptr noundef %5, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  br label %34

34:                                               ; preds = %33, %3
  %35 = phi i32 [ %14, %3 ], [ %28, %33 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @brcmf_cfg80211_attach(ptr noundef %0, ptr nocapture noundef writeonly %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @brcmf_get_ifp(ptr noundef %0, i32 noundef 0) #17
  %9 = getelementptr inbounds %struct.brcmf_if, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = tail call i32 @net_ratelimit() #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %640, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.brcmf_cfg80211_attach) #18
  br label %640

18:                                               ; preds = %3
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 1620) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = tail call i32 @net_ratelimit() #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %640, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.brcmf_cfg80211_attach) #18
  br label %640

28:                                               ; preds = %18
  store ptr %7, ptr %20, align 8
  %29 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 10
  store ptr %0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 24
  tail call void @__init_waitqueue_head(ptr noundef %30, ptr noundef nonnull @.str.196, ptr noundef nonnull @init_vif_event.__key) #17
  %31 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 24, i32 1
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 23
  store volatile ptr %32, ptr %32, align 8
  %33 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 23, i32 1
  store ptr %32, ptr %33, align 4
  %34 = load ptr, ptr %29, align 4
  %35 = tail call ptr @brcmf_get_ifp(ptr noundef %34, i32 noundef 0) #17
  %36 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %37 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 3916) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %639, label %39

39:                                               ; preds = %28
  %40 = load ptr, ptr %20, align 8
  %41 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %37, i32 0, i32 1
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %37, i32 0, i32 1, i32 1
  store i32 2, ptr %42, align 8
  %43 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %37, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(1016) %43, i8 0, i32 1016, i1 false) #17
  %44 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %37, i32 0, i32 5
  %45 = load ptr, ptr %33, align 4
  store ptr %44, ptr %33, align 4
  store ptr %32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %37, i32 0, i32 5, i32 1
  store ptr %45, ptr %46, align 4
  store volatile ptr %44, ptr %45, align 4
  %47 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %639, label %48

48:                                               ; preds = %39
  %49 = getelementptr i8, ptr %10, i32 1408
  store ptr %49, ptr %37, align 8
  %50 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %37, i32 0, i32 1, i32 3
  store ptr %10, ptr %50, align 4
  %51 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 70
  store ptr %41, ptr %51, align 8
  %52 = load ptr, ptr %20, align 8
  %53 = getelementptr inbounds %struct.wiphy, ptr %52, i32 0, i32 56, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 111, i32 1
  store ptr %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 4
  store ptr null, ptr %56, align 8
  %57 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 14
  store i8 1, ptr %57, align 1
  %58 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 15
  store i8 0, ptr %58, align 2
  %59 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %60 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3520, i32 noundef 16) #19
  %61 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 1
  store ptr %60, ptr %61, align 4
  %62 = icmp eq ptr %60, null
  br i1 %62, label %82, label %63

63:                                               ; preds = %48
  %64 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 2048) #19
  %66 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 18
  store ptr %65, ptr %66, align 8
  %67 = icmp eq ptr %65, null
  br i1 %67, label %82, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %70 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3520, i32 noundef 44) #19
  %71 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 28, i32 2
  store ptr %70, ptr %71, align 8
  %72 = icmp eq ptr %70, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %68
  %74 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %75 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 3520, i32 noundef 8) #19
  %76 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 28, i32 3
  store ptr %75, ptr %76, align 4
  %77 = icmp eq ptr %75, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65000, i32 noundef 3520, i32 noundef 4) #20
  %80 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 20, i32 1
  store ptr %79, ptr %80, align 4
  %81 = icmp eq ptr %79, null
  br i1 %81, label %82, label %101

82:                                               ; preds = %78, %73, %68, %63, %48
  %83 = load ptr, ptr %61, align 4
  tail call void @kfree(ptr noundef %83) #17
  store ptr null, ptr %61, align 4
  %84 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 18
  %85 = load ptr, ptr %84, align 8
  tail call void @kfree(ptr noundef %85) #17
  store ptr null, ptr %84, align 8
  %86 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 28, i32 2
  %87 = load ptr, ptr %86, align 8
  tail call void @kfree(ptr noundef %87) #17
  store ptr null, ptr %86, align 8
  %88 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 28, i32 3
  %89 = load ptr, ptr %88, align 4
  tail call void @kfree(ptr noundef %89) #17
  store ptr null, ptr %88, align 4
  %90 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 20, i32 1
  %91 = load ptr, ptr %90, align 4
  tail call void @kfree(ptr noundef %91) #17
  store ptr null, ptr %90, align 4
  %92 = tail call i32 @net_ratelimit() #17
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %82
  %95 = load ptr, ptr %6, align 4
  %96 = getelementptr inbounds %struct.wiphy, ptr %95, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.brcmf_cfg80211_attach, i32 noundef -12) #18
  br label %97

97:                                               ; preds = %94, %82
  %98 = load ptr, ptr %46, align 4
  %99 = load ptr, ptr %44, align 8
  %100 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  store ptr %98, ptr %100, align 4
  store volatile ptr %99, ptr %98, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %46, align 4
  tail call void @kfree(ptr noundef nonnull %37) #17
  br label %639

101:                                              ; preds = %78
  %102 = load ptr, ptr %29, align 4
  %103 = tail call i32 @brcmf_fweh_register(ptr noundef %102, i32 noundef 16, ptr noundef nonnull @brcmf_notify_connect_status) #17
  %104 = load ptr, ptr %29, align 4
  %105 = tail call i32 @brcmf_fweh_register(ptr noundef %104, i32 noundef 6, ptr noundef nonnull @brcmf_notify_connect_status) #17
  %106 = load ptr, ptr %29, align 4
  %107 = tail call i32 @brcmf_fweh_register(ptr noundef %106, i32 noundef 5, ptr noundef nonnull @brcmf_notify_connect_status) #17
  %108 = load ptr, ptr %29, align 4
  %109 = tail call i32 @brcmf_fweh_register(ptr noundef %108, i32 noundef 12, ptr noundef nonnull @brcmf_notify_connect_status) #17
  %110 = load ptr, ptr %29, align 4
  %111 = tail call i32 @brcmf_fweh_register(ptr noundef %110, i32 noundef 8, ptr noundef nonnull @brcmf_notify_connect_status) #17
  %112 = load ptr, ptr %29, align 4
  %113 = tail call i32 @brcmf_fweh_register(ptr noundef %112, i32 noundef 10, ptr noundef nonnull @brcmf_notify_connect_status) #17
  %114 = load ptr, ptr %29, align 4
  %115 = tail call i32 @brcmf_fweh_register(ptr noundef %114, i32 noundef 19, ptr noundef nonnull @brcmf_notify_roaming_status) #17
  %116 = load ptr, ptr %29, align 4
  %117 = tail call i32 @brcmf_fweh_register(ptr noundef %116, i32 noundef 17, ptr noundef nonnull @brcmf_notify_mic_status) #17
  %118 = load ptr, ptr %29, align 4
  %119 = tail call i32 @brcmf_fweh_register(ptr noundef %118, i32 noundef 0, ptr noundef nonnull @brcmf_notify_connect_status) #17
  %120 = load ptr, ptr %29, align 4
  %121 = tail call i32 @brcmf_fweh_register(ptr noundef %120, i32 noundef 33, ptr noundef nonnull @brcmf_notify_sched_scan_results) #17
  %122 = load ptr, ptr %29, align 4
  %123 = tail call i32 @brcmf_fweh_register(ptr noundef %122, i32 noundef 54, ptr noundef nonnull @brcmf_notify_vif_event) #17
  %124 = load ptr, ptr %29, align 4
  %125 = tail call i32 @brcmf_fweh_register(ptr noundef %124, i32 noundef 72, ptr noundef nonnull @brcmf_p2p_notify_rx_mgmt_p2p_probereq) #17
  %126 = load ptr, ptr %29, align 4
  %127 = tail call i32 @brcmf_fweh_register(ptr noundef %126, i32 noundef 55, ptr noundef nonnull @brcmf_p2p_notify_listen_complete) #17
  %128 = load ptr, ptr %29, align 4
  %129 = tail call i32 @brcmf_fweh_register(ptr noundef %128, i32 noundef 75, ptr noundef nonnull @brcmf_p2p_notify_action_frame_rx) #17
  %130 = load ptr, ptr %29, align 4
  %131 = tail call i32 @brcmf_fweh_register(ptr noundef %130, i32 noundef 60, ptr noundef nonnull @brcmf_p2p_notify_action_tx_complete) #17
  %132 = load ptr, ptr %29, align 4
  %133 = tail call i32 @brcmf_fweh_register(ptr noundef %132, i32 noundef 70, ptr noundef nonnull @brcmf_p2p_notify_action_tx_complete) #17
  %134 = load ptr, ptr %29, align 4
  %135 = tail call i32 @brcmf_fweh_register(ptr noundef %134, i32 noundef 46, ptr noundef nonnull @brcmf_notify_connect_status) #17
  %136 = load ptr, ptr %29, align 4
  %137 = tail call i32 @brcmf_fweh_register(ptr noundef %136, i32 noundef 56, ptr noundef nonnull @brcmf_notify_rssi) #17
  %138 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %138, ptr noundef nonnull @.str.197, ptr noundef nonnull @wl_init_priv.__key) #17
  %139 = load ptr, ptr %29, align 4
  %140 = tail call i32 @brcmf_fweh_register(ptr noundef %139, i32 noundef 69, ptr noundef nonnull @brcmf_cfg80211_escan_handler) #17
  %141 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 20
  store i32 0, ptr %141, align 8
  %142 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 21
  tail call void @init_timer_key(ptr noundef %142, ptr noundef nonnull @brcmf_escan_timeout, i32 noundef 0, ptr noundef null, ptr noundef null) #17
  %143 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 22
  store i32 -32, ptr %143, align 8
  %144 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 22, i32 1
  store volatile ptr %144, ptr %144, align 4
  %145 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 22, i32 1, i32 1
  store ptr %144, ptr %145, align 8
  %146 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 22, i32 2
  store ptr @brcmf_cfg80211_escan_timeout_worker, ptr %146, align 4
  %147 = load ptr, ptr %61, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %147, i8 -1, i64 16, i1 false) #17
  %148 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 30
  store i8 1, ptr %148, align 4
  %149 = getelementptr %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 30, i32 3
  store i8 1, ptr %149, align 1
  %150 = getelementptr %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 30, i32 1
  store i8 0, ptr %150, align 1
  %151 = getelementptr %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 30, i32 2
  store i8 0, ptr %151, align 2
  %152 = getelementptr %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 30, i32 4
  store i8 2, ptr %152, align 8
  %153 = getelementptr %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 30, i32 5
  store i8 2, ptr %153, align 1
  %154 = getelementptr %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 30, i32 6
  store i8 3, ptr %154, align 2
  %155 = getelementptr %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 30, i32 7
  store i8 3, ptr %155, align 1
  %156 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 25
  store i32 0, ptr %156, align 8
  %157 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 25, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %157, ptr noundef nonnull @.str.223, ptr noundef nonnull @init_completion.__key) #17
  %158 = getelementptr i8, ptr %10, i32 1412
  store ptr %37, ptr %158, align 4
  %159 = call i32 @brcmf_fil_cmd_int_get(ptr noundef %49, i32 noundef 1, ptr noundef nonnull %5) #17
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %101
  %162 = call i32 @net_ratelimit() #17
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %635, label %164

164:                                              ; preds = %161
  %165 = load ptr, ptr %6, align 4
  %166 = getelementptr inbounds %struct.wiphy, ptr %165, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.brcmf_cfg80211_attach, i32 noundef %159) #18
  br label %635

167:                                              ; preds = %101
  %168 = load i32, ptr %5, align 4
  %169 = trunc i32 %168 to i8
  %170 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 26
  store i8 %169, ptr %170, align 8
  call void @brcmu_d11_attach(ptr noundef %170) #17
  %171 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 4
  store ptr %20, ptr %171, align 4
  %172 = load ptr, ptr %49, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #17, !annotation !8
  %173 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 18
  store i8 10, ptr %173, align 8
  %174 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 22
  store i16 2048, ptr %174, align 4
  %175 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 43
  store i8 16, ptr %175, align 2
  %176 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 15) #17
  %177 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 0) #17
  %178 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 4) #17
  %179 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 5) #17
  %180 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 1) #17
  %181 = xor i1 %179, true
  %182 = select i1 %178, i1 %181, i1 false
  %183 = select i1 %182, i32 2, i32 1
  %184 = zext i1 %177 to i32
  %185 = add nuw nsw i32 %183, %184
  %186 = mul nuw nsw i32 %185, 20
  %187 = call noalias align 64 ptr @__kmalloc(i32 noundef %186, i32 noundef 3520) #20
  %188 = icmp eq ptr %187, null
  br i1 %188, label %284, label %189

189:                                              ; preds = %167
  %190 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 9
  %191 = select i1 %176, i16 78, i16 14
  %192 = or i16 %191, 1792
  %193 = select i1 %178, i16 %192, i16 %191
  store i16 %193, ptr %190, align 4
  %194 = select i1 %176, i32 2, i32 1
  %195 = select i1 %178, i32 2, i32 0
  %196 = add nuw nsw i32 %195, %194
  %197 = xor i1 %178, true
  %198 = select i1 %179, i1 true, i1 %197
  %199 = zext i1 %198 to i32
  %200 = add nuw nsw i32 %196, %199
  %201 = shl nuw nsw i32 %200, 2
  %202 = call noalias align 64 ptr @__kmalloc(i32 noundef %201, i32 noundef 3520) #20
  %203 = icmp eq ptr %202, null
  br i1 %203, label %284, label %204

204:                                              ; preds = %189
  %205 = select i1 %178, i1 %180, i1 false
  %206 = select i1 %179, i1 true, i1 %205
  %207 = select i1 %206, i32 2, i32 1
  %208 = getelementptr inbounds %struct.ieee80211_iface_combination, ptr %187, i32 0, i32 1
  store i32 %207, ptr %208, align 4
  store i16 1, ptr %202, align 64
  %209 = getelementptr inbounds %struct.ieee80211_iface_limit, ptr %202, i32 0, i32 1
  store i16 4, ptr %209, align 2
  br i1 %176, label %210, label %213

210:                                              ; preds = %204
  %211 = getelementptr %struct.ieee80211_iface_limit, ptr %202, i32 1
  store i16 1, ptr %211, align 4
  %212 = getelementptr %struct.ieee80211_iface_limit, ptr %202, i32 1, i32 1
  store i16 64, ptr %212, align 2
  br label %213

213:                                              ; preds = %210, %204
  %214 = phi i32 [ 2, %210 ], [ 1, %204 ]
  %215 = getelementptr %struct.ieee80211_iface_limit, ptr %202, i32 %214
  br i1 %178, label %216, label %238

216:                                              ; preds = %213
  store i16 1, ptr %215, align 4
  %217 = add nuw nsw i32 %214, 1
  %218 = getelementptr %struct.ieee80211_iface_limit, ptr %202, i32 %214, i32 1
  store i16 1024, ptr %218, align 2
  %219 = select i1 %179, i16 2, i16 1
  %220 = getelementptr %struct.ieee80211_iface_limit, ptr %202, i32 %217
  store i16 %219, ptr %220, align 4
  %221 = add nuw nsw i32 %214, 2
  %222 = getelementptr %struct.ieee80211_iface_limit, ptr %202, i32 %217, i32 1
  store i16 768, ptr %222, align 2
  br i1 %179, label %223, label %230

223:                                              ; preds = %216
  %224 = getelementptr %struct.ieee80211_iface_limit, ptr %202, i32 %221
  store i16 2, ptr %224, align 4
  %225 = getelementptr %struct.ieee80211_iface_limit, ptr %202, i32 %221, i32 1
  store i16 8, ptr %225, align 2
  %226 = getelementptr inbounds %struct.ieee80211_iface_combination, ptr %187, i32 0, i32 2
  store i16 4, ptr %226, align 8
  %227 = trunc i32 %214 to i8
  %228 = add nuw nsw i8 %227, 3
  %229 = getelementptr inbounds %struct.ieee80211_iface_combination, ptr %187, i32 0, i32 3
  store i8 %228, ptr %229, align 2
  store ptr %202, ptr %187, align 64
  br label %264

230:                                              ; preds = %216
  %231 = trunc i32 %221 to i16
  %232 = getelementptr inbounds %struct.ieee80211_iface_combination, ptr %187, i32 0, i32 2
  store i16 %231, ptr %232, align 8
  %233 = trunc i32 %221 to i8
  %234 = getelementptr inbounds %struct.ieee80211_iface_combination, ptr %187, i32 0, i32 3
  store i8 %233, ptr %234, align 2
  store ptr %202, ptr %187, align 64
  %235 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %236 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %235, i32 noundef 3520, i32 noundef 16) #19
  %237 = icmp eq ptr %236, null
  br i1 %237, label %284, label %252

238:                                              ; preds = %213
  br i1 %179, label %239, label %245

239:                                              ; preds = %238
  store i16 2, ptr %215, align 4
  %240 = getelementptr %struct.ieee80211_iface_limit, ptr %202, i32 %214, i32 1
  store i16 8, ptr %240, align 2
  %241 = getelementptr inbounds %struct.ieee80211_iface_combination, ptr %187, i32 0, i32 2
  store i16 3, ptr %241, align 8
  %242 = trunc i32 %214 to i8
  %243 = add nuw nsw i8 %242, 1
  %244 = getelementptr inbounds %struct.ieee80211_iface_combination, ptr %187, i32 0, i32 3
  store i8 %243, ptr %244, align 2
  store ptr %202, ptr %187, align 64
  br label %264

245:                                              ; preds = %238
  store i16 1, ptr %215, align 4
  %246 = add nuw nsw i32 %214, 1
  %247 = getelementptr %struct.ieee80211_iface_limit, ptr %202, i32 %214, i32 1
  store i16 8, ptr %247, align 2
  %248 = trunc i32 %246 to i16
  %249 = getelementptr inbounds %struct.ieee80211_iface_combination, ptr %187, i32 0, i32 2
  store i16 %248, ptr %249, align 8
  %250 = trunc i32 %246 to i8
  %251 = getelementptr inbounds %struct.ieee80211_iface_combination, ptr %187, i32 0, i32 3
  store i8 %250, ptr %251, align 2
  store ptr %202, ptr %187, align 64
  br label %264

252:                                              ; preds = %230
  store i16 1, ptr %236, align 8
  %253 = getelementptr inbounds %struct.ieee80211_iface_limit, ptr %236, i32 0, i32 1
  store i16 4, ptr %253, align 2
  %254 = getelementptr %struct.ieee80211_iface_limit, ptr %236, i32 1
  store i16 1, ptr %254, align 4
  %255 = getelementptr %struct.ieee80211_iface_limit, ptr %236, i32 1, i32 1
  store i16 8, ptr %255, align 2
  %256 = getelementptr %struct.ieee80211_iface_limit, ptr %236, i32 2
  store i16 1, ptr %256, align 8
  %257 = getelementptr %struct.ieee80211_iface_limit, ptr %236, i32 2, i32 1
  store i16 256, ptr %257, align 2
  %258 = getelementptr %struct.ieee80211_iface_limit, ptr %236, i32 3
  store i16 1, ptr %258, align 4
  %259 = getelementptr %struct.ieee80211_iface_limit, ptr %236, i32 3, i32 1
  store i16 1024, ptr %259, align 2
  %260 = getelementptr %struct.ieee80211_iface_combination, ptr %187, i32 1
  %261 = getelementptr %struct.ieee80211_iface_combination, ptr %187, i32 1, i32 1
  store i32 1, ptr %261, align 8
  %262 = getelementptr %struct.ieee80211_iface_combination, ptr %187, i32 1, i32 2
  store i16 4, ptr %262, align 4
  %263 = getelementptr %struct.ieee80211_iface_combination, ptr %187, i32 1, i32 3
  store i8 4, ptr %263, align 2
  store ptr %236, ptr %260, align 4
  br label %264

264:                                              ; preds = %252, %245, %239, %223
  %265 = phi ptr [ %236, %252 ], [ null, %223 ], [ null, %245 ], [ null, %239 ]
  %266 = phi i32 [ 2, %252 ], [ 1, %223 ], [ 1, %245 ], [ 1, %239 ]
  br i1 %177, label %267, label %287

267:                                              ; preds = %264
  %268 = shl nuw nsw i32 %194, 2
  %269 = call noalias align 64 ptr @__kmalloc(i32 noundef %268, i32 noundef 3520) #20
  %270 = icmp eq ptr %269, null
  br i1 %270, label %284, label %271

271:                                              ; preds = %267
  store i16 4, ptr %269, align 64
  %272 = getelementptr inbounds %struct.ieee80211_iface_limit, ptr %269, i32 0, i32 1
  store i16 8, ptr %272, align 2
  br i1 %176, label %273, label %276

273:                                              ; preds = %271
  %274 = getelementptr %struct.ieee80211_iface_limit, ptr %269, i32 1
  store i16 1, ptr %274, align 4
  %275 = getelementptr %struct.ieee80211_iface_limit, ptr %269, i32 1, i32 1
  store i16 64, ptr %275, align 2
  br label %276

276:                                              ; preds = %273, %271
  %277 = phi i16 [ 5, %273 ], [ 4, %271 ]
  %278 = phi i8 [ 2, %273 ], [ 1, %271 ]
  %279 = getelementptr %struct.ieee80211_iface_combination, ptr %187, i32 %266
  %280 = getelementptr %struct.ieee80211_iface_combination, ptr %187, i32 %266, i32 4
  store i8 1, ptr %280, align 1
  %281 = getelementptr %struct.ieee80211_iface_combination, ptr %187, i32 %266, i32 1
  store i32 1, ptr %281, align 4
  %282 = getelementptr %struct.ieee80211_iface_combination, ptr %187, i32 %266, i32 2
  store i16 %277, ptr %282, align 4
  %283 = getelementptr %struct.ieee80211_iface_combination, ptr %187, i32 %266, i32 3
  store i8 %278, ptr %283, align 2
  store ptr %269, ptr %279, align 4
  br label %287

284:                                              ; preds = %267, %230, %189, %167
  %285 = phi ptr [ %202, %267 ], [ %202, %230 ], [ null, %189 ], [ null, %167 ]
  %286 = phi ptr [ %265, %267 ], [ null, %230 ], [ null, %189 ], [ null, %167 ]
  call void @kfree(ptr noundef %285) #17
  call void @kfree(ptr noundef %286) #17
  call void @kfree(ptr noundef null) #17
  call void @kfree(ptr noundef %187) #17
  br label %504

287:                                              ; preds = %276, %264
  %288 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 6
  store i32 %185, ptr %288, align 4
  %289 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 5
  store ptr %187, ptr %289, align 8
  br label %300

290:                                              ; preds = %300
  %291 = icmp eq i16 %306, 0
  br i1 %291, label %321, label %292

292:                                              ; preds = %290
  %293 = zext i16 %306 to i32
  %294 = getelementptr inbounds %struct.brcmf_pub, ptr %172, i32 0, i32 7
  %295 = add nsw i32 %293, -1
  %296 = call i32 @llvm.umin.i32(i32 %295, i32 15) #17
  %297 = add nuw nsw i32 %296, 1
  %298 = getelementptr %struct.brcmf_pub, ptr %172, i32 0, i32 8, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %298, ptr noundef align 4 dereferenceable(6) %294, i32 6, i1 false) #17
  %299 = icmp eq i32 %296, 0
  br i1 %299, label %321, label %310

300:                                              ; preds = %300, %287
  %301 = phi ptr [ %308, %300 ], [ %187, %287 ]
  %302 = phi i32 [ %307, %300 ], [ 0, %287 ]
  %303 = phi i16 [ %306, %300 ], [ 0, %287 ]
  %304 = getelementptr inbounds %struct.ieee80211_iface_combination, ptr %301, i32 0, i32 2
  %305 = load i16, ptr %304, align 4
  %306 = call i16 @llvm.umax.i16(i16 %303, i16 %305) #17
  %307 = add nuw nsw i32 %302, 1
  %308 = getelementptr %struct.ieee80211_iface_combination, ptr %301, i32 1
  %309 = icmp eq i32 %307, %185
  br i1 %309, label %290, label %300

310:                                              ; preds = %310, %292
  %311 = phi i32 [ %319, %310 ], [ 1, %292 ]
  %312 = getelementptr %struct.brcmf_pub, ptr %172, i32 0, i32 8, i32 %311
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %312, ptr noundef align 4 dereferenceable(6) %294, i32 6, i1 false) #17
  %313 = load i8, ptr %312, align 1
  %314 = or i8 %313, 2
  store i8 %314, ptr %312, align 1
  %315 = getelementptr i8, ptr %312, i32 5
  %316 = load i8, ptr %315, align 1
  %317 = trunc i32 %311 to i8
  %318 = xor i8 %316, %317
  store i8 %318, ptr %315, align 1
  %319 = add nuw nsw i32 %311, 1
  %320 = icmp eq i32 %311, %296
  br i1 %320, label %321, label %310, !llvm.loop !15

321:                                              ; preds = %310, %292, %290
  %322 = phi i32 [ 0, %290 ], [ 1, %292 ], [ %297, %310 ]
  %323 = getelementptr inbounds %struct.brcmf_pub, ptr %172, i32 0, i32 8
  %324 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 3
  store ptr %323, ptr %324, align 32
  %325 = trunc i32 %322 to i16
  %326 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 8
  store i16 %325, ptr %326, align 2
  %327 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 16
  store i32 1, ptr %327, align 16
  %328 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 28
  store ptr @brcmf_cipher_suites, ptr %328, align 16
  %329 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 27
  store i32 5, ptr %329, align 4
  %330 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 11) #17
  br i1 %330, label %334, label %331

331:                                              ; preds = %321
  %332 = load i32, ptr %329, align 4
  %333 = add i32 %332, -1
  store i32 %333, ptr %329, align 4
  br label %334

334:                                              ; preds = %331, %321
  %335 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 70
  store i32 14, ptr %335, align 16
  %336 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 11
  %337 = load i32, ptr %336, align 8
  %338 = or i32 %337, 3276824
  store i32 %338, ptr %336, align 8
  %339 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 6) #17
  br i1 %339, label %340, label %343

340:                                              ; preds = %334
  %341 = load i32, ptr %336, align 8
  %342 = or i32 %341, 32768
  store i32 %342, ptr %336, align 8
  br label %343

343:                                              ; preds = %340, %334
  %344 = load ptr, ptr %49, align 4
  %345 = getelementptr inbounds %struct.brcmf_pub, ptr %344, i32 0, i32 21
  %346 = load ptr, ptr %345, align 4
  %347 = getelementptr inbounds %struct.brcmf_mp_device, ptr %346, i32 0, i32 3
  %348 = load i8, ptr %347, align 4, !range !10
  %349 = icmp eq i8 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %343
  %351 = load i32, ptr %336, align 8
  %352 = or i32 %351, 8192
  store i32 %352, ptr %336, align 8
  br label %353

353:                                              ; preds = %350, %343
  %354 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 13) #17
  br i1 %354, label %355, label %367

355:                                              ; preds = %353
  %356 = getelementptr %struct.wiphy, ptr %7, i32 0, i32 14, i32 1
  %357 = load i8, ptr %356, align 1
  %358 = or i8 %357, -128
  store i8 %358, ptr %356, align 1
  %359 = getelementptr %struct.wiphy, ptr %7, i32 0, i32 14, i32 2
  %360 = load i8, ptr %359, align 1
  %361 = or i8 %360, 1
  store i8 %361, ptr %359, align 1
  %362 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 19) #17
  br i1 %362, label %363, label %367

363:                                              ; preds = %355
  %364 = getelementptr %struct.wiphy, ptr %7, i32 0, i32 14, i32 4
  %365 = load i8, ptr %364, align 1
  %366 = or i8 %365, 64
  store i8 %366, ptr %364, align 1
  br label %367

367:                                              ; preds = %363, %355, %353
  %368 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 20) #17
  br i1 %368, label %369, label %377

369:                                              ; preds = %367
  %370 = getelementptr %struct.wiphy, ptr %7, i32 0, i32 14, i32 6
  %371 = load i8, ptr %370, align 1
  %372 = or i8 %371, 4
  store i8 %372, ptr %370, align 1
  %373 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 19) #17
  br i1 %373, label %374, label %377

374:                                              ; preds = %369
  %375 = load i8, ptr %370, align 1
  %376 = or i8 %375, 8
  store i8 %376, ptr %370, align 1
  br label %377

377:                                              ; preds = %374, %369, %367
  %378 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 4
  store ptr @brcmf_txrx_stypes, ptr %378, align 4
  %379 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 42
  store i16 5000, ptr %379, align 32
  %380 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 2) #17
  br i1 %380, label %381, label %383

381:                                              ; preds = %377
  %382 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 12) #17
  call void @brcmf_pno_wiphy_params(ptr noundef %7, i1 noundef zeroext %382) #17
  br label %383

383:                                              ; preds = %381, %377
  %384 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 64
  store ptr @brcmf_vendor_cmds, ptr %384, align 4
  %385 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 66
  store i32 1, ptr %385, align 4
  %386 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 3) #17
  br i1 %386, label %387, label %421

387:                                              ; preds = %383
  %388 = icmp eq ptr %7, null
  br i1 %388, label %389, label %390, !prof !17

389:                                              ; preds = %387
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

390:                                              ; preds = %387
  %391 = getelementptr inbounds %struct.wiphy, ptr %7, i32 1, i32 0, i32 3, i32 1
  %392 = load ptr, ptr %391, align 4
  %393 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %392, i32 0, i32 10
  %394 = load ptr, ptr %393, align 4
  %395 = call ptr @kmemdup(ptr noundef nonnull @brcmf_wowlan_support, i32 noundef 28, i32 noundef 3264) #17
  %396 = icmp eq ptr %395, null
  br i1 %396, label %397, label %404

397:                                              ; preds = %390
  %398 = call i32 @net_ratelimit() #17
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %418, label %400

400:                                              ; preds = %397
  %401 = getelementptr inbounds %struct.brcmf_pub, ptr %394, i32 0, i32 2
  %402 = load ptr, ptr %401, align 4
  %403 = getelementptr inbounds %struct.wiphy, ptr %402, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %403, ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.brcmf_wiphy_wowl_params) #18
  br label %418

404:                                              ; preds = %390
  %405 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 2) #17
  br i1 %405, label %406, label %413

406:                                              ; preds = %404
  %407 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 8) #17
  br i1 %407, label %408, label %413

408:                                              ; preds = %406
  %409 = load i32, ptr %395, align 4
  %410 = or i32 %409, 256
  store i32 %410, ptr %395, align 4
  %411 = getelementptr inbounds %struct.wiphy_wowlan_support, ptr %395, i32 0, i32 5
  store i32 16, ptr %411, align 4
  %412 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %392, i32 0, i32 28, i32 4
  call void @__init_waitqueue_head(ptr noundef %412, ptr noundef nonnull @.str.226, ptr noundef nonnull @brcmf_wiphy_wowl_params.__key) #17
  br label %413

413:                                              ; preds = %408, %406, %404
  %414 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 9) #17
  br i1 %414, label %415, label %418

415:                                              ; preds = %413
  %416 = load i32, ptr %395, align 4
  %417 = or i32 %416, 24
  store i32 %417, ptr %395, align 4
  br label %418

418:                                              ; preds = %415, %413, %400, %397
  %419 = phi ptr [ @brcmf_wowlan_support, %400 ], [ @brcmf_wowlan_support, %397 ], [ %395, %415 ], [ %395, %413 ]
  %420 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 40
  store ptr %419, ptr %420, align 8
  br label %421

421:                                              ; preds = %418, %383
  %422 = call i32 @brcmf_fil_cmd_data_get(ptr noundef %49, i32 noundef 140, ptr noundef nonnull %4, i32 noundef 12) #17
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %431, label %424

424:                                              ; preds = %421
  %425 = call i32 @net_ratelimit() #17
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %505, label %427

427:                                              ; preds = %424
  %428 = getelementptr inbounds %struct.brcmf_pub, ptr %172, i32 0, i32 2
  %429 = load ptr, ptr %428, align 4
  %430 = getelementptr inbounds %struct.wiphy, ptr %429, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %430, ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.brcmf_setup_wiphy, i32 noundef %422) #18
  br label %505

431:                                              ; preds = %421
  %432 = load i32, ptr %4, align 4
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %490, label %434

434:                                              ; preds = %431
  %435 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 53
  %436 = getelementptr %struct.wiphy, ptr %7, i32 0, i32 53, i32 1
  %437 = icmp eq i32 %432, 1
  %438 = getelementptr inbounds [3 x i32], ptr %4, i32 0, i32 1
  %439 = load i32, ptr %438, align 4
  %440 = icmp eq i32 %439, 2
  br i1 %440, label %441, label %452

441:                                              ; preds = %434
  %442 = call ptr @kmemdup(ptr noundef nonnull @__wl_band_2ghz, i32 noundef 92, i32 noundef 3264) #17
  %443 = icmp eq ptr %442, null
  br i1 %443, label %504, label %444

444:                                              ; preds = %441
  %445 = call ptr @kmemdup(ptr noundef nonnull @__wl_2ghz_channels, i32 noundef 784, i32 noundef 3264) #17
  store ptr %445, ptr %442, align 4
  %446 = icmp eq ptr %445, null
  br i1 %446, label %447, label %449

447:                                              ; preds = %473, %444
  %448 = phi ptr [ %442, %444 ], [ %471, %473 ]
  call void @kfree(ptr noundef nonnull %448) #17
  br label %504

449:                                              ; preds = %444
  %450 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %442, i32 0, i32 3
  store i32 14, ptr %450, align 4
  store ptr %442, ptr %435, align 8
  %451 = load i32, ptr %438, align 4
  br label %452

452:                                              ; preds = %449, %434
  %453 = phi i32 [ %451, %449 ], [ %439, %434 ]
  %454 = icmp eq i32 %453, 1
  br i1 %454, label %455, label %465

455:                                              ; preds = %452
  %456 = call ptr @kmemdup(ptr noundef nonnull @__wl_band_5ghz, i32 noundef 92, i32 noundef 3264) #17
  %457 = icmp eq ptr %456, null
  br i1 %457, label %504, label %458

458:                                              ; preds = %455
  %459 = call ptr @kmemdup(ptr noundef nonnull @__wl_5ghz_channels, i32 noundef 1624, i32 noundef 3264) #17
  store ptr %459, ptr %456, align 4
  %460 = icmp eq ptr %459, null
  br i1 %460, label %461, label %463

461:                                              ; preds = %485, %458
  %462 = phi ptr [ %456, %458 ], [ %483, %485 ]
  call void @kfree(ptr noundef nonnull %462) #17
  br label %504

463:                                              ; preds = %458
  %464 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %456, i32 0, i32 3
  store i32 29, ptr %464, align 4
  store ptr %456, ptr %436, align 4
  br label %465

465:                                              ; preds = %463, %452
  br i1 %437, label %490, label %466

466:                                              ; preds = %465
  %467 = getelementptr inbounds [3 x i32], ptr %4, i32 0, i32 2
  %468 = load i32, ptr %467, align 4
  %469 = icmp eq i32 %468, 2
  br i1 %469, label %470, label %479

470:                                              ; preds = %466
  %471 = call ptr @kmemdup(ptr noundef nonnull @__wl_band_2ghz, i32 noundef 92, i32 noundef 3264) #17
  %472 = icmp eq ptr %471, null
  br i1 %472, label %504, label %473

473:                                              ; preds = %470
  %474 = call ptr @kmemdup(ptr noundef nonnull @__wl_2ghz_channels, i32 noundef 784, i32 noundef 3264) #17
  store ptr %474, ptr %471, align 4
  %475 = icmp eq ptr %474, null
  br i1 %475, label %447, label %476

476:                                              ; preds = %473
  %477 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %471, i32 0, i32 3
  store i32 14, ptr %477, align 4
  store ptr %471, ptr %435, align 8
  %478 = load i32, ptr %467, align 4
  br label %479

479:                                              ; preds = %476, %466
  %480 = phi i32 [ %478, %476 ], [ %468, %466 ]
  %481 = icmp eq i32 %480, 1
  br i1 %481, label %482, label %490

482:                                              ; preds = %479
  %483 = call ptr @kmemdup(ptr noundef nonnull @__wl_band_5ghz, i32 noundef 92, i32 noundef 3264) #17
  %484 = icmp eq ptr %483, null
  br i1 %484, label %504, label %485

485:                                              ; preds = %482
  %486 = call ptr @kmemdup(ptr noundef nonnull @__wl_5ghz_channels, i32 noundef 1624, i32 noundef 3264) #17
  store ptr %486, ptr %483, align 4
  %487 = icmp eq ptr %486, null
  br i1 %487, label %461, label %488

488:                                              ; preds = %485
  %489 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %483, i32 0, i32 3
  store i32 29, ptr %489, align 4
  store ptr %483, ptr %436, align 4
  br label %490

490:                                              ; preds = %488, %479, %465, %431
  %491 = getelementptr %struct.wiphy, ptr %7, i32 0, i32 53, i32 1
  %492 = load ptr, ptr %491, align 4
  %493 = icmp eq ptr %492, null
  br i1 %493, label %500, label %494

494:                                              ; preds = %490
  %495 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 18) #17
  br i1 %495, label %496, label %500

496:                                              ; preds = %494
  %497 = getelementptr %struct.wiphy, ptr %7, i32 0, i32 14, i32 3
  %498 = load i8, ptr %497, align 1
  %499 = or i8 %498, 2
  store i8 %499, ptr %497, align 1
  br label %500

500:                                              ; preds = %496, %494, %490
  %501 = getelementptr %struct.wiphy, ptr %7, i32 0, i32 14, i32 1
  %502 = load i8, ptr %501, align 1
  %503 = or i8 %502, 32
  store i8 %503, ptr %501, align 1
  call void @wiphy_read_of_freq_limits(ptr noundef %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br label %507

504:                                              ; preds = %482, %470, %461, %455, %447, %441, %284
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br label %635

505:                                              ; preds = %427, %424
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  %506 = icmp slt i32 %422, 0
  br i1 %506, label %635, label %507

507:                                              ; preds = %505, %500
  %508 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 54
  store ptr @brcmf_cfg80211_reg_notifier, ptr %508, align 32
  %509 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 12
  %510 = load i32, ptr %509, align 4
  %511 = or i32 %510, 1
  store i32 %511, ptr %509, align 4
  call void @wiphy_apply_custom_regulatory(ptr noundef %7, ptr noundef nonnull @brcmf_regdom) #17
  %512 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 53
  %513 = load ptr, ptr %512, align 8
  %514 = icmp eq ptr %513, null
  br i1 %514, label %519, label %515

515:                                              ; preds = %507
  %516 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %513, i32 0, i32 5
  %517 = load i16, ptr %516, align 2
  %518 = or i16 %517, 2
  store i16 %518, ptr %516, align 2
  br label %519

519:                                              ; preds = %515, %507
  %520 = phi ptr [ %516, %515 ], [ null, %507 ]
  %521 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 9) #17
  br i1 %521, label %522, label %524

522:                                              ; preds = %519
  %523 = getelementptr inbounds %struct.cfg80211_ops, ptr %1, i32 0, i32 71
  store ptr @brcmf_cfg80211_set_rekey_data, ptr %523, align 4
  br label %524

524:                                              ; preds = %522, %519
  %525 = call i32 @wiphy_register(ptr noundef %7) #17
  %526 = icmp slt i32 %525, 0
  br i1 %526, label %527, label %533

527:                                              ; preds = %524
  %528 = call i32 @net_ratelimit() #17
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %635, label %530

530:                                              ; preds = %527
  %531 = load ptr, ptr %6, align 4
  %532 = getelementptr inbounds %struct.wiphy, ptr %531, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %532, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.brcmf_cfg80211_attach, i32 noundef %525) #18
  br label %635

533:                                              ; preds = %524
  %534 = call fastcc i32 @brcmf_setup_wiphybands(ptr noundef nonnull %20)
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %542, label %536

536:                                              ; preds = %533
  %537 = call i32 @net_ratelimit() #17
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %633, label %539

539:                                              ; preds = %536
  %540 = load ptr, ptr %6, align 4
  %541 = getelementptr inbounds %struct.wiphy, ptr %540, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %541, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.brcmf_cfg80211_attach, i32 noundef %534) #18
  br label %633

542:                                              ; preds = %533
  %543 = icmp eq ptr %520, null
  br i1 %543, label %556, label %544

544:                                              ; preds = %542
  %545 = load i16, ptr %520, align 2
  %546 = and i16 %545, 2
  %547 = icmp eq i16 %546, 0
  br i1 %547, label %556, label %548

548:                                              ; preds = %544
  %549 = call fastcc i32 @brcmf_enable_bw40_2g(ptr noundef nonnull %20)
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %553

551:                                              ; preds = %548
  %552 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %49, ptr noundef nonnull @.str.17, i32 noundef -1) #17
  br label %556

553:                                              ; preds = %548
  %554 = load i16, ptr %520, align 2
  %555 = and i16 %554, -3
  store i16 %555, ptr %520, align 2
  br label %556

556:                                              ; preds = %553, %551, %544, %542
  %557 = call i32 @brcmf_fweh_activate_events(ptr noundef %49) #17
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %565, label %559

559:                                              ; preds = %556
  %560 = call i32 @net_ratelimit() #17
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %633, label %562

562:                                              ; preds = %559
  %563 = load ptr, ptr %6, align 4
  %564 = getelementptr inbounds %struct.wiphy, ptr %563, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %564, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.brcmf_cfg80211_attach, i32 noundef %557) #18
  br label %633

565:                                              ; preds = %556
  %566 = call i32 @brcmf_p2p_attach(ptr noundef nonnull %20, i1 noundef zeroext %2) #17
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %574, label %568

568:                                              ; preds = %565
  %569 = call i32 @net_ratelimit() #17
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %633, label %571

571:                                              ; preds = %568
  %572 = load ptr, ptr %6, align 4
  %573 = getelementptr inbounds %struct.wiphy, ptr %572, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %573, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.brcmf_cfg80211_attach, i32 noundef %566) #18
  br label %633

574:                                              ; preds = %565
  %575 = call i32 @brcmf_btcoex_attach(ptr noundef nonnull %20) #17
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %585, label %577

577:                                              ; preds = %574
  %578 = call i32 @net_ratelimit() #17
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %583, label %580

580:                                              ; preds = %577
  %581 = load ptr, ptr %6, align 4
  %582 = getelementptr inbounds %struct.wiphy, ptr %581, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %582, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.brcmf_cfg80211_attach, i32 noundef %575) #18
  br label %583

583:                                              ; preds = %580, %577
  %584 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 2
  call void @brcmf_p2p_detach(ptr noundef %584) #17
  br label %633

585:                                              ; preds = %574
  %586 = call i32 @brcmf_pno_attach(ptr noundef nonnull %20) #17
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %596, label %588

588:                                              ; preds = %585
  %589 = call i32 @net_ratelimit() #17
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %594, label %591

591:                                              ; preds = %588
  %592 = load ptr, ptr %6, align 4
  %593 = getelementptr inbounds %struct.wiphy, ptr %592, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %593, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.brcmf_cfg80211_attach, i32 noundef %586) #18
  br label %594

594:                                              ; preds = %591, %588
  call void @brcmf_btcoex_detach(ptr noundef nonnull %20) #17
  %595 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 2
  call void @brcmf_p2p_detach(ptr noundef %595) #17
  br label %633

596:                                              ; preds = %585
  %597 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 6) #17
  br i1 %597, label %598, label %607

598:                                              ; preds = %596
  %599 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %49, ptr noundef nonnull @.str.22, i32 noundef 1) #17
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %604, label %601

601:                                              ; preds = %598
  %602 = load i32, ptr %336, align 8
  %603 = and i32 %602, -32769
  store i32 %603, ptr %336, align 8
  br label %607

604:                                              ; preds = %598
  %605 = load ptr, ptr %29, align 4
  %606 = call i32 @brcmf_fweh_register(ptr noundef %605, i32 noundef 92, ptr noundef nonnull @brcmf_notify_tdls_peer_event) #17
  br label %607

607:                                              ; preds = %604, %601, %596
  %608 = call i32 @brcmf_fweh_activate_events(ptr noundef %49) #17
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %616, label %610

610:                                              ; preds = %607
  %611 = call i32 @net_ratelimit() #17
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %631, label %613

613:                                              ; preds = %610
  %614 = load ptr, ptr %6, align 4
  %615 = getelementptr inbounds %struct.wiphy, ptr %614, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %615, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.brcmf_cfg80211_attach, i32 noundef %608) #18
  br label %631

616:                                              ; preds = %607
  %617 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %49, i32 noundef 7) #17
  br i1 %617, label %618, label %640

618:                                              ; preds = %616
  %619 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 13
  %620 = load i32, ptr %619, align 32
  %621 = or i32 %620, 1073741824
  store i32 %621, ptr %619, align 32
  %622 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 40
  %623 = load ptr, ptr %622, align 8
  %624 = icmp eq ptr %623, null
  br i1 %624, label %640, label %625

625:                                              ; preds = %618
  %626 = load i32, ptr %623, align 4
  %627 = and i32 %626, 256
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %640, label %629

629:                                              ; preds = %625
  %630 = or i32 %620, -1073741824
  store i32 %630, ptr %619, align 32
  br label %640

631:                                              ; preds = %613, %610
  call void @brcmf_pno_detach(ptr noundef nonnull %20) #17
  call void @brcmf_btcoex_detach(ptr noundef nonnull %20) #17
  %632 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 2
  call void @brcmf_p2p_detach(ptr noundef %632) #17
  br label %633

633:                                              ; preds = %631, %594, %583, %571, %568, %562, %559, %539, %536
  %634 = load ptr, ptr %20, align 8
  call void @wiphy_unregister(ptr noundef %634) #17
  br label %635

635:                                              ; preds = %633, %530, %527, %505, %504, %164, %161
  call fastcc void @wl_deinit_priv(ptr noundef nonnull %20)
  %636 = load ptr, ptr %46, align 4
  %637 = load ptr, ptr %44, align 8
  %638 = getelementptr inbounds %struct.list_head, ptr %637, i32 0, i32 1
  store ptr %636, ptr %638, align 4
  store volatile ptr %637, ptr %636, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %46, align 4
  call void @kfree(ptr noundef nonnull %37) #17
  store ptr null, ptr %158, align 4
  br label %639

639:                                              ; preds = %635, %97, %39, %28
  call fastcc void @brcmf_free_wiphy(ptr noundef %7)
  call void @kfree(ptr noundef nonnull %20) #17
  br label %640

640:                                              ; preds = %639, %629, %625, %618, %616, %25, %22, %15, %12
  %641 = phi ptr [ null, %639 ], [ null, %15 ], [ null, %12 ], [ null, %25 ], [ null, %22 ], [ %20, %618 ], [ %20, %625 ], [ %20, %629 ], [ %20, %616 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret ptr %641
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_int_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_d11_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_cfg80211_reg_notifier(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.brcmf_fil_country_le, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !17

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @brcmf_get_ifp(ptr noundef %10, i32 noundef 0) #17
  %12 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  %13 = getelementptr %struct.regulatory_request, ptr %1, i32 0, i32 4
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 48
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = getelementptr %struct.regulatory_request, ptr %1, i32 0, i32 4, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 48
  br i1 %19, label %113, label %31

20:                                               ; preds = %6
  %21 = add i8 %14, -91
  %22 = icmp ult i8 %21, -26
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = getelementptr %struct.regulatory_request, ptr %1, i32 0, i32 4, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = add i8 %25, -91
  %27 = icmp ult i8 %26, -26
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %11, ptr noundef nonnull @.str.228, ptr noundef nonnull %3, i32 noundef 12) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %50, label %43

31:                                               ; preds = %23, %20, %16
  %32 = tail call i32 @net_ratelimit() #17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %113, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.brcmf_pub, ptr %12, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.wiphy, ptr %36, i32 0, i32 56
  %38 = load i8, ptr %13, align 4
  %39 = zext i8 %38 to i32
  %40 = getelementptr %struct.regulatory_request, ptr %1, i32 0, i32 4, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.227, ptr noundef nonnull @__func__.brcmf_cfg80211_reg_notifier, i32 noundef %39, i32 noundef %42) #18
  br label %113

43:                                               ; preds = %28
  %44 = call i32 @net_ratelimit() #17
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %113, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.brcmf_pub, ptr %12, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.wiphy, ptr %48, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.229, ptr noundef nonnull @__func__.brcmf_cfg80211_reg_notifier, i32 noundef %29) #18
  br label %113

50:                                               ; preds = %28
  %51 = load ptr, ptr %11, align 4
  %52 = getelementptr inbounds %struct.brcmf_pub, ptr %51, i32 0, i32 21
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.brcmf_mp_device, ptr %53, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %113, label %57

57:                                               ; preds = %50
  %58 = load i8, ptr %13, align 1
  %59 = load i8, ptr %3, align 4
  %60 = icmp eq i8 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i8, ptr %24, align 1
  %63 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %62, %64
  br i1 %65, label %113, label %66

66:                                               ; preds = %61, %57
  %67 = load i32, ptr %55, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %113

69:                                               ; preds = %84, %66
  %70 = phi i32 [ %85, %84 ], [ 0, %66 ]
  %71 = phi i32 [ %77, %84 ], [ -1, %66 ]
  %72 = getelementptr %struct.brcmfmac_pd_cc, ptr %55, i32 0, i32 1, i32 %70
  %73 = load i8, ptr %72, align 4
  %74 = icmp eq i8 %73, 0
  %75 = icmp eq i32 %71, -1
  %76 = select i1 %74, i1 %75, i1 false
  %77 = select i1 %76, i32 %70, i32 %71
  %78 = icmp eq i8 %73, %58
  br i1 %78, label %79, label %84

79:                                               ; preds = %69
  %80 = getelementptr [4 x i8], ptr %72, i32 0, i32 1
  %81 = load i8, ptr %80, align 1
  %82 = load i8, ptr %24, align 1
  %83 = icmp eq i8 %81, %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %79, %69
  %85 = add nuw nsw i32 %70, 1
  %86 = icmp eq i32 %85, %67
  br i1 %86, label %87, label %69

87:                                               ; preds = %84
  %88 = icmp eq i32 %77, -1
  br i1 %88, label %113, label %89

89:                                               ; preds = %87
  %90 = load i8, ptr %24, align 1
  br label %91

91:                                               ; preds = %89, %79
  %92 = phi i8 [ %90, %89 ], [ %81, %79 ]
  %93 = phi i32 [ %77, %89 ], [ %70, %79 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false) #17
  %94 = getelementptr %struct.brcmfmac_pd_cc, ptr %55, i32 0, i32 1, i32 %93, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.brcmf_fil_country_le, ptr %3, i32 0, i32 1
  store i32 %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.brcmf_fil_country_le, ptr %3, i32 0, i32 2
  %98 = getelementptr %struct.brcmfmac_pd_cc, ptr %55, i32 0, i32 1, i32 %93, i32 1
  %99 = load i32, ptr %98, align 4
  store i32 %99, ptr %97, align 4
  store i8 %58, ptr %3, align 4
  %100 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  store i8 %92, ptr %100, align 1
  %101 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 0, ptr %101, align 2
  %102 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %11, ptr noundef nonnull @.str.228, ptr noundef nonnull %3, i32 noundef 12) #17
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %91
  %105 = call i32 @net_ratelimit() #17
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.brcmf_pub, ptr %12, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.wiphy, ptr %109, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.230, ptr noundef nonnull @__func__.brcmf_cfg80211_reg_notifier) #18
  br label %113

111:                                              ; preds = %91
  %112 = call fastcc i32 @brcmf_setup_wiphybands(ptr noundef %8)
  br label %113

113:                                              ; preds = %111, %107, %104, %87, %66, %61, %50, %46, %43, %34, %31, %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_apply_custom_regulatory(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_set_rekey_data(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.brcmf_gtk_keyinfo_le, align 1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !17

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %1, i32 1408
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  %13 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, ptr %2, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef align 1 dereferenceable(16) %14, i32 16, i1 false)
  %15 = getelementptr inbounds %struct.brcmf_gtk_keyinfo_le, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %15, ptr noundef align 1 dereferenceable(16) %16, i32 16, i1 false)
  %17 = getelementptr inbounds %struct.brcmf_gtk_keyinfo_le, ptr %4, i32 0, i32 2
  %18 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, ptr %2, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = load i64, ptr %19, align 1
  store i64 %20, ptr %17, align 1
  %21 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %12, ptr noundef nonnull @.str.232, ptr noundef nonnull %4, i32 noundef 40) #17
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = call i32 @net_ratelimit() #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.brcmf_pub, ptr %11, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.233, ptr noundef nonnull @__func__.brcmf_cfg80211_set_rekey_data, i32 noundef %21) #18
  br label %30

30:                                               ; preds = %26, %23, %7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiphy_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_setup_wiphybands(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.brcmu_chan, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @brcmf_get_ifp(ptr noundef %14, i32 noundef 0) #17
  %16 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  store i64 4294967297, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  store i32 0, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #17
  store i32 0, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #17
  store i32 0, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #17
  store i32 0, ptr %12, align 4
  %17 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %15, ptr noundef nonnull @.str.234, ptr noundef nonnull %7) #17
  %18 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %15, ptr noundef nonnull @.str.235, ptr noundef nonnull %6) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = call i32 @net_ratelimit() #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.wiphy, ptr %25, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.236, ptr noundef nonnull @__func__.brcmf_setup_wiphybands, i32 noundef %18) #18
  br label %61

27:                                               ; preds = %1
  %28 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 2, ptr %4, align 4
  %29 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %15, ptr noundef nonnull @.str.244, ptr noundef nonnull %4) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, ptr %4, align 4
  store i32 %32, ptr %8, align 8
  store i32 1, ptr %4, align 4
  %33 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %15, ptr noundef nonnull @.str.244, ptr noundef nonnull %4) #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, ptr %4, align 4
  %37 = getelementptr inbounds i32, ptr %8, i32 1
  store i32 %36, ptr %37, align 4
  br label %60

38:                                               ; preds = %31
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 6763, i32 noundef 9, ptr noundef null) #17
  br label %60

39:                                               ; preds = %27
  store i32 0, ptr %5, align 4
  %40 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %15, ptr noundef nonnull @.str.245, ptr noundef nonnull %5) #17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, ptr %5, align 4
  switch i32 %43, label %53 [
    i32 1, label %44
    i32 2, label %45
    i32 0, label %48
  ]

44:                                               ; preds = %42
  store i32 3, ptr %8, align 8
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ 3, %44 ], [ 1, %42 ]
  %47 = getelementptr inbounds i32, ptr %8, i32 1
  store i32 3, ptr %47, align 4
  br label %48

48:                                               ; preds = %45, %42, %39
  %49 = phi i32 [ 3, %45 ], [ 1, %42 ], [ 1, %39 ]
  %50 = phi i32 [ %46, %45 ], [ 1, %42 ], [ 1, %39 ]
  %51 = or i32 %50, 1
  store i32 %51, ptr %8, align 8
  %52 = getelementptr inbounds i32, ptr %8, i32 1
  store i32 %49, ptr %52, align 4
  br label %60

53:                                               ; preds = %42
  %54 = call i32 @net_ratelimit() #17
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.wiphy, ptr %58, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.246, ptr noundef nonnull @__func__.brcmf_get_bwcap) #18
  br label %60

60:                                               ; preds = %56, %53, %48, %38, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  br label %61

61:                                               ; preds = %60, %23, %20
  %62 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %15, ptr noundef nonnull @.str.237, ptr noundef nonnull %9) #17
  switch i32 %62, label %69 [
    i32 0, label %76
    i32 -52, label %63
  ]

63:                                               ; preds = %61
  %64 = load i1, ptr @brcmf_setup_wiphybands.__print_once, align 1
  br i1 %64, label %87, label %65

65:                                               ; preds = %63
  store i1 true, ptr @brcmf_setup_wiphybands.__print_once, align 1
  %66 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.wiphy, ptr %67, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.238, ptr noundef nonnull @__func__.brcmf_setup_wiphybands) #18
  br label %87

69:                                               ; preds = %61
  %70 = call i32 @net_ratelimit() #17
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.wiphy, ptr %74, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.239, ptr noundef nonnull @__func__.brcmf_setup_wiphybands, i32 noundef %62) #18
  br label %87

76:                                               ; preds = %61
  %77 = load i32, ptr %9, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %79, %76
  %80 = phi i32 [ %84, %79 ], [ 0, %76 ]
  %81 = phi i32 [ %83, %79 ], [ %77, %76 ]
  %82 = add i32 %81, -1
  %83 = and i32 %82, %81
  %84 = add i32 %80, 1
  %85 = icmp eq i32 %83, 0
  br i1 %85, label %86, label %79

86:                                               ; preds = %79
  store i32 0, ptr %9, align 4
  br label %87

87:                                               ; preds = %86, %76, %72, %69, %65, %63
  %88 = phi i32 [ 1, %69 ], [ 1, %72 ], [ 1, %63 ], [ 1, %65 ], [ %84, %86 ], [ 0, %76 ]
  %89 = load ptr, ptr %0, align 4
  %90 = load ptr, ptr %13, align 4
  %91 = call ptr @brcmf_get_ifp(ptr noundef %90, i32 noundef 0) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #17, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !annotation !8
  %92 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %93 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef 3520, i32 noundef 1536) #19
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  br label %272

96:                                               ; preds = %87
  %97 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %91, ptr noundef nonnull @.str.247, ptr noundef nonnull %93, i32 noundef 1536) #17
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %96
  %100 = call i32 @net_ratelimit() #17
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %269, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.brcmf_pub, ptr %90, i32 0, i32 2
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.wiphy, ptr %104, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.248, ptr noundef nonnull @__func__.brcmf_construct_chaninfo, i32 noundef %97) #18
  br label %269

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.wiphy, ptr %89, i32 0, i32 53
  %108 = load ptr, ptr %107, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %121, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %108, i32 0, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %114, %110
  %115 = phi i32 [ %118, %114 ], [ 0, %110 ]
  %116 = load ptr, ptr %108, align 4
  %117 = getelementptr %struct.ieee80211_channel, ptr %116, i32 %115, i32 4
  store i32 1, ptr %117, align 4
  %118 = add nuw i32 %115, 1
  %119 = load i32, ptr %111, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %114, label %121

121:                                              ; preds = %114, %110, %106
  %122 = getelementptr %struct.wiphy, ptr %89, i32 0, i32 53, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %136, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %123, i32 0, i32 3
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %129, %125
  %130 = phi i32 [ %133, %129 ], [ 0, %125 ]
  %131 = load ptr, ptr %123, align 4
  %132 = getelementptr %struct.ieee80211_channel, ptr %131, i32 %130, i32 4
  store i32 1, ptr %132, align 4
  %133 = add nuw i32 %130, 1
  %134 = load i32, ptr %126, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %129, label %136

136:                                              ; preds = %129, %125, %121
  %137 = load i32, ptr %93, align 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  call void @kfree(ptr noundef nonnull %93) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  br label %280

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 26, i32 2
  %142 = getelementptr inbounds %struct.brcmu_chan, ptr %2, i32 0, i32 3
  %143 = getelementptr inbounds %struct.brcmu_chan, ptr %2, i32 0, i32 4
  %144 = getelementptr inbounds %struct.brcmu_chan, ptr %2, i32 0, i32 2
  %145 = getelementptr inbounds %struct.brcmu_chan, ptr %2, i32 0, i32 5
  %146 = getelementptr inbounds %struct.wiphy, ptr %89, i32 0, i32 56
  %147 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 26, i32 1
  %148 = getelementptr inbounds %struct.brcmf_pub, ptr %90, i32 0, i32 2
  br label %149

149:                                              ; preds = %265, %140
  %150 = phi i32 [ 0, %140 ], [ %267, %265 ]
  %151 = phi i32 [ 0, %140 ], [ %266, %265 ]
  %152 = getelementptr %struct.brcmf_chanspec_list, ptr %93, i32 0, i32 1, i32 %150
  %153 = load i32, ptr %152, align 4
  %154 = trunc i32 %153 to i16
  store i16 %154, ptr %2, align 4
  %155 = load ptr, ptr %141, align 4
  call void %155(ptr noundef nonnull %2) #17
  %156 = load i8, ptr %142, align 4
  switch i8 %156, label %158 [
    i8 0, label %166
    i8 1, label %157
  ]

157:                                              ; preds = %149
  br label %166

158:                                              ; preds = %149
  %159 = call i32 @net_ratelimit() #17
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %265, label %161

161:                                              ; preds = %158
  %162 = load ptr, ptr %148, align 4
  %163 = getelementptr inbounds %struct.wiphy, ptr %162, i32 0, i32 56
  %164 = load i16, ptr %2, align 4
  %165 = zext i16 %164 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.249, ptr noundef nonnull @__func__.brcmf_construct_chaninfo, i32 noundef %165) #18
  br label %265

166:                                              ; preds = %157, %149
  %167 = phi ptr [ %122, %157 ], [ %107, %149 ]
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %265, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %168, i32 0, i32 2
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr i32, ptr %8, i32 %172
  %174 = load i32, ptr %173, align 4
  %175 = and i32 %174, 2
  %176 = icmp eq i32 %175, 0
  %177 = load i32, ptr %143, align 4
  %178 = icmp eq i32 %177, 1
  %179 = select i1 %176, i1 %178, i1 false
  br i1 %179, label %265, label %180

180:                                              ; preds = %170
  %181 = and i32 %174, 4
  %182 = icmp eq i32 %181, 0
  %183 = icmp eq i32 %177, 2
  %184 = select i1 %182, i1 %183, i1 false
  br i1 %184, label %265, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %168, i32 0, i32 3
  %187 = load i32, ptr %186, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %204, label %189

189:                                              ; preds = %185
  %190 = load ptr, ptr %168, align 4
  %191 = load i8, ptr %144, align 1
  %192 = zext i8 %191 to i16
  br label %193

193:                                              ; preds = %198, %189
  %194 = phi i32 [ 0, %189 ], [ %199, %198 ]
  %195 = getelementptr %struct.ieee80211_channel, ptr %190, i32 %194, i32 3
  %196 = load i16, ptr %195, align 2
  %197 = icmp eq i16 %196, %192
  br i1 %197, label %201, label %198

198:                                              ; preds = %193
  %199 = add nuw i32 %194, 1
  %200 = icmp eq i32 %199, %187
  br i1 %200, label %204, label %193

201:                                              ; preds = %193
  %202 = getelementptr %struct.ieee80211_channel, ptr %190, i32 %194
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %212

204:                                              ; preds = %201, %198, %185
  %205 = call i32 @net_ratelimit() #17
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %265, label %207

207:                                              ; preds = %204
  %208 = load ptr, ptr %148, align 4
  %209 = getelementptr inbounds %struct.wiphy, ptr %208, i32 0, i32 56
  %210 = load i8, ptr %144, align 1
  %211 = zext i8 %210 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str.250, ptr noundef nonnull @__func__.brcmf_construct_chaninfo, i32 noundef %211) #18
  br label %265

212:                                              ; preds = %201
  %213 = getelementptr %struct.ieee80211_channel, ptr %190, i32 %194, i32 9
  %214 = load i32, ptr %213, align 4
  %215 = and i32 %214, 1
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %265

217:                                              ; preds = %212
  switch i32 %177, label %244 [
    i32 4, label %218
    i32 2, label %222
    i32 1, label %226
    i32 0, label %245
  ]

218:                                              ; preds = %217
  %219 = getelementptr %struct.ieee80211_channel, ptr %190, i32 %194, i32 4
  %220 = load i32, ptr %219, align 4
  %221 = and i32 %220, -257
  store i32 %221, ptr %219, align 4
  br label %265

222:                                              ; preds = %217
  %223 = getelementptr %struct.ieee80211_channel, ptr %190, i32 %194, i32 4
  %224 = load i32, ptr %223, align 4
  %225 = and i32 %224, -129
  store i32 %225, ptr %223, align 4
  br label %265

226:                                              ; preds = %217
  %227 = getelementptr %struct.ieee80211_channel, ptr %190, i32 %194, i32 4
  %228 = load i32, ptr %227, align 4
  %229 = and i32 %228, 48
  %230 = load i32, ptr %145, align 4
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %237

232:                                              ; preds = %226
  %233 = icmp eq i32 %229, 48
  %234 = and i32 %228, -49
  %235 = select i1 %233, i32 %234, i32 %228
  %236 = or i32 %235, 16
  br label %242

237:                                              ; preds = %226
  %238 = and i32 %228, -49
  store i32 %238, ptr %227, align 4
  %239 = icmp eq i32 %229, 48
  br i1 %239, label %240, label %265

240:                                              ; preds = %237
  %241 = or i32 %238, 32
  br label %242

242:                                              ; preds = %240, %232
  %243 = phi i32 [ %241, %240 ], [ %236, %232 ]
  store i32 %243, ptr %227, align 4
  br label %265

244:                                              ; preds = %217
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %146, ptr noundef nonnull @.str.251, i32 noundef %177) #18
  br label %245

245:                                              ; preds = %244, %217
  %246 = getelementptr %struct.ieee80211_channel, ptr %190, i32 %194, i32 4
  store i32 432, ptr %246, align 4
  store i32 0, ptr %143, align 4
  %247 = load ptr, ptr %147, align 4
  call void %247(ptr noundef nonnull %2) #17
  %248 = load i16, ptr %2, align 4
  %249 = zext i16 %248 to i32
  store i32 %249, ptr %3, align 4
  %250 = call i32 @brcmf_fil_bsscfg_int_get(ptr noundef %91, ptr noundef nonnull @.str.252, ptr noundef nonnull %3) #17
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %265

252:                                              ; preds = %245
  %253 = load i32, ptr %3, align 4
  %254 = and i32 %253, 8
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %252
  %257 = load i32, ptr %246, align 4
  %258 = or i32 %257, 10
  store i32 %258, ptr %246, align 4
  br label %259

259:                                              ; preds = %256, %252
  %260 = and i32 %253, 32
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %259
  %263 = load i32, ptr %246, align 4
  %264 = or i32 %263, 2
  store i32 %264, ptr %246, align 4
  br label %265

265:                                              ; preds = %262, %259, %245, %242, %237, %222, %218, %212, %207, %204, %180, %170, %166, %161, %158
  %266 = phi i32 [ %151, %170 ], [ %151, %180 ], [ %151, %212 ], [ %250, %245 ], [ 0, %262 ], [ 0, %259 ], [ %151, %222 ], [ %151, %218 ], [ %151, %207 ], [ %151, %204 ], [ %151, %166 ], [ %151, %161 ], [ %151, %158 ], [ %151, %237 ], [ %151, %242 ]
  %267 = add nuw i32 %150, 1
  %268 = icmp eq i32 %267, %137
  br i1 %268, label %270, label %149

269:                                              ; preds = %102, %99
  call void @kfree(ptr noundef nonnull %93) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  br label %272

270:                                              ; preds = %265
  call void @kfree(ptr noundef nonnull %93) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  %271 = icmp eq i32 %266, 0
  br i1 %271, label %280, label %272

272:                                              ; preds = %270, %269, %95
  %273 = phi i32 [ -12, %95 ], [ %266, %270 ], [ %97, %269 ]
  %274 = call i32 @net_ratelimit() #17
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %379, label %276

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 2
  %278 = load ptr, ptr %277, align 4
  %279 = getelementptr inbounds %struct.wiphy, ptr %278, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %279, ptr noundef nonnull @.str.240, ptr noundef nonnull @__func__.brcmf_setup_wiphybands, i32 noundef %273) #18
  br label %379

280:                                              ; preds = %270, %139
  %281 = load i32, ptr %7, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %289, label %283

283:                                              ; preds = %280
  %284 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %15, ptr noundef nonnull @.str.241, ptr noundef nonnull %10) #17
  %285 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %15, ptr noundef nonnull @.str.242, ptr noundef nonnull %11) #17
  %286 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %15, ptr noundef nonnull @.str.243, ptr noundef nonnull %12) #17
  %287 = load i32, ptr %7, align 4
  %288 = icmp eq i32 %287, 0
  br label %289

289:                                              ; preds = %283, %280
  %290 = phi i1 [ %288, %283 ], [ true, %280 ]
  %291 = load i32, ptr %6, align 4
  %292 = icmp eq i32 %291, 0
  %293 = load i32, ptr %10, align 4
  %294 = load i32, ptr %11, align 4
  %295 = load i32, ptr %12, align 4
  %296 = icmp eq i32 %88, 0
  %297 = shl i32 %294, 12
  %298 = and i32 %297, 4096
  %299 = shl i32 %294, 19
  %300 = and i32 %299, 1048576
  %301 = and i32 %294, 3
  %302 = and i32 %295, 1
  %303 = shl nuw nsw i32 %302, 11
  %304 = or i32 %302, %301
  %305 = and i32 %295, 2
  %306 = shl nuw nsw i32 %305, 18
  %307 = or i32 %300, %298
  %308 = or i32 %307, %303
  %309 = or i32 %308, %306
  %310 = or i32 %304, %305
  %311 = icmp ne i32 %310, 0
  %312 = or i32 %295, %294
  %313 = icmp ne i32 %312, 0
  %314 = icmp ugt i32 %293, 1
  %315 = and i1 %314, %313
  %316 = shl i32 %293, 16
  %317 = add i32 %316, -65536
  %318 = or i1 %311, %315
  br label %319

319:                                              ; preds = %376, %289
  %320 = phi i32 [ 0, %289 ], [ %377, %376 ]
  %321 = getelementptr %struct.wiphy, ptr %16, i32 0, i32 53, i32 %320
  %322 = load ptr, ptr %321, align 4
  %323 = icmp eq ptr %322, null
  br i1 %323, label %376, label %324

324:                                              ; preds = %319
  br i1 %292, label %342, label %325

325:                                              ; preds = %324
  %326 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %322, i32 0, i32 5
  %327 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %322, i32 0, i32 5, i32 1
  store i8 1, ptr %327, align 2
  %328 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %322, i32 0, i32 2
  %329 = load i32, ptr %328, align 4
  %330 = getelementptr i32, ptr %8, i32 %329
  %331 = load i32, ptr %330, align 4
  %332 = and i32 %331, 2
  %333 = icmp eq i32 %332, 0
  %334 = load i16, ptr %326, align 4
  %335 = or i16 %334, 66
  %336 = select i1 %333, i16 %334, i16 %335
  %337 = or i16 %336, 4128
  store i16 %337, ptr %326, align 4
  %338 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %322, i32 0, i32 5, i32 2
  store i8 3, ptr %338, align 1
  %339 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %322, i32 0, i32 5, i32 3
  store i8 7, ptr %339, align 4
  %340 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %322, i32 0, i32 5, i32 4
  call void @llvm.memset.p0.i32(ptr align 1 %340, i8 -1, i32 %88, i1 false) #17
  %341 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %322, i32 0, i32 5, i32 4, i32 2
  store i8 1, ptr %341, align 1
  br label %342

342:                                              ; preds = %325, %324
  br i1 %290, label %376, label %343

343:                                              ; preds = %342
  %344 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %322, i32 0, i32 2
  %345 = load i32, ptr %344, align 4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %376, label %347

347:                                              ; preds = %343
  %348 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %322, i32 0, i32 6
  store i8 1, ptr %348, align 4
  %349 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %322, i32 0, i32 6, i32 1
  %350 = load i32, ptr %349, align 4
  %351 = or i32 %350, 32
  store i32 %351, ptr %349, align 4
  %352 = getelementptr i32, ptr %8, i32 %345
  %353 = load i32, ptr %352, align 4
  %354 = and i32 %353, 8
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %358, label %356

356:                                              ; preds = %347
  %357 = or i32 %350, 100
  store i32 %357, ptr %349, align 4
  br label %358

358:                                              ; preds = %356, %347
  %359 = phi i32 [ %357, %356 ], [ %351, %347 ]
  br i1 %296, label %367, label %360

360:                                              ; preds = %360, %358
  %361 = phi i32 [ %365, %360 ], [ 0, %358 ]
  %362 = phi i16 [ %364, %360 ], [ -1, %358 ]
  %363 = shl i16 %362, 2
  %364 = or i16 %363, 2
  %365 = add nuw i32 %361, 1
  %366 = icmp eq i32 %365, %88
  br i1 %366, label %367, label %360

367:                                              ; preds = %360, %358
  %368 = phi i16 [ -1, %358 ], [ %364, %360 ]
  %369 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %322, i32 0, i32 6, i32 2
  store i16 %368, ptr %369, align 4
  %370 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %322, i32 0, i32 6, i32 2, i32 2
  store i16 %368, ptr %370, align 4
  br i1 %318, label %371, label %376

371:                                              ; preds = %367
  %372 = or i32 %309, %359
  %373 = or i32 %317, %372
  %374 = or i32 %373, 201342976
  %375 = select i1 %315, i32 %374, i32 %372
  store i32 %375, ptr %349, align 4
  br label %376

376:                                              ; preds = %371, %367, %343, %342, %319
  %377 = add nuw nsw i32 %320, 1
  %378 = icmp eq i32 %377, 6
  br i1 %378, label %379, label %319

379:                                              ; preds = %376, %276, %272
  %380 = phi i32 [ %273, %276 ], [ %273, %272 ], [ 0, %376 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  ret i32 %380
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_enable_bw40_2g(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.brcmf_fil_bwcap_le, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmu_chan, align 8
  %5 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @brcmf_get_ifp(ptr noundef %6, i32 noundef 0) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  store i64 0, ptr %4, align 8, !annotation !8
  store i32 1, ptr %3, align 4
  %8 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %7, ptr noundef nonnull @.str.244, ptr noundef nonnull %3) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  store i32 2, ptr %2, align 8
  %11 = getelementptr inbounds %struct.brcmf_fil_bwcap_le, ptr %2, i32 0, i32 1
  store i32 3, ptr %11, align 4
  %12 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %7, ptr noundef nonnull @.str.244, ptr noundef nonnull %2, i32 noundef 8) #17
  br label %15

13:                                               ; preds = %1
  store i32 1, ptr %3, align 4
  %14 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %7, ptr noundef nonnull @.str.245, i32 noundef 1) #17
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %14, %13 ], [ %12, %10 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %105

18:                                               ; preds = %15
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %20 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 1536) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %105, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 3
  store i8 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 4
  store i32 1, ptr %24, align 8
  %25 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 5
  store i32 -1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 1
  store i8 0, ptr %26, align 2
  %27 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 26, i32 1
  %28 = load ptr, ptr %27, align 4
  call void %28(ptr noundef nonnull %4) #17
  %29 = load i16, ptr %4, align 8
  store i16 %29, ptr %20, align 8
  %30 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %7, ptr noundef nonnull @.str.247, ptr noundef nonnull %20, i32 noundef 1536) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %22
  %33 = call i32 @net_ratelimit() #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %103, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.wiphy, ptr %37, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.248, ptr noundef nonnull @__func__.brcmf_enable_bw40_2g, i32 noundef %30) #18
  br label %103

39:                                               ; preds = %22
  %40 = load ptr, ptr %0, align 4
  %41 = getelementptr inbounds %struct.wiphy, ptr %40, i32 0, i32 53
  %42 = load ptr, ptr %41, align 8
  %43 = load i32, ptr %20, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %103, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 26, i32 2
  %47 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %42, i32 0, i32 3
  %48 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 2
  br label %49

49:                                               ; preds = %100, %45
  %50 = phi i32 [ 0, %45 ], [ %101, %100 ]
  %51 = getelementptr %struct.brcmf_chanspec_list, ptr %20, i32 0, i32 1, i32 %50
  %52 = load i32, ptr %51, align 4
  %53 = trunc i32 %52 to i16
  store i16 %53, ptr %4, align 8
  %54 = load ptr, ptr %46, align 4
  call void %54(ptr noundef nonnull %4) #17
  %55 = load i8, ptr %23, align 4
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57, !prof !19

57:                                               ; preds = %49
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 6729, i32 noundef 9, ptr noundef null) #17
  br label %100

58:                                               ; preds = %49
  %59 = load i32, ptr %24, align 8
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %68, !prof !19

61:                                               ; preds = %58
  %62 = load i32, ptr %47, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load ptr, ptr %42, align 4
  %66 = load i8, ptr %48, align 1
  %67 = zext i8 %66 to i16
  br label %69

68:                                               ; preds = %58
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 6731, i32 noundef 9, ptr noundef null) #17
  br label %100

69:                                               ; preds = %74, %64
  %70 = phi i32 [ 0, %64 ], [ %75, %74 ]
  %71 = getelementptr %struct.ieee80211_channel, ptr %65, i32 %70, i32 3
  %72 = load i16, ptr %71, align 2
  %73 = icmp eq i16 %72, %67
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = add nuw nsw i32 %70, 1
  %76 = icmp eq i32 %75, %62
  br i1 %76, label %80, label %69

77:                                               ; preds = %69, %61
  %78 = phi i32 [ 0, %61 ], [ %70, %69 ]
  %79 = icmp eq i32 %78, %62
  br i1 %79, label %80, label %81, !prof !17

80:                                               ; preds = %77, %74
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 6737, i32 noundef 9, ptr noundef null) #17
  br label %100

81:                                               ; preds = %77
  %82 = load ptr, ptr %42, align 4
  %83 = getelementptr %struct.ieee80211_channel, ptr %82, i32 %78, i32 4
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 48
  %86 = load i32, ptr %25, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = icmp eq i32 %85, 48
  %90 = and i32 %84, -49
  %91 = select i1 %89, i32 %90, i32 %84
  %92 = or i32 %91, 16
  br label %98

93:                                               ; preds = %81
  %94 = and i32 %84, -49
  store i32 %94, ptr %83, align 4
  %95 = icmp eq i32 %85, 48
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = or i32 %94, 32
  br label %98

98:                                               ; preds = %96, %88
  %99 = phi i32 [ %97, %96 ], [ %92, %88 ]
  store i32 %99, ptr %83, align 4
  br label %100

100:                                              ; preds = %98, %93, %80, %68, %57
  %101 = add nuw i32 %50, 1
  %102 = icmp eq i32 %101, %43
  br i1 %102, label %103, label %49

103:                                              ; preds = %100, %39, %35, %32
  %104 = phi i32 [ %30, %35 ], [ %30, %32 ], [ 0, %39 ], [ 0, %100 ]
  call void @kfree(ptr noundef nonnull %20) #17
  br label %105

105:                                              ; preds = %103, %18, %15
  %106 = phi i32 [ -12, %18 ], [ %16, %15 ], [ %104, %103 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fweh_activate_events(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_p2p_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_btcoex_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_p2p_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_pno_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_btcoex_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fweh_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_notify_tdls_peer_event(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %24 [
    i32 2, label %15
    i32 1, label %6
  ]

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 7
  %11 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.brcmf_proto, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %7, i32 noundef %9, ptr noundef %10) #17
  br label %24

15:                                               ; preds = %3
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 7
  %20 = getelementptr inbounds %struct.brcmf_pub, ptr %16, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.brcmf_proto, ptr %21, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %16, i32 noundef %18, ptr noundef %19) #17
  br label %24

24:                                               ; preds = %15, %6, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_pno_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wl_deinit_priv(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 15
  store i8 0, ptr %2, align 2
  %3 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 20
  %4 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 1, ptr noundef %4) #17
  %5 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8, %1
  store i32 0, ptr %3, align 4
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 20, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @brcmf_notify_escan_complete(ptr noundef %0, ptr noundef %14, i1 noundef zeroext true, i1 noundef zeroext true) #17
  br label %16

16:                                               ; preds = %12, %8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %4) #17
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %4) #17
  %17 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #17
  store ptr null, ptr %17, align 4
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 18
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #17
  store ptr null, ptr %19, align 4
  %21 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 28, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #17
  store ptr null, ptr %21, align 4
  %23 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 28, i32 3
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #17
  store ptr null, ptr %23, align 4
  %25 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 20, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %26) #17
  store ptr null, ptr %25, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_free_wiphy(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %40, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %11, %7
  %12 = phi ptr [ %19, %11 ], [ %5, %7 ]
  %13 = phi i32 [ %16, %11 ], [ 0, %7 ]
  %14 = getelementptr %struct.ieee80211_iface_combination, ptr %12, i32 %13
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #17
  %16 = add nuw nsw i32 %13, 1
  %17 = load i32, ptr %8, align 4
  %18 = icmp slt i32 %16, %17
  %19 = load ptr, ptr %4, align 8
  br i1 %18, label %11, label %20

20:                                               ; preds = %11, %7, %3
  %21 = phi ptr [ %5, %7 ], [ null, %3 ], [ %19, %11 ]
  tail call void @kfree(ptr noundef %21) #17
  %22 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 53
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %26) #17
  %27 = load ptr, ptr %22, align 8
  tail call void @kfree(ptr noundef %27) #17
  br label %28

28:                                               ; preds = %25, %20
  %29 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %30, align 4
  tail call void @kfree(ptr noundef %33) #17
  %34 = load ptr, ptr %29, align 4
  tail call void @kfree(ptr noundef %34) #17
  br label %35

35:                                               ; preds = %32, %28
  %36 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 40
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, @brcmf_wowlan_support
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @kfree(ptr noundef %37) #17
  br label %40

40:                                               ; preds = %39, %35, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_cfg80211_detach(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  tail call void @brcmf_pno_detach(ptr noundef nonnull %0) #17
  tail call void @brcmf_btcoex_detach(ptr noundef nonnull %0) #17
  %4 = load ptr, ptr %0, align 4
  tail call void @wiphy_unregister(ptr noundef %4) #17
  tail call fastcc void @wl_deinit_priv(ptr noundef nonnull %0)
  %5 = load ptr, ptr %0, align 4
  tail call fastcc void @brcmf_free_wiphy(ptr noundef %5)
  tail call void @kfree(ptr noundef nonnull %0) #17
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_feat_is_quirk_enabled(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_suspend(ptr noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.brcmf_mkeep_alive_pkt_le, align 2
  %4 = alloca %struct.brcmf_wowl_wakeind_le, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !17

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @brcmf_get_ifp(ptr noundef %11, i32 noundef 0) #17
  %13 = getelementptr inbounds %struct.brcmf_if, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 1408
  %16 = getelementptr i8, ptr %14, i32 1412
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 3
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %246, label %22

22:                                               ; preds = %7
  %23 = tail call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %15, i32 noundef 2) #17
  br i1 %23, label %24, label %32

24:                                               ; preds = %22
  %25 = load ptr, ptr %8, align 4
  %26 = tail call i32 @brcmf_pno_stop_sched_scan(ptr noundef %15, i64 noundef 0) #17
  %27 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %25, i32 0, i32 12
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = tail call i32 @brcmf_notify_escan_complete(ptr noundef %25, ptr noundef %15, i1 noundef zeroext true, i1 noundef zeroext true) #17
  br label %32

32:                                               ; preds = %30, %24, %22
  %33 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 9
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 20
  tail call void @_set_bit(i32 noundef 1, ptr noundef %33) #17
  %39 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 12
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42, %37
  store i32 0, ptr %38, align 4
  %47 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 20, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @brcmf_notify_escan_complete(ptr noundef %9, ptr noundef %48, i1 noundef zeroext true, i1 noundef zeroext true) #17
  br label %50

50:                                               ; preds = %46, %42
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %33) #17
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %33) #17
  br label %51

51:                                               ; preds = %50, %32
  %52 = icmp eq ptr %1, null
  br i1 %52, label %53, label %96

53:                                               ; preds = %51
  %54 = load ptr, ptr %10, align 4
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.brcmf_bus, ptr %55, i32 0, i32 11
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.brcmf_bus_ops, ptr %57, i32 0, i32 6
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.brcmf_bus, ptr %55, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  tail call void %59(ptr noundef %63, i1 noundef zeroext false) #17
  br label %64

64:                                               ; preds = %61, %53
  %65 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 23
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %65
  br i1 %67, label %79, label %68

68:                                               ; preds = %76, %64
  %69 = phi ptr [ %77, %76 ], [ %66, %64 ]
  %70 = getelementptr i8, ptr %69, i32 -2584
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = getelementptr i8, ptr %69, i32 -3888
  tail call fastcc void @brcmf_link_down(ptr noundef %75, i16 noundef zeroext 1, i1 noundef zeroext true)
  tail call void @msleep(i32 noundef 500) #17
  br label %76

76:                                               ; preds = %74, %68
  %77 = load ptr, ptr %69, align 4
  %78 = icmp eq ptr %77, %65
  br i1 %78, label %79, label %68

79:                                               ; preds = %76, %64
  %80 = load ptr, ptr %15, align 4
  %81 = load ptr, ptr %16, align 4
  %82 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %81, i32 0, i32 3
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %246, label %86

86:                                               ; preds = %79
  %87 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %15, ptr noundef nonnull @.str, i32 noundef 1) #17
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %246, label %89

89:                                               ; preds = %86
  %90 = tail call i32 @net_ratelimit() #17
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %246, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.brcmf_pub, ptr %80, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.wiphy, ptr %94, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.brcmf_set_mpc) #18
  br label %246

96:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store i64 0, ptr %4, align 8, !annotation !8
  %97 = tail call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %15, i32 noundef 10) #17
  br i1 %97, label %99, label %98

98:                                               ; preds = %96
  tail call void @brcmf_configure_arp_nd_offload(ptr noundef %15, i1 noundef zeroext false) #17
  br label %99

99:                                               ; preds = %98, %96
  %100 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 28, i32 1
  %101 = tail call i32 @brcmf_fil_cmd_int_get(ptr noundef %15, i32 noundef 85, ptr noundef %100) #17
  %102 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %15, i32 noundef 86, i32 noundef 1) #17
  %103 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %1, i32 0, i32 1
  %104 = load i8, ptr %103, align 1, !range !10
  %105 = icmp eq i8 %104, 0
  %106 = select i1 %105, i32 0, i32 28
  %107 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %1, i32 0, i32 2
  %108 = load i8, ptr %107, align 2, !range !10
  %109 = zext i8 %108 to i32
  %110 = or i32 %106, %109
  %111 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %1, i32 0, i32 7
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %164, label %114

114:                                              ; preds = %99
  %115 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %1, i32 0, i32 9
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %164, label %118

118:                                              ; preds = %160, %114
  %119 = phi ptr [ %161, %160 ], [ %112, %114 ]
  %120 = phi i32 [ %157, %160 ], [ 0, %114 ]
  %121 = getelementptr %struct.cfg80211_pkt_pattern, ptr %119, i32 %120
  %122 = getelementptr %struct.cfg80211_pkt_pattern, ptr %119, i32 %120, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr %struct.cfg80211_pkt_pattern, ptr %119, i32 %120, i32 2
  %125 = load i32, ptr %124, align 4
  %126 = load ptr, ptr %121, align 4
  %127 = getelementptr %struct.cfg80211_pkt_pattern, ptr %119, i32 %120, i32 3
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %125, 7
  %130 = lshr i32 %129, 3
  %131 = add i32 %125, 32
  %132 = add i32 %131, %130
  %133 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %132, i32 noundef 3520) #20
  %134 = icmp eq ptr %133, null
  br i1 %134, label %156, label %135

135:                                              ; preds = %118
  %136 = add nuw nsw i32 %130, 28
  store i32 6579297, ptr %133, align 64
  %137 = getelementptr inbounds %struct.brcmf_fil_wowl_pattern_le, ptr %133, i32 0, i32 1
  store i32 %130, ptr %137, align 4
  %138 = getelementptr inbounds %struct.brcmf_fil_wowl_pattern_le, ptr %133, i32 0, i32 2
  store i32 %128, ptr %138, align 8
  %139 = getelementptr inbounds %struct.brcmf_fil_wowl_pattern_le, ptr %133, i32 0, i32 3
  store i32 %136, ptr %139, align 4
  %140 = getelementptr inbounds %struct.brcmf_fil_wowl_pattern_le, ptr %133, i32 0, i32 4
  store i32 %125, ptr %140, align 16
  %141 = getelementptr inbounds %struct.brcmf_fil_wowl_pattern_le, ptr %133, i32 0, i32 7
  store i32 0, ptr %141, align 4
  %142 = icmp ne ptr %126, null
  %143 = icmp ugt i32 %129, 7
  %144 = and i1 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = getelementptr i8, ptr %133, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 32 %146, ptr nonnull align 1 %126, i32 %130, i1 false) #17
  br label %147

147:                                              ; preds = %145, %135
  %148 = icmp ne ptr %123, null
  %149 = icmp ne i32 %125, 0
  %150 = and i1 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = getelementptr i8, ptr %133, i32 32
  %153 = getelementptr i8, ptr %152, i32 %130
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %153, ptr nonnull align 1 %123, i32 %125, i1 false) #17
  br label %154

154:                                              ; preds = %151, %147
  %155 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %15, ptr noundef nonnull @.str.33, ptr noundef nonnull %133, i32 noundef %132) #17
  tail call void @kfree(ptr noundef nonnull %133) #17
  br label %156

156:                                              ; preds = %154, %118
  %157 = add nuw i32 %120, 1
  %158 = load i32, ptr %115, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load ptr, ptr %111, align 4
  br label %118

162:                                              ; preds = %156
  %163 = or i32 %110, 2
  br label %164

164:                                              ; preds = %162, %114, %99
  %165 = phi i32 [ %110, %114 ], [ %110, %99 ], [ %163, %162 ]
  %166 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %1, i32 0, i32 10
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %206, label %169

169:                                              ; preds = %164
  %170 = load ptr, ptr %9, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %173, !prof !17

172:                                              ; preds = %169
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

173:                                              ; preds = %169
  %174 = getelementptr i8, ptr %14, i32 1416
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.wiphy, ptr %170, i32 1, i32 0, i32 3, i32 1
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr i8, ptr %175, i32 1408
  %179 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %177, i32 0, i32 10
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %177, i32 0, i32 9
  %182 = load volatile i32, ptr %181, align 4
  %183 = and i32 %182, 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %173
  %186 = tail call i32 @net_ratelimit() #17
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %199, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.brcmf_pub, ptr %180, i32 0, i32 2
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.wiphy, ptr %190, i32 0, i32 56
  %192 = load i32, ptr %181, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %191, ptr noundef nonnull @.str.181, ptr noundef nonnull @__func__.brcmf_cfg80211_sched_scan_start, i32 noundef %192) #18
  br label %199

193:                                              ; preds = %173
  %194 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %167, i32 0, i32 9
  %195 = load i32, ptr %194, align 8
  %196 = icmp slt i32 %195, 1
  br i1 %196, label %199, label %197

197:                                              ; preds = %193
  %198 = tail call i32 @brcmf_pno_start_sched_scan(ptr noundef %178, ptr noundef nonnull %167) #17
  br label %199

199:                                              ; preds = %197, %193, %188, %185
  %200 = or i32 %165, 134217728
  %201 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 28, i32 5
  store i8 0, ptr %201, align 4
  %202 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 28, i32 6
  store i8 1, ptr %202, align 1
  %203 = load ptr, ptr %10, align 4
  tail call void @brcmf_fweh_unregister(ptr noundef %203, i32 noundef 33) #17
  %204 = load ptr, ptr %10, align 4
  %205 = tail call i32 @brcmf_fweh_register(ptr noundef %204, i32 noundef 33, ptr noundef nonnull @brcmf_wowl_nd_results) #17
  br label %206

206:                                              ; preds = %199, %164
  %207 = phi i32 [ %200, %199 ], [ %165, %164 ]
  %208 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %1, i32 0, i32 3
  %209 = load i8, ptr %208, align 1, !range !10
  %210 = icmp eq i8 %209, 0
  %211 = or i32 %207, 1024
  %212 = select i1 %210, i32 %207, i32 %211
  %213 = load ptr, ptr %16, align 4
  %214 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %213, i32 0, i32 3
  %215 = load volatile i32, ptr %214, align 4
  %216 = shl i32 %215, 22
  %217 = and i32 %216, 16777216
  %218 = xor i32 %217, 16777216
  %219 = or i32 %218, %212
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(6) %4, ptr noundef nonnull align 1 dereferenceable(6) @.str.29, i32 6, i1 false) #17
  %220 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %15, ptr noundef nonnull @.str.30, ptr noundef nonnull %4, i32 noundef 8) #17
  %221 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %15, ptr noundef nonnull @.str.31, i32 noundef %219) #17
  %222 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %15, ptr noundef nonnull @.str.32, i32 noundef 1) #17
  %223 = load ptr, ptr %10, align 4
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr inbounds %struct.brcmf_bus, ptr %224, i32 0, i32 11
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr inbounds %struct.brcmf_bus_ops, ptr %226, i32 0, i32 6
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %233, label %230

230:                                              ; preds = %206
  %231 = getelementptr inbounds %struct.brcmf_bus, ptr %224, i32 0, i32 2
  %232 = load ptr, ptr %231, align 4
  call void %228(ptr noundef %232, i1 noundef zeroext true) #17
  br label %233

233:                                              ; preds = %230, %206
  %234 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 28
  store i8 1, ptr %234, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #17
  %235 = getelementptr inbounds i8, ptr %3, i32 2
  store i16 0, ptr %235, align 2
  store i16 1, ptr %3, align 2
  %236 = getelementptr inbounds %struct.brcmf_mkeep_alive_pkt_le, ptr %3, i32 0, i32 2
  store i32 30000, ptr %236, align 2
  %237 = getelementptr inbounds %struct.brcmf_mkeep_alive_pkt_le, ptr %3, i32 0, i32 3
  store i16 0, ptr %237, align 2
  %238 = getelementptr inbounds %struct.brcmf_mkeep_alive_pkt_le, ptr %3, i32 0, i32 4
  store i8 0, ptr %238, align 2
  %239 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %15, ptr noundef nonnull @.str.35, ptr noundef nonnull %3, i32 noundef 11) #17
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %233
  %242 = call i32 @net_ratelimit() #17
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %241
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_keepalive_start, ptr noundef nonnull @.str.36, i32 noundef %239) #17
  br label %245

245:                                              ; preds = %244, %241, %233
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #17
  br label %246

246:                                              ; preds = %245, %92, %89, %86, %79, %7
  %247 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 9
  store i32 0, ptr %247, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_resume(ptr noundef readonly %0) #0 {
  %2 = alloca %struct.brcmf_wowl_wakeind_le, align 8
  %3 = alloca %struct.cfg80211_wowlan_wakeup, align 4
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !17

6:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @brcmf_get_ifp(ptr noundef %11, i32 noundef 0) #17
  %13 = getelementptr inbounds %struct.brcmf_if, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 1408
  %16 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 28
  %17 = load i8, ptr %16, align 4, !range !10
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %140, label %19

19:                                               ; preds = %7
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 10
  %22 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #17, !annotation !8
  %23 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %15, ptr noundef nonnull @.str.30, ptr noundef nonnull %2, i32 noundef 8) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = call i32 @net_ratelimit() #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %98, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.brcmf_pub, ptr %22, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.brcmf_report_wowl_wakeind, i32 noundef %23) #18
  br label %98

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.brcmf_wowl_wakeind_le, ptr %2, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 134217759
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %93, label %37

37:                                               ; preds = %32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #17
  %38 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %3, i32 0, i32 10
  store i32 -1, ptr %38, align 4
  %39 = and i32 %34, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %3, i32 0, i32 1
  store i8 1, ptr %42, align 1
  br label %43

43:                                               ; preds = %41, %37
  %44 = and i32 %34, 28
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i8 1, ptr %3, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = and i32 %34, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 0, ptr %38, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = and i32 %34, 134217728
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %88, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 28, i32 5
  %56 = load i8, ptr %55, align 4, !range !10
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #17, !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #17
  %59 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 28, i32 4
  %60 = call i32 @prepare_to_wait_event(ptr noundef %59, ptr noundef nonnull %4, i32 noundef 2) #17
  %61 = load i8, ptr %55, align 4, !range !10
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  call void @finish_wait(ptr noundef %59, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  br label %84

64:                                               ; preds = %64, %58
  %65 = phi i32 [ %73, %64 ], [ 200, %58 ]
  %66 = call i32 @schedule_timeout(i32 noundef %65) #17
  %67 = call i32 @prepare_to_wait_event(ptr noundef %59, ptr noundef nonnull %4, i32 noundef 2) #17
  %68 = load i8, ptr %55, align 4, !range !10
  %69 = icmp ne i8 %68, 0
  %70 = xor i1 %69, true
  %71 = icmp ne i32 %66, 0
  %72 = select i1 %70, i1 true, i1 %71
  %73 = select i1 %72, i32 %66, i32 1
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %69, i1 true, i1 %74
  br i1 %75, label %76, label %64

76:                                               ; preds = %64
  call void @finish_wait(ptr noundef %59, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  br i1 %74, label %77, label %84

77:                                               ; preds = %76
  %78 = call i32 @net_ratelimit() #17
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.brcmf_pub, ptr %22, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.wiphy, ptr %82, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.brcmf_report_wowl_wakeind) #18
  br label %88

84:                                               ; preds = %76, %63, %54
  %85 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %20, i32 0, i32 28, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %3, i32 0, i32 14
  store ptr %86, ptr %87, align 4
  br label %88

88:                                               ; preds = %84, %80, %77, %51
  %89 = and i32 %34, 1024
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %3, i32 0, i32 2
  store i8 1, ptr %92, align 2
  br label %93

93:                                               ; preds = %91, %88, %32
  %94 = phi ptr [ %3, %91 ], [ %3, %88 ], [ null, %32 ]
  %95 = getelementptr i8, ptr %14, i32 1412
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %96, i32 0, i32 1
  call void @cfg80211_report_wowlan_wakeup(ptr noundef %97, ptr noundef %94, i32 noundef 3264) #17
  br label %98

98:                                               ; preds = %93, %28, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  %99 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %15, ptr noundef nonnull @.str.37, i32 noundef 0) #17
  %100 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %101 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %100, i32 noundef 3520, i32 noundef 32) #19
  %102 = icmp eq ptr %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %98
  store i32 7498851, ptr %101, align 8
  %104 = getelementptr inbounds %struct.brcmf_fil_wowl_pattern_le, ptr %101, i32 0, i32 1
  store i32 0, ptr %104, align 4
  %105 = getelementptr inbounds %struct.brcmf_fil_wowl_pattern_le, ptr %101, i32 0, i32 2
  store i32 0, ptr %105, align 8
  %106 = getelementptr inbounds %struct.brcmf_fil_wowl_pattern_le, ptr %101, i32 0, i32 3
  store i32 28, ptr %106, align 4
  %107 = getelementptr inbounds %struct.brcmf_fil_wowl_pattern_le, ptr %101, i32 0, i32 4
  store i32 0, ptr %107, align 8
  %108 = getelementptr inbounds %struct.brcmf_fil_wowl_pattern_le, ptr %101, i32 0, i32 7
  store i32 0, ptr %108, align 4
  %109 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %15, ptr noundef nonnull @.str.33, ptr noundef nonnull %101, i32 noundef 32) #17
  call void @kfree(ptr noundef nonnull %101) #17
  br label %110

110:                                              ; preds = %103, %98
  %111 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %15, i32 noundef 10) #17
  br i1 %111, label %113, label %112

112:                                              ; preds = %110
  call void @brcmf_configure_arp_nd_offload(ptr noundef %15, i1 noundef zeroext true) #17
  br label %113

113:                                              ; preds = %112, %110
  %114 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 28, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = call i32 @brcmf_fil_cmd_int_set(ptr noundef %15, i32 noundef 86, i32 noundef %115) #17
  store i8 0, ptr %16, align 4
  %117 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 28, i32 6
  %118 = load i8, ptr %117, align 1, !range !10
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %140, label %120

120:                                              ; preds = %113
  %121 = load ptr, ptr %9, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %124, !prof !17

123:                                              ; preds = %120
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

124:                                              ; preds = %120
  %125 = getelementptr i8, ptr %14, i32 1416
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.wiphy, ptr %121, i32 1, i32 0, i32 3, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr i8, ptr %126, i32 1408
  %130 = call i32 @brcmf_pno_stop_sched_scan(ptr noundef %129, i64 noundef 0) #17
  %131 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %128, i32 0, i32 12
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %124
  %135 = call i32 @brcmf_notify_escan_complete(ptr noundef %128, ptr noundef %129, i1 noundef zeroext true, i1 noundef zeroext true) #17
  br label %136

136:                                              ; preds = %134, %124
  %137 = load ptr, ptr %10, align 4
  call void @brcmf_fweh_unregister(ptr noundef %137, i32 noundef 33) #17
  %138 = load ptr, ptr %10, align 4
  %139 = call i32 @brcmf_fweh_register(ptr noundef %138, i32 noundef 33, ptr noundef nonnull @brcmf_notify_sched_scan_results) #17
  store i8 0, ptr %117, align 1
  br label %140

140:                                              ; preds = %136, %113, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @brcmf_cfg80211_add_iface(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.brcmf_mbss_ssid_le, align 4
  %7 = alloca %struct.iface_combination_params, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %10, !prof !17

9:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %12, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #17
  %15 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %15, i8 0, i32 60, i1 false) #17
  store i32 1, ptr %7, align 4
  %16 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %12, i32 0, i32 23
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %28, label %19

19:                                               ; preds = %19, %10
  %20 = phi ptr [ %26, %19 ], [ %17, %10 ]
  %21 = getelementptr i8, ptr %20, i32 -3880
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.iface_combination_params, ptr %7, i32 0, i32 2, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  %26 = load ptr, ptr %20, align 4
  %27 = icmp eq ptr %26, %16
  br i1 %27, label %28, label %19

28:                                               ; preds = %19, %10
  %29 = getelementptr %struct.iface_combination_params, ptr %7, i32 0, i32 2, i32 %3
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  %32 = load ptr, ptr %12, align 4
  %33 = call i32 @cfg80211_check_combinations(ptr noundef %32, ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %28
  %36 = call i32 @net_ratelimit() #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.wiphy, ptr %40, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.brcmf_cfg80211_add_iface, i32 noundef %33) #18
  br label %42

42:                                               ; preds = %38, %35
  %43 = inttoptr i32 %33 to ptr
  br label %323

44:                                               ; preds = %28
  switch i32 %3, label %289 [
    i32 1, label %323
    i32 2, label %323
    i32 4, label %323
    i32 5, label %323
    i32 7, label %323
    i32 6, label %45
    i32 3, label %106
    i32 8, label %287
    i32 9, label %287
    i32 10, label %287
  ]

45:                                               ; preds = %44
  %46 = load ptr, ptr %11, align 4
  %47 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %46, i32 0, i32 10
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.brcmf_pub, ptr %48, i32 0, i32 11
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %103

52:                                               ; preds = %45
  %53 = call ptr @brcmf_get_ifp(ptr noundef %48, i32 noundef 0) #17
  %54 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %55 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3520, i32 noundef 3916) #19
  %56 = icmp eq ptr %55, null
  br i1 %56, label %68, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %46, align 4
  %59 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %55, i32 0, i32 1
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %55, i32 0, i32 1, i32 1
  store i32 6, ptr %60, align 8
  %61 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %55, i32 0, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(1016) %61, i8 0, i32 1016, i1 false) #17
  %62 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %55, i32 0, i32 5
  %63 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %46, i32 0, i32 23
  %64 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %46, i32 0, i32 23, i32 1
  %65 = load ptr, ptr %64, align 4
  store ptr %62, ptr %64, align 4
  store ptr %63, ptr %62, align 8
  %66 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %55, i32 0, i32 5, i32 1
  store ptr %65, ptr %66, align 4
  store volatile ptr %62, ptr %65, align 4
  %67 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %68, label %71

68:                                               ; preds = %57, %52
  %69 = phi ptr [ %55, %57 ], [ inttoptr (i32 -12 to ptr), %52 ]
  %70 = ptrtoint ptr %69 to i32
  br label %103

71:                                               ; preds = %57
  %72 = call ptr @alloc_netdev_mqs(i32 noundef 216, ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull @ether_setup, i32 noundef 1, i32 noundef 1) #17
  %73 = icmp eq ptr %72, null
  br i1 %73, label %98, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 32
  store i16 803, ptr %75, align 16
  %76 = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 70
  store ptr %59, ptr %76, align 8
  %77 = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 105
  store i8 1, ptr %77, align 8
  %78 = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 106
  store ptr @brcmf_cfg80211_free_netdev, ptr %78, align 4
  %79 = load ptr, ptr %46, align 4
  %80 = getelementptr inbounds %struct.wiphy, ptr %79, i32 0, i32 56, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 111, i32 1
  store ptr %81, ptr %82, align 4
  %83 = getelementptr i8, ptr %72, i32 1408
  %84 = getelementptr i8, ptr %72, i32 1412
  store ptr %55, ptr %84, align 4
  %85 = getelementptr i8, ptr %72, i32 1416
  store ptr %72, ptr %85, align 4
  %86 = load ptr, ptr %47, align 4
  store ptr %86, ptr %83, align 4
  store ptr %83, ptr %55, align 8
  %87 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %55, i32 0, i32 1, i32 3
  store ptr %72, ptr %87, align 4
  %88 = call i32 @brcmf_net_mon_attach(ptr noundef %83) #17
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %74
  %91 = call i32 @net_ratelimit() #17
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_mon_add_vif, ptr noundef nonnull @.str.47, ptr noundef nonnull %72) #17
  br label %94

94:                                               ; preds = %93, %90
  call void @free_netdev(ptr noundef nonnull %72) #17
  br label %98

95:                                               ; preds = %74
  %96 = load ptr, ptr %47, align 4
  %97 = getelementptr inbounds %struct.brcmf_pub, ptr %96, i32 0, i32 11
  store ptr %83, ptr %97, align 4
  br label %323

98:                                               ; preds = %94, %71
  %99 = phi i32 [ %88, %94 ], [ -12, %71 ]
  %100 = load ptr, ptr %66, align 4
  %101 = load ptr, ptr %62, align 8
  %102 = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  store ptr %100, ptr %102, align 4
  store volatile ptr %101, ptr %100, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %62, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %66, align 4
  call void @kfree(ptr noundef nonnull %55) #17
  br label %103

103:                                              ; preds = %98, %68, %45
  %104 = phi i32 [ %70, %68 ], [ %99, %98 ], [ -17, %45 ]
  %105 = inttoptr i32 %104 to ptr
  br label %323

106:                                              ; preds = %44
  %107 = load ptr, ptr %11, align 4
  %108 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %107, i32 0, i32 10
  %109 = load ptr, ptr %108, align 4
  %110 = call ptr @brcmf_get_ifp(ptr noundef %109, i32 noundef 0) #17
  %111 = getelementptr inbounds %struct.brcmf_if, ptr %110, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr i8, ptr %112, i32 1408
  %114 = load ptr, ptr %108, align 4
  %115 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %107, i32 0, i32 24, i32 1
  call void @_raw_spin_lock(ptr noundef %115) #17
  %116 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %107, i32 0, i32 24, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %119 = load i16, ptr %115, align 4
  %120 = add i16 %119, 1
  store i16 %120, ptr %115, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br i1 %118, label %121, label %293

121:                                              ; preds = %106
  %122 = load ptr, ptr %108, align 4
  %123 = call ptr @brcmf_get_ifp(ptr noundef %122, i32 noundef 0) #17
  %124 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %125 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %124, i32 noundef 3520, i32 noundef 3916) #19
  %126 = icmp eq ptr %125, null
  br i1 %126, label %293, label %127

127:                                              ; preds = %121
  %128 = load ptr, ptr %107, align 4
  %129 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %125, i32 0, i32 1
  store ptr %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %125, i32 0, i32 1, i32 1
  store i32 3, ptr %130, align 8
  %131 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %125, i32 0, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(1016) %131, i8 0, i32 1016, i1 false) #17
  %132 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %123, i32 noundef 0) #17
  br i1 %132, label %133, label %147

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %107, i32 0, i32 23
  br label %135

135:                                              ; preds = %139, %133
  %136 = phi ptr [ %134, %133 ], [ %137, %139 ]
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, %134
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = getelementptr i8, ptr %137, i32 -3880
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 3
  br i1 %142, label %143, label %135

143:                                              ; preds = %139, %135
  %144 = xor i1 %138, true
  %145 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %125, i32 0, i32 7
  %146 = zext i1 %144 to i8
  store i8 %146, ptr %145, align 2
  br label %147

147:                                              ; preds = %143, %127
  %148 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %125, i32 0, i32 5
  %149 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %107, i32 0, i32 23
  %150 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %107, i32 0, i32 23, i32 1
  %151 = load ptr, ptr %150, align 4
  store ptr %148, ptr %150, align 4
  store ptr %149, ptr %148, align 8
  %152 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %125, i32 0, i32 5, i32 1
  store ptr %151, ptr %152, align 4
  store volatile ptr %148, ptr %151, align 4
  %153 = icmp ugt ptr %125, inttoptr (i32 -4096 to ptr)
  br i1 %153, label %290, label %154

154:                                              ; preds = %147
  call void @_raw_spin_lock(ptr noundef %115) #17
  store ptr %125, ptr %116, align 4
  %155 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %107, i32 0, i32 24, i32 2
  store i8 0, ptr %155, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %156 = load i16, ptr %115, align 4
  %157 = add i16 %156, 1
  store i16 %157, ptr %115, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %158 = load ptr, ptr %113, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #17
  %159 = getelementptr %struct.brcmf_pub, ptr %158, i32 0, i32 9, i32 0
  %160 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %160, i8 0, i64 32, i1 false) #17
  %161 = load ptr, ptr %159, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %219, label %163

163:                                              ; preds = %154
  %164 = getelementptr %struct.brcmf_pub, ptr %158, i32 0, i32 9, i32 2
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %219, label %167

167:                                              ; preds = %163
  %168 = getelementptr %struct.brcmf_pub, ptr %158, i32 0, i32 9, i32 3
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %219, label %171

171:                                              ; preds = %167
  %172 = getelementptr %struct.brcmf_pub, ptr %158, i32 0, i32 9, i32 4
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %219, label %175

175:                                              ; preds = %171
  %176 = getelementptr %struct.brcmf_pub, ptr %158, i32 0, i32 9, i32 5
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %219, label %179

179:                                              ; preds = %175
  %180 = getelementptr %struct.brcmf_pub, ptr %158, i32 0, i32 9, i32 6
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %219, label %183

183:                                              ; preds = %179
  %184 = getelementptr %struct.brcmf_pub, ptr %158, i32 0, i32 9, i32 7
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %219, label %187

187:                                              ; preds = %183
  %188 = getelementptr %struct.brcmf_pub, ptr %158, i32 0, i32 9, i32 8
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %219, label %191

191:                                              ; preds = %187
  %192 = getelementptr %struct.brcmf_pub, ptr %158, i32 0, i32 9, i32 9
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %219, label %195

195:                                              ; preds = %191
  %196 = getelementptr %struct.brcmf_pub, ptr %158, i32 0, i32 9, i32 10
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %219, label %199

199:                                              ; preds = %195
  %200 = getelementptr %struct.brcmf_pub, ptr %158, i32 0, i32 9, i32 11
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %219, label %203

203:                                              ; preds = %199
  %204 = getelementptr %struct.brcmf_pub, ptr %158, i32 0, i32 9, i32 12
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %219, label %207

207:                                              ; preds = %203
  %208 = getelementptr %struct.brcmf_pub, ptr %158, i32 0, i32 9, i32 13
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %219, label %211

211:                                              ; preds = %207
  %212 = getelementptr %struct.brcmf_pub, ptr %158, i32 0, i32 9, i32 14
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = getelementptr %struct.brcmf_pub, ptr %158, i32 0, i32 9, i32 15
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %232

219:                                              ; preds = %215, %211, %207, %203, %199, %195, %191, %187, %183, %179, %175, %171, %167, %163, %154
  %220 = phi i32 [ 14, %211 ], [ 13, %207 ], [ 12, %203 ], [ 11, %199 ], [ 10, %195 ], [ 9, %191 ], [ 8, %187 ], [ 7, %183 ], [ 6, %179 ], [ 5, %175 ], [ 4, %171 ], [ 3, %167 ], [ 2, %163 ], [ 0, %154 ], [ 15, %215 ]
  store i32 %220, ptr %6, align 4
  %221 = getelementptr inbounds %struct.brcmf_mbss_ssid_le, ptr %6, i32 0, i32 1
  store i32 5, ptr %221, align 4
  %222 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %160, ptr noundef nonnull @.str.51, i32 noundef %220) #17
  %223 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %113, ptr noundef nonnull @.str.52, ptr noundef nonnull %6, i32 noundef 40) #17
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %219
  %226 = call i32 @net_ratelimit() #17
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %232, label %228

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.brcmf_pub, ptr %158, i32 0, i32 2
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.wiphy, ptr %230, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %231, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.brcmf_cfg80211_request_ap_if, i32 noundef %223) #18
  br label %232

232:                                              ; preds = %228, %225, %215
  %233 = phi i32 [ -12, %215 ], [ %223, %228 ], [ %223, %225 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  br label %236

234:                                              ; preds = %219
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  %235 = icmp eq i32 %223, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %234, %232
  %237 = phi i32 [ %233, %232 ], [ %223, %234 ]
  call void @_raw_spin_lock(ptr noundef %115) #17
  store ptr null, ptr %116, align 4
  store i8 0, ptr %155, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %238 = load i16, ptr %115, align 4
  %239 = add i16 %238, 1
  store i16 %239, ptr %115, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br label %281

240:                                              ; preds = %234
  %241 = call i32 @brcmf_cfg80211_wait_vif_event(ptr noundef %107, i8 noundef zeroext 1, i32 noundef 150) #17
  call void @_raw_spin_lock(ptr noundef %115) #17
  store ptr null, ptr %116, align 4
  store i8 0, ptr %155, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %242 = load i16, ptr %115, align 4
  %243 = add i16 %242, 1
  store i16 %243, ptr %115, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %244 = icmp eq i32 %241, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %240
  %246 = call i32 @net_ratelimit() #17
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %281, label %248

248:                                              ; preds = %245
  %249 = getelementptr inbounds %struct.brcmf_pub, ptr %114, i32 0, i32 2
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.wiphy, ptr %250, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %251, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.brcmf_ap_add_vif) #18
  br label %281

252:                                              ; preds = %240
  %253 = load ptr, ptr %125, align 8
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %262

255:                                              ; preds = %252
  %256 = call i32 @net_ratelimit() #17
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %281, label %258

258:                                              ; preds = %255
  %259 = getelementptr inbounds %struct.brcmf_pub, ptr %114, i32 0, i32 2
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.wiphy, ptr %260, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %261, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.brcmf_ap_add_vif) #18
  br label %281

262:                                              ; preds = %252
  %263 = getelementptr inbounds %struct.brcmf_if, ptr %253, i32 0, i32 2
  %264 = load ptr, ptr %263, align 4
  %265 = call ptr @strncpy(ptr noundef %264, ptr noundef %1, i32 noundef 15) #17
  %266 = call i32 @brcmf_net_attach(ptr noundef nonnull %253, i1 noundef zeroext true) #17
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %277, label %268

268:                                              ; preds = %262
  %269 = call i32 @net_ratelimit() #17
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %275, label %271

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.brcmf_pub, ptr %114, i32 0, i32 2
  %273 = load ptr, ptr %272, align 4
  %274 = getelementptr inbounds %struct.wiphy, ptr %273, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %274, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.brcmf_ap_add_vif) #18
  br label %275

275:                                              ; preds = %271, %268
  %276 = load ptr, ptr %263, align 4
  call void @free_netdev(ptr noundef %276) #17
  br label %281

277:                                              ; preds = %262
  %278 = getelementptr inbounds %struct.brcmf_if, ptr %253, i32 0, i32 1
  %279 = load ptr, ptr %278, align 4
  %280 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %279, i32 0, i32 1
  br label %290

281:                                              ; preds = %275, %258, %255, %248, %245, %236
  %282 = phi i32 [ %237, %236 ], [ %266, %275 ], [ -5, %248 ], [ -5, %245 ], [ -2, %258 ], [ -2, %255 ]
  %283 = load ptr, ptr %152, align 4
  %284 = load ptr, ptr %148, align 8
  %285 = getelementptr inbounds %struct.list_head, ptr %284, i32 0, i32 1
  store ptr %283, ptr %285, align 4
  store volatile ptr %284, ptr %283, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %148, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %152, align 4
  call void @kfree(ptr noundef nonnull %125) #17
  %286 = inttoptr i32 %282 to ptr
  br label %290

287:                                              ; preds = %44, %44, %44
  %288 = call ptr @brcmf_p2p_add_vif(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4) #17
  br label %290

289:                                              ; preds = %44
  br label %323

290:                                              ; preds = %287, %281, %277, %147
  %291 = phi ptr [ %288, %287 ], [ %286, %281 ], [ %280, %277 ], [ %125, %147 ]
  %292 = icmp ugt ptr %291, inttoptr (i32 -4096 to ptr)
  br i1 %292, label %293, label %302

293:                                              ; preds = %290, %121, %106
  %294 = phi ptr [ %291, %290 ], [ inttoptr (i32 -12 to ptr), %121 ], [ inttoptr (i32 -16 to ptr), %106 ]
  %295 = call i32 @net_ratelimit() #17
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %323, label %297

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 2
  %299 = load ptr, ptr %298, align 4
  %300 = getelementptr inbounds %struct.wiphy, ptr %299, i32 0, i32 56
  %301 = ptrtoint ptr %294 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %300, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.brcmf_cfg80211_add_iface, ptr noundef %1, i32 noundef %3, i32 noundef %301) #18
  br label %323

302:                                              ; preds = %290
  %303 = getelementptr i8, ptr %291, i32 -4
  %304 = load ptr, ptr %303, align 4
  %305 = getelementptr inbounds %struct.wireless_dev, ptr %291, i32 0, i32 1
  %306 = load i32, ptr %305, align 4
  switch i32 %306, label %315 [
    i32 1, label %307
    i32 3, label %307
    i32 9, label %307
  ]

307:                                              ; preds = %302, %302, %302
  %308 = load ptr, ptr %304, align 4
  %309 = getelementptr inbounds %struct.brcmf_if, ptr %304, i32 0, i32 6
  %310 = load i32, ptr %309, align 4
  %311 = getelementptr inbounds %struct.brcmf_pub, ptr %308, i32 0, i32 1
  %312 = load ptr, ptr %311, align 4
  %313 = getelementptr inbounds %struct.brcmf_proto, ptr %312, i32 0, i32 5
  %314 = load ptr, ptr %313, align 4
  call void %314(ptr noundef %308, i32 noundef %310, i32 noundef 1) #17
  br label %323

315:                                              ; preds = %302
  %316 = load ptr, ptr %304, align 4
  %317 = getelementptr inbounds %struct.brcmf_if, ptr %304, i32 0, i32 6
  %318 = load i32, ptr %317, align 4
  %319 = getelementptr inbounds %struct.brcmf_pub, ptr %316, i32 0, i32 1
  %320 = load ptr, ptr %319, align 4
  %321 = getelementptr inbounds %struct.brcmf_proto, ptr %320, i32 0, i32 5
  %322 = load ptr, ptr %321, align 4
  call void %322(ptr noundef %316, i32 noundef %318, i32 noundef 0) #17
  br label %323

323:                                              ; preds = %315, %307, %297, %293, %289, %103, %95, %44, %44, %44, %44, %44, %42
  %324 = phi ptr [ %43, %42 ], [ inttoptr (i32 -22 to ptr), %289 ], [ %294, %293 ], [ %294, %297 ], [ inttoptr (i32 -95 to ptr), %44 ], [ inttoptr (i32 -95 to ptr), %44 ], [ inttoptr (i32 -95 to ptr), %44 ], [ inttoptr (i32 -95 to ptr), %44 ], [ inttoptr (i32 -95 to ptr), %44 ], [ %105, %103 ], [ %59, %95 ], [ %291, %307 ], [ %291, %315 ]
  ret ptr %324
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_del_iface(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !17

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @brcmf_get_ifp(ptr noundef %13, i32 noundef 0) #17
  %15 = getelementptr inbounds %struct.brcmf_if, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %9, %16
  br i1 %17, label %95, label %18

18:                                               ; preds = %11, %5
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 24, i32 1
  tail call void @_raw_spin_lock(ptr noundef %19) #17
  %20 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 24, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %23 = load i16, ptr %19, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br i1 %22, label %25, label %95

25:                                               ; preds = %18
  br i1 %10, label %41, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 9
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 20, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %9, i32 1408
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = tail call i32 @brcmf_notify_escan_complete(ptr noundef %7, ptr noundef %33, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %38

38:                                               ; preds = %36, %31, %26
  %39 = getelementptr i8, ptr %9, i32 1408
  %40 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %39, ptr noundef nonnull @.str, i32 noundef 1) #17
  br label %41

41:                                               ; preds = %38, %25
  %42 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  switch i32 %43, label %94 [
    i32 1, label %95
    i32 2, label %95
    i32 4, label %95
    i32 5, label %95
    i32 7, label %95
    i32 6, label %44
    i32 3, label %55
    i32 8, label %92
    i32 9, label %92
    i32 10, label %92
  ]

44:                                               ; preds = %41
  %45 = load ptr, ptr %6, align 4
  %46 = load ptr, ptr %8, align 4
  %47 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 16
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.net_device_ops, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 %50(ptr noundef %46) #17
  tail call void @brcmf_net_detach(ptr noundef %46, i1 noundef zeroext true) #17
  %52 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %45, i32 0, i32 10
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.brcmf_pub, ptr %53, i32 0, i32 11
  store ptr null, ptr %54, align 4
  br label %95

55:                                               ; preds = %41
  %56 = load ptr, ptr %6, align 4
  %57 = load ptr, ptr %8, align 4
  %58 = getelementptr i8, ptr %57, i32 1408
  %59 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %56, i32 0, i32 10
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %57, i32 1412
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %56, i32 0, i32 24, i32 1
  tail call void @_raw_spin_lock(ptr noundef %63) #17
  %64 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %56, i32 0, i32 24, i32 3
  store ptr %62, ptr %64, align 4
  %65 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %56, i32 0, i32 24, i32 2
  store i8 0, ptr %65, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %66 = load i16, ptr %63, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %63, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %68 = tail call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %58, ptr noundef nonnull @.str.54, ptr noundef null, i32 noundef 0) #17
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %55
  %71 = tail call i32 @net_ratelimit() #17
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.brcmf_pub, ptr %60, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.wiphy, ptr %75, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.brcmf_cfg80211_del_ap_iface, i32 noundef %68) #18
  br label %88

77:                                               ; preds = %55
  %78 = tail call i32 @brcmf_cfg80211_wait_vif_event(ptr noundef %56, i8 noundef zeroext 2, i32 noundef 150) #17
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = tail call i32 @net_ratelimit() #17
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.brcmf_pub, ptr %60, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.wiphy, ptr %85, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.brcmf_cfg80211_del_ap_iface) #18
  br label %88

87:                                               ; preds = %77
  tail call void @brcmf_remove_interface(ptr noundef %58, i1 noundef zeroext true) #17
  br label %88

88:                                               ; preds = %87, %83, %80, %73, %70
  %89 = phi i32 [ %68, %73 ], [ %68, %70 ], [ 0, %87 ], [ -5, %83 ], [ -5, %80 ]
  tail call void @_raw_spin_lock(ptr noundef %63) #17
  store ptr null, ptr %64, align 4
  store i8 0, ptr %65, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %90 = load i16, ptr %63, align 4
  %91 = add i16 %90, 1
  store i16 %91, ptr %63, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br label %95

92:                                               ; preds = %41, %41, %41
  %93 = tail call i32 @brcmf_p2p_del_vif(ptr noundef nonnull %0, ptr noundef %1) #17
  br label %95

94:                                               ; preds = %41
  br label %95

95:                                               ; preds = %94, %92, %88, %44, %41, %41, %41, %41, %41, %18, %11
  %96 = phi i32 [ -22, %94 ], [ %93, %92 ], [ %89, %88 ], [ 0, %44 ], [ -524, %11 ], [ -16, %18 ], [ -95, %41 ], [ -95, %41 ], [ -95, %41 ], [ -95, %41 ], [ -95, %41 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_change_iface(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.iface_combination_params, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8, !prof !17

7:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %1, i32 1408
  %12 = getelementptr i8, ptr %1, i32 1412
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq i32 %2, 2
  br i1 %16, label %17, label %27

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %13, i32 0, i32 1, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -8
  %21 = icmp ult i32 %20, 3
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 2, i32 18
  %24 = load i8, ptr %23, align 2, !range !10
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i32 0, i32 -95
  br label %113

27:                                               ; preds = %17, %8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  %28 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %28, i8 0, i32 60, i1 false) #17
  store i32 1, ptr %5, align 4
  %29 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 23
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %55, label %32

32:                                               ; preds = %27
  %33 = getelementptr %struct.iface_combination_params, ptr %5, i32 0, i32 2, i32 %2
  br label %34

34:                                               ; preds = %46, %32
  %35 = phi ptr [ %52, %46 ], [ %30, %32 ]
  %36 = phi i1 [ true, %46 ], [ false, %32 ]
  br label %37

37:                                               ; preds = %41, %34
  %38 = phi ptr [ %44, %41 ], [ %35, %34 ]
  %39 = getelementptr i8, ptr %38, i32 -3888
  %40 = icmp eq ptr %39, %13
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, ptr %33, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %33, align 4
  %44 = load ptr, ptr %38, align 4
  %45 = icmp eq ptr %44, %29
  br i1 %45, label %54, label %37

46:                                               ; preds = %37
  %47 = getelementptr i8, ptr %38, i32 -3880
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr %struct.iface_combination_params, ptr %5, i32 0, i32 2, i32 %48
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  %52 = load ptr, ptr %38, align 4
  %53 = icmp eq ptr %52, %29
  br i1 %53, label %56, label %34

54:                                               ; preds = %41
  br i1 %36, label %56, label %55

55:                                               ; preds = %54, %27
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  br label %67

56:                                               ; preds = %54, %46
  %57 = load ptr, ptr %10, align 4
  %58 = call i32 @cfg80211_check_combinations(ptr noundef %57, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = call i32 @net_ratelimit() #17
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %113, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.wiphy, ptr %65, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.brcmf_cfg80211_change_iface, i32 noundef %58) #18
  br label %113

67:                                               ; preds = %56, %55
  switch i32 %2, label %113 [
    i32 6, label %68
    i32 5, label %68
    i32 1, label %78
    i32 2, label %75
    i32 9, label %76
    i32 3, label %89
  ]

68:                                               ; preds = %67, %67
  %69 = call i32 @net_ratelimit() #17
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %113, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.wiphy, ptr %73, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.brcmf_cfg80211_change_iface, i32 noundef %2) #18
  br label %113

75:                                               ; preds = %67
  br label %78

76:                                               ; preds = %67
  %77 = call i32 @brcmf_p2p_ifchange(ptr noundef %10, i32 noundef 1) #17
  br label %89

78:                                               ; preds = %75, %67
  %79 = phi i32 [ 0, %67 ], [ 1, %75 ]
  %80 = call i32 @brcmf_fil_cmd_int_set(ptr noundef %11, i32 noundef 20, i32 noundef %79) #17
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = call i32 @net_ratelimit() #17
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %113, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.wiphy, ptr %87, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.brcmf_cfg80211_change_iface, i32 noundef %80) #18
  br label %113

89:                                               ; preds = %78, %76, %67
  %90 = phi i32 [ 0, %78 ], [ %77, %76 ], [ 0, %67 ]
  %91 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.wireless_dev, ptr %92, i32 0, i32 1
  store i32 %2, ptr %93, align 4
  %94 = load ptr, ptr %13, align 4
  %95 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %13, i32 0, i32 1, i32 1
  %96 = load i32, ptr %95, align 4
  switch i32 %96, label %105 [
    i32 1, label %97
    i32 3, label %97
    i32 9, label %97
  ]

97:                                               ; preds = %89, %89, %89
  %98 = load ptr, ptr %94, align 4
  %99 = getelementptr inbounds %struct.brcmf_if, ptr %94, i32 0, i32 6
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.brcmf_pub, ptr %98, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.brcmf_proto, ptr %102, i32 0, i32 5
  %104 = load ptr, ptr %103, align 4
  call void %104(ptr noundef %98, i32 noundef %100, i32 noundef 1) #17
  br label %113

105:                                              ; preds = %89
  %106 = load ptr, ptr %94, align 4
  %107 = getelementptr inbounds %struct.brcmf_if, ptr %94, i32 0, i32 6
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.brcmf_pub, ptr %106, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.brcmf_proto, ptr %110, i32 0, i32 5
  %112 = load ptr, ptr %111, align 4
  call void %112(ptr noundef %106, i32 noundef %108, i32 noundef 0) #17
  br label %113

113:                                              ; preds = %105, %97, %85, %82, %71, %68, %67, %63, %60, %22
  %114 = phi i32 [ %26, %22 ], [ %58, %63 ], [ %58, %60 ], [ -95, %71 ], [ -95, %68 ], [ -22, %67 ], [ -11, %85 ], [ -11, %82 ], [ %90, %97 ], [ %90, %105 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_add_key(ptr noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef readonly %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca i32, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %10, !prof !17

9:                                                ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %1, i32 1408
  %14 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %12, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 0, ptr %7, align 4, !annotation !8
  %16 = getelementptr i8, ptr %1, i32 1412
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 3
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %183, label %22

22:                                               ; preds = %10
  %23 = zext i8 %2 to i32
  %24 = icmp ugt i8 %2, 5
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = tail call i32 @net_ratelimit() #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %183, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.brcmf_cfg80211_add_key, i32 noundef %23) #18
  br label %183

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.key_params, ptr %5, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load volatile i32, ptr %18, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %183, label %40

40:                                               ; preds = %36
  %41 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %183, label %44

44:                                               ; preds = %40
  %45 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23
  %46 = getelementptr inbounds i8, ptr %45, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(164) %46, i8 0, i32 160, i1 false) #17
  store i32 %23, ptr %45, align 4
  %47 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23, i32 5
  store i32 2, ptr %47, align 4
  %48 = tail call fastcc i32 @send_key_to_dongle(ptr noundef %13, ptr noundef %45) #17
  br label %183

49:                                               ; preds = %32
  %50 = icmp ugt i32 %34, 32
  br i1 %50, label %51, label %59

51:                                               ; preds = %49
  %52 = tail call i32 @net_ratelimit() #17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %183, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.wiphy, ptr %56, i32 0, i32 56
  %58 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.brcmf_cfg80211_add_key, i32 noundef %58) #18
  br label %183

59:                                               ; preds = %49
  %60 = icmp eq ptr %4, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  %62 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(164) %62, i8 0, i32 164, i1 false)
  br label %80

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.key_params, ptr %5, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, -1027073
  %67 = and i32 %66, -5
  %68 = icmp eq i32 %67, 0
  %69 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(164) %69, i8 0, i32 164, i1 false)
  br i1 %68, label %80, label %70

70:                                               ; preds = %63
  %71 = load i32, ptr %4, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %75, ptr noundef nonnull align 1 dereferenceable(6) %4, i32 6, i1 false)
  %76 = load i32, ptr %33, align 4
  %77 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23, i32 1
  store i32 %76, ptr %77, align 4
  store i32 %23, ptr %69, align 4
  %78 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23, i32 2
  %79 = load ptr, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %78, ptr align 1 %79, i32 %76, i1 false)
  br label %92

80:                                               ; preds = %63, %61
  %81 = phi ptr [ %62, %61 ], [ %69, %63 ]
  %82 = load i32, ptr %33, align 4
  %83 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23, i32 1
  store i32 %82, ptr %83, align 4
  store i32 %23, ptr %81, align 4
  %84 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23, i32 2
  %85 = load ptr, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %84, ptr align 1 %85, i32 %82, i1 false)
  %86 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23, i32 5
  store i32 2, ptr %86, align 4
  br label %92

87:                                               ; preds = %70
  %88 = load i32, ptr %33, align 4
  %89 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23, i32 1
  store i32 %88, ptr %89, align 4
  store i32 %23, ptr %69, align 4
  %90 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23, i32 2
  %91 = load ptr, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %90, ptr align 1 %91, i32 %88, i1 false)
  br label %92

92:                                               ; preds = %87, %80, %74
  %93 = phi ptr [ %69, %87 ], [ %69, %74 ], [ %81, %80 ]
  %94 = phi i1 [ true, %87 ], [ true, %74 ], [ false, %80 ]
  %95 = getelementptr inbounds %struct.key_params, ptr %5, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %131, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.key_params, ptr %5, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 6
  br i1 %101, label %102, label %131

102:                                              ; preds = %98
  %103 = getelementptr i8, ptr %96, i32 5
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = shl nuw i32 %105, 24
  %107 = getelementptr i8, ptr %96, i32 4
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 16
  %111 = or i32 %110, %106
  %112 = getelementptr i8, ptr %96, i32 3
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = shl nuw nsw i32 %114, 8
  %116 = or i32 %111, %115
  %117 = getelementptr i8, ptr %96, i32 2
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = or i32 %116, %119
  %121 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23, i32 9
  store i32 %120, ptr %121, align 4
  %122 = getelementptr i8, ptr %96, i32 1
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i16
  %125 = shl nuw i16 %124, 8
  %126 = load i8, ptr %96, align 1
  %127 = zext i8 %126 to i16
  %128 = or i16 %125, %127
  %129 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23, i32 9, i32 1
  store i16 %128, ptr %129, align 4
  %130 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23, i32 7
  store i32 1, ptr %130, align 4
  br label %131

131:                                              ; preds = %102, %98, %92
  %132 = getelementptr inbounds %struct.key_params, ptr %5, i32 0, i32 5
  %133 = load i32, ptr %132, align 4
  switch i32 %133, label %146 [
    i32 1027073, label %154
    i32 1027077, label %134
    i32 1027074, label %135
    i32 1027078, label %144
    i32 1027076, label %145
  ]

134:                                              ; preds = %131
  br label %154

135:                                              ; preds = %131
  %136 = load ptr, ptr %16, align 4
  %137 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %136, i32 0, i32 1, i32 1
  %138 = load i32, ptr %137, align 4
  switch i32 %138, label %139 [
    i32 9, label %154
    i32 3, label %154
  ]

139:                                              ; preds = %135
  %140 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23, i32 2, i32 24
  %141 = load i64, ptr %140, align 4
  %142 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23, i32 2, i32 16
  %143 = load i64, ptr %142, align 4
  store i64 %143, ptr %140, align 4
  store i64 %141, ptr %142, align 4
  br label %154

144:                                              ; preds = %131
  br label %154

145:                                              ; preds = %131
  br label %154

146:                                              ; preds = %131
  %147 = tail call i32 @net_ratelimit() #17
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %183, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.wiphy, ptr %151, i32 0, i32 56
  %153 = load i32, ptr %132, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.brcmf_cfg80211_add_key, i32 noundef %153) #18
  br label %183

154:                                              ; preds = %145, %144, %139, %135, %135, %134, %131
  %155 = phi i32 [ 4, %145 ], [ 4, %144 ], [ 3, %134 ], [ 1, %131 ], [ 2, %135 ], [ 2, %135 ], [ 2, %139 ]
  %156 = phi i32 [ 4, %145 ], [ 4, %144 ], [ 1, %134 ], [ 1, %131 ], [ 2, %135 ], [ 2, %135 ], [ 2, %139 ]
  %157 = getelementptr %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 2, i32 %23, i32 4
  store i32 %155, ptr %157, align 4
  %158 = tail call fastcc i32 @send_key_to_dongle(ptr noundef %13, ptr noundef %93)
  %159 = icmp ne i32 %158, 0
  %160 = select i1 %94, i1 true, i1 %159
  br i1 %160, label %183, label %161

161:                                              ; preds = %154
  %162 = call i32 @brcmf_fil_bsscfg_int_get(ptr noundef %13, ptr noundef nonnull @.str.61, ptr noundef nonnull %7) #17
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %161
  %165 = call i32 @net_ratelimit() #17
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %183, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.wiphy, ptr %169, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %170, ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.brcmf_cfg80211_add_key, i32 noundef %162) #18
  br label %183

171:                                              ; preds = %161
  %172 = load i32, ptr %7, align 4
  %173 = or i32 %172, %156
  store i32 %173, ptr %7, align 4
  %174 = call i32 @brcmf_fil_bsscfg_int_set(ptr noundef %13, ptr noundef nonnull @.str.61, i32 noundef %173) #17
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %171
  %177 = call i32 @net_ratelimit() #17
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.wiphy, ptr %181, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %182, ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.brcmf_cfg80211_add_key, i32 noundef %174) #18
  br label %183

183:                                              ; preds = %179, %176, %171, %167, %164, %154, %149, %146, %54, %51, %44, %40, %36, %28, %25, %10
  %184 = phi i32 [ -5, %10 ], [ -22, %28 ], [ -22, %25 ], [ -22, %54 ], [ -22, %51 ], [ %158, %154 ], [ %162, %167 ], [ %162, %164 ], [ %174, %179 ], [ %174, %176 ], [ 0, %171 ], [ -22, %149 ], [ -22, %146 ], [ %48, %44 ], [ -5, %36 ], [ -22, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  ret i32 %184
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_get_key(ptr noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, i1 noundef zeroext %3, ptr nocapture noundef readnone %4, ptr noundef %5, ptr nocapture noundef readonly %6) #0 {
  %8 = alloca %struct.key_params, align 4
  %9 = alloca i32, align 4
  %10 = icmp eq ptr %0, null
  br i1 %10, label %11, label %12, !prof !17

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #17
  %15 = getelementptr i8, ptr %1, i32 1412
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %14, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  store i32 0, ptr %9, align 4, !annotation !8
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %16, i32 0, i32 3
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %64, label %23

23:                                               ; preds = %12
  %24 = getelementptr i8, ptr %1, i32 1408
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 28, i1 false)
  %25 = call i32 @brcmf_fil_bsscfg_int_get(ptr noundef %24, ptr noundef nonnull @.str.61, ptr noundef nonnull %9) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = call i32 @net_ratelimit() #17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %64, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.brcmf_pub, ptr %18, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.wiphy, ptr %32, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.brcmf_cfg80211_get_key, i32 noundef %25) #18
  br label %64

34:                                               ; preds = %23
  %35 = load i32, ptr %9, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %16, i32 0, i32 2, i32 1, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 1027073
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = and i32 %40, 1027077
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %63, label %60

46:                                               ; preds = %34
  %47 = and i32 %35, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = and i32 %35, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = call i32 @net_ratelimit() #17
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.brcmf_pub, ptr %18, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.wiphy, ptr %57, i32 0, i32 56
  %59 = load i32, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.brcmf_cfg80211_get_key, i32 noundef %59) #18
  br label %64

60:                                               ; preds = %49, %46, %43, %38
  %61 = phi i32 [ 1027073, %38 ], [ 1027077, %43 ], [ 1027074, %46 ], [ 1027078, %49 ]
  %62 = getelementptr inbounds %struct.key_params, ptr %8, i32 0, i32 5
  store i32 %61, ptr %62, align 4
  br label %63

63:                                               ; preds = %60, %43
  call void %6(ptr noundef %5, ptr noundef nonnull %8) #17
  br label %64

64:                                               ; preds = %63, %55, %52, %30, %27, %12
  %65 = phi i32 [ -5, %12 ], [ 0, %63 ], [ -11, %30 ], [ -11, %27 ], [ -22, %55 ], [ -22, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #17
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_del_key(ptr nocapture noundef readnone %0, ptr noundef %1, i8 noundef zeroext %2, i1 noundef zeroext %3, ptr nocapture noundef readnone %4) #0 {
  %6 = getelementptr i8, ptr %1, i32 1408
  %7 = getelementptr i8, ptr %1, i32 1412
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %8, i32 0, i32 3
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %5
  %14 = zext i8 %2 to i32
  %15 = icmp ugt i8 %2, 5
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = getelementptr %struct.brcmf_cfg80211_vif, ptr %8, i32 0, i32 2, i32 2, i32 %14, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr %struct.brcmf_cfg80211_vif, ptr %8, i32 0, i32 2, i32 2, i32 %14
  %22 = getelementptr inbounds i8, ptr %21, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(164) %22, i8 0, i32 160, i1 false)
  store i32 %14, ptr %21, align 4
  %23 = getelementptr %struct.brcmf_cfg80211_vif, ptr %8, i32 0, i32 2, i32 2, i32 %14, i32 5
  store i32 2, ptr %23, align 4
  %24 = tail call fastcc i32 @send_key_to_dongle(ptr noundef %6, ptr noundef %21)
  br label %25

25:                                               ; preds = %20, %16, %13, %5
  %26 = phi i32 [ %24, %20 ], [ -5, %5 ], [ -22, %13 ], [ -22, %16 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_config_default_key(ptr nocapture noundef readnone %0, ptr noundef %1, i8 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %1, i32 1408
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !annotation !8
  %9 = getelementptr i8, ptr %1, i32 1412
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %10, i32 0, i32 3
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %5
  %16 = call i32 @brcmf_fil_bsscfg_int_get(ptr noundef %7, ptr noundef nonnull @.str.61, ptr noundef nonnull %6) #17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = call i32 @net_ratelimit() #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.brcmf_pub, ptr %8, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.brcmf_cfg80211_config_default_key, i32 noundef %16) #18
  br label %40

25:                                               ; preds = %15
  %26 = load i32, ptr %6, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = zext i8 %2 to i32
  %31 = call i32 @brcmf_fil_cmd_int_set(ptr noundef %7, i32 noundef 236, i32 noundef %30) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = call i32 @net_ratelimit() #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.brcmf_pub, ptr %8, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.wiphy, ptr %38, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.brcmf_cfg80211_config_default_key, i32 noundef %31) #18
  br label %40

40:                                               ; preds = %36, %33, %29, %25, %21, %18, %5
  %41 = phi i32 [ -5, %5 ], [ %16, %21 ], [ %16, %18 ], [ %31, %36 ], [ %31, %33 ], [ 0, %29 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_config_default_mgmt_key(ptr nocapture noundef readnone %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = tail call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %4, i32 noundef 11) #17
  %6 = select i1 %5, i32 0, i32 -95
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_start_ap(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.brcmf_wsec_pmk_le, align 2
  %5 = alloca %struct.brcmf_ssid_le, align 4
  %6 = alloca %struct.brcmf_join_params, align 4
  %7 = alloca %struct.brcmf_fil_bss_enable_le, align 8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %10, !prof !17

9:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %1, i32 1408
  %14 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %12, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %1, i32 1412
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %6, i8 0, i32 52, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  store i64 0, ptr %7, align 8, !annotation !8
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %12, i32 0, i32 26
  %19 = tail call fastcc zeroext i16 @chandef_to_chanspec(ptr noundef %18, ptr noundef %2)
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %20, i32 0, i32 1, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %20, i32 0, i32 7
  %24 = load i8, ptr %23, align 2, !range !10
  %25 = icmp eq i8 %24, 0
  %26 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %20, i32 0, i32 8
  %27 = tail call i32 @brcmf_fil_cmd_int_get(ptr noundef %13, i32 noundef 46, ptr noundef %26) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %10
  %30 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 1, i32 11
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 1, i32 1
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %47, %33
  %37 = phi i32 [ %49, %47 ], [ %31, %33 ]
  %38 = phi ptr [ %48, %47 ], [ %35, %33 ]
  %39 = getelementptr inbounds %struct.brcmf_tlv, ptr %38, i32 0, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, ptr %38, align 1
  %43 = icmp ne i8 %42, 7
  %44 = add nuw nsw i32 %41, 2
  %45 = icmp ult i32 %37, %44
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = getelementptr i8, ptr %38, i32 %44
  %49 = sub nsw i32 %37, %44
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %36, label %51

51:                                               ; preds = %47, %36, %29
  %52 = phi ptr [ null, %29 ], [ null, %47 ], [ %38, %36 ]
  %53 = icmp ne ptr %52, null
  %54 = zext i1 %53 to i32
  br label %55

55:                                               ; preds = %51, %10
  %56 = phi i32 [ %54, %51 ], [ 0, %10 ]
  %57 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %57, i8 0, i32 32, i1 false)
  %58 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %100

65:                                               ; preds = %61, %55
  %66 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 1, i32 10
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, -36
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %404

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %72, i32 36
  br label %74

74:                                               ; preds = %85, %70
  %75 = phi i32 [ %87, %85 ], [ %68, %70 ]
  %76 = phi ptr [ %86, %85 ], [ %73, %70 ]
  %77 = getelementptr inbounds %struct.brcmf_tlv, ptr %76, i32 0, i32 1
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, ptr %76, align 1
  %81 = icmp ne i8 %80, 0
  %82 = add nuw nsw i32 %79, 2
  %83 = icmp ult i32 %75, %82
  %84 = select i1 %81, i1 true, i1 %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %74
  %86 = getelementptr i8, ptr %76, i32 %82
  %87 = sub nsw i32 %75, %82
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %74, label %404

89:                                               ; preds = %74
  %90 = icmp eq ptr %76, null
  %91 = icmp ugt i8 %78, 32
  %92 = select i1 %90, i1 true, i1 %91
  br i1 %92, label %404, label %93

93:                                               ; preds = %89
  %94 = zext i8 %78 to i32
  %95 = getelementptr inbounds %struct.brcmf_tlv, ptr %76, i32 0, i32 1
  %96 = getelementptr inbounds %struct.brcmf_ssid_le, ptr %5, i32 0, i32 1
  %97 = getelementptr inbounds %struct.brcmf_tlv, ptr %76, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %96, ptr align 1 %97, i32 %94, i1 false)
  %98 = load i8, ptr %95, align 1
  %99 = zext i8 %98 to i32
  br label %102

100:                                              ; preds = %61
  %101 = getelementptr inbounds %struct.brcmf_ssid_le, ptr %5, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %101, ptr nonnull align 1 %59, i32 %63, i1 false)
  br label %102

102:                                              ; preds = %100, %93
  %103 = phi i32 [ %63, %100 ], [ %99, %93 ]
  store i32 %103, ptr %5, align 4
  br i1 %25, label %104, label %197

104:                                              ; preds = %102
  %105 = load ptr, ptr %13, align 4
  %106 = load ptr, ptr %16, align 4
  %107 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %106, i32 0, i32 3
  %108 = load volatile i32, ptr %107, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %121, label %111

111:                                              ; preds = %104
  %112 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef 0) #17
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %111
  %115 = tail call i32 @net_ratelimit() #17
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.brcmf_pub, ptr %105, i32 0, i32 2
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.wiphy, ptr %119, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.brcmf_set_mpc) #18
  br label %121

121:                                              ; preds = %117, %114, %111, %104
  tail call void @brcmf_configure_arp_nd_offload(ptr noundef %13, i1 noundef zeroext false) #17
  br i1 %28, label %122, label %137

122:                                              ; preds = %121
  %123 = load ptr, ptr %16, align 4
  %124 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %123, i32 0, i32 8
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %56, %125
  br i1 %126, label %137, label %127

127:                                              ; preds = %122
  %128 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %13, i32 noundef 47, i32 noundef %56) #17
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = tail call i32 @net_ratelimit() #17
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %381, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.wiphy, ptr %135, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.brcmf_cfg80211_start_ap, i32 noundef %128) #18
  br label %381

137:                                              ; preds = %127, %122, %121
  %138 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %137
  %142 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %13, i32 noundef 76, i32 noundef %139) #17
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = tail call i32 @net_ratelimit() #17
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %381, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.wiphy, ptr %149, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.brcmf_cfg80211_start_ap, i32 noundef %142) #18
  br label %381

151:                                              ; preds = %141, %137
  %152 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 3
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %151
  %156 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %13, i32 noundef 78, i32 noundef %153) #17
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = tail call i32 @net_ratelimit() #17
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %381, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.wiphy, ptr %163, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.brcmf_cfg80211_start_ap, i32 noundef %156) #18
  br label %381

165:                                              ; preds = %155, %151
  %166 = icmp eq i32 %22, 3
  br i1 %166, label %167, label %187

167:                                              ; preds = %165
  %168 = getelementptr i8, ptr %1, i32 1456
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = tail call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %13, i32 noundef 5) #17
  br i1 %172, label %187, label %173

173:                                              ; preds = %171
  %174 = tail call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %13, i32 noundef 1) #17
  br i1 %174, label %187, label %175

175:                                              ; preds = %173, %167
  %176 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %13, i32 noundef 3, i32 noundef 1) #17
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %175
  %179 = tail call i32 @net_ratelimit() #17
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %381, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.wiphy, ptr %183, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %184, ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.brcmf_cfg80211_start_ap, i32 noundef %176) #18
  br label %381

185:                                              ; preds = %175
  %186 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %13, ptr noundef nonnull @.str.72, i32 noundef 0) #17
  br label %187

187:                                              ; preds = %185, %173, %171, %165
  %188 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %13, i32 noundef 20, i32 noundef 1) #17
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %204

190:                                              ; preds = %187
  %191 = tail call i32 @net_ratelimit() #17
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %381, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.wiphy, ptr %195, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %196, ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.brcmf_cfg80211_start_ap, i32 noundef %188) #18
  br label %381

197:                                              ; preds = %102
  br i1 %28, label %198, label %204

198:                                              ; preds = %197
  %199 = load ptr, ptr %16, align 4
  %200 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %199, i32 0, i32 8
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %56, %201
  br i1 %202, label %204, label %203, !prof !19

203:                                              ; preds = %198
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 4833, i32 noundef 9, ptr noundef null) #17
  br label %404

204:                                              ; preds = %198, %197, %187
  %205 = phi i32 [ %188, %187 ], [ -1, %198 ], [ -1, %197 ]
  switch i32 %22, label %373 [
    i32 3, label %206
    i32 9, label %332
  ]

206:                                              ; preds = %204
  %207 = tail call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %13, i32 noundef 0) #17
  %208 = select i1 %207, i1 %25, i1 false
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %13, ptr noundef nonnull @.str.74, i32 noundef 1) #17
  br label %211

211:                                              ; preds = %209, %206
  %212 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %13, i32 noundef 118, i32 noundef 1) #17
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %211
  %215 = tail call i32 @net_ratelimit() #17
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %381, label %217

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr inbounds %struct.wiphy, ptr %219, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %220, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.brcmf_cfg80211_start_ap, i32 noundef %212) #18
  br label %381

221:                                              ; preds = %211
  br i1 %25, label %222, label %233

222:                                              ; preds = %221
  %223 = zext i16 %19 to i32
  %224 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %13, ptr noundef nonnull @.str.76, i32 noundef %223) #17
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %222
  %227 = tail call i32 @net_ratelimit() #17
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %381, label %229

229:                                              ; preds = %226
  %230 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.wiphy, ptr %231, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %232, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.brcmf_cfg80211_start_ap, i32 noundef %223, i32 noundef %224) #18
  br label %381

233:                                              ; preds = %222, %221
  %234 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %13, i32 noundef 2, i32 noundef 1) #17
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %233
  %237 = tail call i32 @net_ratelimit() #17
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %381, label %239

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %241 = load ptr, ptr %240, align 4
  %242 = getelementptr inbounds %struct.wiphy, ptr %241, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %242, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.brcmf_cfg80211_start_ap, i32 noundef %234) #18
  br label %381

243:                                              ; preds = %233
  %244 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 7, i32 13
  %245 = load ptr, ptr %244, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %277, label %247

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 4
  %249 = load i16, ptr %248, align 4
  %250 = or i16 %249, 2
  store i16 %250, ptr %248, align 4
  %251 = load ptr, ptr %244, align 4
  %252 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 70, ptr nonnull %4) #17
  %253 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(70) %253, i8 0, i32 66, i1 false) #17, !annotation !8
  store i16 64, ptr %4, align 2
  %254 = getelementptr inbounds %struct.brcmf_wsec_pmk_le, ptr %4, i32 0, i32 1
  store i16 1, ptr %254, align 2
  br label %255

255:                                              ; preds = %255, %247
  %256 = phi i32 [ %263, %255 ], [ 0, %247 ]
  %257 = shl nuw i32 %256, 1
  %258 = getelementptr %struct.brcmf_wsec_pmk_le, ptr %4, i32 0, i32 2, i32 %257
  %259 = getelementptr i8, ptr %251, i32 %256
  %260 = load i8, ptr %259, align 1
  %261 = zext i8 %260 to i32
  %262 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %258, i32 noundef 3, ptr noundef nonnull @.str.26, i32 noundef %261) #17
  %263 = add nuw nsw i32 %256, 1
  %264 = icmp eq i32 %263, 32
  br i1 %264, label %265, label %255

265:                                              ; preds = %255
  %266 = call i32 @brcmf_fil_cmd_data_set(ptr noundef %13, i32 noundef 268, ptr noundef nonnull %4, i32 noundef 70) #17
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %276

268:                                              ; preds = %265
  %269 = call i32 @net_ratelimit() #17
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %275, label %271

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.brcmf_pub, ptr %252, i32 0, i32 2
  %273 = load ptr, ptr %272, align 4
  %274 = getelementptr inbounds %struct.wiphy, ptr %273, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %274, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.brcmf_set_pmk, i32 noundef 32) #18
  br label %275

275:                                              ; preds = %271, %268
  call void @llvm.lifetime.end.p0(i64 70, ptr nonnull %4) #17
  br label %381

276:                                              ; preds = %265
  call void @llvm.lifetime.end.p0(i64 70, ptr nonnull %4) #17
  br label %277

277:                                              ; preds = %276, %243
  %278 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 7, i32 14
  %279 = load ptr, ptr %278, align 4
  %280 = icmp eq ptr %279, null
  br i1 %280, label %291, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 4
  %283 = load i16, ptr %282, align 4
  %284 = or i16 %283, 4
  store i16 %284, ptr %282, align 4
  %285 = load ptr, ptr %278, align 4
  %286 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 7, i32 15
  %287 = load i8, ptr %286, align 4
  %288 = zext i8 %287 to i16
  %289 = call fastcc i32 @brcmf_set_sae_password(ptr noundef %13, ptr noundef %285, i16 noundef zeroext %288)
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %381, label %291

291:                                              ; preds = %281, %277
  %292 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 2, i32 4
  %293 = load i16, ptr %292, align 4
  %294 = icmp eq i16 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %291
  store i16 1, ptr %292, align 4
  br label %296

296:                                              ; preds = %295, %291
  %297 = call fastcc i32 @brcmf_parse_configure_security(ptr noundef %13, ptr noundef %2)
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %296
  %300 = call i32 @net_ratelimit() #17
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %381, label %302

302:                                              ; preds = %299
  %303 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %304 = load ptr, ptr %303, align 4
  %305 = getelementptr inbounds %struct.wiphy, ptr %304, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %305, ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__.brcmf_cfg80211_start_ap) #18
  br label %381

306:                                              ; preds = %296
  call fastcc void @brcmf_cfg80211_reconfigure_wep(ptr noundef %13)
  %307 = getelementptr inbounds i8, ptr %6, i32 36
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %307, i8 0, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef nonnull align 4 dereferenceable(36) %5, i32 36, i1 false)
  %308 = call i32 @brcmf_fil_cmd_data_set(ptr noundef %13, i32 noundef 26, ptr noundef nonnull %6, i32 noundef 52) #17
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %317

310:                                              ; preds = %306
  %311 = call i32 @net_ratelimit() #17
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %381, label %313

313:                                              ; preds = %310
  %314 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.wiphy, ptr %315, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %316, ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.brcmf_cfg80211_start_ap, i32 noundef %308) #18
  br label %381

317:                                              ; preds = %306
  %318 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 6
  %319 = load i32, ptr %318, align 4
  %320 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %13, ptr noundef nonnull @.str.81, i32 noundef %319) #17
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %374, label %322

322:                                              ; preds = %317
  %323 = call i32 @net_ratelimit() #17
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %381, label %325

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %327 = load ptr, ptr %326, align 4
  %328 = getelementptr inbounds %struct.wiphy, ptr %327, i32 0, i32 56
  %329 = load i32, ptr %318, align 4
  %330 = icmp eq i32 %329, 0
  %331 = select i1 %330, ptr @.str.84, ptr @.str.83
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %328, ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__.brcmf_cfg80211_start_ap, ptr noundef nonnull %331, i32 noundef %320) #18
  br label %381

332:                                              ; preds = %204
  %333 = zext i16 %19 to i32
  %334 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %13, ptr noundef nonnull @.str.76, i32 noundef %333) #17
  %335 = icmp slt i32 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %332
  %337 = tail call i32 @net_ratelimit() #17
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %381, label %339

339:                                              ; preds = %336
  %340 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %341 = load ptr, ptr %340, align 4
  %342 = getelementptr inbounds %struct.wiphy, ptr %341, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %342, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.brcmf_cfg80211_start_ap, i32 noundef %333, i32 noundef %334) #18
  br label %381

343:                                              ; preds = %332
  %344 = tail call fastcc i32 @brcmf_parse_configure_security(ptr noundef %13, ptr noundef %2)
  %345 = icmp slt i32 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %343
  %347 = tail call i32 @net_ratelimit() #17
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %381, label %349

349:                                              ; preds = %346
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_cfg80211_start_ap, ptr noundef nonnull @.str.85) #17
  br label %381

350:                                              ; preds = %343
  %351 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %13, ptr noundef nonnull @.str.86, ptr noundef nonnull %5, i32 noundef 36) #17
  %352 = icmp slt i32 %351, 0
  br i1 %352, label %353, label %360

353:                                              ; preds = %350
  %354 = call i32 @net_ratelimit() #17
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %381, label %356

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %358 = load ptr, ptr %357, align 4
  %359 = getelementptr inbounds %struct.wiphy, ptr %358, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %359, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.brcmf_cfg80211_start_ap, i32 noundef %351) #18
  br label %381

360:                                              ; preds = %350
  %361 = getelementptr i8, ptr %1, i32 1460
  %362 = load i32, ptr %361, align 4
  store i32 %362, ptr %7, align 8
  %363 = getelementptr inbounds %struct.brcmf_fil_bss_enable_le, ptr %7, i32 0, i32 1
  store i32 1, ptr %363, align 4
  %364 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %13, ptr noundef nonnull @.str.87, ptr noundef nonnull %7, i32 noundef 8) #17
  %365 = icmp slt i32 %364, 0
  br i1 %365, label %366, label %374

366:                                              ; preds = %360
  %367 = call i32 @net_ratelimit() #17
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %381, label %369

369:                                              ; preds = %366
  %370 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %371 = load ptr, ptr %370, align 4
  %372 = getelementptr inbounds %struct.wiphy, ptr %371, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %372, ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.brcmf_cfg80211_start_ap, i32 noundef %364) #18
  br label %381

373:                                              ; preds = %204
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 4952, i32 noundef 9, ptr noundef null) #17
  br label %374

374:                                              ; preds = %373, %360, %317
  %375 = phi i32 [ %205, %373 ], [ 0, %317 ], [ %364, %360 ]
  %376 = load ptr, ptr %16, align 4
  %377 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 1
  %378 = call fastcc i32 @brcmf_config_ap_mgmt_ie(ptr noundef %376, ptr noundef %377)
  %379 = load ptr, ptr %16, align 4
  %380 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %379, i32 0, i32 3
  call void @_set_bit(i32 noundef 4, ptr noundef %380) #17
  call void @brcmf_net_setcarrier(ptr noundef %13, i1 noundef zeroext true) #17
  br label %381

381:                                              ; preds = %374, %369, %366, %356, %353, %349, %346, %339, %336, %325, %322, %313, %310, %302, %299, %281, %275, %239, %236, %229, %226, %217, %214, %193, %190, %181, %178, %161, %158, %147, %144, %133, %130
  %382 = phi i32 [ %212, %217 ], [ %212, %214 ], [ %234, %239 ], [ %234, %236 ], [ %289, %281 ], [ %297, %302 ], [ %297, %299 ], [ %308, %313 ], [ %308, %310 ], [ %320, %325 ], [ %320, %322 ], [ %375, %374 ], [ %224, %229 ], [ %224, %226 ], [ %334, %339 ], [ %334, %336 ], [ %344, %349 ], [ %344, %346 ], [ %351, %356 ], [ %351, %353 ], [ %364, %369 ], [ %364, %366 ], [ %128, %133 ], [ %128, %130 ], [ %142, %147 ], [ %142, %144 ], [ %156, %161 ], [ %156, %158 ], [ %176, %181 ], [ %176, %178 ], [ %188, %193 ], [ %188, %190 ], [ %266, %275 ]
  %383 = icmp eq i32 %382, 0
  %384 = xor i1 %25, true
  %385 = select i1 %383, i1 true, i1 %384
  br i1 %385, label %404, label %386

386:                                              ; preds = %381
  %387 = load ptr, ptr %13, align 4
  %388 = load ptr, ptr %16, align 4
  %389 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %388, i32 0, i32 3
  %390 = load volatile i32, ptr %389, align 4
  %391 = and i32 %390, 1
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %403, label %393

393:                                              ; preds = %386
  %394 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef 1) #17
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %403, label %396

396:                                              ; preds = %393
  %397 = call i32 @net_ratelimit() #17
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %403, label %399

399:                                              ; preds = %396
  %400 = getelementptr inbounds %struct.brcmf_pub, ptr %387, i32 0, i32 2
  %401 = load ptr, ptr %400, align 4
  %402 = getelementptr inbounds %struct.wiphy, ptr %401, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %402, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.brcmf_set_mpc) #18
  br label %403

403:                                              ; preds = %399, %396, %393, %386
  call void @brcmf_configure_arp_nd_offload(ptr noundef %13, i1 noundef zeroext true) #17
  br label %404

404:                                              ; preds = %403, %381, %203, %89, %85, %65
  %405 = phi i32 [ -22, %89 ], [ %382, %381 ], [ %382, %403 ], [ -22, %203 ], [ -22, %65 ], [ -22, %85 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  ret i32 %405
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_change_beacon(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1412
  %5 = load ptr, ptr %4, align 4
  %6 = tail call fastcc i32 @brcmf_config_ap_mgmt_ie(ptr noundef %5, ptr noundef %2)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_stop_ap(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.brcmf_wsec_sae_pwd_le, align 2
  %4 = alloca %struct.brcmf_wsec_pmk_le, align 2
  %5 = alloca %struct.brcmf_fil_bss_enable_le, align 8
  %6 = alloca %struct.brcmf_join_params, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %9, !prof !17

8:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %1, i32 1408
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %11, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %1, i32 1412
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %6, i8 0, i32 52, i1 false), !annotation !8
  %17 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %16, i32 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %126

20:                                               ; preds = %9
  tail call void @msleep(i32 noundef 400) #17
  %21 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %16, i32 0, i32 2, i32 4
  %22 = load i16, ptr %21, align 4
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %59, label %24

24:                                               ; preds = %20
  %25 = and i16 %22, 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 70, ptr nonnull %4) #17
  %29 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(70) %29, i8 0, i32 66, i1 false) #17, !annotation !8
  store i16 0, ptr %4, align 2
  %30 = getelementptr inbounds %struct.brcmf_wsec_pmk_le, ptr %4, i32 0, i32 1
  store i16 1, ptr %30, align 2
  %31 = call i32 @brcmf_fil_cmd_data_set(ptr noundef %12, i32 noundef 268, ptr noundef nonnull %4, i32 noundef 70) #17
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = call i32 @net_ratelimit() #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.wiphy, ptr %38, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.brcmf_set_pmk, i32 noundef 0) #18
  br label %40

40:                                               ; preds = %36, %33, %27
  call void @llvm.lifetime.end.p0(i64 70, ptr nonnull %4) #17
  %41 = load i16, ptr %21, align 4
  br label %42

42:                                               ; preds = %40, %24
  %43 = phi i16 [ %41, %40 ], [ %22, %24 ]
  %44 = and i16 %43, 4
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(130) %3, i8 0, i64 130, i1 false)
  %48 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %12, ptr noundef nonnull @.str.91, ptr noundef nonnull %3, i32 noundef 130) #17
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = call i32 @net_ratelimit() #17
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.brcmf_pub, ptr %47, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.wiphy, ptr %55, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.92, ptr noundef nonnull @__func__.brcmf_set_sae_password, i32 noundef 0) #18
  br label %57

57:                                               ; preds = %53, %50, %46
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #17
  br label %58

58:                                               ; preds = %57, %42
  store i16 1, ptr %21, align 4
  br label %59

59:                                               ; preds = %58, %20
  %60 = load ptr, ptr %15, align 4
  %61 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %60, i32 0, i32 7
  %62 = load i8, ptr %61, align 2, !range !10
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = call i32 @brcmf_fil_cmd_int_set(ptr noundef %12, i32 noundef 3, i32 noundef 1) #17
  br label %160

66:                                               ; preds = %59
  %67 = getelementptr i8, ptr %1, i32 1460
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %12, ptr noundef nonnull @.str.81, i32 noundef 0) #17
  br label %72

72:                                               ; preds = %70, %66
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %6, i8 0, i32 52, i1 false)
  %73 = call i32 @brcmf_fil_cmd_data_set(ptr noundef %12, i32 noundef 26, ptr noundef nonnull %6, i32 noundef 52) #17
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = call i32 @net_ratelimit() #17
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.wiphy, ptr %80, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.brcmf_cfg80211_stop_ap, i32 noundef %73) #18
  br label %82

82:                                               ; preds = %78, %75, %72
  %83 = call i32 @brcmf_fil_cmd_int_set(ptr noundef %12, i32 noundef 3, i32 noundef 1) #17
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = call i32 @net_ratelimit() #17
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.wiphy, ptr %90, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.brcmf_cfg80211_stop_ap, i32 noundef %83) #18
  br label %92

92:                                               ; preds = %88, %85, %82
  %93 = call i32 @brcmf_fil_cmd_int_set(ptr noundef %12, i32 noundef 118, i32 noundef 0) #17
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = call i32 @net_ratelimit() #17
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.wiphy, ptr %100, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.brcmf_cfg80211_stop_ap, i32 noundef %93) #18
  br label %102

102:                                              ; preds = %98, %95, %92
  %103 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %12, i32 noundef 0) #17
  br i1 %103, label %104, label %106

104:                                              ; preds = %102
  %105 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %12, ptr noundef nonnull @.str.74, i32 noundef 0) #17
  br label %106

106:                                              ; preds = %104, %102
  %107 = load ptr, ptr %15, align 4
  %108 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %107, i32 0, i32 8
  %109 = load i32, ptr %108, align 4
  %110 = call i32 @brcmf_fil_cmd_int_set(ptr noundef %12, i32 noundef 47, i32 noundef %109) #17
  %111 = call i32 @brcmf_fil_cmd_int_set(ptr noundef %12, i32 noundef 2, i32 noundef 1) #17
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %106
  %114 = call i32 @net_ratelimit() #17
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.wiphy, ptr %118, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.116, ptr noundef nonnull @__func__.brcmf_cfg80211_stop_ap, i32 noundef %111) #18
  br label %120

120:                                              ; preds = %116, %113, %106
  %121 = load ptr, ptr %15, align 4
  %122 = call i32 @brcmf_vif_set_mgmt_ie(ptr noundef %121, i32 noundef 16, ptr noundef null, i32 noundef 0) #17
  %123 = call i32 @brcmf_vif_set_mgmt_ie(ptr noundef %121, i32 noundef 2, ptr noundef null, i32 noundef 0) #17
  %124 = call i32 @brcmf_vif_set_mgmt_ie(ptr noundef %121, i32 noundef 1, ptr noundef null, i32 noundef 0) #17
  %125 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %121, i32 0, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(2580) %125, i8 0, i32 2580, i1 false) #17
  br label %139

126:                                              ; preds = %9
  %127 = getelementptr i8, ptr %1, i32 1460
  %128 = load i32, ptr %127, align 4
  store i32 %128, ptr %5, align 8
  %129 = getelementptr inbounds %struct.brcmf_fil_bss_enable_le, ptr %5, i32 0, i32 1
  store i32 0, ptr %129, align 4
  %130 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %12, ptr noundef nonnull @.str.87, ptr noundef nonnull %5, i32 noundef 8) #17
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = call i32 @net_ratelimit() #17
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 2
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.wiphy, ptr %137, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.brcmf_cfg80211_stop_ap, i32 noundef %130) #18
  br label %139

139:                                              ; preds = %135, %132, %126, %120
  %140 = phi i32 [ %111, %120 ], [ %130, %135 ], [ %130, %132 ], [ %130, %126 ]
  %141 = load ptr, ptr %12, align 4
  %142 = load ptr, ptr %15, align 4
  %143 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %142, i32 0, i32 3
  %144 = load volatile i32, ptr %143, align 4
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %139
  %148 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %12, ptr noundef nonnull @.str, i32 noundef 1) #17
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %147
  %151 = call i32 @net_ratelimit() #17
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.brcmf_pub, ptr %141, i32 0, i32 2
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.wiphy, ptr %155, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.brcmf_set_mpc) #18
  br label %157

157:                                              ; preds = %153, %150, %147, %139
  call void @brcmf_configure_arp_nd_offload(ptr noundef %12, i1 noundef zeroext true) #17
  %158 = load ptr, ptr %15, align 4
  %159 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %158, i32 0, i32 3
  call void @_clear_bit(i32 noundef 4, ptr noundef %159) #17
  call void @brcmf_net_setcarrier(ptr noundef %12, i1 noundef zeroext false) #17
  br label %160

160:                                              ; preds = %157, %64
  %161 = phi i32 [ %65, %64 ], [ %140, %157 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret i32 %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_del_station(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.brcmf_scb_val_le, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !17

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %12 = getelementptr inbounds i8, ptr %4, i32 8
  store i32 0, ptr %12, align 4, !annotation !8
  %13 = load ptr, ptr %2, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %1, i32 1408
  %17 = getelementptr i8, ptr %1, i32 1412
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 2, i32 5, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 2, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %22, %15
  %27 = phi ptr [ %25, %22 ], [ %16, %15 ]
  %28 = getelementptr inbounds %struct.brcmf_if, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %29, i32 0, i32 3
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.brcmf_scb_val_le, ptr %4, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %35, ptr noundef nonnull align 1 dereferenceable(6) %13, i32 6, i1 false)
  %36 = getelementptr inbounds %struct.station_del_parameters, ptr %2, i32 0, i32 2
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  store i32 %38, ptr %4, align 4
  %39 = call i32 @brcmf_fil_cmd_data_set(ptr noundef %27, i32 noundef 201, ptr noundef nonnull %4, i32 noundef 12) #17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = call i32 @net_ratelimit() #17
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.brcmf_pub, ptr %11, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.wiphy, ptr %46, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.brcmf_cfg80211_del_station, i32 noundef %39) #18
  br label %48

48:                                               ; preds = %44, %41, %34, %26, %7
  %49 = phi i32 [ -14, %7 ], [ -5, %26 ], [ %39, %41 ], [ %39, %44 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_change_station(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !17

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %1, i32 1408
  %13 = load i32, ptr %2, align 4
  %14 = getelementptr i8, ptr %2, i32 4
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %13, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.station_parameters, ptr %3, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.station_parameters, ptr %3, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 122, i32 121
  %30 = tail call i32 @brcmf_fil_cmd_data_set(ptr noundef %12, i32 noundef %29, ptr noundef %2, i32 noundef 6) #17
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = tail call i32 @net_ratelimit() #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.brcmf_pub, ptr %11, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.wiphy, ptr %37, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.118, ptr noundef nonnull @__func__.brcmf_cfg80211_change_station, i32 noundef %30) #18
  br label %39

39:                                               ; preds = %35, %32, %24, %19, %7
  %40 = phi i32 [ 0, %7 ], [ 0, %19 ], [ %30, %32 ], [ %30, %35 ], [ %30, %24 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_get_station(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = alloca %struct.brcmf_scb_val_le, align 4
  %6 = alloca %struct.brcmf_pktcnt_le, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.brcmf_scb_val_le, align 4
  %9 = alloca %struct.brcmf_sta_info_le, align 8
  %10 = icmp eq ptr %0, null
  br i1 %10, label %11, label %12, !prof !17

11:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %1, i32 1408
  %16 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %14, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 296, ptr nonnull %9) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(296) %9, i8 0, i32 296, i1 false), !annotation !8
  %18 = getelementptr i8, ptr %1, i32 1412
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %19, i32 0, i32 3
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %367, label %24

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %19, i32 0, i32 1, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %86

28:                                               ; preds = %24
  %29 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #17, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 0, ptr %7, align 4, !annotation !8
  %30 = call i32 @brcmf_fil_cmd_int_get(ptr noundef %15, i32 noundef 12, ptr noundef nonnull %7) #17
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = call i32 @net_ratelimit() #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %84, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.brcmf_pub, ptr %29, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.wiphy, ptr %37, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.123, ptr noundef nonnull @__func__.brcmf_cfg80211_get_station_ibss, i32 noundef %30) #18
  br label %84

39:                                               ; preds = %28
  %40 = load i64, ptr %3, align 8
  %41 = or i64 %40, 256
  store i64 %41, ptr %3, align 8
  %42 = load i32, ptr %7, align 4
  %43 = trunc i32 %42 to i16
  %44 = mul i16 %43, 5
  %45 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 14, i32 2
  store i16 %44, ptr %45, align 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false) #17
  %46 = call i32 @brcmf_fil_cmd_data_get(ptr noundef %15, i32 noundef 127, ptr noundef nonnull %5, i32 noundef 12) #17
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %39
  %49 = call i32 @net_ratelimit() #17
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %84, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.brcmf_pub, ptr %29, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.wiphy, ptr %53, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.124, ptr noundef nonnull @__func__.brcmf_cfg80211_get_station_ibss, i32 noundef %46) #18
  br label %84

55:                                               ; preds = %39
  %56 = load i32, ptr %5, align 4
  %57 = load i64, ptr %3, align 8
  %58 = or i64 %57, 128
  store i64 %58, ptr %3, align 8
  %59 = trunc i32 %56 to i8
  %60 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 9
  store i8 %59, ptr %60, align 1
  %61 = call i32 @brcmf_fil_cmd_data_get(ptr noundef %15, i32 noundef 137, ptr noundef nonnull %6, i32 noundef 20) #17
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %55
  %64 = call i32 @net_ratelimit() #17
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.brcmf_pub, ptr %29, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.wiphy, ptr %68, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.125, ptr noundef nonnull @__func__.brcmf_cfg80211_get_station_ibss, i32 noundef %61) #18
  br label %84

70:                                               ; preds = %55
  %71 = load i64, ptr %3, align 8
  %72 = or i64 %71, 268441088
  store i64 %72, ptr %3, align 8
  %73 = load i32, ptr %6, align 4
  %74 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 16
  store i32 %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.brcmf_pktcnt_le, ptr %6, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 20
  store i32 %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.brcmf_pktcnt_le, ptr %6, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 17
  store i32 %79, ptr %80, align 8
  %81 = getelementptr inbounds %struct.brcmf_pktcnt_le, ptr %6, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 19
  store i32 %82, ptr %83, align 8
  br label %84

84:                                               ; preds = %70, %66, %63, %51, %48, %35, %32
  %85 = phi i32 [ 0, %70 ], [ %30, %35 ], [ %30, %32 ], [ %46, %51 ], [ %46, %48 ], [ %61, %66 ], [ %61, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  br label %367

86:                                               ; preds = %24
  %87 = getelementptr inbounds i8, ptr %9, i32 6
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(290) %87, i8 0, i32 290, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(6) %9, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false)
  %88 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %15, ptr noundef nonnull @.str.119, ptr noundef nonnull %9, i32 noundef 296) #17
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %86
  %91 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %15, ptr noundef nonnull @.str.120, ptr noundef nonnull %9, i32 noundef 296) #17
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = call i32 @net_ratelimit() #17
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %367, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.brcmf_pub, ptr %17, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.wiphy, ptr %98, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.121, ptr noundef nonnull @__func__.brcmf_cfg80211_get_station, i32 noundef %91) #18
  br label %367

100:                                              ; preds = %90, %86
  %101 = phi i32 [ %91, %90 ], [ 0, %86 ]
  %102 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 4
  %103 = load i32, ptr %102, align 4
  %104 = mul i32 %103, 1000
  %105 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 2
  store i32 %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 3
  %107 = load i32, ptr %106, align 8
  store i64 131074, ptr %3, align 8
  %108 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 22
  %109 = and i32 %107, 2
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 22, i32 1
  %113 = load i32, ptr %112, align 1
  %114 = or i32 %113, 8
  store i32 %114, ptr %112, align 1
  br label %115

115:                                              ; preds = %111, %100
  %116 = and i32 %107, 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 22, i32 1
  %120 = load i32, ptr %119, align 1
  %121 = or i32 %120, 32
  store i32 %121, ptr %119, align 1
  br label %122

122:                                              ; preds = %118, %115
  %123 = and i32 %107, 16
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 22, i32 1
  %127 = load i32, ptr %126, align 1
  %128 = or i32 %127, 128
  store i32 %128, ptr %126, align 1
  br label %129

129:                                              ; preds = %125, %122
  %130 = and i32 %107, 32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 22, i32 1
  %134 = load i32, ptr %133, align 1
  %135 = or i32 %134, 2
  store i32 %135, ptr %133, align 1
  br label %136

136:                                              ; preds = %132, %129
  store i32 234, ptr %108, align 4
  %137 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 22, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = and i32 %138, -65
  %140 = select i1 %89, i32 64, i32 0
  %141 = or i32 %139, %140
  store i32 %141, ptr %137, align 4
  br i1 %124, label %191, label %142

142:                                              ; preds = %136
  store i64 196610, ptr %3, align 8
  %143 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 8
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 1
  store i32 %144, ptr %145, align 8
  %146 = load ptr, ptr %15, align 4
  %147 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %148 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %147, i32 noundef 3520, i32 noundef 2048) #19
  %149 = icmp eq ptr %148, null
  br i1 %149, label %191, label %150

150:                                              ; preds = %142
  store i32 2048, ptr %148, align 8
  %151 = call i32 @brcmf_fil_cmd_data_get(ptr noundef %15, i32 noundef 136, ptr noundef nonnull %148, i32 noundef 2048) #17
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %150
  %154 = call i32 @net_ratelimit() #17
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %190, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.brcmf_pub, ptr %146, i32 0, i32 2
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.wiphy, ptr %158, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.126, ptr noundef nonnull @__func__.brcmf_fill_bss_param, i32 noundef %151) #18
  br label %190

160:                                              ; preds = %150
  %161 = load i64, ptr %3, align 8
  %162 = or i64 %161, 32768
  store i64 %162, ptr %3, align 8
  %163 = getelementptr inbounds %struct.anon.136, ptr %148, i32 0, i32 1, i32 3
  %164 = load i16, ptr %163, align 2
  %165 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 21
  %166 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 21, i32 2
  store i16 %164, ptr %166, align 2
  %167 = getelementptr inbounds %struct.anon.136, ptr %148, i32 0, i32 1, i32 10
  %168 = load i8, ptr %167, align 8
  %169 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 21, i32 1
  store i8 %168, ptr %169, align 1
  %170 = getelementptr inbounds %struct.anon.136, ptr %148, i32 0, i32 1, i32 4
  %171 = load i16, ptr %170, align 4
  %172 = zext i16 %171 to i32
  %173 = and i32 %172, 128
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %160
  %176 = load i8, ptr %165, align 8
  %177 = or i8 %176, 1
  store i8 %177, ptr %165, align 8
  br label %178

178:                                              ; preds = %175, %160
  %179 = and i32 %172, 32
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load i8, ptr %165, align 8
  %183 = or i8 %182, 2
  store i8 %183, ptr %165, align 8
  br label %184

184:                                              ; preds = %181, %178
  %185 = and i32 %172, 1024
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %184
  %188 = load i8, ptr %165, align 8
  %189 = or i8 %188, 4
  store i8 %189, ptr %165, align 8
  br label %190

190:                                              ; preds = %187, %184, %156, %153
  call void @kfree(ptr noundef nonnull %148) #17
  br label %191

191:                                              ; preds = %190, %142, %136
  %192 = and i32 %107, 16384
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %367, label %194

194:                                              ; preds = %191
  %195 = load i64, ptr %3, align 8
  %196 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 11
  %197 = load i32, ptr %196, align 8
  %198 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 19
  store i32 %197, ptr %198, align 8
  %199 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 10
  %200 = load i32, ptr %199, align 4
  %201 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 17
  %202 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 20
  %203 = load i32, ptr %202, align 4
  %204 = add i32 %203, %200
  store i32 %204, ptr %201, align 8
  %205 = or i64 %195, 5632
  store i64 %205, ptr %3, align 8
  %206 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 12
  %207 = load i32, ptr %206, align 4
  %208 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 16
  %209 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 13
  %210 = load i32, ptr %209, align 8
  %211 = add i32 %210, %207
  store i32 %211, ptr %208, align 4
  %212 = icmp eq i32 %204, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %194
  %214 = or i64 %195, 5888
  store i64 %214, ptr %3, align 8
  %215 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 14
  %216 = load i32, ptr %215, align 4
  %217 = udiv i32 %216, 100
  %218 = trunc i32 %217 to i16
  %219 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 14, i32 2
  store i16 %218, ptr %219, align 2
  br label %220

220:                                              ; preds = %213, %194
  %221 = phi i64 [ %214, %213 ], [ %205, %194 ]
  %222 = icmp eq i32 %211, 0
  br i1 %222, label %230, label %223

223:                                              ; preds = %220
  %224 = or i64 %221, 16384
  store i64 %224, ptr %3, align 8
  %225 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 15
  %226 = load i32, ptr %225, align 8
  %227 = udiv i32 %226, 100
  %228 = trunc i32 %227 to i16
  %229 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 15, i32 2
  store i16 %228, ptr %229, align 2
  br label %230

230:                                              ; preds = %223, %220
  %231 = phi i64 [ %224, %223 ], [ %221, %220 ]
  %232 = load i16, ptr %9, align 8
  %233 = icmp ugt i16 %232, 3
  br i1 %233, label %234, label %242

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 21
  %236 = load i64, ptr %235, align 8
  %237 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 5
  store i64 %236, ptr %237, align 8
  %238 = or i64 %231, 12
  store i64 %238, ptr %3, align 8
  %239 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 22
  %240 = load i64, ptr %239, align 8
  %241 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 4
  store i64 %240, ptr %241, align 8
  br label %242

242:                                              ; preds = %234, %230
  %243 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 11
  %244 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 27, i32 0
  %245 = load i8, ptr %244, align 8
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %258, label %247

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 34, i32 0
  %249 = load i8, ptr %248, align 8
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %258, label %251

251:                                              ; preds = %247
  %252 = load i8, ptr %243, align 1
  %253 = or i8 %252, 1
  store i8 %253, ptr %243, align 1
  %254 = getelementptr %struct.station_info, ptr %3, i32 0, i32 12, i32 0
  store i8 %249, ptr %254, align 1
  %255 = getelementptr %struct.station_info, ptr %3, i32 0, i32 13, i32 0
  store i8 %245, ptr %255, align 1
  %256 = sext i8 %249 to i32
  %257 = sext i8 %245 to i32
  br label %258

258:                                              ; preds = %251, %247, %242
  %259 = phi i32 [ 0, %242 ], [ 0, %247 ], [ %257, %251 ]
  %260 = phi i32 [ 0, %242 ], [ 0, %247 ], [ %256, %251 ]
  %261 = phi i32 [ 0, %242 ], [ 0, %247 ], [ 1, %251 ]
  %262 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 27, i32 1
  %263 = load i8, ptr %262, align 1
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %281, label %265

265:                                              ; preds = %258
  %266 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 34, i32 1
  %267 = load i8, ptr %266, align 1
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %281, label %269

269:                                              ; preds = %265
  %270 = shl nuw nsw i32 1, %261
  %271 = load i8, ptr %243, align 1
  %272 = trunc i32 %270 to i8
  %273 = or i8 %271, %272
  store i8 %273, ptr %243, align 1
  %274 = getelementptr %struct.station_info, ptr %3, i32 0, i32 12, i32 %261
  store i8 %267, ptr %274, align 1
  %275 = getelementptr %struct.station_info, ptr %3, i32 0, i32 13, i32 %261
  store i8 %263, ptr %275, align 1
  %276 = sext i8 %267 to i32
  %277 = add nsw i32 %260, %276
  %278 = sext i8 %263 to i32
  %279 = add nsw i32 %259, %278
  %280 = add nuw nsw i32 %261, 1
  br label %281

281:                                              ; preds = %269, %265, %258
  %282 = phi i32 [ %259, %258 ], [ %259, %265 ], [ %279, %269 ]
  %283 = phi i32 [ %260, %258 ], [ %260, %265 ], [ %277, %269 ]
  %284 = phi i32 [ %261, %258 ], [ %261, %265 ], [ %280, %269 ]
  %285 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 27, i32 2
  %286 = load i8, ptr %285, align 2
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %304, label %288

288:                                              ; preds = %281
  %289 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 34, i32 2
  %290 = load i8, ptr %289, align 2
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %304, label %292

292:                                              ; preds = %288
  %293 = shl nuw nsw i32 1, %284
  %294 = load i8, ptr %243, align 1
  %295 = trunc i32 %293 to i8
  %296 = or i8 %294, %295
  store i8 %296, ptr %243, align 1
  %297 = getelementptr %struct.station_info, ptr %3, i32 0, i32 12, i32 %284
  store i8 %290, ptr %297, align 1
  %298 = getelementptr %struct.station_info, ptr %3, i32 0, i32 13, i32 %284
  store i8 %286, ptr %298, align 1
  %299 = sext i8 %290 to i32
  %300 = add nsw i32 %283, %299
  %301 = sext i8 %286 to i32
  %302 = add nsw i32 %282, %301
  %303 = add nuw nsw i32 %284, 1
  br label %304

304:                                              ; preds = %292, %288, %281
  %305 = phi i32 [ %282, %281 ], [ %282, %288 ], [ %302, %292 ]
  %306 = phi i32 [ %283, %281 ], [ %283, %288 ], [ %300, %292 ]
  %307 = phi i32 [ %284, %281 ], [ %284, %288 ], [ %303, %292 ]
  %308 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 27, i32 3
  %309 = load i8, ptr %308, align 1
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %327, label %311

311:                                              ; preds = %304
  %312 = getelementptr inbounds %struct.brcmf_sta_info_le, ptr %9, i32 0, i32 34, i32 3
  %313 = load i8, ptr %312, align 1
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %327, label %315

315:                                              ; preds = %311
  %316 = shl nuw nsw i32 1, %307
  %317 = load i8, ptr %243, align 1
  %318 = trunc i32 %316 to i8
  %319 = or i8 %317, %318
  store i8 %319, ptr %243, align 1
  %320 = getelementptr %struct.station_info, ptr %3, i32 0, i32 12, i32 %307
  store i8 %313, ptr %320, align 1
  %321 = getelementptr %struct.station_info, ptr %3, i32 0, i32 13, i32 %307
  store i8 %309, ptr %321, align 1
  %322 = sext i8 %313 to i32
  %323 = add nsw i32 %306, %322
  %324 = sext i8 %309 to i32
  %325 = add nsw i32 %305, %324
  %326 = add nuw nsw i32 %307, 1
  br label %329

327:                                              ; preds = %311, %304
  %328 = icmp eq i32 %307, 0
  br i1 %328, label %345, label %329

329:                                              ; preds = %327, %315
  %330 = phi i32 [ %326, %315 ], [ %307, %327 ]
  %331 = phi i32 [ %323, %315 ], [ %306, %327 ]
  %332 = phi i32 [ %325, %315 ], [ %305, %327 ]
  %333 = load i64, ptr %3, align 8
  %334 = or i64 %333, 100671616
  store i64 %334, ptr %3, align 8
  %335 = trunc i32 %331 to i16
  %336 = trunc i32 %330 to i16
  %337 = sdiv i16 %335, %336
  %338 = trunc i16 %337 to i8
  %339 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 9
  store i8 %338, ptr %339, align 1
  %340 = trunc i32 %332 to i16
  %341 = trunc i32 %330 to i16
  %342 = sdiv i16 %340, %341
  %343 = trunc i16 %342 to i8
  %344 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 10
  store i8 %343, ptr %344, align 2
  br label %367

345:                                              ; preds = %327
  %346 = load ptr, ptr %18, align 4
  %347 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %346, i32 0, i32 3
  %348 = load volatile i32, ptr %347, align 4
  %349 = and i32 %348, 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %367, label %351

351:                                              ; preds = %345
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i32 12, i1 false)
  %352 = call i32 @brcmf_fil_cmd_data_get(ptr noundef %15, i32 noundef 127, ptr noundef nonnull %8, i32 noundef 12) #17
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %361, label %354

354:                                              ; preds = %351
  %355 = call i32 @net_ratelimit() #17
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %367, label %357

357:                                              ; preds = %354
  %358 = getelementptr inbounds %struct.brcmf_pub, ptr %17, i32 0, i32 2
  %359 = load ptr, ptr %358, align 4
  %360 = getelementptr inbounds %struct.wiphy, ptr %359, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %360, ptr noundef nonnull @.str.122, ptr noundef nonnull @__func__.brcmf_cfg80211_get_station, i32 noundef %352) #18
  br label %367

361:                                              ; preds = %351
  %362 = load i32, ptr %8, align 4
  %363 = load i64, ptr %3, align 8
  %364 = or i64 %363, 128
  store i64 %364, ptr %3, align 8
  %365 = trunc i32 %362 to i8
  %366 = getelementptr inbounds %struct.station_info, ptr %3, i32 0, i32 9
  store i8 %365, ptr %366, align 1
  br label %367

367:                                              ; preds = %361, %357, %354, %345, %329, %191, %96, %93, %84, %12
  %368 = phi i32 [ %85, %84 ], [ -5, %12 ], [ %91, %96 ], [ %91, %93 ], [ %101, %329 ], [ %352, %357 ], [ %352, %354 ], [ 0, %361 ], [ %101, %345 ], [ %101, %191 ]
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  ret i32 %368
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_dump_station(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8, !prof !17

7:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %1, i32 1408
  %16 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 27
  store i32 128, ptr %16, align 4
  %17 = tail call i32 @brcmf_fil_cmd_data_get(ptr noundef %15, i32 noundef 159, ptr noundef %16, i32 noundef 772) #17
  switch i32 %17, label %24 [
    i32 0, label %32
    i32 -52, label %18
  ]

18:                                               ; preds = %14
  %19 = load i1, ptr @brcmf_cfg80211_dump_station.__print_once, align 1
  br i1 %19, label %31, label %20

20:                                               ; preds = %18
  store i1 true, ptr @brcmf_cfg80211_dump_station.__print_once, align 1
  %21 = getelementptr inbounds %struct.brcmf_pub, ptr %12, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.127, ptr noundef nonnull @__func__.brcmf_cfg80211_dump_station) #18
  br label %31

24:                                               ; preds = %14
  %25 = tail call i32 @net_ratelimit() #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.brcmf_pub, ptr %12, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.128, ptr noundef nonnull @__func__.brcmf_cfg80211_dump_station, i32 noundef %17) #18
  br label %31

31:                                               ; preds = %27, %24, %20, %18
  store i32 0, ptr %16, align 4
  br label %39

32:                                               ; preds = %14, %8
  %33 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 27
  %34 = load i32, ptr %33, align 4
  %35 = icmp ugt i32 %34, %2
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 27, i32 1, i32 %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %3, ptr noundef align 2 dereferenceable(6) %37, i32 6, i1 false)
  %38 = tail call i32 @brcmf_cfg80211_get_station(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3, ptr noundef %4)
  br label %39

39:                                               ; preds = %36, %32, %31
  %40 = phi i32 [ -95, %31 ], [ %38, %36 ], [ -2, %32 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_scan(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !17

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 10
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 -4
  %13 = getelementptr i8, ptr %11, i32 1300
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %104, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 9
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @net_ratelimit() #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %104, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 56
  %29 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.129, ptr noundef nonnull @__func__.brcmf_cfg80211_scan, i32 noundef %29) #18
  br label %104

30:                                               ; preds = %17
  %31 = load volatile i32, ptr %18, align 4
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @net_ratelimit() #17
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %104, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.wiphy, ptr %39, i32 0, i32 56
  %41 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.130, ptr noundef nonnull @__func__.brcmf_cfg80211_scan, i32 noundef %41) #18
  br label %104

42:                                               ; preds = %30
  %43 = load volatile i32, ptr %18, align 4
  %44 = and i32 %43, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @net_ratelimit() #17
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %104, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.wiphy, ptr %51, i32 0, i32 56
  %53 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.131, ptr noundef nonnull @__func__.brcmf_cfg80211_scan, i32 noundef %53) #18
  br label %104

54:                                               ; preds = %42
  %55 = load volatile i32, ptr %13, align 4
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = tail call i32 @net_ratelimit() #17
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %104, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.wiphy, ptr %63, i32 0, i32 56
  %65 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.132, ptr noundef nonnull @__func__.brcmf_cfg80211_scan, i32 noundef %65) #18
  br label %104

66:                                               ; preds = %54
  %67 = getelementptr %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 5, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %12, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 5
  %72 = load ptr, ptr %71, align 4
  br label %73

73:                                               ; preds = %70, %66
  %74 = phi ptr [ %72, %70 ], [ %12, %66 ]
  %75 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 4
  store ptr %1, ptr %75, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %18) #17
  %76 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 20, i32 4
  store ptr @brcmf_run_escan, ptr %76, align 4
  %77 = tail call i32 @brcmf_p2p_scan_prep(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %74) #17
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 4
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 5
  %83 = load i32, ptr %82, align 4
  %84 = tail call i32 @brcmf_vif_set_mgmt_ie(ptr noundef %74, i32 noundef 16, ptr noundef %81, i32 noundef %83)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load ptr, ptr %74, align 4
  %88 = tail call fastcc i32 @brcmf_do_escan(ptr noundef %87, ptr noundef %1)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 21
  %92 = load volatile i32, ptr @jiffies, align 64
  %93 = add i32 %92, 1000
  %94 = tail call i32 @mod_timer(ptr noundef %91, i32 noundef %93) #17
  br label %104

95:                                               ; preds = %86, %79, %73
  %96 = phi i32 [ %77, %73 ], [ %84, %79 ], [ %88, %86 ]
  %97 = tail call i32 @net_ratelimit() #17
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 2
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.wiphy, ptr %101, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.133, ptr noundef nonnull @__func__.brcmf_cfg80211_scan, i32 noundef %96) #18
  br label %103

103:                                              ; preds = %99, %95
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %18) #17
  store ptr null, ptr %75, align 4
  br label %104

104:                                              ; preds = %103, %90, %61, %58, %49, %46, %37, %34, %25, %22, %5
  %105 = phi i32 [ %96, %103 ], [ 0, %90 ], [ -5, %5 ], [ -11, %25 ], [ -11, %22 ], [ -11, %37 ], [ -11, %34 ], [ -11, %49 ], [ -11, %46 ], [ -11, %61 ], [ -11, %58 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_connect(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.brcmu_chan, align 4
  %5 = alloca %struct.brcmf_join_params, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8, !prof !17

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %1, i32 1408
  %12 = getelementptr i8, ptr %1, i32 1412
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %2, align 4
  %15 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %5, i8 0, i32 52, i1 false), !annotation !8
  %16 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %13, i32 0, i32 3
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %480, label %20

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = tail call i32 @net_ratelimit() #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %480, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.134, ptr noundef nonnull @__func__.brcmf_cfg80211_connect) #18
  br label %480

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 2, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %13, %33
  br i1 %34, label %35, label %102

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %97

41:                                               ; preds = %71, %35
  %42 = phi i32 [ %76, %71 ], [ %39, %35 ]
  %43 = phi ptr [ %72, %71 ], [ %37, %35 ]
  br label %44

44:                                               ; preds = %55, %41
  %45 = phi i32 [ %57, %55 ], [ %42, %41 ]
  %46 = phi ptr [ %56, %55 ], [ %43, %41 ]
  %47 = getelementptr %struct.brcmf_tlv, ptr %46, i32 0, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, ptr %46, align 1
  %51 = icmp ne i8 %50, -35
  %52 = add nuw nsw i32 %49, 2
  %53 = icmp ult i32 %45, %52
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = getelementptr i8, ptr %46, i32 %52
  %57 = sub nsw i32 %45, %52
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %44, label %78

59:                                               ; preds = %44
  %60 = icmp eq ptr %46, null
  br i1 %60, label %78, label %61

61:                                               ; preds = %59
  %62 = icmp ugt i8 %48, 3
  br i1 %62, label %63, label %71

63:                                               ; preds = %61
  %64 = getelementptr i8, ptr %46, i32 2
  %65 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %64, ptr noundef nonnull dereferenceable(3) @.str.24, i32 3) #17
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = getelementptr i8, ptr %46, i32 5
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %69, 1
  br i1 %70, label %97, label %71

71:                                               ; preds = %67, %63, %61
  %72 = getelementptr i8, ptr %46, i32 %52
  %73 = ptrtoint ptr %72 to i32
  %74 = ptrtoint ptr %43 to i32
  %75 = add i32 %42, %74
  %76 = sub i32 %75, %73
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %41, label %78

78:                                               ; preds = %71, %59, %55
  br label %79

79:                                               ; preds = %90, %78
  %80 = phi i32 [ %92, %90 ], [ %39, %78 ]
  %81 = phi ptr [ %91, %90 ], [ %37, %78 ]
  %82 = getelementptr inbounds %struct.brcmf_tlv, ptr %81, i32 0, i32 1
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, ptr %81, align 1
  %86 = icmp ne i8 %85, 48
  %87 = add nuw nsw i32 %84, 2
  %88 = icmp ult i32 %80, %87
  %89 = select i1 %86, i1 true, i1 %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %79
  %91 = getelementptr i8, ptr %81, i32 %87
  %92 = sub nsw i32 %80, %87
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %79, label %97

94:                                               ; preds = %79
  %95 = icmp eq ptr %81, null
  %96 = select i1 %95, i32 0, i32 %87
  br label %97

97:                                               ; preds = %94, %90, %67, %35
  %98 = phi i32 [ 0, %35 ], [ %96, %94 ], [ 0, %90 ], [ %52, %67 ]
  %99 = phi ptr [ null, %35 ], [ %81, %94 ], [ null, %90 ], [ %46, %67 ]
  %100 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %11, ptr noundef nonnull @.str.135, ptr noundef %99, i32 noundef %98) #17
  %101 = load ptr, ptr %12, align 4
  br label %102

102:                                              ; preds = %97, %31
  %103 = phi ptr [ %101, %97 ], [ %13, %31 ]
  %104 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 7
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 8
  %107 = load i32, ptr %106, align 4
  %108 = tail call i32 @brcmf_vif_set_mgmt_ie(ptr noundef %103, i32 noundef 32, ptr noundef %105, i32 noundef %107)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %102
  %111 = tail call i32 @net_ratelimit() #17
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.wiphy, ptr %115, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.136, ptr noundef nonnull @__func__.brcmf_cfg80211_connect) #18
  br label %117

117:                                              ; preds = %113, %110, %102
  %118 = load ptr, ptr %12, align 4
  %119 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %118, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %119) #17
  %120 = icmp eq ptr %14, null
  br i1 %120, label %136, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.ieee80211_channel, ptr %14, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = mul i32 %123, 1000
  %125 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %124) #17
  %126 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 11
  store i32 %125, ptr %126, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #17, !annotation !8
  %127 = load i32, ptr %122, align 4
  %128 = mul i32 %127, 1000
  %129 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %128) #17
  %130 = trunc i32 %129 to i8
  %131 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 1
  store i8 %130, ptr %131, align 2
  %132 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 4
  store i32 0, ptr %132, align 4
  %133 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 26, i32 1
  %134 = load ptr, ptr %133, align 4
  call void %134(ptr noundef nonnull %4) #17
  %135 = load i16, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  br label %138

136:                                              ; preds = %117
  %137 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 11
  store i32 0, ptr %137, align 4
  br label %138

138:                                              ; preds = %136, %121
  %139 = phi i16 [ %135, %121 ], [ 0, %136 ]
  %140 = load ptr, ptr %12, align 4
  %141 = load ptr, ptr %11, align 4
  %142 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 11
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %138
  %147 = and i32 %143, 2
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = shl i32 %143, 16
  %151 = and i32 %150, 262144
  br label %152

152:                                              ; preds = %149, %146, %138
  %153 = phi i32 [ 6, %138 ], [ 192, %146 ], [ %151, %149 ]
  %154 = call i32 @brcmf_fil_bsscfg_int_set(ptr noundef %11, ptr noundef nonnull @.str.109, i32 noundef %153) #17
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %170, label %156

156:                                              ; preds = %152
  %157 = call i32 @net_ratelimit() #17
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.brcmf_pub, ptr %141, i32 0, i32 2
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.wiphy, ptr %161, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull @.str.147, ptr noundef nonnull @__func__.brcmf_set_wpa_version, i32 noundef %154) #18
  br label %163

163:                                              ; preds = %159, %156
  %164 = call i32 @net_ratelimit() #17
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %476, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.wiphy, ptr %168, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.137, ptr noundef nonnull @__func__.brcmf_cfg80211_connect, i32 noundef %154) #18
  br label %476

170:                                              ; preds = %152
  %171 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %140, i32 0, i32 2, i32 1
  %172 = load i32, ptr %142, align 4
  store i32 %172, ptr %171, align 4
  %173 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 6
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 8
  br i1 %175, label %176, label %184

176:                                              ; preds = %170
  %177 = call zeroext i1 @brcmf_feat_is_quirk_enabled(ptr noundef %11, i32 noundef 0) #17
  br i1 %177, label %181, label %178

178:                                              ; preds = %176
  store i32 8, ptr %173, align 4
  %179 = load ptr, ptr %12, align 4
  %180 = load ptr, ptr %11, align 4
  br label %189

181:                                              ; preds = %176
  store i32 0, ptr %173, align 4
  %182 = load ptr, ptr %12, align 4
  %183 = load ptr, ptr %11, align 4
  br label %192

184:                                              ; preds = %170
  %185 = load ptr, ptr %12, align 4
  %186 = load ptr, ptr %11, align 4
  switch i32 %174, label %189 [
    i32 0, label %192
    i32 1, label %187
    i32 4, label %188
  ]

187:                                              ; preds = %184
  br label %192

188:                                              ; preds = %184
  br label %192

189:                                              ; preds = %184, %178
  %190 = phi ptr [ %180, %178 ], [ %186, %184 ]
  %191 = phi ptr [ %179, %178 ], [ %185, %184 ]
  br label %192

192:                                              ; preds = %189, %188, %187, %184, %181
  %193 = phi ptr [ %190, %189 ], [ %186, %188 ], [ %186, %187 ], [ %186, %184 ], [ %183, %181 ]
  %194 = phi ptr [ %191, %189 ], [ %185, %188 ], [ %185, %187 ], [ %185, %184 ], [ %182, %181 ]
  %195 = phi i32 [ 2, %189 ], [ 3, %188 ], [ 1, %187 ], [ %174, %184 ], [ 0, %181 ]
  %196 = call i32 @brcmf_fil_bsscfg_int_set(ptr noundef %11, ptr noundef nonnull @.str.104, i32 noundef %195) #17
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %212, label %198

198:                                              ; preds = %192
  %199 = call i32 @net_ratelimit() #17
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.brcmf_pub, ptr %193, i32 0, i32 2
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr inbounds %struct.wiphy, ptr %203, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %204, ptr noundef nonnull @.str.148, ptr noundef nonnull @__func__.brcmf_set_auth_type, i32 noundef %196) #18
  br label %205

205:                                              ; preds = %201, %198
  %206 = call i32 @net_ratelimit() #17
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %476, label %208

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr inbounds %struct.wiphy, ptr %210, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %211, ptr noundef nonnull @.str.138, ptr noundef nonnull @__func__.brcmf_cfg80211_connect, i32 noundef %196) #18
  br label %476

212:                                              ; preds = %192
  %213 = load i32, ptr %173, align 4
  %214 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %194, i32 0, i32 2, i32 1, i32 1
  store i32 %213, ptr %214, align 4
  %215 = load ptr, ptr %12, align 4
  %216 = load ptr, ptr %11, align 4
  %217 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 11, i32 2
  %218 = load i32, ptr %217, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %241, label %220

220:                                              ; preds = %212
  %221 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 11, i32 3
  %222 = load i32, ptr %221, align 4
  %223 = add i32 %222, -1027073
  %224 = icmp ult i32 %223, 6
  br i1 %224, label %233, label %225

225:                                              ; preds = %233, %220
  %226 = call i32 @net_ratelimit() #17
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %327, label %228

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.brcmf_pub, ptr %216, i32 0, i32 2
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.wiphy, ptr %230, i32 0, i32 56
  %232 = load i32, ptr %221, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %231, ptr noundef nonnull @.str.149, ptr noundef nonnull @__func__.brcmf_set_wsec_mode, i32 noundef %232) #18
  br label %327

233:                                              ; preds = %220
  %234 = trunc i32 %223 to i8
  %235 = lshr i8 59, %234
  %236 = and i8 %235, 1
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %225, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds [6 x i32], ptr @switch.table.brcmf_cfg80211_connect.253, i32 0, i32 %223
  %240 = load i32, ptr %239, align 4
  br label %241

241:                                              ; preds = %238, %212
  %242 = phi i32 [ 0, %212 ], [ %240, %238 ]
  %243 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 11, i32 1
  %244 = load i32, ptr %243, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %265, label %246

246:                                              ; preds = %241
  %247 = add i32 %244, -1027073
  %248 = icmp ult i32 %247, 6
  br i1 %248, label %257, label %249

249:                                              ; preds = %257, %246
  %250 = call i32 @net_ratelimit() #17
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %327, label %252

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.brcmf_pub, ptr %216, i32 0, i32 2
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr inbounds %struct.wiphy, ptr %254, i32 0, i32 56
  %256 = load i32, ptr %243, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %255, ptr noundef nonnull @.str.150, ptr noundef nonnull @__func__.brcmf_set_wsec_mode, i32 noundef %256) #18
  br label %327

257:                                              ; preds = %246
  %258 = trunc i32 %247 to i8
  %259 = lshr i8 59, %258
  %260 = and i8 %259, 1
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %249, label %262

262:                                              ; preds = %257
  %263 = getelementptr inbounds [6 x i32], ptr @switch.table.brcmf_cfg80211_connect.253, i32 0, i32 %247
  %264 = load i32, ptr %263, align 4
  br label %265

265:                                              ; preds = %262, %241
  %266 = phi i32 [ 0, %241 ], [ %264, %262 ]
  %267 = load i32, ptr %106, align 4
  %268 = icmp sgt i32 %267, 1
  br i1 %268, label %269, label %315

269:                                              ; preds = %265
  %270 = load ptr, ptr %104, align 4
  br label %271

271:                                              ; preds = %301, %269
  %272 = phi i32 [ %306, %301 ], [ %267, %269 ]
  %273 = phi ptr [ %302, %301 ], [ %270, %269 ]
  br label %274

274:                                              ; preds = %285, %271
  %275 = phi i32 [ %287, %285 ], [ %272, %271 ]
  %276 = phi ptr [ %286, %285 ], [ %273, %271 ]
  %277 = getelementptr %struct.brcmf_tlv, ptr %276, i32 0, i32 1
  %278 = load i8, ptr %277, align 1
  %279 = zext i8 %278 to i32
  %280 = load i8, ptr %276, align 1
  %281 = icmp ne i8 %280, -35
  %282 = add nuw nsw i32 %279, 2
  %283 = icmp ult i32 %275, %282
  %284 = select i1 %281, i1 true, i1 %283
  br i1 %284, label %285, label %289

285:                                              ; preds = %274
  %286 = getelementptr i8, ptr %276, i32 %282
  %287 = sub nsw i32 %275, %282
  %288 = icmp sgt i32 %287, 1
  br i1 %288, label %274, label %315

289:                                              ; preds = %274
  %290 = icmp eq ptr %276, null
  br i1 %290, label %315, label %291

291:                                              ; preds = %289
  %292 = icmp ugt i8 %278, 3
  br i1 %292, label %293, label %301

293:                                              ; preds = %291
  %294 = getelementptr i8, ptr %276, i32 2
  %295 = call i32 @bcmp(ptr noundef dereferenceable(3) %294, ptr noundef nonnull dereferenceable(3) @.str.24, i32 3) #17
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %293
  %298 = getelementptr i8, ptr %276, i32 5
  %299 = load i8, ptr %298, align 1
  %300 = icmp eq i8 %299, 4
  br i1 %300, label %308, label %301

301:                                              ; preds = %297, %293, %291
  %302 = getelementptr i8, ptr %276, i32 %282
  %303 = ptrtoint ptr %302 to i32
  %304 = ptrtoint ptr %273 to i32
  %305 = add i32 %272, %304
  %306 = sub i32 %305, %303
  %307 = icmp sgt i32 %306, 1
  br i1 %307, label %271, label %315

308:                                              ; preds = %297
  %309 = select i1 %219, i1 %245, i1 false
  br i1 %309, label %310, label %315

310:                                              ; preds = %308
  %311 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 9
  %312 = load i8, ptr %311, align 4, !range !10
  %313 = icmp eq i8 %312, 0
  %314 = select i1 %313, i32 0, i32 4
  br label %315

315:                                              ; preds = %310, %308, %301, %289, %285, %265
  %316 = phi i32 [ %242, %308 ], [ %314, %310 ], [ %242, %265 ], [ %242, %285 ], [ %242, %289 ], [ %242, %301 ]
  %317 = or i32 %316, %266
  %318 = call i32 @brcmf_fil_bsscfg_int_set(ptr noundef %11, ptr noundef nonnull @.str.61, i32 noundef %317) #17
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %335, label %320

320:                                              ; preds = %315
  %321 = call i32 @net_ratelimit() #17
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %327, label %323

323:                                              ; preds = %320
  %324 = getelementptr inbounds %struct.brcmf_pub, ptr %216, i32 0, i32 2
  %325 = load ptr, ptr %324, align 4
  %326 = getelementptr inbounds %struct.wiphy, ptr %325, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %326, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.brcmf_set_wsec_mode, i32 noundef %318) #18
  br label %327

327:                                              ; preds = %323, %320, %252, %249, %228, %225
  %328 = phi i32 [ %318, %320 ], [ %318, %323 ], [ -22, %249 ], [ -22, %252 ], [ -22, %225 ], [ -22, %228 ]
  %329 = call i32 @net_ratelimit() #17
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %476, label %331

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %333 = load ptr, ptr %332, align 4
  %334 = getelementptr inbounds %struct.wiphy, ptr %333, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %334, ptr noundef nonnull @.str.139, ptr noundef nonnull @__func__.brcmf_cfg80211_connect, i32 noundef %328) #18
  br label %476

335:                                              ; preds = %315
  %336 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 11, i32 3
  %337 = load i32, ptr %336, align 4
  %338 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %215, i32 0, i32 2, i32 1, i32 2
  store i32 %337, ptr %338, align 4
  %339 = load i32, ptr %243, align 4
  %340 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %215, i32 0, i32 2, i32 1, i32 3
  store i32 %339, ptr %340, align 4
  %341 = call fastcc i32 @brcmf_set_key_mgmt(ptr noundef %1, ptr noundef %2)
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %350, label %343

343:                                              ; preds = %335
  %344 = call i32 @net_ratelimit() #17
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %476, label %346

346:                                              ; preds = %343
  %347 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %348 = load ptr, ptr %347, align 4
  %349 = getelementptr inbounds %struct.wiphy, ptr %348, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %349, ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.brcmf_cfg80211_connect, i32 noundef %341) #18
  br label %476

350:                                              ; preds = %335
  %351 = call fastcc i32 @brcmf_set_sharedkey(ptr noundef %1, ptr noundef %2)
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %360, label %353

353:                                              ; preds = %350
  %354 = call i32 @net_ratelimit() #17
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %476, label %356

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %358 = load ptr, ptr %357, align 4
  %359 = getelementptr inbounds %struct.wiphy, ptr %358, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %359, ptr noundef nonnull @.str.141, ptr noundef nonnull @__func__.brcmf_cfg80211_connect, i32 noundef %351) #18
  br label %476

360:                                              ; preds = %350
  %361 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 11, i32 13
  %362 = load ptr, ptr %361, align 4
  %363 = icmp eq ptr %362, null
  %364 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %13, i32 0, i32 2, i32 3
  %365 = load i32, ptr %364, align 4
  br i1 %363, label %369, label %366

366:                                              ; preds = %360
  switch i32 %365, label %367 [
    i32 3, label %371
    i32 0, label %368
  ], !prof !20

367:                                              ; preds = %366
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 2126, i32 noundef 9, ptr noundef null) #17
  br label %476

368:                                              ; preds = %366
  store i32 1, ptr %364, align 4
  br label %371

369:                                              ; preds = %360
  %370 = icmp eq i32 %365, 0
  br i1 %370, label %413, label %371

371:                                              ; preds = %369, %368, %366
  %372 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %11, ptr noundef nonnull @.str.142, i32 noundef 1) #17
  %373 = icmp slt i32 %372, 0
  br i1 %373, label %374, label %381

374:                                              ; preds = %371
  %375 = call i32 @net_ratelimit() #17
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %476, label %377

377:                                              ; preds = %374
  %378 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %379 = load ptr, ptr %378, align 4
  %380 = getelementptr inbounds %struct.wiphy, ptr %379, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %380, ptr noundef nonnull @.str.143, ptr noundef nonnull @__func__.brcmf_cfg80211_connect) #18
  br label %476

381:                                              ; preds = %371
  %382 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %13, i32 0, i32 2, i32 3
  %383 = load i32, ptr %382, align 4
  switch i32 %383, label %410 [
    i32 1, label %384
    i32 3, label %387
  ]

384:                                              ; preds = %381
  %385 = load ptr, ptr %361, align 4
  %386 = call fastcc i32 @brcmf_set_pmk(ptr noundef %11, ptr noundef %385, i16 noundef zeroext 32)
  br label %410

387:                                              ; preds = %381
  %388 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %11, ptr noundef nonnull @.str.135, ptr noundef null, i32 noundef 0) #17
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %397, label %390

390:                                              ; preds = %387
  %391 = call i32 @net_ratelimit() #17
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %476, label %393

393:                                              ; preds = %390
  %394 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %395 = load ptr, ptr %394, align 4
  %396 = getelementptr inbounds %struct.wiphy, ptr %395, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %396, ptr noundef nonnull @.str.144, ptr noundef nonnull @__func__.brcmf_cfg80211_connect) #18
  br label %476

397:                                              ; preds = %387
  %398 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 11, i32 14
  %399 = load ptr, ptr %398, align 4
  %400 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 11, i32 15
  %401 = load i8, ptr %400, align 4
  %402 = zext i8 %401 to i16
  %403 = call fastcc i32 @brcmf_set_sae_password(ptr noundef %11, ptr noundef %399, i16 noundef zeroext %402)
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %476

405:                                              ; preds = %397
  %406 = load ptr, ptr %361, align 4
  %407 = icmp eq ptr %406, null
  br i1 %407, label %413, label %408

408:                                              ; preds = %405
  %409 = call fastcc i32 @brcmf_set_pmk(ptr noundef %11, ptr noundef nonnull %406, i16 noundef zeroext 32)
  br label %410

410:                                              ; preds = %408, %384, %381
  %411 = phi i32 [ %386, %384 ], [ %409, %408 ], [ %372, %381 ]
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %476

413:                                              ; preds = %410, %405, %369
  %414 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 11
  %415 = load i32, ptr %414, align 4
  %416 = icmp eq i32 %415, 0
  %417 = select i1 %416, i32 68, i32 70
  %418 = call noalias align 64 ptr @__kmalloc(i32 noundef %417, i32 noundef 3520) #20
  %419 = icmp eq ptr %418, null
  br i1 %419, label %476, label %420

420:                                              ; preds = %413
  %421 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 5
  %422 = load i32, ptr %421, align 4
  %423 = call i32 @llvm.umin.i32(i32 %422, i32 32)
  store i32 %423, ptr %418, align 64
  %424 = getelementptr inbounds %struct.brcmf_ssid_le, ptr %418, i32 0, i32 1
  %425 = load ptr, ptr %21, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %424, ptr align 1 %425, i32 %423, i1 false)
  %426 = getelementptr inbounds %struct.brcmf_ext_join_params_le, ptr %418, i32 0, i32 1
  store i8 -1, ptr %426, align 4
  %427 = getelementptr inbounds %struct.brcmf_ext_join_params_le, ptr %418, i32 0, i32 1, i32 4
  store i32 -1, ptr %427, align 4
  %428 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 2
  %429 = load ptr, ptr %428, align 4
  %430 = icmp eq ptr %429, null
  %431 = getelementptr inbounds %struct.brcmf_ext_join_params_le, ptr %418, i32 0, i32 2
  br i1 %430, label %433, label %432

432:                                              ; preds = %420
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %431, ptr noundef nonnull align 1 dereferenceable(6) %429, i32 6, i1 false)
  br label %434

433:                                              ; preds = %420
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(6) %431, i8 -1, i32 6, i1 false) #17
  br label %434

434:                                              ; preds = %433, %432
  %435 = load i32, ptr %414, align 4
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %440, label %437

437:                                              ; preds = %434
  %438 = getelementptr inbounds %struct.brcmf_ext_join_params_le, ptr %418, i32 0, i32 2, i32 1
  store i32 1, ptr %438, align 64
  %439 = getelementptr inbounds %struct.brcmf_ext_join_params_le, ptr %418, i32 0, i32 2, i32 2
  store i16 %139, ptr %439, align 4
  br label %440

440:                                              ; preds = %437, %434
  %441 = phi i32 [ 320, %437 ], [ -1, %434 ]
  %442 = phi i32 [ 400, %437 ], [ -1, %434 ]
  %443 = phi i32 [ 16, %437 ], [ -1, %434 ]
  %444 = getelementptr inbounds %struct.brcmf_ext_join_params_le, ptr %418, i32 0, i32 1, i32 2
  store i32 %441, ptr %444, align 4
  %445 = getelementptr inbounds %struct.brcmf_ext_join_params_le, ptr %418, i32 0, i32 1, i32 3
  store i32 %442, ptr %445, align 16
  %446 = getelementptr inbounds %struct.brcmf_ext_join_params_le, ptr %418, i32 0, i32 1, i32 1
  store i32 %443, ptr %446, align 8
  %447 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 22
  call fastcc void @brcmf_set_join_pref(ptr noundef %11, ptr noundef %447)
  %448 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %11, ptr noundef nonnull @.str.145, ptr noundef nonnull %418, i32 noundef %417) #17
  call void @kfree(ptr noundef nonnull %418) #17
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %480, label %450

450:                                              ; preds = %440
  %451 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %451, i8 0, i32 48, i1 false)
  %452 = getelementptr inbounds %struct.brcmf_ssid_le, ptr %5, i32 0, i32 1
  %453 = load ptr, ptr %21, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %452, ptr align 1 %453, i32 %423, i1 false)
  store i32 %423, ptr %5, align 4
  %454 = load ptr, ptr %428, align 4
  %455 = icmp eq ptr %454, null
  %456 = getelementptr inbounds %struct.brcmf_join_params, ptr %5, i32 0, i32 1
  br i1 %455, label %458, label %457

457:                                              ; preds = %450
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %456, ptr noundef nonnull align 1 dereferenceable(6) %454, i32 6, i1 false)
  br label %459

458:                                              ; preds = %450
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(6) %456, i8 -1, i32 6, i1 false) #17
  br label %459

459:                                              ; preds = %458, %457
  %460 = load i32, ptr %414, align 4
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %465, label %462

462:                                              ; preds = %459
  %463 = getelementptr inbounds %struct.brcmf_join_params, ptr %5, i32 0, i32 1, i32 2
  store i16 %139, ptr %463, align 4
  %464 = getelementptr inbounds %struct.brcmf_join_params, ptr %5, i32 0, i32 1, i32 1
  store i32 1, ptr %464, align 4
  br label %465

465:                                              ; preds = %462, %459
  %466 = phi i32 [ 52, %462 ], [ 36, %459 ]
  %467 = call i32 @brcmf_fil_cmd_data_set(ptr noundef %11, i32 noundef 26, ptr noundef nonnull %5, i32 noundef %466) #17
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %480, label %469

469:                                              ; preds = %465
  %470 = call i32 @net_ratelimit() #17
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %476, label %472

472:                                              ; preds = %469
  %473 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %474 = load ptr, ptr %473, align 4
  %475 = getelementptr inbounds %struct.wiphy, ptr %474, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %475, ptr noundef nonnull @.str.146, ptr noundef nonnull @__func__.brcmf_cfg80211_connect, i32 noundef %467) #18
  br label %476

476:                                              ; preds = %472, %469, %413, %410, %397, %393, %390, %377, %374, %367, %356, %353, %346, %343, %331, %327, %208, %205, %166, %163
  %477 = phi i32 [ -12, %413 ], [ %388, %390 ], [ %388, %393 ], [ %467, %469 ], [ %467, %472 ], [ %411, %410 ], [ %372, %374 ], [ %372, %377 ], [ -22, %367 ], [ %351, %353 ], [ %351, %356 ], [ %341, %343 ], [ %341, %346 ], [ %328, %327 ], [ %328, %331 ], [ %196, %205 ], [ %196, %208 ], [ %154, %163 ], [ %154, %166 ], [ %403, %397 ]
  %478 = load ptr, ptr %12, align 4
  %479 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %478, i32 0, i32 3
  call void @_clear_bit(i32 noundef 1, ptr noundef %479) #17
  br label %480

480:                                              ; preds = %476, %465, %440, %27, %24, %8
  %481 = phi i32 [ -5, %8 ], [ -95, %27 ], [ -95, %24 ], [ %477, %476 ], [ 0, %465 ], [ 0, %440 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %5) #17
  ret i32 %481
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_update_conn_params(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !17

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = and i32 %3, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %7
  %15 = getelementptr i8, ptr %1, i32 1412
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @brcmf_vif_set_mgmt_ie(ptr noundef %16, i32 noundef 32, ptr noundef %18, i32 noundef %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = tail call i32 @net_ratelimit() #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.brcmf_pub, ptr %11, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.136, ptr noundef nonnull @__func__.brcmf_cfg80211_update_conn_params) #18
  br label %30

30:                                               ; preds = %26, %23, %14, %7
  %31 = phi i32 [ 0, %7 ], [ 0, %14 ], [ %21, %23 ], [ %21, %26 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_disconnect(ptr noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2) #0 {
  %4 = alloca %struct.brcmf_scb_val_le, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !17

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %1, i32 1412
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %14 = getelementptr inbounds i8, ptr %4, i32 8
  store i32 0, ptr %14, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %11, i32 0, i32 3
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %7
  %20 = getelementptr i8, ptr %1, i32 1408
  %21 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %11, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %15) #17
  %22 = load ptr, ptr %10, align 4
  %23 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %22, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %23) #17
  tail call void @cfg80211_disconnected(ptr noundef %1, i16 noundef zeroext %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i32 noundef 3264) #17
  %24 = getelementptr inbounds %struct.brcmf_scb_val_le, ptr %4, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %24, ptr noundef align 4 dereferenceable(6) %21, i32 6, i1 false)
  %25 = zext i16 %2 to i32
  store i32 %25, ptr %4, align 4
  %26 = call i32 @brcmf_fil_cmd_data_set(ptr noundef %20, i32 noundef 52, ptr noundef nonnull %4, i32 noundef 12) #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %19
  %29 = call i32 @net_ratelimit() #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.brcmf_pub, ptr %13, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.wiphy, ptr %33, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.brcmf_cfg80211_disconnect, i32 noundef %26) #18
  br label %35

35:                                               ; preds = %31, %28, %19, %7
  %36 = phi i32 [ -5, %7 ], [ %26, %28 ], [ %26, %31 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_join_ibss(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.brcmf_join_params, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !17

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %1, i32 1408
  %11 = getelementptr i8, ptr %1, i32 1412
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %4, i8 0, i32 52, i1 false), !annotation !8
  %16 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %12, i32 0, i32 3
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %116, label %20

20:                                               ; preds = %7
  %21 = load ptr, ptr %2, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %116, label %23

23:                                               ; preds = %20
  tail call void @_set_bit(i32 noundef 1, ptr noundef %16) #17
  %24 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 1
  %25 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 2
  %26 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 8
  %27 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 9
  %28 = load i8, ptr %27, align 1, !range !10
  %29 = zext i8 %28 to i32
  %30 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %10, ptr noundef nonnull @.str.61, i32 noundef %29) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %23
  %33 = tail call i32 @net_ratelimit() #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %112, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.wiphy, ptr %37, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.157, ptr noundef nonnull @__func__.brcmf_cfg80211_join_ibss, i32 noundef %30) #18
  br label %112

39:                                               ; preds = %23
  %40 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 6
  %41 = load i16, ptr %40, align 2
  %42 = icmp eq i16 %41, 0
  %43 = select i1 %42, i16 100, i16 %41
  %44 = zext i16 %43 to i32
  %45 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %10, i32 noundef 76, i32 noundef %44) #17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %39
  %48 = tail call i32 @net_ratelimit() #17
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %112, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.wiphy, ptr %52, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.158, ptr noundef nonnull @__func__.brcmf_cfg80211_join_ibss, i32 noundef %45) #18
  br label %112

54:                                               ; preds = %39
  %55 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %55, i8 0, i32 48, i1 false)
  %56 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 4
  %57 = load i8, ptr %56, align 4
  %58 = tail call i8 @llvm.umin.i8(i8 %57, i8 32)
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds %struct.brcmf_ssid_le, ptr %4, i32 0, i32 1
  %61 = load ptr, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %60, ptr align 1 %61, i32 %59, i1 false)
  store i32 %59, ptr %4, align 4
  %62 = load ptr, ptr %24, align 4
  %63 = icmp eq ptr %62, null
  %64 = getelementptr inbounds %struct.brcmf_join_params, ptr %4, i32 0, i32 1
  br i1 %63, label %66, label %65

65:                                               ; preds = %54
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %64, ptr noundef nonnull align 1 dereferenceable(6) %62, i32 6, i1 false)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %13, ptr noundef nonnull align 1 dereferenceable(6) %62, i32 6, i1 false)
  br label %67

66:                                               ; preds = %54
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(6) %64, i8 -1, i32 6, i1 false) #17
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %13, i8 0, i32 6, i1 false) #17
  br label %67

67:                                               ; preds = %66, %65
  %68 = phi i32 [ 50, %65 ], [ 36, %66 ]
  %69 = load ptr, ptr %25, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %98, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ieee80211_channel, ptr %69, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = mul i32 %73, 1000
  %75 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %74) #17
  %76 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 11
  store i32 %75, ptr %76, align 4
  %77 = load i8, ptr %26, align 4, !range !10
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 26
  %81 = tail call fastcc zeroext i16 @chandef_to_chanspec(ptr noundef %80, ptr noundef %25)
  %82 = getelementptr inbounds %struct.brcmf_join_params, ptr %4, i32 0, i32 1, i32 2
  store i16 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.brcmf_join_params, ptr %4, i32 0, i32 1, i32 1
  store i32 1, ptr %83, align 4
  %84 = add nuw nsw i32 %68, 16
  %85 = load i32, ptr %76, align 4
  br label %86

86:                                               ; preds = %79, %71
  %87 = phi i32 [ %85, %79 ], [ %75, %71 ]
  %88 = phi i32 [ %84, %79 ], [ %68, %71 ]
  %89 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %10, i32 noundef 30, i32 noundef %87) #17
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %86
  %92 = tail call i32 @net_ratelimit() #17
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %112, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.wiphy, ptr %96, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.brcmf_cfg80211_join_ibss, i32 noundef %89) #18
  br label %112

98:                                               ; preds = %67
  %99 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 11
  store i32 0, ptr %99, align 4
  br label %100

100:                                              ; preds = %98, %86
  %101 = phi i32 [ %68, %98 ], [ %88, %86 ]
  %102 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 13
  store i8 0, ptr %102, align 4
  %103 = call i32 @brcmf_fil_cmd_data_set(ptr noundef %10, i32 noundef 26, ptr noundef nonnull %4, i32 noundef %101) #17
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %100
  %106 = call i32 @net_ratelimit() #17
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.wiphy, ptr %110, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.160, ptr noundef nonnull @__func__.brcmf_cfg80211_join_ibss, i32 noundef %103) #18
  br label %112

112:                                              ; preds = %108, %105, %94, %91, %50, %47, %35, %32
  %113 = phi i32 [ %103, %105 ], [ %103, %108 ], [ %45, %47 ], [ %45, %50 ], [ %30, %32 ], [ %30, %35 ], [ %89, %94 ], [ %89, %91 ]
  %114 = load ptr, ptr %11, align 4
  %115 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %114, i32 0, i32 3
  call void @_clear_bit(i32 noundef 1, ptr noundef %115) #17
  br label %116

116:                                              ; preds = %112, %100, %20, %7
  %117 = phi i32 [ -5, %7 ], [ -95, %20 ], [ %113, %112 ], [ 0, %100 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %4) #17
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_leave_ibss(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 1412
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %4, i32 0, i32 3
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %1, i32 1408
  tail call fastcc void @brcmf_link_down(ptr noundef %4, i16 noundef zeroext 3, i1 noundef zeroext true)
  tail call void @brcmf_net_setcarrier(ptr noundef %10, i1 noundef zeroext false) #17
  br label %11

11:                                               ; preds = %9, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_set_wiphy_params(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !17

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @brcmf_get_ifp(ptr noundef %9, i32 noundef 0) #17
  %11 = getelementptr inbounds %struct.brcmf_if, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 1408
  %14 = getelementptr i8, ptr %12, i32 1412
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %15, i32 0, i32 3
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %123, label %20

20:                                               ; preds = %5
  %21 = and i32 %1, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.brcmf_cfg80211_conf, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 36
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %45, label %31

31:                                               ; preds = %23
  store i32 %29, ptr %26, align 4
  %32 = load ptr, ptr %24, align 4
  %33 = getelementptr inbounds %struct.brcmf_cfg80211_conf, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %13, align 4
  %36 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %13, ptr noundef nonnull @.str.161, i32 noundef %34) #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %123, label %38

38:                                               ; preds = %31
  %39 = tail call i32 @net_ratelimit() #17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.brcmf_pub, ptr %35, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.wiphy, ptr %43, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.162, ptr noundef nonnull @__func__.brcmf_set_rts, i32 noundef %36) #18
  br label %45

45:                                               ; preds = %41, %38, %23, %20
  %46 = phi i32 [ 0, %23 ], [ 0, %20 ], [ %36, %38 ], [ %36, %41 ]
  %47 = and i32 %1, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 35
  %54 = load i32, ptr %53, align 8
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %69, label %56

56:                                               ; preds = %49
  store i32 %54, ptr %51, align 4
  %57 = load ptr, ptr %50, align 4
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %13, align 4
  %60 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %13, ptr noundef nonnull @.str.163, i32 noundef %58) #17
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %123, label %62

62:                                               ; preds = %56
  %63 = tail call i32 @net_ratelimit() #17
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.brcmf_pub, ptr %59, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.wiphy, ptr %67, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.162, ptr noundef nonnull @__func__.brcmf_set_frag, i32 noundef %60) #18
  br label %69

69:                                               ; preds = %65, %62, %49, %45
  %70 = phi i32 [ %46, %49 ], [ %46, %45 ], [ %60, %62 ], [ %60, %65 ]
  %71 = and i32 %1, 2
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %96, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.brcmf_cfg80211_conf, ptr %75, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 34
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %96, label %82

82:                                               ; preds = %73
  store i32 %80, ptr %76, align 4
  %83 = load ptr, ptr %74, align 4
  %84 = getelementptr inbounds %struct.brcmf_cfg80211_conf, ptr %83, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %13, align 4
  %87 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %13, i32 noundef 34, i32 noundef %85) #17
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %123, label %89

89:                                               ; preds = %82
  %90 = tail call i32 @net_ratelimit() #17
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.brcmf_pub, ptr %86, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.wiphy, ptr %94, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.164, ptr noundef nonnull @__func__.brcmf_set_retry, i32 noundef 34, i32 noundef %87) #18
  br label %96

96:                                               ; preds = %92, %89, %73, %69
  %97 = phi i32 [ %70, %73 ], [ %70, %69 ], [ %87, %89 ], [ %87, %92 ]
  %98 = and i32 %1, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %123, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.brcmf_cfg80211_conf, ptr %102, i32 0, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 33
  %106 = load i8, ptr %105, align 4
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %123, label %109

109:                                              ; preds = %100
  store i32 %107, ptr %103, align 4
  %110 = load ptr, ptr %101, align 4
  %111 = getelementptr inbounds %struct.brcmf_cfg80211_conf, ptr %110, i32 0, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = load ptr, ptr %13, align 4
  %114 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %13, i32 noundef 32, i32 noundef %112) #17
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %109
  %117 = tail call i32 @net_ratelimit() #17
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.brcmf_pub, ptr %113, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.wiphy, ptr %121, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.164, ptr noundef nonnull @__func__.brcmf_set_retry, i32 noundef 32, i32 noundef %114) #18
  br label %123

123:                                              ; preds = %119, %116, %109, %100, %96, %82, %56, %31, %5
  %124 = phi i32 [ -5, %5 ], [ %97, %100 ], [ %97, %96 ], [ 0, %31 ], [ 0, %56 ], [ 0, %82 ], [ 0, %109 ], [ %114, %116 ], [ %114, %119 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_set_tx_power(ptr noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !17

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @brcmf_get_ifp(ptr noundef %11, i32 noundef 0) #17
  %13 = getelementptr inbounds %struct.brcmf_if, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 1408
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr i8, ptr %14, i32 1412
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %18, i32 0, i32 3
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %66, label %23

23:                                               ; preds = %7
  switch i32 %2, label %38 [
    i32 0, label %45
    i32 1, label %24
    i32 2, label %24
  ]

24:                                               ; preds = %23, %23
  %25 = icmp slt i32 %3, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %24
  %27 = tail call i32 @net_ratelimit() #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %66, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.brcmf_pub, ptr %16, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.wiphy, ptr %31, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.165, ptr noundef nonnull @__func__.brcmf_cfg80211_set_tx_power) #18
  br label %66

33:                                               ; preds = %24
  %34 = shl i32 %3, 2
  %35 = sdiv i32 %34, 100
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 127)
  %37 = or i32 %36, -2147483648
  br label %45

38:                                               ; preds = %23
  %39 = tail call i32 @net_ratelimit() #17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.brcmf_pub, ptr %16, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.wiphy, ptr %43, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.166, ptr noundef nonnull @__func__.brcmf_cfg80211_set_tx_power, i32 noundef %2) #18
  br label %66

45:                                               ; preds = %33, %23
  %46 = phi i32 [ %37, %33 ], [ 127, %23 ]
  %47 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %15, i32 noundef 38, i32 noundef 65536) #17
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @net_ratelimit() #17
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.brcmf_pub, ptr %16, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.wiphy, ptr %54, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.167, ptr noundef nonnull @__func__.brcmf_cfg80211_set_tx_power, i32 noundef %47) #18
  br label %56

56:                                               ; preds = %52, %49, %45
  %57 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %15, ptr noundef nonnull @.str.168, i32 noundef %46) #17
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = tail call i32 @net_ratelimit() #17
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.brcmf_pub, ptr %16, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.wiphy, ptr %64, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.169, ptr noundef nonnull @__func__.brcmf_cfg80211_set_tx_power, i32 noundef %57) #18
  br label %66

66:                                               ; preds = %62, %59, %56, %41, %38, %29, %26, %7
  %67 = phi i32 [ -5, %7 ], [ %57, %62 ], [ %57, %59 ], [ 0, %56 ], [ -22, %29 ], [ -22, %26 ], [ -22, %41 ], [ -22, %38 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_get_tx_power(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !17

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4
  %12 = getelementptr i8, ptr %1, i32 1300
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %7
  %17 = getelementptr i8, ptr %1, i32 -4
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %18, ptr noundef nonnull @.str.168, ptr noundef nonnull %4) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = call i32 @net_ratelimit() #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.brcmf_pub, ptr %11, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.brcmf_cfg80211_get_tx_power, i32 noundef %19) #18
  br label %32

28:                                               ; preds = %16
  %29 = load i32, ptr %4, align 4
  %30 = lshr i32 %29, 2
  %31 = and i32 %30, 536870911
  store i32 %31, ptr %2, align 4
  br label %32

32:                                               ; preds = %28, %24, %21, %7
  %33 = phi i32 [ -5, %7 ], [ %19, %21 ], [ %19, %24 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_set_pmksa(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !17

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %1, i32 1408
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 8
  %11 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 8, i32 1
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %1, i32 1412
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %15, i32 0, i32 3
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %6
  %21 = load i32, ptr %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %2, align 4
  br label %25

25:                                               ; preds = %30, %23
  %26 = phi i32 [ 0, %23 ], [ %31, %30 ]
  %27 = getelementptr %struct.brcmf_pmksa, ptr %11, i32 %26
  %28 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %24, ptr noundef dereferenceable(6) %27, i32 6)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nuw i32 %26, 1
  %32 = icmp eq i32 %31, %21
  br i1 %32, label %33, label %25

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %21, %30 ], [ %26, %25 ]
  %35 = icmp ult i32 %34, 16
  br i1 %35, label %36, label %46

36:                                               ; preds = %33, %20
  %37 = phi i32 [ %34, %33 ], [ 0, %20 ]
  %38 = getelementptr %struct.brcmf_pmksa, ptr %11, i32 %37
  %39 = load ptr, ptr %2, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %38, ptr noundef align 1 dereferenceable(6) %39, i32 6, i1 false)
  %40 = getelementptr %struct.brcmf_pmksa, ptr %11, i32 %37, i32 1
  %41 = getelementptr inbounds %struct.cfg80211_pmksa, ptr %2, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %40, ptr noundef align 1 dereferenceable(16) %42, i32 16, i1 false)
  %43 = icmp eq i32 %37, %21
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = add i32 %21, 1
  store i32 %45, ptr %10, align 4
  br label %53

46:                                               ; preds = %33
  %47 = tail call i32 @net_ratelimit() #17
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.brcmf_pub, ptr %13, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.wiphy, ptr %51, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.170, ptr noundef nonnull @__func__.brcmf_cfg80211_set_pmksa, i32 noundef %21) #18
  br label %55

53:                                               ; preds = %44, %36
  %54 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef %10, i32 noundef 356) #17
  br label %55

55:                                               ; preds = %53, %49, %46, %6
  %56 = phi i32 [ %54, %53 ], [ -5, %6 ], [ -22, %49 ], [ -22, %46 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_del_pmksa(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !17

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %1, i32 1408
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 8
  %11 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 8, i32 1
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %1, i32 1412
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %15, i32 0, i32 3
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %6
  %21 = load i32, ptr %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %2, align 4
  br label %25

25:                                               ; preds = %33, %23
  %26 = phi i32 [ 0, %23 ], [ %34, %33 ]
  %27 = getelementptr %struct.brcmf_pmksa, ptr %11, i32 %26
  %28 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %24, ptr noundef dereferenceable(6) %27, i32 6)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = add i32 %21, -1
  %32 = icmp ult i32 %26, %31
  br i1 %32, label %36, label %44

33:                                               ; preds = %25
  %34 = add nuw i32 %26, 1
  %35 = icmp eq i32 %34, %21
  br i1 %35, label %48, label %25

36:                                               ; preds = %36, %30
  %37 = phi i32 [ %39, %36 ], [ %26, %30 ]
  %38 = getelementptr %struct.brcmf_pmksa, ptr %11, i32 %37
  %39 = add nuw i32 %37, 1
  %40 = getelementptr %struct.brcmf_pmksa, ptr %11, i32 %39
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %38, ptr noundef align 1 dereferenceable(6) %40, i32 6, i1 false)
  %41 = getelementptr %struct.brcmf_pmksa, ptr %11, i32 %37, i32 1
  %42 = getelementptr %struct.brcmf_pmksa, ptr %11, i32 %39, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %41, ptr noundef align 1 dereferenceable(16) %42, i32 16, i1 false)
  %43 = icmp eq i32 %39, %31
  br i1 %43, label %44, label %36

44:                                               ; preds = %36, %30
  %45 = phi i32 [ %26, %30 ], [ %31, %36 ]
  %46 = getelementptr %struct.brcmf_pmksa, ptr %11, i32 %45
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(22) %46, i8 0, i32 22, i1 false)
  store i32 %31, ptr %10, align 4
  %47 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef %10, i32 noundef 356) #17
  br label %55

48:                                               ; preds = %33, %20
  %49 = tail call i32 @net_ratelimit() #17
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.brcmf_pub, ptr %13, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.wiphy, ptr %53, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.171, ptr noundef nonnull @__func__.brcmf_cfg80211_del_pmksa) #18
  br label %55

55:                                               ; preds = %51, %48, %44, %6
  %56 = phi i32 [ %47, %44 ], [ -5, %6 ], [ -22, %51 ], [ -22, %48 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_flush_pmksa(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !17

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %1, i32 1412
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %9, i32 0, i32 3
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = getelementptr i8, ptr %1, i32 1408
  %16 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(356) %16, i8 0, i32 356, i1 false)
  %17 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef %16, i32 noundef 356) #17
  br label %18

18:                                               ; preds = %14, %5
  %19 = phi i32 [ %17, %14 ], [ -5, %5 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_p2p_remain_on_channel(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_cancel_remain_on_channel(ptr noundef readonly %0, ptr nocapture noundef readnone %1, i64 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !17

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 2, i32 5, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %6
  %15 = tail call i32 @net_ratelimit() #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.brcmf_pub, ptr %10, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.172, ptr noundef nonnull @__func__.brcmf_cfg80211_cancel_remain_on_channel) #18
  br label %23

21:                                               ; preds = %6
  %22 = load ptr, ptr %12, align 4
  tail call void @brcmf_p2p_cancel_remain_on_channel(ptr noundef %22) #17
  br label %23

23:                                               ; preds = %21, %17, %14
  %24 = phi i32 [ 0, %21 ], [ -19, %17 ], [ -19, %14 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_mgmt_tx(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8, !prof !17

7:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %2, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %2, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !8
  store i64 0, ptr %3, align 8
  %18 = load i16, ptr %15, align 2
  %19 = and i16 %18, 12
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %8
  %22 = tail call i32 @net_ratelimit() #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %100, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.brcmf_pub, ptr %13, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.173, ptr noundef nonnull @__func__.brcmf_cfg80211_mgmt_tx) #18
  br label %100

28:                                               ; preds = %8
  %29 = getelementptr i8, ptr %1, i32 -4
  %30 = trunc i16 %18 to i8
  %31 = and i8 %30, -4
  switch i8 %31, label %100 [
    i8 80, label %32
    i8 -48, label %45
  ]

32:                                               ; preds = %28
  %33 = add i32 %17, -36
  %34 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 2, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %29, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 2, i32 5, i32 1
  %39 = load ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi ptr [ %39, %37 ], [ %29, %32 ]
  %42 = getelementptr i8, ptr %15, i32 36
  %43 = tail call i32 @brcmf_vif_set_mgmt_ie(ptr noundef %41, i32 noundef 2, ptr noundef %42, i32 noundef %33)
  %44 = load i64, ptr %3, align 8
  tail call void @cfg80211_mgmt_tx_status(ptr noundef %1, i64 noundef %44, ptr noundef %15, i32 noundef %17, i1 noundef zeroext true, i32 noundef 3264) #17
  br label %100

45:                                               ; preds = %28
  %46 = icmp ugt i32 %17, 1824
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = tail call i32 @net_ratelimit() #17
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %100, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.brcmf_pub, ptr %13, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.wiphy, ptr %52, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.174, ptr noundef nonnull @__func__.brcmf_cfg80211_mgmt_tx) #18
  br label %100

54:                                               ; preds = %45
  %55 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %56 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3520, i32 noundef 1828) #19
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = tail call i32 @net_ratelimit() #17
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %100, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.brcmf_pub, ptr %13, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.wiphy, ptr %63, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.175, ptr noundef nonnull @__func__.brcmf_cfg80211_mgmt_tx) #18
  br label %100

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %56, i32 0, i32 4
  %67 = load i64, ptr %3, align 8
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %56, i32 0, i32 4, i32 2
  store i32 %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %15, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %66, ptr noundef align 2 dereferenceable(6) %70, i32 6, i1 false)
  %71 = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %56, i32 0, i32 2
  %72 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %15, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %71, ptr noundef align 2 dereferenceable(6) %72, i32 6, i1 false)
  %73 = trunc i32 %17 to i16
  %74 = add nsw i16 %73, -24
  %75 = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %56, i32 0, i32 4, i32 1
  store i16 %74, ptr %75, align 2
  %76 = icmp eq ptr %11, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.ieee80211_channel, ptr %11, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  store i32 %79, ptr %5, align 4
  br label %84

80:                                               ; preds = %65
  %81 = load ptr, ptr %29, align 4
  %82 = call i32 @brcmf_fil_cmd_int_get(ptr noundef %81, i32 noundef 29, ptr noundef nonnull %5) #17
  %83 = load i32, ptr %5, align 4
  br label %84

84:                                               ; preds = %80, %77
  %85 = phi i32 [ %83, %80 ], [ %79, %77 ]
  %86 = mul i32 %85, 1000
  %87 = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %86) #17
  store i32 %87, ptr %56, align 8
  %88 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %2, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %56, i32 0, i32 1
  store i32 %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %56, i32 0, i32 4, i32 3
  %92 = getelementptr i8, ptr %15, i32 24
  %93 = zext i16 %74 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %91, ptr align 1 %92, i32 %93, i1 false)
  %94 = load ptr, ptr %12, align 4
  %95 = call ptr @brcmf_get_ifp(ptr noundef %94, i32 noundef 0) #17
  %96 = getelementptr inbounds %struct.brcmf_if, ptr %95, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = call zeroext i1 @brcmf_p2p_send_action_frame(ptr noundef %10, ptr noundef %97, ptr noundef nonnull %56) #17
  %99 = load i64, ptr %3, align 8
  call void @cfg80211_mgmt_tx_status(ptr noundef %1, i64 noundef %99, ptr noundef %15, i32 noundef %17, i1 noundef zeroext %98, i32 noundef 3264) #17
  call void @kfree(ptr noundef nonnull %56) #17
  br label %100

100:                                              ; preds = %84, %61, %58, %50, %47, %40, %28, %24, %21
  %101 = phi i32 [ -1, %24 ], [ -1, %21 ], [ %43, %40 ], [ 0, %84 ], [ -22, %50 ], [ -22, %47 ], [ -12, %61 ], [ -12, %58 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_set_power_mgmt(ptr noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !17

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

7:                                                ; preds = %4
  %8 = zext i1 %2 to i8
  %9 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %1, i32 1408
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 14
  store i8 %8, ptr %14, align 1
  %15 = getelementptr i8, ptr %1, i32 1412
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %16, i32 0, i32 3
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %7
  %22 = select i1 %2, i32 2, i32 0
  %23 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %16, i32 0, i32 1, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 8
  %26 = select i1 %25, i32 0, i32 %22
  %27 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %11, i32 noundef 86, i32 noundef %26) #17
  switch i32 %27, label %35 [
    i32 0, label %42
    i32 -19, label %28
  ]

28:                                               ; preds = %21
  %29 = tail call i32 @net_ratelimit() #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.brcmf_pub, ptr %13, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.wiphy, ptr %33, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.177, ptr noundef nonnull @__func__.brcmf_cfg80211_set_power_mgmt) #18
  br label %42

35:                                               ; preds = %21
  %36 = tail call i32 @net_ratelimit() #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.brcmf_pub, ptr %13, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.wiphy, ptr %40, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.brcmf_cfg80211_set_power_mgmt, i32 noundef %27) #18
  br label %42

42:                                               ; preds = %38, %35, %31, %28, %21
  %43 = tail call i32 @llvm.umin.i32(i32 %3, i32 2000)
  %44 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %11, ptr noundef nonnull @.str.178, i32 noundef %43) #17
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @net_ratelimit() #17
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.brcmf_pub, ptr %13, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.wiphy, ptr %51, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.179, ptr noundef nonnull @__func__.brcmf_cfg80211_set_power_mgmt, i32 noundef %44) #18
  br label %53

53:                                               ; preds = %49, %46, %42, %7
  %54 = phi i32 [ %44, %49 ], [ %44, %46 ], [ 0, %42 ], [ 0, %7 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_set_cqm_rssi_range_config(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.brcmf_rssi_event_le, align 4
  %6 = getelementptr i8, ptr %1, i32 1408
  %7 = getelementptr i8, ptr %1, i32 1412
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %8, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %8, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %3
  br i1 %15, label %34, label %16

16:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %17 = getelementptr inbounds %struct.brcmf_rssi_event_le, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i8 3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.brcmf_rssi_event_le, ptr %5, i32 0, i32 2
  %19 = tail call i32 @llvm.smax.i32(i32 %2, i32 -128)
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 125)
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %18, align 1
  %22 = getelementptr inbounds %struct.brcmf_rssi_event_le, ptr %5, i32 0, i32 2, i32 1
  %23 = tail call i32 @llvm.smax.i32(i32 %3, i32 -127)
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 126)
  %25 = trunc i32 %24 to i8
  store i8 %25, ptr %22, align 2
  %26 = getelementptr inbounds %struct.brcmf_rssi_event_le, ptr %5, i32 0, i32 2, i32 2
  store i8 127, ptr %26, align 1
  %27 = getelementptr inbounds %struct.brcmf_rssi_event_le, ptr %5, i32 0, i32 2, i32 3
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(5) %27, i8 0, i32 5, i1 false)
  %28 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %6, ptr noundef nonnull @.str.180, ptr noundef nonnull %5, i32 noundef 16) #17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  store i32 %2, ptr %9, align 4
  %31 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %8, i32 0, i32 10
  store i32 %3, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %16
  %33 = phi i32 [ 0, %30 ], [ -22, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  br label %34

34:                                               ; preds = %32, %12
  %35 = phi i32 [ %33, %32 ], [ 0, %12 ]
  ret i32 %35
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @brcmf_cfg80211_update_mgmt_frame_registrations(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #13 {
  %4 = getelementptr inbounds %struct.mgmt_frame_regs, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i16
  %7 = getelementptr i8, ptr %1, i32 3892
  store i16 %6, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_sched_scan_start(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !17

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %1, i32 1408
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 9
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %6
  %17 = tail call i32 @net_ratelimit() #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.brcmf_pub, ptr %11, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 56
  %23 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.181, ptr noundef nonnull @__func__.brcmf_cfg80211_sched_scan_start, i32 noundef %23) #18
  br label %30

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %2, i32 0, i32 9
  %26 = load i32, ptr %25, align 8
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @brcmf_pno_start_sched_scan(ptr noundef %9, ptr noundef %2) #17
  br label %30

30:                                               ; preds = %28, %24, %19, %16
  %31 = phi i32 [ %29, %28 ], [ -11, %19 ], [ -11, %16 ], [ -22, %24 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_sched_scan_stop(ptr noundef readonly %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !17

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %1, i32 1408
  %10 = tail call i32 @brcmf_pno_stop_sched_scan(ptr noundef %9, i64 noundef %2) #17
  %11 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = tail call i32 @brcmf_notify_escan_complete(ptr noundef %8, ptr noundef %9, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %16

16:                                               ; preds = %14, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_tdls_oper(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.brcmf_tdls_iovar_le, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8, !prof !17

7:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %13 = icmp ult i32 %3, 3
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = tail call i32 @net_ratelimit() #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_convert_nl80211_tdls_oper, ptr noundef nonnull @.str.184, i32 noundef %3) #17
  br label %37

18:                                               ; preds = %8
  %19 = trunc i32 %3 to i24
  %20 = shl i24 %19, 3
  %21 = lshr i24 196870, %20
  %22 = trunc i24 %21 to i8
  %23 = getelementptr i8, ptr %1, i32 1408
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false)
  %24 = getelementptr inbounds %struct.brcmf_tdls_iovar_le, ptr %5, i32 0, i32 1
  store i8 %22, ptr %24, align 2
  %25 = icmp eq ptr %2, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %5, ptr noundef nonnull align 1 dereferenceable(6) %2, i32 6, i1 false)
  br label %27

27:                                               ; preds = %26, %18
  %28 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %23, ptr noundef nonnull @.str.182, ptr noundef nonnull %5, i32 noundef 16) #17
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = call i32 @net_ratelimit() #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.brcmf_pub, ptr %12, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.wiphy, ptr %35, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.183, ptr noundef nonnull @__func__.brcmf_cfg80211_tdls_oper, i32 noundef %28) #18
  br label %37

37:                                               ; preds = %33, %30, %27, %17, %14
  %38 = phi i32 [ %28, %30 ], [ %28, %33 ], [ %28, %27 ], [ -95, %17 ], [ -95, %14 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_get_channel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.brcmu_chan, align 4
  %5 = alloca i32, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8, !prof !17

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !8
  %15 = icmp eq ptr %12, null
  br i1 %15, label %61, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.brcmf_bus, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %61

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %12, i32 1408
  %23 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %22, ptr noundef nonnull @.str.76, ptr noundef nonnull %5) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = call i32 @net_ratelimit() #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %61, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.185, ptr noundef nonnull @__func__.brcmf_cfg80211_get_channel, i32 noundef %23) #18
  br label %61

32:                                               ; preds = %21
  %33 = load i32, ptr %5, align 4
  %34 = trunc i32 %33 to i16
  store i16 %34, ptr %4, align 4
  %35 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 26, i32 2
  %36 = load ptr, ptr %35, align 4
  call void %36(ptr noundef nonnull %4) #17
  %37 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 3
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, 1
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp ult i32 %42, 5
  %44 = add i32 %42, 1
  %45 = select i1 %43, i32 %44, i32 0
  %46 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 2
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %48, i32 noundef %40) #17
  %50 = urem i32 %49, 1000
  %51 = sub i32 %49, %50
  %52 = call ptr @ieee80211_get_channel_khz(ptr noundef nonnull %0, i32 noundef %51) #17
  store ptr %52, ptr %2, align 4
  %53 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 1
  store i32 %45, ptr %53, align 4
  %54 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 1
  %55 = load i8, ptr %54, align 2
  %56 = zext i8 %55 to i32
  %57 = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %56, i32 noundef %40) #17
  %58 = udiv i32 %57, 1000
  %59 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 2
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 3
  store i32 0, ptr %60, align 4
  br label %61

61:                                               ; preds = %32, %28, %25, %16, %8
  %62 = phi i32 [ 0, %32 ], [ -19, %16 ], [ -19, %8 ], [ %23, %28 ], [ %23, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_p2p_start_device(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_p2p_stop_device(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_crit_proto_start(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !17

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq i32 %2, 1
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %1, i32 -4
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 20
  tail call void @_set_bit(i32 noundef 1, ptr noundef %13) #17
  %15 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 12
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %11
  store i32 0, ptr %14, align 4
  %23 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 20, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @brcmf_notify_escan_complete(ptr noundef %9, ptr noundef %24, i1 noundef zeroext true, i1 noundef zeroext true) #17
  br label %26

26:                                               ; preds = %22, %18
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %13) #17
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %13) #17
  %27 = tail call i32 @brcmf_btcoex_set_mode(ptr noundef %12, i32 noundef 0, i16 noundef zeroext %3) #17
  br label %28

28:                                               ; preds = %26, %7
  %29 = phi i32 [ %27, %26 ], [ -22, %7 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_cfg80211_crit_proto_stop(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !17

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %1, i32 -4
  %9 = tail call i32 @brcmf_btcoex_set_mode(ptr noundef %8, i32 noundef 1, i16 noundef zeroext 0) #17
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %10) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_set_pmk(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = getelementptr i8, ptr %1, i32 1412
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %6, i32 0, i32 2, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %11, label %10, !prof !19

10:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 5527, i32 noundef 9, ptr noundef null) #17
  br label %20

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.cfg80211_pmk_conf, ptr %2, i32 0, i32 1
  %13 = load i8, ptr %12, align 4
  %14 = icmp ugt i8 %13, 32
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cfg80211_pmk_conf, ptr %2, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = zext i8 %13 to i16
  %19 = tail call fastcc i32 @brcmf_set_pmk(ptr noundef %4, ptr noundef %17, i16 noundef zeroext %18)
  br label %20

20:                                               ; preds = %15, %11, %10
  %21 = phi i32 [ -22, %10 ], [ %19, %15 ], [ -34, %11 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_del_pmk(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.brcmf_wsec_pmk_le, align 2
  %5 = getelementptr i8, ptr %1, i32 1412
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %6, i32 0, i32 2, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %11, label %10, !prof !19

10:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 5543, i32 noundef 9, ptr noundef null) #17
  br label %26

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %1, i32 1408
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 70, ptr nonnull %4) #17
  %14 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(70) %14, i8 0, i32 66, i1 false) #17, !annotation !8
  store i16 0, ptr %4, align 2
  %15 = getelementptr inbounds %struct.brcmf_wsec_pmk_le, ptr %4, i32 0, i32 1
  store i16 1, ptr %15, align 2
  %16 = call i32 @brcmf_fil_cmd_data_set(ptr noundef %12, i32 noundef 268, ptr noundef nonnull %4, i32 noundef 70) #17
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = call i32 @net_ratelimit() #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.brcmf_pub, ptr %13, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.brcmf_set_pmk, i32 noundef 0) #18
  br label %25

25:                                               ; preds = %21, %18, %11
  call void @llvm.lifetime.end.p0(i64 70, ptr nonnull %4) #17
  br label %26

26:                                               ; preds = %25, %10
  %27 = phi i32 [ -22, %10 ], [ %16, %25 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_link_down(ptr noundef %0, i16 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.brcmf_wsec_pmk_le, align 2
  %5 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !17

8:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wiphy, ptr %6, i32 1, i32 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %11, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.brcmf_bus, ptr %14, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 3
  %19 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %18) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %9
  br i1 %17, label %22, label %33

22:                                               ; preds = %21
  %23 = load ptr, ptr %0, align 4
  %24 = tail call i32 @brcmf_fil_cmd_data_set(ptr noundef %23, i32 noundef 52, ptr noundef null, i32 noundef 0) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @net_ratelimit() #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.brcmf_pub, ptr %13, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.wiphy, ptr %31, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.brcmf_link_down, i32 noundef %24) #18
  br label %33

33:                                               ; preds = %29, %26, %22, %21
  %34 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 1, i32 1
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %39 [
    i32 2, label %36
    i32 8, label %36
  ]

36:                                               ; preds = %33, %33
  %37 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 1, i32 3
  %38 = load ptr, ptr %37, align 4
  tail call void @cfg80211_disconnected(ptr noundef %38, i16 noundef zeroext %1, ptr noundef null, i32 noundef 0, i1 noundef zeroext %2, i32 noundef 3264) #17
  br label %39

39:                                               ; preds = %36, %33, %9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %18) #17
  %40 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %11, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %40) #17
  %41 = tail call i32 @brcmf_btcoex_set_mode(ptr noundef %0, i32 noundef 1, i16 noundef zeroext 0) #17
  %42 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 2, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %39
  br i1 %17, label %46, label %61

46:                                               ; preds = %45
  %47 = load ptr, ptr %0, align 4
  %48 = load ptr, ptr %47, align 4
  call void @llvm.lifetime.start.p0(i64 70, ptr nonnull %4) #17
  %49 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(70) %49, i8 0, i32 66, i1 false) #17, !annotation !8
  store i16 0, ptr %4, align 2
  %50 = getelementptr inbounds %struct.brcmf_wsec_pmk_le, ptr %4, i32 0, i32 1
  store i16 1, ptr %50, align 2
  %51 = call i32 @brcmf_fil_cmd_data_set(ptr noundef %47, i32 noundef 268, ptr noundef nonnull %4, i32 noundef 70) #17
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = call i32 @net_ratelimit() #17
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.brcmf_pub, ptr %48, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.wiphy, ptr %58, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.brcmf_set_pmk, i32 noundef 0) #18
  br label %60

60:                                               ; preds = %56, %53, %46
  call void @llvm.lifetime.end.p0(i64 70, ptr nonnull %4) #17
  br label %61

61:                                               ; preds = %60, %45
  store i32 0, ptr %42, align 4
  br label %62

62:                                               ; preds = %61, %39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_disconnected(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_btcoex_set_mode(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_set_pmk(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.brcmf_wsec_pmk_le, align 2
  %5 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 70, ptr nonnull %4) #17
  %6 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(70) %6, i8 0, i32 66, i1 false), !annotation !8
  %7 = zext i16 %2 to i32
  %8 = shl i16 %2, 1
  store i16 %8, ptr %4, align 2
  %9 = getelementptr inbounds %struct.brcmf_wsec_pmk_le, ptr %4, i32 0, i32 1
  store i16 1, ptr %9, align 2
  %10 = icmp eq i16 %2, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %11, %3
  %12 = phi i32 [ %19, %11 ], [ 0, %3 ]
  %13 = shl nuw i32 %12, 1
  %14 = getelementptr %struct.brcmf_wsec_pmk_le, ptr %4, i32 0, i32 2, i32 %13
  %15 = getelementptr i8, ptr %1, i32 %12
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %14, i32 noundef 3, ptr noundef nonnull @.str.26, i32 noundef %17)
  %19 = add nuw nsw i32 %12, 1
  %20 = icmp eq i32 %19, %7
  br i1 %20, label %21, label %11

21:                                               ; preds = %11, %3
  %22 = call i32 @brcmf_fil_cmd_data_set(ptr noundef %0, i32 noundef 268, ptr noundef nonnull %4, i32 noundef 70) #17
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = call i32 @net_ratelimit() #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.brcmf_set_pmk, i32 noundef %7) #18
  br label %31

31:                                               ; preds = %27, %24, %21
  call void @llvm.lifetime.end.p0(i64 70, ptr nonnull %4) #17
  ret i32 %22
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_configure_arp_nd_offload(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_int_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fweh_unregister(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_wowl_nd_results(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 56
  br i1 %9, label %66, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 34
  br i1 %13, label %66, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.brcmf_pno_scanresults_le, ptr %2, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = tail call i32 @net_ratelimit() #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %66, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 56
  %25 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.brcmf_wowl_nd_results, i32 noundef %25) #18
  br label %66

26:                                               ; preds = %14
  %27 = load i32, ptr %2, align 4
  switch i32 %27, label %28 [
    i32 1, label %29
    i32 2, label %31
  ]

28:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 3497, i32 noundef 9, ptr noundef null) #17
  br label %29

29:                                               ; preds = %28, %26
  %30 = getelementptr %struct.brcmf_pno_scanresults_le, ptr %2, i32 1
  br label %33

31:                                               ; preds = %26
  %32 = getelementptr %struct.brcmf_pno_scanresults_v2_le, ptr %2, i32 1
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %30, %29 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.brcmf_pno_net_info_le, ptr %34, i32 0, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = icmp ugt i8 %36, 32
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i8 32, ptr %35, align 1
  br label %39

39:                                               ; preds = %38, %33
  %40 = phi i8 [ 32, %38 ], [ %36, %33 ]
  %41 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 28, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.brcmf_pno_net_info_le, ptr %34, i32 0, i32 3
  %44 = zext i8 %40 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %42, ptr align 2 %43, i32 %44, i1 false)
  %45 = load i8, ptr %35, align 1
  %46 = load ptr, ptr %41, align 4
  %47 = getelementptr inbounds %struct.cfg80211_ssid, ptr %46, i32 0, i32 1
  store i8 %45, ptr %47, align 4
  %48 = load ptr, ptr %41, align 4
  %49 = getelementptr inbounds %struct.cfg80211_wowlan_nd_match, ptr %48, i32 0, i32 1
  store i32 1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.brcmf_pno_net_info_le, ptr %34, i32 0, i32 1
  %51 = load i8, ptr %50, align 2
  %52 = zext i8 %51 to i32
  %53 = icmp ugt i8 %51, 14
  %54 = zext i1 %53 to i32
  %55 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %52, i32 noundef %54) #17
  %56 = udiv i32 %55, 1000
  %57 = load ptr, ptr %41, align 4
  %58 = getelementptr inbounds %struct.cfg80211_wowlan_nd_match, ptr %57, i32 0, i32 2
  store i32 %56, ptr %58, align 4
  %59 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 28, i32 3
  %60 = load ptr, ptr %59, align 4
  store i32 1, ptr %60, align 4
  %61 = load ptr, ptr %41, align 4
  %62 = load ptr, ptr %59, align 4
  %63 = getelementptr inbounds %struct.cfg80211_wowlan_nd_info, ptr %62, i32 0, i32 1
  store ptr %61, ptr %63, align 4
  %64 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 28, i32 5
  store i8 1, ptr %64, align 4
  %65 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 28, i32 4
  tail call void @__wake_up(ptr noundef %65, i32 noundef 3, i32 noundef 1, ptr noundef null) #17
  br label %66

66:                                               ; preds = %39, %21, %18, %10, %3
  %67 = phi i32 [ 0, %39 ], [ 0, %3 ], [ 0, %10 ], [ -22, %21 ], [ -22, %18 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_notify_sched_scan_results(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, 56
  br i1 %10, label %153, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 34
  br i1 %14, label %153, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.brcmf_pno_scanresults_le, ptr %2, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.brcmf_pno_scanresults_le, ptr %2, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %22, label %21, !prof !19

21:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 3552, i32 noundef 9, ptr noundef null) #17
  br label %22

22:                                               ; preds = %21, %15
  %23 = icmp eq i32 %17, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = tail call i32 @net_ratelimit() #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %147, label %142

27:                                               ; preds = %22
  %28 = load i32, ptr %2, align 4
  switch i32 %28, label %29 [
    i32 1, label %30
    i32 2, label %32
  ]

29:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 3497, i32 noundef 9, ptr noundef null) #17
  br label %30

30:                                               ; preds = %29, %27
  %31 = getelementptr %struct.brcmf_pno_scanresults_le, ptr %2, i32 1
  br label %34

32:                                               ; preds = %27
  %33 = getelementptr %struct.brcmf_pno_scanresults_v2_le, ptr %2, i32 1
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %31, %30 ], [ %33, %32 ]
  %36 = load i32, ptr %8, align 4
  %37 = ptrtoint ptr %35 to i32
  %38 = ptrtoint ptr %2 to i32
  %39 = sub i32 %38, %37
  %40 = add i32 %39, %36
  %41 = mul i32 %17, 44
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = tail call i32 @net_ratelimit() #17
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %147, label %142

46:                                               ; preds = %34
  %47 = shl i32 %17, 2
  %48 = add i32 %47, 120
  %49 = mul i32 %17, 33
  %50 = add i32 %48, %49
  %51 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %50, i32 noundef 3520) #20
  %52 = icmp eq ptr %51, null
  br i1 %52, label %147, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %51, i32 0, i32 14
  store ptr %7, ptr %54, align 16
  %55 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %51, i32 0, i32 22
  %56 = getelementptr i8, ptr %55, i32 %47
  store ptr %56, ptr %51, align 64
  %57 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 29
  %58 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %51, i32 0, i32 2
  %59 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %51, i32 0, i32 1
  br label %60

60:                                               ; preds = %133, %53
  %61 = phi i32 [ 0, %53 ], [ %134, %133 ]
  %62 = phi i32 [ 0, %53 ], [ %135, %133 ]
  %63 = getelementptr %struct.brcmf_pno_net_info_le, ptr %35, i32 %62
  %64 = getelementptr %struct.brcmf_pno_net_info_le, ptr %35, i32 %62, i32 2
  %65 = load i8, ptr %64, align 1
  %66 = icmp ugt i8 %65, 32
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i8 32, ptr %64, align 1
  br label %68

68:                                               ; preds = %67, %60
  %69 = load ptr, ptr %57, align 4
  %70 = tail call i32 @brcmf_pno_get_bucket_map(ptr noundef %69, ptr noundef %63) #17
  %71 = getelementptr %struct.brcmf_pno_net_info_le, ptr %35, i32 %62, i32 3
  %72 = load i8, ptr %64, align 1
  %73 = getelementptr %struct.brcmf_pno_net_info_le, ptr %35, i32 %62, i32 1
  %74 = load i8, ptr %73, align 2
  %75 = zext i8 %74 to i32
  %76 = icmp ugt i8 %74, 14
  %77 = zext i1 %76 to i32
  %78 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %75, i32 noundef %77) #17
  %79 = icmp ult i32 %78, 1000
  br i1 %79, label %147, label %80

80:                                               ; preds = %68
  %81 = load ptr, ptr %54, align 16
  %82 = urem i32 %78, 1000
  %83 = sub nuw i32 %78, %82
  %84 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %81, i32 noundef %83) #17
  %85 = icmp eq ptr %84, null
  br i1 %85, label %147, label %86

86:                                               ; preds = %80
  %87 = load i32, ptr %58, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %94, %86
  %90 = phi i32 [ %95, %94 ], [ 0, %86 ]
  %91 = getelementptr %struct.cfg80211_scan_request, ptr %51, i32 0, i32 22, i32 %90
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, %84
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = add nuw i32 %90, 1
  %96 = icmp eq i32 %95, %87
  br i1 %96, label %100, label %89

97:                                               ; preds = %89, %86
  %98 = phi i32 [ 0, %86 ], [ %90, %89 ]
  %99 = icmp eq i32 %98, %87
  br i1 %99, label %100, label %103

100:                                              ; preds = %97, %94
  %101 = add i32 %87, 1
  store i32 %101, ptr %58, align 8
  %102 = getelementptr %struct.cfg80211_scan_request, ptr %51, i32 0, i32 22, i32 %87
  store ptr %84, ptr %102, align 4
  br label %103

103:                                              ; preds = %100, %97
  %104 = zext i8 %72 to i32
  %105 = load i32, ptr %59, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %103
  %108 = load ptr, ptr %51, align 64
  br label %109

109:                                              ; preds = %118, %107
  %110 = phi i32 [ 0, %107 ], [ %119, %118 ]
  %111 = getelementptr %struct.cfg80211_ssid, ptr %108, i32 %110, i32 1
  %112 = load i8, ptr %111, align 1
  %113 = icmp eq i8 %112, %72
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = getelementptr %struct.cfg80211_ssid, ptr %108, i32 %110
  %116 = tail call i32 @bcmp(ptr %115, ptr %71, i32 %104) #17
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %114, %109
  %119 = add nuw nsw i32 %110, 1
  %120 = icmp eq i32 %119, %105
  br i1 %120, label %126, label %109

121:                                              ; preds = %114, %103
  %122 = phi i32 [ 0, %103 ], [ %110, %114 ]
  %123 = icmp eq i32 %122, %105
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load ptr, ptr %51, align 64
  br label %126

126:                                              ; preds = %124, %118
  %127 = phi ptr [ %125, %124 ], [ %108, %118 ]
  %128 = getelementptr %struct.cfg80211_ssid, ptr %127, i32 %105
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %128, ptr align 1 %71, i32 %104, i1 false) #17
  %129 = load ptr, ptr %51, align 64
  %130 = load i32, ptr %59, align 4
  %131 = add i32 %130, 1
  store i32 %131, ptr %59, align 4
  %132 = getelementptr %struct.cfg80211_ssid, ptr %129, i32 %130, i32 1
  store i8 %72, ptr %132, align 1
  br label %133

133:                                              ; preds = %126, %121
  %134 = or i32 %70, %61
  %135 = add nuw i32 %62, 1
  %136 = icmp eq i32 %135, %17
  br i1 %136, label %137, label %60

137:                                              ; preds = %133
  %138 = icmp eq i32 %134, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %137
  %140 = tail call fastcc i32 @brcmf_start_internal_escan(ptr noundef %0, i32 noundef %134, ptr noundef nonnull %51)
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %150, label %147

142:                                              ; preds = %43, %24
  %143 = phi ptr [ @.str.41, %24 ], [ @.str.42, %43 ]
  %144 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.wiphy, ptr %145, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull %143, ptr noundef nonnull @__func__.brcmf_notify_sched_scan_results) #18
  br label %147

147:                                              ; preds = %142, %139, %80, %68, %46, %43, %24
  %148 = phi i32 [ 0, %43 ], [ %140, %139 ], [ 0, %24 ], [ -12, %46 ], [ 0, %142 ], [ -22, %68 ], [ -22, %80 ]
  %149 = phi ptr [ null, %43 ], [ %51, %139 ], [ null, %24 ], [ null, %46 ], [ null, %142 ], [ %51, %68 ], [ %51, %80 ]
  tail call void @cfg80211_sched_scan_stopped(ptr noundef %7, i64 noundef 0) #17
  br label %150

150:                                              ; preds = %147, %139, %137
  %151 = phi i32 [ %148, %147 ], [ 0, %139 ], [ 0, %137 ]
  %152 = phi ptr [ %149, %147 ], [ %51, %139 ], [ %51, %137 ]
  tail call void @kfree(ptr noundef %152) #17
  br label %153

153:                                              ; preds = %150, %11, %3
  %154 = phi i32 [ %151, %150 ], [ 0, %3 ], [ 0, %11 ]
  ret i32 %154
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_report_wowlan_wakeup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_pno_get_bucket_map(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_start_internal_escan(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 9
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 12
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 20
  tail call void @_set_bit(i32 noundef 1, ptr noundef %7) #17
  %14 = load i32, ptr %12, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16, %11
  store i32 0, ptr %13, align 4
  %21 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 20, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @brcmf_notify_escan_complete(ptr noundef %6, ptr noundef %22, i1 noundef zeroext true, i1 noundef zeroext true) #17
  br label %24

24:                                               ; preds = %20, %16
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %7) #17
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %7) #17
  br label %25

25:                                               ; preds = %24, %3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %7) #17
  %26 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 20, i32 4
  store ptr @brcmf_run_escan, ptr %26, align 4
  %27 = tail call fastcc i32 @brcmf_do_escan(ptr noundef %0, ptr noundef %2)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %7) #17
  br label %32

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 12
  store i32 %1, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %29
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_stopped(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_run_escan(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) #0 {
  %4 = alloca %struct.brcmu_chan, align 4
  %5 = alloca [32 x i8], align 4
  %6 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %2, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %2, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = shl i32 %11, 1
  %13 = add i32 %12, 74
  %14 = and i32 %13, -4
  %15 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %2, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, 36
  %18 = add i32 %14, %17
  br label %19

19:                                               ; preds = %9, %3
  %20 = phi i32 [ %18, %9 ], [ 72, %3 ]
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %96, label %23

23:                                               ; preds = %19
  %24 = add i32 %20, -1530
  %25 = icmp ult i32 %24, -1536
  br i1 %25, label %26, label %27, !prof !17

26:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1123, 0\0A.popsection", ""() #17, !srcloc !21
  unreachable

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.brcmf_escan_params_le, ptr %21, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false) #17
  %29 = getelementptr inbounds %struct.brcmf_escan_params_le, ptr %21, i32 0, i32 3, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(6) %29, i8 -1, i32 6, i1 false) #17
  %30 = getelementptr inbounds %struct.brcmf_escan_params_le, ptr %21, i32 0, i32 3, i32 2
  store i8 2, ptr %30, align 2
  %31 = getelementptr inbounds %struct.brcmf_escan_params_le, ptr %21, i32 0, i32 3, i32 3
  store i8 0, ptr %31, align 1
  %32 = getelementptr inbounds %struct.brcmf_escan_params_le, ptr %21, i32 0, i32 3, i32 8
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.brcmf_escan_params_le, ptr %21, i32 0, i32 3, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %33, i8 -1, i64 16, i1 false) #17
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(36) %28, i8 0, i32 36, i1 false) #17
  %34 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %2, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %2, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 1
  %41 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 4
  %42 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 26, i32 1
  br label %43

43:                                               ; preds = %43, %39
  %44 = phi i32 [ 0, %39 ], [ %55, %43 ]
  %45 = getelementptr %struct.cfg80211_scan_request, ptr %2, i32 0, i32 22, i32 %44
  %46 = load ptr, ptr %45, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #17, !annotation !8
  %47 = getelementptr inbounds %struct.ieee80211_channel, ptr %46, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = mul i32 %48, 1000
  %50 = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %49) #17
  %51 = trunc i32 %50 to i8
  store i8 %51, ptr %40, align 2
  store i32 0, ptr %41, align 4
  %52 = load ptr, ptr %42, align 4
  call void %52(ptr noundef nonnull %4) #17
  %53 = load i16, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  %54 = getelementptr %struct.brcmf_escan_params_le, ptr %21, i32 0, i32 3, i32 9, i32 %44
  store i16 %53, ptr %54, align 2
  %55 = add nuw i32 %44, 1
  %56 = icmp eq i32 %55, %37
  br i1 %56, label %57, label %43

57:                                               ; preds = %43, %27
  %58 = icmp eq i32 %35, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %57
  %60 = shl i32 %37, 1
  %61 = add i32 %60, 67
  %62 = and i32 %61, -4
  %63 = getelementptr i8, ptr %28, i32 %62
  %64 = load ptr, ptr %2, align 8
  br label %65

65:                                               ; preds = %65, %59
  %66 = phi i32 [ %78, %65 ], [ 0, %59 ]
  %67 = phi ptr [ %77, %65 ], [ %63, %59 ]
  %68 = getelementptr %struct.cfg80211_ssid, ptr %64, i32 %66
  %69 = getelementptr %struct.cfg80211_ssid, ptr %64, i32 %66, i32 1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp ugt i8 %70, 31
  %73 = sub nsw i32 32, %71
  %74 = select i1 %72, i32 0, i32 %73
  %75 = getelementptr i8, ptr %5, i32 %71
  call void @llvm.memset.p0.i32(ptr align 1 %75, i8 0, i32 %74, i1 false) #17
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %5, ptr align 1 %68, i32 %71, i1 false) #17
  store i32 %71, ptr %67, align 1
  %76 = getelementptr inbounds i8, ptr %67, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %76, ptr noundef nonnull align 4 dereferenceable(32) %5, i32 32, i1 false) #17
  %77 = getelementptr i8, ptr %67, i32 36
  %78 = add nuw i32 %66, 1
  %79 = icmp eq i32 %78, %35
  br i1 %79, label %81, label %65

80:                                               ; preds = %57
  store i8 1, ptr %31, align 1
  br label %81

81:                                               ; preds = %80, %65
  %82 = shl i32 %35, 16
  %83 = and i32 %37, 65535
  %84 = or i32 %83, %82
  store i32 %84, ptr %32, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  store i32 1, ptr %21, align 64
  %85 = getelementptr inbounds %struct.brcmf_escan_params_le, ptr %21, i32 0, i32 1
  store i16 1, ptr %85, align 4
  %86 = getelementptr inbounds %struct.brcmf_escan_params_le, ptr %21, i32 0, i32 2
  store i16 4660, ptr %86, align 2
  %87 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull %21, i32 noundef %20) #17
  switch i32 %87, label %88 [
    i32 0, label %95
    i32 -16, label %95
  ]

88:                                               ; preds = %81
  %89 = call i32 @net_ratelimit() #17
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.wiphy, ptr %93, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.brcmf_run_escan, i32 noundef %87) #18
  br label %95

95:                                               ; preds = %91, %88, %81, %81
  call void @kfree(ptr noundef nonnull %21) #17
  br label %96

96:                                               ; preds = %95, %19
  %97 = phi i32 [ %87, %95 ], [ -12, %19 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_do_escan(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %5, i32 0, i32 20
  %7 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %5, i32 0, i32 20, i32 3
  store ptr %0, ptr %7, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %5, i32 0, i32 20, i32 2
  store ptr %8, ptr %9, align 4
  store i32 1, ptr %6, align 4
  %10 = tail call zeroext i1 @brcmf_feat_is_quirk_enabled(ptr noundef %0, i32 noundef 1) #17
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %14, i32 0, i32 3
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %11
  %20 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 0) #17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @net_ratelimit() #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.brcmf_pub, ptr %12, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.brcmf_set_mpc) #18
  br label %29

29:                                               ; preds = %25, %22, %19, %11, %2
  %30 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %5, i32 0, i32 20, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.brcmf_scan_results, ptr %31, i32 0, i32 1
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.brcmf_scan_results, ptr %31, i32 0, i32 2
  store i32 0, ptr %33, align 4
  store i32 12, ptr %31, align 4
  %34 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %5, i32 0, i32 20, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %5, ptr noundef %0, ptr noundef %1) #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %29
  %39 = tail call zeroext i1 @brcmf_feat_is_quirk_enabled(ptr noundef %0, i32 noundef 1) #17
  br i1 %39, label %40, label %58

40:                                               ; preds = %38
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %43, i32 0, i32 3
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %40
  %49 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 1) #17
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = tail call i32 @net_ratelimit() #17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.brcmf_pub, ptr %41, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.wiphy, ptr %56, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.brcmf_set_mpc) #18
  br label %58

58:                                               ; preds = %54, %51, %48, %40, %38, %29
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_p2p_add_vif(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_check_combinations(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_net_mon_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_net_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_p2p_del_vif(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_net_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_remove_interface(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_p2p_ifchange(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @send_key_to_dongle(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.brcmf_wsec_key_le, align 4
  %4 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %3) #17
  %5 = getelementptr inbounds i8, ptr %3, i32 40
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(164) %5, i8 0, i32 124, i1 false), !annotation !8
  %6 = load i32, ptr %1, align 4
  store i32 %6, ptr %3, align 4
  %7 = getelementptr inbounds %struct.brcmf_wsec_key, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_wsec_key_le, ptr %3, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.brcmf_wsec_key, ptr %1, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.brcmf_wsec_key_le, ptr %3, i32 0, i32 4
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.brcmf_wsec_key, ptr %1, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.brcmf_wsec_key_le, ptr %3, i32 0, i32 5
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.brcmf_wsec_key, ptr %1, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.brcmf_wsec_key_le, ptr %3, i32 0, i32 9
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.brcmf_wsec_key, ptr %1, i32 0, i32 9, i32 1
  %20 = load i16, ptr %19, align 4
  %21 = getelementptr inbounds %struct.brcmf_wsec_key_le, ptr %3, i32 0, i32 9, i32 1
  store i16 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.brcmf_wsec_key, ptr %1, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.brcmf_wsec_key_le, ptr %3, i32 0, i32 7
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.brcmf_wsec_key_le, ptr %3, i32 0, i32 2
  %26 = getelementptr inbounds %struct.brcmf_wsec_key, ptr %1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %25, ptr noundef align 4 dereferenceable(32) %26, i32 32, i1 false) #17
  %27 = getelementptr inbounds %struct.brcmf_wsec_key_le, ptr %3, i32 0, i32 11
  %28 = getelementptr inbounds %struct.brcmf_wsec_key, ptr %1, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %27, ptr noundef align 4 dereferenceable(6) %28, i32 6, i1 false) #17
  %29 = tail call i32 @brcmf_netdev_wait_pend8021x(ptr noundef %0) #17
  %30 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %0, ptr noundef nonnull @.str.64, ptr noundef nonnull %3, i32 noundef 164) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %2
  %33 = call i32 @net_ratelimit() #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.wiphy, ptr %37, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.send_key_to_dongle, i32 noundef %30) #18
  br label %39

39:                                               ; preds = %35, %32, %2
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %3) #17
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_bsscfg_int_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_bsscfg_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_netdev_wait_pend8021x(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @chandef_to_chanspec(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.brcmu_chan, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, 1000
  %7 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %6) #17
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 1
  store i8 %8, ptr %9, align 2
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr inbounds %struct.ieee80211_channel, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %4, align 4
  %14 = sub i32 %12, %13
  %15 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %55 [
    i32 1, label %17
    i32 0, label %17
    i32 2, label %21
    i32 3, label %27
    i32 5, label %37
  ]

17:                                               ; preds = %2, %2
  %18 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 4
  store i32 0, ptr %18, align 4
  %19 = icmp eq i32 %12, %13
  br i1 %19, label %58, label %20, !prof !19

20:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 264, i32 noundef 9, ptr noundef null) #17
  br label %58

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 4
  store i32 1, ptr %22, align 4
  %23 = icmp sgt i32 %14, 0
  %24 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 5
  br i1 %23, label %25, label %26

25:                                               ; preds = %21
  store i32 1, ptr %24, align 4
  br label %58

26:                                               ; preds = %21
  store i32 0, ptr %24, align 4
  br label %58

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 4
  store i32 2, ptr %28, align 4
  switch i32 %14, label %35 [
    i32 -30, label %29
    i32 -10, label %31
    i32 10, label %33
  ]

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 5
  store i32 0, ptr %30, align 4
  br label %58

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 5
  store i32 1, ptr %32, align 4
  br label %58

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 5
  store i32 2, ptr %34, align 4
  br label %58

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 5
  store i32 3, ptr %36, align 4
  br label %58

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 4
  store i32 4, ptr %38, align 4
  switch i32 %14, label %53 [
    i32 -70, label %39
    i32 -50, label %41
    i32 -30, label %43
    i32 -10, label %45
    i32 10, label %47
    i32 30, label %49
    i32 50, label %51
  ]

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 5
  store i32 0, ptr %40, align 4
  br label %58

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 5
  store i32 1, ptr %42, align 4
  br label %58

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 5
  store i32 2, ptr %44, align 4
  br label %58

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 5
  store i32 3, ptr %46, align 4
  br label %58

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 5
  store i32 4, ptr %48, align 4
  br label %58

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 5
  store i32 5, ptr %50, align 4
  br label %58

51:                                               ; preds = %37
  %52 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 5
  store i32 6, ptr %52, align 4
  br label %58

53:                                               ; preds = %37
  %54 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 5
  store i32 7, ptr %54, align 4
  br label %58

55:                                               ; preds = %2
  %56 = load i1, ptr @chandef_to_chanspec.__already_done, align 1
  br i1 %56, label %58, label %57, !prof !19

57:                                               ; preds = %55
  store i1 true, ptr @chandef_to_chanspec.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 307, i32 noundef 9, ptr noundef null) #17
  br label %58

58:                                               ; preds = %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %35, %33, %31, %29, %26, %25, %20, %17
  %59 = load ptr, ptr %1, align 4
  %60 = load i32, ptr %59, align 4
  switch i32 %60, label %65 [
    i32 0, label %61
    i32 1, label %63
  ]

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 3
  store i8 0, ptr %62, align 4
  br label %68

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 3
  store i8 1, ptr %64, align 4
  br label %68

65:                                               ; preds = %58
  %66 = load i1, ptr @chandef_to_chanspec.__already_done.89, align 1
  br i1 %66, label %68, label %67, !prof !19

67:                                               ; preds = %65
  store i1 true, ptr @chandef_to_chanspec.__already_done.89, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 318, i32 noundef 9, ptr noundef null) #17
  br label %68

68:                                               ; preds = %67, %65, %63, %61
  %69 = getelementptr inbounds %struct.brcmu_d11inf, ptr %0, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  call void %70(ptr noundef nonnull %3) #17
  %71 = load i16, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret i16 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_set_sae_password(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.brcmf_wsec_sae_pwd_le, align 2
  %5 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %4) #17
  %6 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(130) %6, i8 0, i32 128, i1 false), !annotation !8
  %7 = zext i16 %2 to i32
  %8 = icmp ugt i16 %2, 128
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = tail call i32 @net_ratelimit() #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.90, ptr noundef nonnull @__func__.brcmf_set_sae_password, i32 noundef 128) #18
  br label %27

16:                                               ; preds = %3
  store i16 %2, ptr %4, align 2
  %17 = getelementptr inbounds %struct.brcmf_wsec_sae_pwd_le, ptr %4, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %17, ptr align 1 %1, i32 %7, i1 false)
  %18 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %0, ptr noundef nonnull @.str.91, ptr noundef nonnull %4, i32 noundef 130) #17
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = call i32 @net_ratelimit() #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.wiphy, ptr %25, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.92, ptr noundef nonnull @__func__.brcmf_set_sae_password, i32 noundef %7) #18
  br label %27

27:                                               ; preds = %23, %20, %16, %12, %9
  %28 = phi i32 [ -22, %12 ], [ -22, %9 ], [ %18, %20 ], [ %18, %23 ], [ %18, %16 ]
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %4) #17
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_parse_configure_security(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %1, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %1, i32 0, i32 1, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %68

8:                                                ; preds = %19, %2
  %9 = phi i32 [ %21, %19 ], [ %6, %2 ]
  %10 = phi ptr [ %20, %19 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.brcmf_tlv, ptr %10, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, ptr %10, align 1
  %15 = icmp ne i8 %14, 48
  %16 = add nuw nsw i32 %13, 2
  %17 = icmp ult i32 %9, %16
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %8
  %20 = getelementptr i8, ptr %10, i32 %16
  %21 = sub nsw i32 %9, %16
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %8, label %23

23:                                               ; preds = %19, %8
  %24 = phi ptr [ %10, %8 ], [ null, %19 ]
  br label %25

25:                                               ; preds = %55, %23
  %26 = phi i32 [ %60, %55 ], [ %6, %23 ]
  %27 = phi ptr [ %56, %55 ], [ %4, %23 ]
  br label %28

28:                                               ; preds = %39, %25
  %29 = phi i32 [ %41, %39 ], [ %26, %25 ]
  %30 = phi ptr [ %40, %39 ], [ %27, %25 ]
  %31 = getelementptr %struct.brcmf_tlv, ptr %30, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, ptr %30, align 1
  %35 = icmp ne i8 %34, -35
  %36 = add nuw nsw i32 %33, 2
  %37 = icmp ult i32 %29, %36
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = getelementptr i8, ptr %30, i32 %36
  %41 = sub nsw i32 %29, %36
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %28, label %62

43:                                               ; preds = %28
  %44 = icmp eq ptr %30, null
  br i1 %44, label %62, label %45

45:                                               ; preds = %43
  %46 = icmp ugt i8 %32, 3
  br i1 %46, label %47, label %55

47:                                               ; preds = %45
  %48 = getelementptr i8, ptr %30, i32 2
  %49 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %48, ptr noundef nonnull dereferenceable(3) @.str.24, i32 3) #17
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = getelementptr i8, ptr %30, i32 5
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 1
  br i1 %54, label %64, label %55

55:                                               ; preds = %51, %47, %45
  %56 = getelementptr i8, ptr %30, i32 %36
  %57 = ptrtoint ptr %56 to i32
  %58 = ptrtoint ptr %27 to i32
  %59 = add i32 %26, %58
  %60 = sub i32 %59, %57
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %25, label %62

62:                                               ; preds = %55, %43, %39
  %63 = icmp eq ptr %24, null
  br i1 %63, label %68, label %66

64:                                               ; preds = %51
  %65 = tail call fastcc i32 @brcmf_configure_wpaie(ptr noundef %0, ptr noundef nonnull %30, i1 noundef zeroext false)
  br label %105

66:                                               ; preds = %62
  %67 = tail call fastcc i32 @brcmf_configure_wpaie(ptr noundef %0, ptr noundef nonnull %24, i1 noundef zeroext true)
  br label %105

68:                                               ; preds = %62, %2
  %69 = load ptr, ptr %0, align 4
  %70 = tail call i32 @brcmf_fil_bsscfg_int_set(ptr noundef %0, ptr noundef nonnull @.str.104, i32 noundef 0) #17
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = tail call i32 @net_ratelimit() #17
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %105, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.brcmf_pub, ptr %69, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.wiphy, ptr %77, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.105, ptr noundef nonnull @__func__.brcmf_configure_opensecurity, i32 noundef %70) #18
  br label %105

79:                                               ; preds = %68
  %80 = tail call i32 @brcmf_fil_bsscfg_int_set(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef 0) #17
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = tail call i32 @net_ratelimit() #17
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %105, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.brcmf_pub, ptr %69, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.wiphy, ptr %87, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.106, ptr noundef nonnull @__func__.brcmf_configure_opensecurity, i32 noundef %80) #18
  br label %105

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %91, i32 0, i32 1, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 1
  %95 = zext i1 %94 to i32
  %96 = tail call i32 @brcmf_fil_bsscfg_int_set(ptr noundef %0, ptr noundef nonnull @.str.109, i32 noundef %95) #17
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %89
  %99 = tail call i32 @net_ratelimit() #17
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.brcmf_pub, ptr %69, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.wiphy, ptr %103, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.110, ptr noundef nonnull @__func__.brcmf_configure_opensecurity, i32 noundef %96) #18
  br label %105

105:                                              ; preds = %101, %98, %89, %85, %82, %75, %72, %66, %64
  %106 = phi i32 [ %65, %64 ], [ %67, %66 ], [ 0, %72 ], [ 0, %75 ], [ 0, %82 ], [ 0, %85 ], [ 0, %89 ], [ 0, %98 ], [ 0, %101 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_cfg80211_reconfigure_wep(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.brcmf_cfg80211_vif, ptr %5, i32 0, i32 2, i32 2, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %8 [
    i32 1, label %23
    i32 3, label %23
  ]

8:                                                ; preds = %1
  %9 = getelementptr %struct.brcmf_cfg80211_vif, ptr %5, i32 0, i32 2, i32 2, i32 1, i32 4
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %11 [
    i32 1, label %23
    i32 3, label %23
  ]

11:                                               ; preds = %8
  %12 = getelementptr %struct.brcmf_cfg80211_vif, ptr %5, i32 0, i32 2, i32 2, i32 2, i32 4
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %14 [
    i32 1, label %23
    i32 3, label %23
  ]

14:                                               ; preds = %11
  %15 = getelementptr %struct.brcmf_cfg80211_vif, ptr %5, i32 0, i32 2, i32 2, i32 3, i32 4
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %17 [
    i32 1, label %23
    i32 3, label %23
  ]

17:                                               ; preds = %14
  %18 = getelementptr %struct.brcmf_cfg80211_vif, ptr %5, i32 0, i32 2, i32 2, i32 4, i32 4
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %20 [
    i32 1, label %23
    i32 3, label %23
  ]

20:                                               ; preds = %17
  %21 = getelementptr %struct.brcmf_cfg80211_vif, ptr %5, i32 0, i32 2, i32 2, i32 5, i32 4
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %57 [
    i32 1, label %23
    i32 3, label %23
  ]

23:                                               ; preds = %20, %20, %17, %17, %14, %14, %11, %11, %8, %8, %1, %1
  %24 = phi i32 [ 0, %1 ], [ 0, %1 ], [ 1, %8 ], [ 1, %8 ], [ 2, %11 ], [ 2, %11 ], [ 3, %14 ], [ 3, %14 ], [ 4, %17 ], [ 4, %17 ], [ 5, %20 ], [ 5, %20 ]
  %25 = getelementptr %struct.brcmf_cfg80211_vif, ptr %5, i32 0, i32 2, i32 2, i32 %24
  %26 = tail call fastcc i32 @send_key_to_dongle(ptr noundef %0, ptr noundef %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @net_ratelimit() #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %57, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.wiphy, ptr %33, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.brcmf_cfg80211_reconfigure_wep, i32 noundef %26) #18
  br label %57

35:                                               ; preds = %23
  %36 = call i32 @brcmf_fil_bsscfg_int_get(ptr noundef %0, ptr noundef nonnull @.str.61, ptr noundef nonnull %2) #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = call i32 @net_ratelimit() #17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.wiphy, ptr %43, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.brcmf_cfg80211_reconfigure_wep, i32 noundef %36) #18
  br label %57

45:                                               ; preds = %35
  %46 = load i32, ptr %2, align 4
  %47 = or i32 %46, 1
  store i32 %47, ptr %2, align 4
  %48 = call i32 @brcmf_fil_bsscfg_int_set(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %47) #17
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = call i32 @net_ratelimit() #17
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.wiphy, ptr %55, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.brcmf_cfg80211_reconfigure_wep, i32 noundef %48) #18
  br label %57

57:                                               ; preds = %53, %50, %45, %41, %38, %31, %28, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_config_ap_mgmt_ie(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @brcmf_vif_set_mgmt_ie(ptr noundef %0, i32 noundef 1, ptr noundef %6, i32 noundef %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @net_ratelimit() #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %43, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.113, ptr noundef nonnull @__func__.brcmf_config_ap_mgmt_ie) #18
  br label %43

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 13
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @brcmf_vif_set_mgmt_ie(ptr noundef %0, i32 noundef 2, ptr noundef %20, i32 noundef %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = tail call i32 @net_ratelimit() #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.114, ptr noundef nonnull @__func__.brcmf_config_ap_mgmt_ie) #18
  br label %32

32:                                               ; preds = %28, %25, %18
  %33 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 14
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @brcmf_vif_set_mgmt_ie(ptr noundef %0, i32 noundef 4, ptr noundef %34, i32 noundef %36)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = tail call i32 @net_ratelimit() #17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_config_ap_mgmt_ie, ptr noundef nonnull @.str.115) #17
  br label %43

43:                                               ; preds = %42, %39, %32, %14, %11
  %44 = phi i32 [ %9, %14 ], [ %9, %11 ], [ 0, %32 ], [ %37, %39 ], [ %37, %42 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_net_setcarrier(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_configure_wpaie(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %307, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.brcmf_vs_tlv, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = add nuw nsw i32 %9, 2
  %11 = select i1 %2, i32 4, i32 8
  %12 = add nuw nsw i32 %11, 4
  %13 = icmp ugt i32 %12, %10
  br i1 %13, label %14, label %21

14:                                               ; preds = %6
  %15 = tail call i32 @net_ratelimit() #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %307, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.93, ptr noundef nonnull @__func__.brcmf_configure_wpaie) #18
  br label %307

21:                                               ; preds = %6
  %22 = getelementptr i8, ptr %1, i32 %11
  br i1 %2, label %23, label %25

23:                                               ; preds = %21
  %24 = tail call i32 @memcmp(ptr noundef dereferenceable(3) %22, ptr noundef nonnull dereferenceable(3) @.str.111, i32 noundef 3) #17
  br label %27

25:                                               ; preds = %21
  %26 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %22, ptr noundef nonnull dereferenceable(3) @.str.24, i32 3) #17
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @net_ratelimit() #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %307, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.wiphy, ptr %35, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.94, ptr noundef nonnull @__func__.brcmf_configure_wpaie) #18
  br label %307

37:                                               ; preds = %27
  %38 = or i32 %11, 3
  %39 = getelementptr i8, ptr %1, i32 %38
  %40 = load i8, ptr %39, align 1
  %41 = icmp ult i8 %40, 6
  br i1 %41, label %49, label %42

42:                                               ; preds = %49, %37
  %43 = tail call i32 @net_ratelimit() #17
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %307, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.wiphy, ptr %47, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.95, ptr noundef nonnull @__func__.brcmf_configure_wpaie) #18
  br label %307

49:                                               ; preds = %37
  %50 = lshr i8 55, %40
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %42, label %53

53:                                               ; preds = %49
  %54 = sext i8 %40 to i32
  %55 = getelementptr inbounds [6 x i32], ptr @switch.table.brcmf_configure_wpaie, i32 0, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %1, i32 %12
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = add nuw nsw i32 %11, 5
  %61 = getelementptr i8, ptr %1, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = or i32 %64, %59
  %66 = add nuw nsw i32 %11, 6
  %67 = shl nuw nsw i32 %65, 2
  %68 = add nuw nsw i32 %67, %66
  %69 = icmp ugt i32 %68, %10
  br i1 %69, label %76, label %70

70:                                               ; preds = %53
  %71 = icmp eq i32 %65, 0
  br i1 %71, label %122, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %74 = add nuw nsw i32 %11, %67
  %75 = add nuw nsw i32 %74, 6
  br label %83

76:                                               ; preds = %53
  %77 = tail call i32 @net_ratelimit() #17
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %307, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.wiphy, ptr %81, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__.brcmf_configure_wpaie) #18
  br label %307

83:                                               ; preds = %117, %72
  %84 = phi i32 [ 0, %72 ], [ %120, %117 ]
  %85 = phi i32 [ 0, %72 ], [ %118, %117 ]
  %86 = phi i32 [ %66, %72 ], [ %119, %117 ]
  %87 = getelementptr i8, ptr %1, i32 %86
  br i1 %2, label %88, label %90

88:                                               ; preds = %83
  %89 = tail call i32 @memcmp(ptr noundef dereferenceable(3) %87, ptr noundef nonnull dereferenceable(3) @.str.111, i32 noundef 3) #17
  br label %92

90:                                               ; preds = %83
  %91 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %87, ptr noundef nonnull dereferenceable(3) @.str.24, i32 3) #17
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = tail call i32 @net_ratelimit() #17
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %307, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %73, align 4
  %100 = getelementptr inbounds %struct.wiphy, ptr %99, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.94, ptr noundef nonnull @__func__.brcmf_configure_wpaie) #18
  br label %307

101:                                              ; preds = %92
  %102 = add nuw nsw i32 %86, 3
  %103 = getelementptr i8, ptr %1, i32 %102
  %104 = load i8, ptr %103, align 1
  switch i8 %104, label %111 [
    i8 0, label %117
    i8 1, label %105
    i8 5, label %105
    i8 2, label %107
    i8 4, label %109
  ]

105:                                              ; preds = %101, %101
  %106 = or i32 %85, 1
  br label %117

107:                                              ; preds = %101
  %108 = or i32 %85, 2
  br label %117

109:                                              ; preds = %101
  %110 = or i32 %85, 4
  br label %117

111:                                              ; preds = %101
  %112 = tail call i32 @net_ratelimit() #17
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %73, align 4
  %116 = getelementptr inbounds %struct.wiphy, ptr %115, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.97, ptr noundef nonnull @__func__.brcmf_configure_wpaie) #18
  br label %117

117:                                              ; preds = %114, %111, %109, %107, %105, %101
  %118 = phi i32 [ %85, %114 ], [ %85, %111 ], [ %110, %109 ], [ %108, %107 ], [ %106, %105 ], [ %85, %101 ]
  %119 = add nuw nsw i32 %86, 4
  %120 = add nuw nsw i32 %84, 1
  %121 = icmp eq i32 %120, %65
  br i1 %121, label %122, label %83

122:                                              ; preds = %117, %70
  %123 = phi i32 [ %66, %70 ], [ %75, %117 ]
  %124 = phi i32 [ 0, %70 ], [ %118, %117 ]
  %125 = getelementptr i8, ptr %1, i32 %123
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = or i32 %123, 1
  %129 = getelementptr i8, ptr %1, i32 %128
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = shl nuw nsw i32 %131, 8
  %133 = or i32 %132, %127
  %134 = add i32 %123, 2
  %135 = shl nuw nsw i32 %133, 2
  %136 = add i32 %135, %134
  %137 = icmp ugt i32 %136, %10
  br i1 %137, label %144, label %138

138:                                              ; preds = %122
  %139 = icmp eq i32 %133, 0
  br i1 %139, label %202, label %140

140:                                              ; preds = %138
  %141 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %142 = add i32 %123, %135
  %143 = add i32 %142, 2
  br label %151

144:                                              ; preds = %122
  %145 = tail call i32 @net_ratelimit() #17
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %307, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.wiphy, ptr %149, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.98, ptr noundef nonnull @__func__.brcmf_configure_wpaie) #18
  br label %307

151:                                              ; preds = %197, %140
  %152 = phi i32 [ 0, %140 ], [ %200, %197 ]
  %153 = phi i32 [ %134, %140 ], [ %199, %197 ]
  %154 = phi i32 [ 0, %140 ], [ %198, %197 ]
  %155 = getelementptr i8, ptr %1, i32 %153
  br i1 %2, label %156, label %158

156:                                              ; preds = %151
  %157 = tail call i32 @memcmp(ptr noundef dereferenceable(3) %155, ptr noundef nonnull dereferenceable(3) @.str.111, i32 noundef 3) #17
  br label %160

158:                                              ; preds = %151
  %159 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %155, ptr noundef nonnull dereferenceable(3) @.str.24, i32 3) #17
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i32 [ %157, %156 ], [ %159, %158 ]
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %160
  %164 = tail call i32 @net_ratelimit() #17
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %307, label %166

166:                                              ; preds = %163
  %167 = load ptr, ptr %141, align 4
  %168 = getelementptr inbounds %struct.wiphy, ptr %167, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.94, ptr noundef nonnull @__func__.brcmf_configure_wpaie) #18
  br label %307

169:                                              ; preds = %160
  %170 = add nuw nsw i32 %153, 3
  %171 = getelementptr i8, ptr %1, i32 %170
  %172 = load i8, ptr %171, align 1
  switch i8 %172, label %191 [
    i8 0, label %173
    i8 1, label %175
    i8 2, label %180
    i8 6, label %185
    i8 5, label %187
    i8 8, label %189
  ]

173:                                              ; preds = %169
  %174 = or i32 %154, 1
  br label %197

175:                                              ; preds = %169
  br i1 %2, label %176, label %178

176:                                              ; preds = %175
  %177 = or i32 %154, 64
  br label %197

178:                                              ; preds = %175
  %179 = or i32 %154, 2
  br label %197

180:                                              ; preds = %169
  br i1 %2, label %181, label %183

181:                                              ; preds = %180
  %182 = or i32 %154, 128
  br label %197

183:                                              ; preds = %180
  %184 = or i32 %154, 4
  br label %197

185:                                              ; preds = %169
  %186 = or i32 %154, 32768
  br label %197

187:                                              ; preds = %169
  %188 = or i32 %154, 4096
  br label %197

189:                                              ; preds = %169
  %190 = or i32 %154, 262144
  br label %197

191:                                              ; preds = %169
  %192 = tail call i32 @net_ratelimit() #17
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %191
  %195 = load ptr, ptr %141, align 4
  %196 = getelementptr inbounds %struct.wiphy, ptr %195, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %196, ptr noundef nonnull @.str.99, ptr noundef nonnull @__func__.brcmf_configure_wpaie) #18
  br label %197

197:                                              ; preds = %194, %191, %189, %187, %185, %183, %181, %178, %176, %173
  %198 = phi i32 [ %154, %194 ], [ %154, %191 ], [ %190, %189 ], [ %188, %187 ], [ %186, %185 ], [ %182, %181 ], [ %184, %183 ], [ %177, %176 ], [ %179, %178 ], [ %174, %173 ]
  %199 = add nuw nsw i32 %153, 4
  %200 = add nuw nsw i32 %152, 1
  %201 = icmp eq i32 %200, %133
  br i1 %201, label %202, label %151

202:                                              ; preds = %197, %138
  %203 = phi i32 [ 0, %138 ], [ %198, %197 ]
  %204 = phi i32 [ %134, %138 ], [ %143, %197 ]
  br i1 %2, label %205, label %262

205:                                              ; preds = %202
  %206 = add i32 %204, 2
  %207 = icmp ugt i32 %206, %10
  br i1 %207, label %230, label %208

208:                                              ; preds = %205
  %209 = getelementptr i8, ptr %1, i32 %204
  %210 = load i8, ptr %209, align 1
  %211 = zext i8 %210 to i32
  %212 = and i32 %211, 12
  %213 = icmp eq i32 %212, 0
  %214 = and i32 %211, 64
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %228, label %216

216:                                              ; preds = %208
  %217 = and i32 %203, 299008
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %307, label %219

219:                                              ; preds = %216
  %220 = and i32 %203, 32768
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %219
  %223 = or i32 %203, 128
  br label %230

224:                                              ; preds = %219
  %225 = lshr i32 %203, 6
  %226 = and i32 %225, 64
  %227 = or i32 %226, %203
  br label %230

228:                                              ; preds = %208
  %229 = lshr i32 %211, 7
  br label %230

230:                                              ; preds = %228, %224, %222, %205
  %231 = phi i32 [ %223, %222 ], [ %203, %205 ], [ %227, %224 ], [ %203, %228 ]
  %232 = phi i1 [ %213, %222 ], [ true, %205 ], [ %213, %224 ], [ %213, %228 ]
  %233 = phi i32 [ 2, %222 ], [ 0, %205 ], [ 2, %224 ], [ %229, %228 ]
  %234 = zext i1 %232 to i32
  %235 = tail call i32 @brcmf_fil_bsscfg_int_set(ptr noundef %0, ptr noundef nonnull @.str.100, i32 noundef %234) #17
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %230
  %238 = tail call i32 @net_ratelimit() #17
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %307, label %240

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr inbounds %struct.wiphy, ptr %242, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %243, ptr noundef nonnull @.str.101, ptr noundef nonnull @__func__.brcmf_configure_wpaie, i32 noundef %235) #18
  br label %307

244:                                              ; preds = %230
  %245 = tail call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %0, i32 noundef 11) #17
  %246 = xor i1 %245, true
  %247 = add i32 %204, 8
  %248 = icmp ugt i32 %247, %10
  %249 = select i1 %246, i1 true, i1 %248
  br i1 %249, label %262, label %250

250:                                              ; preds = %244
  %251 = add i32 %204, 4
  %252 = getelementptr i8, ptr %1, i32 %251
  %253 = tail call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %0, ptr noundef nonnull @.str.102, ptr noundef %252, i32 noundef 4) #17
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %250
  %256 = tail call i32 @net_ratelimit() #17
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %307, label %258

258:                                              ; preds = %255
  %259 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.wiphy, ptr %260, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %261, ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__.brcmf_configure_wpaie, i32 noundef %253) #18
  br label %307

262:                                              ; preds = %250, %244, %202
  %263 = phi i32 [ %231, %250 ], [ %231, %244 ], [ %203, %202 ]
  %264 = phi i32 [ %233, %250 ], [ %233, %244 ], [ 0, %202 ]
  %265 = tail call i32 @brcmf_fil_bsscfg_int_set(ptr noundef %0, ptr noundef nonnull @.str.104, i32 noundef 0) #17
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %262
  %268 = tail call i32 @net_ratelimit() #17
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %307, label %270

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.wiphy, ptr %272, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %273, ptr noundef nonnull @.str.105, ptr noundef nonnull @__func__.brcmf_configure_wpaie, i32 noundef %265) #18
  br label %307

274:                                              ; preds = %262
  %275 = or i32 %56, %124
  %276 = tail call i32 @brcmf_fil_bsscfg_int_set(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %275) #17
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %274
  %279 = tail call i32 @net_ratelimit() #17
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %307, label %281

281:                                              ; preds = %278
  %282 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %283 = load ptr, ptr %282, align 4
  %284 = getelementptr inbounds %struct.wiphy, ptr %283, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %284, ptr noundef nonnull @.str.106, ptr noundef nonnull @__func__.brcmf_configure_wpaie, i32 noundef %276) #18
  br label %307

285:                                              ; preds = %274
  %286 = tail call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %0, i32 noundef 11) #17
  br i1 %286, label %287, label %297

287:                                              ; preds = %285
  %288 = tail call i32 @brcmf_fil_bsscfg_int_set(ptr noundef %0, ptr noundef nonnull @.str.107, i32 noundef %264) #17
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %297

290:                                              ; preds = %287
  %291 = tail call i32 @net_ratelimit() #17
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %307, label %293

293:                                              ; preds = %290
  %294 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %295 = load ptr, ptr %294, align 4
  %296 = getelementptr inbounds %struct.wiphy, ptr %295, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %296, ptr noundef nonnull @.str.108, ptr noundef nonnull @__func__.brcmf_configure_wpaie, i32 noundef %288) #18
  br label %307

297:                                              ; preds = %287, %285
  %298 = tail call i32 @brcmf_fil_bsscfg_int_set(ptr noundef %0, ptr noundef nonnull @.str.109, i32 noundef %263) #17
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %307

300:                                              ; preds = %297
  %301 = tail call i32 @net_ratelimit() #17
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %307, label %303

303:                                              ; preds = %300
  %304 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %305 = load ptr, ptr %304, align 4
  %306 = getelementptr inbounds %struct.wiphy, ptr %305, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %306, ptr noundef nonnull @.str.110, ptr noundef nonnull @__func__.brcmf_configure_wpaie, i32 noundef %298) #18
  br label %307

307:                                              ; preds = %303, %300, %297, %293, %290, %281, %278, %270, %267, %258, %255, %240, %237, %216, %166, %163, %147, %144, %98, %95, %79, %76, %45, %42, %33, %30, %17, %14, %3
  %308 = phi i32 [ 0, %3 ], [ -22, %17 ], [ -22, %14 ], [ -22, %45 ], [ -22, %42 ], [ -22, %79 ], [ -22, %76 ], [ -22, %98 ], [ -22, %95 ], [ -22, %147 ], [ -22, %144 ], [ -22, %166 ], [ -22, %163 ], [ %235, %240 ], [ %235, %237 ], [ %253, %258 ], [ %253, %255 ], [ %265, %270 ], [ %265, %267 ], [ %276, %281 ], [ %276, %278 ], [ %288, %293 ], [ %288, %290 ], [ %298, %303 ], [ %298, %300 ], [ %298, %297 ], [ -22, %33 ], [ -22, %30 ], [ -22, %216 ]
  ret i32 %308
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_data_get(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_p2p_scan_prep(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_set_key_mgmt(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 1412
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %6, i32 0, i32 2, i32 3
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %6, i32 0, i32 2, i32 5
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %1, i32 0, i32 11, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %175, label %13

13:                                               ; preds = %2
  %14 = call i32 @brcmf_fil_bsscfg_int_get(ptr noundef %4, ptr noundef nonnull @.str.109, ptr noundef nonnull %3) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = call i32 @net_ratelimit() #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %175, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.151, ptr noundef nonnull @__func__.brcmf_set_key_mgmt, i32 noundef %14) #18
  br label %175

23:                                               ; preds = %13
  %24 = load i32, ptr %3, align 4
  %25 = and i32 %24, 6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %1, i32 0, i32 11, i32 5
  %29 = load i32, ptr %28, align 4
  switch i32 %29, label %36 [
    i32 1027073, label %30
    i32 1027074, label %35
  ]

30:                                               ; preds = %27
  store i32 2, ptr %3, align 4
  %31 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %1, i32 0, i32 31
  %32 = load i8, ptr %31, align 4, !range !10
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %100, label %34

34:                                               ; preds = %30
  store i32 2, ptr %8, align 4
  br label %100

35:                                               ; preds = %27
  store i32 4, ptr %3, align 4
  br label %100

36:                                               ; preds = %27
  %37 = call i32 @net_ratelimit() #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %175, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.wiphy, ptr %41, i32 0, i32 56
  %43 = load i32, ptr %28, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.152, ptr noundef nonnull @__func__.brcmf_set_key_mgmt, i32 noundef %43) #18
  br label %175

44:                                               ; preds = %23
  %45 = and i32 %24, 192
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %76, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %1, i32 0, i32 11, i32 5
  %49 = load i32, ptr %48, align 4
  switch i32 %49, label %68 [
    i32 1027073, label %50
    i32 1027077, label %55
    i32 1027078, label %60
    i32 1027074, label %61
    i32 1027075, label %62
    i32 1027076, label %67
  ]

50:                                               ; preds = %47
  store i32 64, ptr %3, align 4
  %51 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %1, i32 0, i32 31
  %52 = load i8, ptr %51, align 4, !range !10
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %100, label %54

54:                                               ; preds = %50
  store i32 2, ptr %8, align 4
  br label %100

55:                                               ; preds = %47
  store i32 4096, ptr %3, align 4
  %56 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %1, i32 0, i32 31
  %57 = load i8, ptr %56, align 4, !range !10
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %100, label %59

59:                                               ; preds = %55
  store i32 2, ptr %8, align 4
  br label %100

60:                                               ; preds = %47
  store i32 32768, ptr %3, align 4
  br label %100

61:                                               ; preds = %47
  store i32 128, ptr %3, align 4
  br label %100

62:                                               ; preds = %47
  store i32 16448, ptr %3, align 4
  store i8 1, ptr %9, align 2
  %63 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %1, i32 0, i32 31
  %64 = load i8, ptr %63, align 4, !range !10
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %100, label %66

66:                                               ; preds = %62
  store i32 2, ptr %8, align 4
  br label %100

67:                                               ; preds = %47
  store i32 16512, ptr %3, align 4
  store i8 1, ptr %9, align 2
  br label %100

68:                                               ; preds = %47
  %69 = call i32 @net_ratelimit() #17
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %175, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.wiphy, ptr %73, i32 0, i32 56
  %75 = load i32, ptr %48, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.152, ptr noundef nonnull @__func__.brcmf_set_key_mgmt, i32 noundef %75) #18
  br label %175

76:                                               ; preds = %44
  %77 = and i32 %24, 262144
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %100, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %1, i32 0, i32 11, i32 5
  %81 = load i32, ptr %80, align 4
  switch i32 %81, label %92 [
    i32 1027080, label %82
    i32 1027081, label %87
  ]

82:                                               ; preds = %79
  store i32 262144, ptr %3, align 4
  %83 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %1, i32 0, i32 11, i32 14
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %100, label %86

86:                                               ; preds = %82
  store i32 3, ptr %8, align 4
  br label %100

87:                                               ; preds = %79
  store i32 278528, ptr %3, align 4
  store i8 1, ptr %9, align 2
  %88 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %1, i32 0, i32 11, i32 14
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %100, label %91

91:                                               ; preds = %87
  store i32 3, ptr %8, align 4
  br label %100

92:                                               ; preds = %79
  %93 = call i32 @net_ratelimit() #17
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %175, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.wiphy, ptr %97, i32 0, i32 56
  %99 = load i32, ptr %80, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.152, ptr noundef nonnull @__func__.brcmf_set_key_mgmt, i32 noundef %99) #18
  br label %175

100:                                              ; preds = %91, %87, %86, %82, %76, %67, %66, %62, %61, %60, %59, %55, %54, %50, %35, %34, %30
  %101 = call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %4, i32 noundef 11) #17
  br i1 %101, label %102, label %164

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %1, i32 0, i32 8
  %104 = load i32, ptr %103, align 4
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %164

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %1, i32 0, i32 7
  %108 = load ptr, ptr %107, align 4
  br label %109

109:                                              ; preds = %120, %106
  %110 = phi i32 [ %122, %120 ], [ %104, %106 ]
  %111 = phi ptr [ %121, %120 ], [ %108, %106 ]
  %112 = getelementptr inbounds %struct.brcmf_tlv, ptr %111, i32 0, i32 1
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, ptr %111, align 1
  %116 = icmp ne i8 %115, 48
  %117 = add nuw nsw i32 %114, 2
  %118 = icmp ult i32 %110, %117
  %119 = select i1 %116, i1 true, i1 %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %109
  %121 = getelementptr i8, ptr %111, i32 %117
  %122 = sub nsw i32 %110, %117
  %123 = icmp sgt i32 %122, 1
  br i1 %123, label %109, label %164

124:                                              ; preds = %109
  %125 = icmp eq ptr %111, null
  %126 = icmp ult i8 %113, 9
  %127 = select i1 %125, i1 true, i1 %126
  br i1 %127, label %164, label %128

128:                                              ; preds = %124
  %129 = getelementptr i8, ptr %111, i32 8
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = getelementptr i8, ptr %111, i32 9
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i32
  %135 = shl nuw nsw i32 %134, 10
  %136 = shl nuw nsw i32 %131, 2
  %137 = or i32 %135, %136
  %138 = add nuw nsw i32 %137, 12
  %139 = icmp ult i32 %138, %117
  br i1 %139, label %140, label %164

140:                                              ; preds = %128
  %141 = add nuw nsw i32 %137, 10
  %142 = getelementptr i8, ptr %111, i32 %141
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i32
  %145 = add nuw nsw i32 %137, 11
  %146 = getelementptr i8, ptr %111, i32 %145
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = shl nuw nsw i32 %148, 10
  %150 = shl nuw nsw i32 %144, 2
  %151 = add nuw nsw i32 %138, %150
  %152 = add nuw nsw i32 %151, %149
  %153 = or i32 %152, 2
  %154 = icmp ugt i32 %153, %117
  br i1 %154, label %164, label %155

155:                                              ; preds = %140
  %156 = getelementptr i8, ptr %111, i32 %152
  %157 = load i8, ptr %156, align 1
  %158 = zext i8 %157 to i32
  %159 = and i32 %158, 64
  %160 = icmp eq i32 %159, 0
  %161 = lshr i32 %158, 7
  %162 = select i1 %160, i32 %161, i32 2
  %163 = call i32 @brcmf_fil_bsscfg_int_set(ptr noundef %4, ptr noundef nonnull @.str.107, i32 noundef %162) #17
  br label %164

164:                                              ; preds = %155, %140, %128, %124, %120, %102, %100
  %165 = load i32, ptr %3, align 4
  %166 = call i32 @brcmf_fil_bsscfg_int_set(ptr noundef %4, ptr noundef nonnull @.str.109, i32 noundef %165) #17
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %164
  %169 = call i32 @net_ratelimit() #17
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.wiphy, ptr %173, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %174, ptr noundef nonnull @.str.153, ptr noundef nonnull @__func__.brcmf_set_key_mgmt, i32 noundef %166) #18
  br label %175

175:                                              ; preds = %171, %168, %164, %95, %92, %71, %68, %39, %36, %19, %16, %2
  %176 = phi i32 [ 0, %2 ], [ %14, %19 ], [ %14, %16 ], [ -22, %39 ], [ -22, %36 ], [ -22, %71 ], [ -22, %68 ], [ -22, %95 ], [ -22, %92 ], [ %166, %171 ], [ %166, %168 ], [ 0, %164 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %176
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_set_sharedkey(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.brcmf_wsec_key_le, align 4
  %4 = alloca { [32 x i8], [18 x i32], i32, i32, [3 x i32], i32, i32, %struct.anon.122, [2 x i32], [6 x i8] }, align 4
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 1412
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %4)
  %9 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %1, i32 0, i32 13
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %92, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %8, i32 0, i32 2, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %92

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %8, i32 0, i32 2, i32 1, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1027077
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %92, label %22

22:                                               ; preds = %17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(156) %4, i8 0, i32 156, i1 false)
  %23 = zext i8 %10 to i32
  %24 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %1, i32 0, i32 14
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ugt i8 %10, 32
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = tail call i32 @net_ratelimit() #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %92, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.wiphy, ptr %33, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.brcmf_set_sharedkey, i32 noundef %23) #18
  br label %92

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %1, i32 0, i32 12
  %37 = load ptr, ptr %36, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %4, ptr align 1 %37, i32 %23, i1 false)
  switch i32 %19, label %39 [
    i32 1027073, label %48
    i32 1027077, label %38
  ]

38:                                               ; preds = %35
  br label %48

39:                                               ; preds = %35
  %40 = tail call i32 @net_ratelimit() #17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %92, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.wiphy, ptr %44, i32 0, i32 56
  %46 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %1, i32 0, i32 11, i32 3
  %47 = load i32, ptr %46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.154, ptr noundef nonnull @__func__.brcmf_set_sharedkey, i32 noundef %47) #18
  br label %92

48:                                               ; preds = %38, %35
  %49 = phi i32 [ 3, %38 ], [ 1, %35 ]
  %50 = getelementptr inbounds i8, ptr %4, i32 104
  store i32 %49, ptr %50, align 4
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %3) #17
  %51 = getelementptr inbounds i8, ptr %3, i32 40
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(164) %51, i8 0, i32 124, i1 false) #17, !annotation !8
  store i32 %26, ptr %3, align 4
  %52 = getelementptr inbounds %struct.brcmf_wsec_key_le, ptr %3, i32 0, i32 1
  store i32 %23, ptr %52, align 4
  %53 = getelementptr inbounds %struct.brcmf_wsec_key_le, ptr %3, i32 0, i32 4
  store i32 %49, ptr %53, align 4
  %54 = getelementptr inbounds %struct.brcmf_wsec_key_le, ptr %3, i32 0, i32 5
  store i32 2, ptr %54, align 4
  %55 = getelementptr inbounds i8, ptr %4, i32 132
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.brcmf_wsec_key_le, ptr %3, i32 0, i32 9
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds i8, ptr %4, i32 136
  %59 = load i16, ptr %58, align 4
  %60 = getelementptr inbounds %struct.brcmf_wsec_key_le, ptr %3, i32 0, i32 9, i32 1
  store i16 %59, ptr %60, align 4
  %61 = getelementptr inbounds i8, ptr %4, i32 124
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.brcmf_wsec_key_le, ptr %3, i32 0, i32 7
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.brcmf_wsec_key_le, ptr %3, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %64, ptr noundef nonnull align 4 dereferenceable(32) %4, i32 32, i1 false)
  %65 = getelementptr inbounds %struct.brcmf_wsec_key_le, ptr %3, i32 0, i32 11
  %66 = getelementptr inbounds i8, ptr %4, i32 148
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %65, ptr noundef align 4 dereferenceable(6) %66, i32 6, i1 false)
  %67 = tail call i32 @brcmf_netdev_wait_pend8021x(ptr noundef %5) #17
  %68 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %5, ptr noundef nonnull @.str.64, ptr noundef nonnull %3, i32 noundef 164) #17
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %48
  %71 = call i32 @net_ratelimit() #17
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.wiphy, ptr %75, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.send_key_to_dongle, i32 noundef %68) #18
  br label %77

77:                                               ; preds = %73, %70
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %3) #17
  br label %92

78:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %3) #17
  %79 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %8, i32 0, i32 2, i32 1, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = call i32 @brcmf_fil_bsscfg_int_set(ptr noundef %5, ptr noundef nonnull @.str.104, i32 noundef 1) #17
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %82
  %86 = call i32 @net_ratelimit() #17
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.wiphy, ptr %90, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.148, ptr noundef nonnull @__func__.brcmf_set_sharedkey, i32 noundef %83) #18
  br label %92

92:                                               ; preds = %88, %85, %82, %78, %77, %42, %39, %31, %28, %17, %12, %2
  %93 = phi i32 [ 0, %2 ], [ 0, %12 ], [ 0, %17 ], [ -22, %31 ], [ -22, %28 ], [ -22, %42 ], [ -22, %39 ], [ %83, %88 ], [ %83, %85 ], [ 0, %82 ], [ 0, %78 ], [ %68, %77 ]
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %4)
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_set_join_pref(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [2 x %struct.brcmf_join_pref_params], align 8
  %4 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store i64 512, ptr %3, align 8, !annotation !8
  %5 = getelementptr inbounds %struct.brcmf_join_pref_params, ptr %3, i32 0, i32 2
  %6 = load i32, ptr %1, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %0, i32 noundef 205, i32 noundef 0) #17
  %10 = load i32, ptr %1, align 4
  switch i32 %10, label %30 [
    i32 0, label %11
    i32 2, label %12
    i32 3, label %20
  ]

11:                                               ; preds = %8
  tail call void @brcmf_c_set_joinpref_default(ptr noundef %0) #17
  br label %45

12:                                               ; preds = %8, %2
  store i8 3, ptr %3, align 8
  %13 = getelementptr inbounds %struct.cfg80211_bss_selection, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %16 [
    i32 0, label %17
    i32 1, label %15
  ]

15:                                               ; preds = %12
  br label %17

16:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 244, i32 noundef 9, ptr noundef null) #17
  br label %17

17:                                               ; preds = %16, %15, %12
  %18 = phi i8 [ 0, %16 ], [ 1, %15 ], [ 2, %12 ]
  %19 = getelementptr inbounds %struct.brcmf_join_pref_params, ptr %3, i32 0, i32 3
  store i8 %18, ptr %19, align 1
  br label %30

20:                                               ; preds = %8
  store i8 4, ptr %3, align 8
  %21 = getelementptr inbounds %struct.cfg80211_bss_selection, ptr %1, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %24 [
    i32 0, label %25
    i32 1, label %23
  ]

23:                                               ; preds = %20
  br label %25

24:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 244, i32 noundef 9, ptr noundef null) #17
  br label %25

25:                                               ; preds = %24, %23, %20
  %26 = phi i8 [ 0, %24 ], [ 1, %23 ], [ 2, %20 ]
  %27 = getelementptr inbounds %struct.brcmf_join_pref_params, ptr %3, i32 0, i32 3
  store i8 %26, ptr %27, align 1
  %28 = getelementptr inbounds %struct.cfg80211_bss_selection, ptr %1, i32 0, i32 1, i32 0, i32 1
  %29 = load i8, ptr %28, align 4
  store i8 %29, ptr %5, align 2
  br label %30

30:                                               ; preds = %25, %17, %8
  %31 = phi i32 [ 0, %8 ], [ 1, %25 ], [ 1, %17 ]
  %32 = getelementptr [2 x %struct.brcmf_join_pref_params], ptr %3, i32 0, i32 %31
  store i8 1, ptr %32, align 4
  %33 = getelementptr [2 x %struct.brcmf_join_pref_params], ptr %3, i32 0, i32 %31, i32 1
  store i8 2, ptr %33, align 1
  %34 = getelementptr [2 x %struct.brcmf_join_pref_params], ptr %3, i32 0, i32 %31, i32 2
  store i8 0, ptr %34, align 2
  %35 = getelementptr [2 x %struct.brcmf_join_pref_params], ptr %3, i32 0, i32 %31, i32 3
  store i8 0, ptr %35, align 1
  %36 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %0, ptr noundef nonnull @.str.155, ptr noundef nonnull %3, i32 noundef 8) #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %30
  %39 = call i32 @net_ratelimit() #17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.wiphy, ptr %43, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.156, ptr noundef nonnull @__func__.brcmf_set_join_pref, i32 noundef %36) #18
  br label %45

45:                                               ; preds = %41, %38, %30, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_c_set_joinpref_default(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_p2p_cancel_remain_on_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_mgmt_tx_status(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_p2p_send_action_frame(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_pno_start_sched_scan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_pno_stop_sched_scan(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_notify_connect_status(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.cfg80211_connect_resp_params, align 4
  %5 = alloca %struct.cfg80211_inform_bss, align 8
  %6 = alloca %struct.brcmu_chan, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %30 [
    i32 5, label %21
    i32 6, label %21
    i32 12, label %21
    i32 16, label %17
  ]

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 1
  %19 = load i16, ptr %18, align 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17, %3, %3, %3
  %22 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 7
  %25 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.brcmf_proto, ptr %26, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %7, i32 noundef %23, ptr noundef %24) #17
  %29 = load ptr, ptr %12, align 4
  br label %30

30:                                               ; preds = %21, %17, %3
  %31 = phi ptr [ %13, %3 ], [ %29, %21 ], [ %13, %17 ]
  %32 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %31, i32 0, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  switch i32 %33, label %80 [
    i32 9, label %34
    i32 3, label %34
  ]

34:                                               ; preds = %30, %30
  %35 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 10
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %15, align 4
  %38 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %37, 16
  %41 = icmp eq i32 %39, 4
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = tail call ptr @brcmf_get_ifp(ptr noundef %36, i32 noundef 0) #17
  %45 = getelementptr inbounds %struct.brcmf_if, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %11
  br i1 %47, label %283, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 25
  tail call void @complete(ptr noundef %49) #17
  br label %283

50:                                               ; preds = %34
  %51 = and i32 %37, -3
  %52 = icmp eq i32 %51, 8
  %53 = icmp eq i32 %39, 0
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %77

55:                                               ; preds = %50
  %56 = icmp eq ptr %2, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %55
  %58 = tail call i32 @net_ratelimit() #17
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %283, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.brcmf_pub, ptr %36, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.wiphy, ptr %62, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.198, ptr noundef nonnull @__func__.brcmf_notify_connect_status_ap) #18
  br label %283

64:                                               ; preds = %55
  %65 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 208) #19
  %67 = icmp eq ptr %66, null
  br i1 %67, label %283, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.station_info, ptr %66, i32 0, i32 24
  store ptr %2, ptr %69, align 8
  %70 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.station_info, ptr %66, i32 0, i32 25
  store i32 %71, ptr %72, align 4
  %73 = load i32, ptr @brcmf_notify_connect_status_ap.generation, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr @brcmf_notify_connect_status_ap.generation, align 4
  %75 = getelementptr inbounds %struct.station_info, ptr %66, i32 0, i32 23
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 7
  tail call void @cfg80211_new_sta(ptr noundef %11, ptr noundef %76, ptr noundef nonnull %66, i32 noundef 3264) #17
  tail call void @kfree(ptr noundef nonnull %66) #17
  br label %283

77:                                               ; preds = %50
  switch i32 %37, label %283 [
    i32 12, label %78
    i32 6, label %78
    i32 5, label %78
  ]

78:                                               ; preds = %77, %77, %77
  %79 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 7
  tail call void @cfg80211_del_sta_sinfo(ptr noundef %11, ptr noundef %79, ptr noundef null, i32 noundef 3264) #17
  br label %283

80:                                               ; preds = %30
  %81 = load i32, ptr %15, align 4
  %82 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %31, i32 0, i32 2
  %85 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %31, i32 0, i32 2, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %94, label %88

88:                                               ; preds = %80
  %89 = icmp eq i32 %86, 3
  %90 = icmp eq i32 %81, 46
  %91 = select i1 %89, i1 %90, i1 false
  %92 = icmp eq i32 %83, 6
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %104, label %98

94:                                               ; preds = %80
  %95 = icmp eq i32 %81, 46
  %96 = icmp eq i32 %83, 6
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %104, label %98

98:                                               ; preds = %94, %88
  %99 = icmp eq i32 %81, 0
  %100 = icmp eq i32 %83, 0
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %84, ptr noundef align 4 dereferenceable(6) %103, i32 6, i1 false) #17
  switch i32 %86, label %117 [
    i32 1, label %104
    i32 3, label %104
  ]

104:                                              ; preds = %102, %102, %94, %88
  %105 = phi i32 [ 5, %88 ], [ 5, %94 ], [ 6, %102 ], [ 6, %102 ]
  %106 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %31, i32 0, i32 3
  tail call void @_set_bit(i32 noundef %105, ptr noundef %106) #17
  br label %107

107:                                              ; preds = %104, %98
  %108 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %31, i32 0, i32 3
  %109 = load volatile i32, ptr %108, align 4
  %110 = and i32 %109, 32
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %195, label %112

112:                                              ; preds = %107
  %113 = load volatile i32, ptr %108, align 4
  %114 = and i32 %113, 64
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %195, label %116

116:                                              ; preds = %112
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %108) #17
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %108) #17
  br label %117

117:                                              ; preds = %116, %102
  %118 = load ptr, ptr %12, align 4
  %119 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %118, i32 0, i32 1, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %193

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 7
  %124 = load ptr, ptr %9, align 4
  %125 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 10
  %126 = load ptr, ptr %125, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #17, !annotation !8
  %127 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %128 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %127, i32 noundef 3520, i32 noundef 2048) #19
  %129 = icmp eq ptr %128, null
  br i1 %129, label %183, label %130

130:                                              ; preds = %122
  store i32 2048, ptr %128, align 8
  %131 = getelementptr i8, ptr %11, i32 1408
  %132 = tail call i32 @brcmf_fil_cmd_data_get(ptr noundef %131, i32 noundef 136, ptr noundef nonnull %128, i32 noundef 2048) #17
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %130
  %135 = tail call i32 @net_ratelimit() #17
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %183, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.brcmf_pub, ptr %126, i32 0, i32 2
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.wiphy, ptr %139, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.199, ptr noundef nonnull @__func__.brcmf_inform_ibss, i32 noundef %132) #18
  br label %183

141:                                              ; preds = %130
  %142 = getelementptr i8, ptr %128, i32 4
  %143 = getelementptr i8, ptr %128, i32 76
  %144 = load i16, ptr %143, align 4
  store i16 %144, ptr %6, align 4
  %145 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 26, i32 2
  %146 = load ptr, ptr %145, align 4
  call void %146(ptr noundef nonnull %6) #17
  %147 = getelementptr inbounds %struct.brcmu_chan, ptr %6, i32 0, i32 3
  %148 = load i8, ptr %147, align 4
  %149 = icmp eq i8 %148, 0
  %150 = getelementptr inbounds %struct.wiphy, ptr %124, i32 0, i32 53
  %151 = getelementptr %struct.wiphy, ptr %124, i32 0, i32 53, i32 1
  %152 = select i1 %149, ptr %150, ptr %151
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.brcmu_chan, ptr %6, i32 0, i32 2
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  %157 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %153, i32 0, i32 2
  %158 = load i32, ptr %157, align 4
  %159 = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %156, i32 noundef %158) #17
  %160 = udiv i32 %159, 1000
  %161 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 11
  store i32 %160, ptr %161, align 4
  %162 = mul nuw i32 %160, 1000
  %163 = call ptr @ieee80211_get_channel_khz(ptr noundef %124, i32 noundef %162) #17
  %164 = getelementptr i8, ptr %128, i32 20
  %165 = load i16, ptr %164, align 4
  %166 = getelementptr i8, ptr %128, i32 18
  %167 = load i16, ptr %166, align 2
  %168 = getelementptr i8, ptr %128, i32 120
  %169 = load i16, ptr %168, align 8
  %170 = zext i16 %169 to i32
  %171 = getelementptr i8, ptr %142, i32 %170
  %172 = getelementptr i8, ptr %128, i32 124
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr i8, ptr %128, i32 82
  %175 = load i16, ptr %174, align 2
  %176 = sext i16 %175 to i32
  %177 = mul nsw i32 %176, 100
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #17
  %178 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(40) %178, i8 0, i64 40, i1 false) #17
  store ptr %163, ptr %5, align 8
  %179 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %5, i32 0, i32 1
  store i32 0, ptr %179, align 4
  store i32 %177, ptr %178, align 8
  %180 = call ptr @cfg80211_inform_bss_data(ptr noundef %124, ptr noundef nonnull %5, i32 noundef 0, ptr noundef %123, i64 noundef 0, i16 noundef zeroext %165, i16 noundef zeroext %167, ptr noundef %171, i32 noundef %173, i32 noundef 3264) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #17
  %181 = icmp eq ptr %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %141
  call void @cfg80211_put_bss(ptr noundef %124, ptr noundef nonnull %180) #17
  br label %183

183:                                              ; preds = %182, %141, %137, %134, %122
  call void @kfree(ptr noundef %128) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  %184 = load ptr, ptr %9, align 4
  %185 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 11
  %186 = load i32, ptr %185, align 4
  %187 = mul i32 %186, 1000
  %188 = call ptr @ieee80211_get_channel_khz(ptr noundef %184, i32 noundef %187) #17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %14, ptr noundef align 4 dereferenceable(6) %123, i32 6, i1 false)
  call void @cfg80211_ibss_joined(ptr noundef %11, ptr noundef %123, ptr noundef %188, i32 noundef 3264) #17
  %189 = load ptr, ptr %12, align 4
  %190 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %189, i32 0, i32 3
  call void @_clear_bit(i32 noundef 1, ptr noundef %190) #17
  %191 = load ptr, ptr %12, align 4
  %192 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %191, i32 0, i32 3
  call void @_set_bit(i32 noundef 2, ptr noundef %192) #17
  br label %194

193:                                              ; preds = %117
  tail call fastcc void @brcmf_bss_connect_done(ptr noundef %9, ptr noundef %11, i1 noundef zeroext true)
  br label %194

194:                                              ; preds = %193, %183
  call void @brcmf_net_setcarrier(ptr noundef %0, i1 noundef zeroext true) #17
  br label %283

195:                                              ; preds = %112, %107
  %196 = load ptr, ptr %12, align 4
  %197 = load i32, ptr %15, align 4
  switch i32 %197, label %241 [
    i32 12, label %203
    i32 6, label %203
    i32 5, label %203
    i32 16, label %198
  ]

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 1
  %200 = load i16, ptr %199, align 2
  %201 = and i16 %200, 1
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %203, label %241

203:                                              ; preds = %198, %195, %195, %195
  %204 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %196, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %204) #17
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %204) #17
  %205 = load ptr, ptr %12, align 4
  %206 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %205, i32 0, i32 1, i32 1
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %283, label %209

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %205, i32 0, i32 3
  %211 = load volatile i32, ptr %210, align 4
  %212 = and i32 %211, 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %283, label %214

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 7
  %216 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %14, ptr noundef dereferenceable(6) %215, i32 6)
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %283

218:                                              ; preds = %214
  tail call fastcc void @brcmf_bss_connect_done(ptr noundef %9, ptr noundef %11, i1 noundef zeroext false)
  %219 = load ptr, ptr %12, align 4
  %220 = load i32, ptr %15, align 4
  switch i32 %220, label %225 [
    i32 5, label %221
    i32 6, label %221
    i32 12, label %221
  ]

221:                                              ; preds = %218, %218, %218
  %222 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 4
  %223 = load i32, ptr %222, align 4
  %224 = trunc i32 %223 to i16
  br label %225

225:                                              ; preds = %221, %218
  %226 = phi i16 [ %224, %221 ], [ 0, %218 ]
  %227 = and i32 %220, 14
  %228 = icmp eq i32 %227, 0
  tail call fastcc void @brcmf_link_down(ptr noundef %219, i16 noundef zeroext %226, i1 noundef zeroext %228)
  %229 = getelementptr i8, ptr %11, i32 1412
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %230, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(1016) %231, i8 0, i32 1016, i1 false) #17
  %232 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 10
  %233 = load ptr, ptr %232, align 4
  %234 = tail call ptr @brcmf_get_ifp(ptr noundef %233, i32 noundef 0) #17
  %235 = getelementptr inbounds %struct.brcmf_if, ptr %234, i32 0, i32 2
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %11, %236
  br i1 %237, label %240, label %238

238:                                              ; preds = %225
  %239 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 25
  tail call void @complete(ptr noundef %239) #17
  br label %240

240:                                              ; preds = %238, %225
  tail call void @brcmf_net_setcarrier(ptr noundef %0, i1 noundef zeroext false) #17
  br label %283

241:                                              ; preds = %198, %195
  %242 = load i32, ptr %82, align 4
  %243 = icmp eq i32 %197, 16
  %244 = icmp eq i32 %242, 3
  %245 = select i1 %243, i1 %244, i1 false
  br i1 %245, label %254, label %246

246:                                              ; preds = %241
  %247 = icmp eq i32 %197, 0
  %248 = icmp ne i32 %242, 0
  %249 = select i1 %247, i1 %248, i1 false
  br i1 %249, label %254, label %250

250:                                              ; preds = %246
  %251 = icmp eq i32 %197, 46
  %252 = icmp ne i32 %242, 6
  %253 = select i1 %251, i1 %252, i1 false
  br i1 %253, label %254, label %283

254:                                              ; preds = %250, %246, %241
  %255 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %196, i32 0, i32 1, i32 1
  %256 = load i32, ptr %255, align 4
  %257 = icmp eq i32 %256, 1
  br i1 %257, label %258, label %260

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %196, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %259) #17
  br label %283

260:                                              ; preds = %254
  %261 = getelementptr i8, ptr %11, i32 1412
  %262 = load ptr, ptr %261, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #17
  %263 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %262, i32 0, i32 3
  %264 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %263) #17
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %282, label %266

266:                                              ; preds = %260
  %267 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 7
  %268 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %262, i32 0, i32 2
  %269 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %269, i8 0, i32 48, i1 false) #17
  store i32 16, ptr %4, align 4
  %270 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %4, i32 0, i32 1
  store ptr %268, ptr %270, align 4
  %271 = load ptr, ptr %267, align 4
  %272 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %4, i32 0, i32 3
  store ptr %271, ptr %272, align 4
  %273 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 7, i32 1
  %274 = load i32, ptr %273, align 4
  %275 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %4, i32 0, i32 4
  store i32 %274, ptr %275, align 4
  %276 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 7, i32 2
  %277 = load ptr, ptr %276, align 4
  %278 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %4, i32 0, i32 5
  store ptr %277, ptr %278, align 4
  %279 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 7, i32 3
  %280 = load i32, ptr %279, align 4
  %281 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %4, i32 0, i32 6
  store i32 %280, ptr %281, align 4
  call void @cfg80211_connect_done(ptr noundef %11, ptr noundef nonnull %4, i32 noundef 3264) #17
  br label %282

282:                                              ; preds = %266, %260
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #17
  br label %283

283:                                              ; preds = %282, %258, %250, %240, %214, %209, %203, %194, %78, %77, %68, %64, %60, %57, %48, %43
  %284 = phi i32 [ 0, %214 ], [ 0, %194 ], [ 0, %203 ], [ 0, %240 ], [ 0, %209 ], [ 0, %258 ], [ 0, %282 ], [ 0, %250 ], [ 0, %48 ], [ -22, %60 ], [ -22, %57 ], [ -12, %64 ], [ 0, %77 ], [ 0, %78 ], [ 0, %68 ], [ 0, %43 ]
  ret i32 %284
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_notify_roaming_status(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.brcmu_chan, align 4
  %5 = alloca %struct.cfg80211_roam_info, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, 19
  %14 = icmp eq i32 %12, 0
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %87

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %18, i32 0, i32 3
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  br i1 %22, label %86, label %25

25:                                               ; preds = %16
  %26 = getelementptr i8, ptr %24, i32 1408
  %27 = getelementptr i8, ptr %24, i32 1412
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 7
  %31 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #17, !annotation !8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %5) #17
  %32 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %32, i8 0, i32 48, i1 false) #17
  tail call fastcc void @brcmf_get_assoc_ies(ptr noundef %8, ptr noundef %26) #17
  %33 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %29, ptr noundef align 4 dereferenceable(6) %33, i32 6, i1 false) #17
  tail call fastcc void @brcmf_update_bss_info(ptr noundef %8, ptr noundef %26) #17
  %34 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %35 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 2048) #19
  %36 = icmp eq ptr %35, null
  br i1 %36, label %61, label %37

37:                                               ; preds = %25
  store i32 2048, ptr %35, align 8
  %38 = tail call i32 @brcmf_fil_cmd_data_get(ptr noundef %26, i32 noundef 136, ptr noundef nonnull %35, i32 noundef 2048) #17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = getelementptr i8, ptr %35, i32 76
  %42 = load i16, ptr %41, align 4
  store i16 %42, ptr %4, align 4
  %43 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 26, i32 2
  %44 = load ptr, ptr %43, align 4
  call void %44(ptr noundef nonnull %4) #17
  %45 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 3
  %46 = load i8, ptr %45, align 4
  %47 = icmp eq i8 %46, 0
  %48 = getelementptr inbounds %struct.wiphy, ptr %31, i32 0, i32 53
  %49 = getelementptr %struct.wiphy, ptr %31, i32 0, i32 53, i32 1
  %50 = select i1 %47, ptr %48, ptr %49
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 2
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %51, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %54, i32 noundef %56) #17
  %58 = urem i32 %57, 1000
  %59 = sub i32 %57, %58
  %60 = call ptr @ieee80211_get_channel_khz(ptr noundef %31, i32 noundef %59) #17
  br label %61

61:                                               ; preds = %40, %37, %25
  %62 = phi ptr [ null, %37 ], [ %60, %40 ], [ null, %25 ]
  call void @kfree(ptr noundef %35) #17
  store ptr %62, ptr %5, align 4
  %63 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %5, i32 0, i32 2
  store ptr %29, ptr %63, align 4
  %64 = load ptr, ptr %30, align 4
  %65 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %5, i32 0, i32 3
  store ptr %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 7, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %5, i32 0, i32 4
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 7, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %5, i32 0, i32 5
  store ptr %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 7, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %5, i32 0, i32 6
  store i32 %73, ptr %74, align 4
  call void @cfg80211_roamed(ptr noundef %24, ptr noundef nonnull %5, i32 noundef 3264) #17
  %75 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %28, i32 0, i32 2, i32 3
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %83

78:                                               ; preds = %61
  %79 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %28, i32 0, i32 2, i32 5
  %80 = load i8, ptr %79, align 2, !range !10
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  call void @cfg80211_port_authorized(ptr noundef %24, ptr noundef %29, i32 noundef 3264) #17
  br label %83

83:                                               ; preds = %82, %78, %61
  %84 = load ptr, ptr %27, align 4
  %85 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %84, i32 0, i32 3
  call void @_set_bit(i32 noundef 2, ptr noundef %85) #17
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  br label %87

86:                                               ; preds = %16
  tail call fastcc void @brcmf_bss_connect_done(ptr noundef %8, ptr noundef %24, i1 noundef zeroext true)
  tail call void @brcmf_net_setcarrier(ptr noundef %0, i1 noundef zeroext true) #17
  br label %87

87:                                               ; preds = %86, %83, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_notify_mic_status(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 1
  %5 = load i16, ptr %4, align 2
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = xor i16 %7, 1
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 7
  tail call void @cfg80211_michael_mic_failure(ptr noundef %11, ptr noundef %12, i32 noundef %9, i32 noundef -1, ptr noundef null, i32 noundef 3264) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_notify_vif_event(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 24
  %8 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 24, i32 1
  tail call void @_raw_spin_lock(ptr noundef %8) #17
  %9 = getelementptr inbounds %struct.brcmf_if_event, ptr %2, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 24, i32 2
  store i8 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 24, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %9, align 1
  switch i8 %14, label %49 [
    i8 1, label %15
    i8 2, label %38
    i8 3, label %46
  ]

15:                                               ; preds = %3
  %16 = icmp eq ptr %13, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %18 = load i16, ptr %8, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br label %52

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 1
  store ptr %13, ptr %21, align 4
  store ptr %0, ptr %13, align 4
  %22 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %13, i32 0, i32 1
  %27 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %13, i32 0, i32 1, i32 3
  store ptr %23, ptr %27, align 4
  %28 = load ptr, ptr %22, align 4
  %29 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 70
  store ptr %26, ptr %29, align 8
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %22, align 4
  %34 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 111, i32 1
  store ptr %32, ptr %34, align 4
  br label %35

35:                                               ; preds = %25, %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %36 = load i16, ptr %8, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  tail call void @__wake_up(ptr noundef %7, i32 noundef 3, i32 noundef 1, ptr noundef null) #17
  br label %52

38:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %39 = load i16, ptr %8, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  tail call void @_raw_spin_lock(ptr noundef %8) #17
  %41 = load ptr, ptr %12, align 4
  %42 = icmp eq ptr %41, null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %43 = load i16, ptr %8, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br i1 %42, label %52, label %45

45:                                               ; preds = %38
  tail call void @__wake_up(ptr noundef %7, i32 noundef 3, i32 noundef 1, ptr noundef null) #17
  br label %52

46:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %47 = load i16, ptr %8, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  tail call void @__wake_up(ptr noundef %7, i32 noundef 3, i32 noundef 1, ptr noundef null) #17
  br label %52

49:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %50 = load i16, ptr %8, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br label %52

52:                                               ; preds = %49, %46, %45, %38, %35, %17
  %53 = phi i32 [ -22, %49 ], [ 0, %46 ], [ 0, %35 ], [ -9, %17 ], [ 0, %45 ], [ 0, %38 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_p2p_notify_rx_mgmt_p2p_probereq(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_p2p_notify_listen_complete(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_p2p_notify_action_frame_rx(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_p2p_notify_action_tx_complete(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_notify_rssi(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 12
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = tail call i32 @net_ratelimit() #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %7
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_notify_rssi, ptr noundef nonnull @.str.212) #17
  br label %32

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %2, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %13, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %13, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %13, i32 0, i32 11
  store i32 %15, ptr %20, align 4
  %21 = icmp sle i32 %15, %17
  %22 = icmp eq i32 %14, 0
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void @cfg80211_cqm_rssi_notify(ptr noundef %26, i32 noundef 0, i32 noundef %15, i32 noundef 3264) #17
  br label %32

27:                                               ; preds = %11
  %28 = icmp sgt i32 %15, %19
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  tail call void @cfg80211_cqm_rssi_notify(ptr noundef %31, i32 noundef 1, i32 noundef %15, i32 noundef 3264) #17
  br label %32

32:                                               ; preds = %29, %27, %24, %10, %7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ibss_joined(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_bss_connect_done(ptr nocapture noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.cfg80211_connect_resp_params, align 4
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = getelementptr i8, ptr %1, i32 1412
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #17
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %7, i32 0, i32 3
  %11 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %10) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %14, i8 0, i32 48, i1 false)
  br i1 %2, label %15, label %18

15:                                               ; preds = %13
  tail call fastcc void @brcmf_get_assoc_ies(ptr noundef %0, ptr noundef %5)
  tail call fastcc void @brcmf_update_bss_info(ptr noundef %0, ptr noundef %5)
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %16, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 2, ptr noundef %17) #17
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi i32 [ 0, %15 ], [ 16, %13 ]
  store i32 %19, ptr %4, align 4
  %20 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %4, i32 0, i32 1
  store ptr %8, ptr %20, align 4
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %4, i32 0, i32 3
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 7, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %4, i32 0, i32 4
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 7, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %4, i32 0, i32 5
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 7, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %4, i32 0, i32 6
  store i32 %30, ptr %31, align 4
  call void @cfg80211_connect_done(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 3264) #17
  br label %32

32:                                               ; preds = %18, %3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_new_sta(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_del_sta_sinfo(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_get_assoc_ies(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x %struct.brcmf_cfg80211_edcf_acparam], align 2
  %4 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #17
  store ptr null, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 7, i32 1
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 7, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %10) #17
  store ptr null, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 7, i32 3
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 18
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @brcmf_fil_iovar_data_get(ptr noundef %1, ptr noundef nonnull @.str.200, ptr noundef %13, i32 noundef 512) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = tail call i32 @net_ratelimit() #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %164, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.201, ptr noundef nonnull @__func__.brcmf_get_assoc_ies, i32 noundef %14) #18
  br label %164

23:                                               ; preds = %2
  %24 = load ptr, ptr %12, align 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.brcmf_cfg80211_assoc_ielen_le, ptr %24, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %23
  %30 = tail call i32 @brcmf_fil_iovar_data_get(ptr noundef %1, ptr noundef nonnull @.str.202, ptr noundef %24, i32 noundef 512) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @net_ratelimit() #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %164, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.wiphy, ptr %37, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.203, ptr noundef nonnull @__func__.brcmf_get_assoc_ies, i32 noundef %30) #18
  br label %164

39:                                               ; preds = %29
  store i32 %25, ptr %8, align 4
  %40 = load ptr, ptr %12, align 4
  %41 = tail call ptr @kmemdup(ptr noundef %40, i32 noundef %25, i32 noundef 3264) #17
  store ptr %41, ptr %6, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  store i32 0, ptr %8, align 4
  br label %45

44:                                               ; preds = %23
  store i32 0, ptr %8, align 4
  store ptr null, ptr %6, align 4
  br label %45

45:                                               ; preds = %44, %43, %39
  %46 = icmp eq i32 %27, 0
  br i1 %46, label %163, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %12, align 4
  %49 = tail call i32 @brcmf_fil_iovar_data_get(ptr noundef %1, ptr noundef nonnull @.str.204, ptr noundef %48, i32 noundef 512) #17
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = tail call i32 @net_ratelimit() #17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %164, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.wiphy, ptr %56, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.205, ptr noundef nonnull @__func__.brcmf_get_assoc_ies, i32 noundef %49) #18
  br label %164

58:                                               ; preds = %47
  store i32 %27, ptr %11, align 4
  %59 = load ptr, ptr %12, align 4
  %60 = tail call ptr @kmemdup(ptr noundef %59, i32 noundef %27, i32 noundef 3264) #17
  store ptr %60, ptr %9, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, ptr %11, align 4
  br label %63

63:                                               ; preds = %62, %58
  %64 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %1, ptr noundef nonnull @.str.206, ptr noundef nonnull %3, i32 noundef 16) #17
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = call i32 @net_ratelimit() #17
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %164, label %69

69:                                               ; preds = %66
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_get_assoc_ies, ptr noundef nonnull @.str.207, i32 noundef %64) #17
  br label %164

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 30
  %72 = load i8, ptr %3, align 2
  %73 = and i8 %72, 15
  %74 = getelementptr inbounds %struct.brcmf_cfg80211_edcf_acparam, ptr %3, i32 0, i32 1
  %75 = load i8, ptr %74, align 1
  %76 = and i8 %75, 15
  %77 = lshr i8 %75, 4
  %78 = add nuw nsw i8 %76, %73
  %79 = add nuw nsw i8 %78, %77
  %80 = getelementptr inbounds %struct.brcmf_cfg80211_edcf_acparam, ptr %3, i32 1
  %81 = load i8, ptr %80, align 2
  %82 = and i8 %81, 15
  %83 = getelementptr inbounds %struct.brcmf_cfg80211_edcf_acparam, ptr %3, i32 1, i32 1
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %84, 15
  %86 = lshr i8 %84, 4
  %87 = add nuw nsw i8 %85, %82
  %88 = add nuw nsw i8 %87, %86
  %89 = getelementptr inbounds %struct.brcmf_cfg80211_edcf_acparam, ptr %3, i32 2
  %90 = load i8, ptr %89, align 2
  %91 = and i8 %90, 15
  %92 = getelementptr inbounds %struct.brcmf_cfg80211_edcf_acparam, ptr %3, i32 2, i32 1
  %93 = load i8, ptr %92, align 1
  %94 = and i8 %93, 15
  %95 = lshr i8 %93, 4
  %96 = add nuw nsw i8 %94, %91
  %97 = add nuw nsw i8 %96, %95
  %98 = and i8 %90, 16
  %99 = icmp eq i8 %98, 0
  %100 = select i1 %99, i8 %97, i8 %79
  %101 = getelementptr inbounds %struct.brcmf_cfg80211_edcf_acparam, ptr %3, i32 3
  %102 = load i8, ptr %101, align 2
  %103 = and i8 %102, 15
  %104 = getelementptr inbounds %struct.brcmf_cfg80211_edcf_acparam, ptr %3, i32 3, i32 1
  %105 = load i8, ptr %104, align 1
  %106 = and i8 %105, 15
  %107 = lshr i8 %105, 4
  %108 = add nuw nsw i8 %106, %103
  %109 = add nuw nsw i8 %108, %107
  %110 = and i8 %102, 16
  %111 = icmp eq i8 %110, 0
  %112 = select i1 %111, i8 %109, i8 %79
  %113 = icmp ult i8 %79, %88
  %114 = zext i1 %113 to i8
  %115 = icmp ult i8 %79, %100
  %116 = select i1 %113, i8 2, i8 1
  %117 = select i1 %115, i8 %116, i8 %114
  %118 = icmp ult i8 %79, %112
  %119 = zext i1 %118 to i8
  %120 = add nuw nsw i8 %117, %119
  %121 = icmp ult i8 %88, %79
  %122 = zext i1 %121 to i8
  %123 = icmp ult i8 %88, %100
  %124 = select i1 %121, i8 2, i8 1
  %125 = select i1 %123, i8 %124, i8 %122
  %126 = icmp ult i8 %88, %112
  %127 = zext i1 %126 to i8
  %128 = add nuw nsw i8 %125, %127
  %129 = icmp ult i8 %100, %79
  %130 = zext i1 %129 to i8
  %131 = icmp ult i8 %100, %88
  %132 = select i1 %129, i8 2, i8 1
  %133 = select i1 %131, i8 %132, i8 %130
  %134 = icmp ult i8 %100, %112
  %135 = zext i1 %134 to i8
  %136 = add nuw nsw i8 %133, %135
  %137 = icmp ult i8 %112, %79
  %138 = zext i1 %137 to i8
  %139 = icmp ult i8 %112, %88
  %140 = select i1 %137, i8 2, i8 1
  %141 = select i1 %139, i8 %140, i8 %138
  %142 = icmp ult i8 %112, %100
  %143 = zext i1 %142 to i8
  %144 = add nuw nsw i8 %141, %143
  %145 = icmp eq i8 %120, %128
  br i1 %145, label %146, label %151

146:                                              ; preds = %70
  %147 = icmp eq i8 %120, %136
  %148 = icmp eq i8 %136, %144
  %149 = select i1 %147, i1 %148, i1 false
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  br label %151

151:                                              ; preds = %150, %146, %70
  %152 = phi i8 [ 1, %150 ], [ %120, %146 ], [ %120, %70 ]
  %153 = phi i8 [ 0, %150 ], [ %120, %146 ], [ %128, %70 ]
  %154 = phi i8 [ 2, %150 ], [ %136, %146 ], [ %136, %70 ]
  %155 = phi i8 [ 3, %150 ], [ %144, %146 ], [ %144, %70 ]
  store i8 %152, ptr %71, align 1
  %156 = getelementptr %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 30, i32 3
  store i8 %152, ptr %156, align 1
  %157 = getelementptr %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 30, i32 1
  store i8 %153, ptr %157, align 1
  %158 = getelementptr %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 30, i32 2
  store i8 %153, ptr %158, align 1
  %159 = getelementptr %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 30, i32 4
  store i8 %154, ptr %159, align 1
  %160 = getelementptr %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 30, i32 5
  store i8 %154, ptr %160, align 1
  %161 = getelementptr %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 30, i32 6
  store i8 %155, ptr %161, align 1
  %162 = getelementptr %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 30, i32 7
  store i8 %155, ptr %162, align 1
  br label %164

163:                                              ; preds = %45
  store i32 0, ptr %11, align 4
  store ptr null, ptr %9, align 4
  br label %164

164:                                              ; preds = %163, %151, %69, %66, %54, %51, %35, %32, %19, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_update_bss_info(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_if, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %7, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %66, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 18
  %13 = load ptr, ptr %12, align 4
  store i32 2048, ptr %13, align 4
  %14 = load ptr, ptr %12, align 4
  %15 = tail call i32 @brcmf_fil_cmd_data_get(ptr noundef %1, i32 noundef 136, ptr noundef %14, i32 noundef 2048) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = tail call i32 @net_ratelimit() #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %66, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.208, ptr noundef nonnull @__func__.brcmf_update_bss_info, i32 noundef %15) #18
  br label %66

24:                                               ; preds = %11
  %25 = load ptr, ptr %12, align 4
  %26 = getelementptr i8, ptr %25, i32 4
  %27 = tail call fastcc i32 @brcmf_inform_single_bss(ptr noundef %0, ptr noundef %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %25, i32 124
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %25, i32 120
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = getelementptr i8, ptr %26, i32 %36
  br label %38

38:                                               ; preds = %49, %33
  %39 = phi i32 [ %51, %49 ], [ %31, %33 ]
  %40 = phi ptr [ %50, %49 ], [ %37, %33 ]
  %41 = getelementptr inbounds %struct.brcmf_tlv, ptr %40, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, ptr %40, align 1
  %45 = icmp ne i8 %44, 5
  %46 = add nuw nsw i32 %43, 2
  %47 = icmp ult i32 %39, %46
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = getelementptr i8, ptr %40, i32 %46
  %51 = sub nsw i32 %39, %46
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %38, label %55

53:                                               ; preds = %38
  %54 = icmp eq ptr %40, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %53, %49, %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !annotation !8
  %56 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %1, ptr noundef nonnull @.str.209, ptr noundef nonnull %3) #17
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = call i32 @net_ratelimit() #17
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.wiphy, ptr %63, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.210, ptr noundef nonnull @__func__.brcmf_update_bss_info, i32 noundef %56) #18
  br label %65

65:                                               ; preds = %61, %58, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  br label %66

66:                                               ; preds = %65, %53, %24, %20, %17, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_connect_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_inform_single_bss(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.brcmu_chan, align 4
  %4 = alloca %struct.cfg80211_inform_bss, align 8
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #17
  %8 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i32 40, i1 false)
  %9 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 2048
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = tail call i32 @net_ratelimit() #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %61, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.211, ptr noundef nonnull @__func__.brcmf_inform_single_bss) #18
  br label %61

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 15
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 8
  %25 = load i16, ptr %24, align 4
  store i16 %25, ptr %3, align 4
  %26 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 26, i32 2
  %27 = load ptr, ptr %26, align 4
  call void %27(ptr noundef nonnull %3) #17
  %28 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 2
  %29 = load i8, ptr %28, align 1
  store i8 %29, ptr %20, align 4
  br label %30

30:                                               ; preds = %23, %19
  %31 = phi i8 [ %29, %23 ], [ %21, %19 ]
  %32 = zext i8 %31 to i32
  %33 = icmp ugt i8 %31, 14
  %34 = zext i1 %33 to i32
  %35 = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %32, i32 noundef %34) #17
  %36 = urem i32 %35, 1000
  %37 = sub i32 %35, %36
  %38 = call ptr @ieee80211_get_channel_khz(ptr noundef %5, i32 noundef %37) #17
  store ptr %38, ptr %4, align 8
  %39 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %4, i32 0, i32 1
  store i32 0, ptr %39, align 4
  %40 = call i64 @ktime_get_with_offset(i32 noundef 1) #17
  %41 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %4, i32 0, i32 3
  store i64 %40, ptr %41, align 8
  %42 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 4
  %43 = load i16, ptr %42, align 4
  %44 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 3
  %45 = load i16, ptr %44, align 2
  %46 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 20
  %47 = load i16, ptr %46, align 4
  %48 = zext i16 %47 to i32
  %49 = getelementptr i8, ptr %1, i32 %48
  %50 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 21
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 11
  %53 = load i16, ptr %52, align 2
  %54 = sext i16 %53 to i32
  %55 = mul nsw i32 %54, 100
  %56 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %4, i32 0, i32 2
  store i32 %55, ptr %56, align 8
  %57 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 2
  %58 = call ptr @cfg80211_inform_bss_data(ptr noundef %5, ptr noundef nonnull %4, i32 noundef 0, ptr noundef %57, i64 noundef 0, i16 noundef zeroext %43, i16 noundef zeroext %45, ptr noundef %49, i32 noundef %51, i32 noundef 3264) #17
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %30
  call void @cfg80211_put_bss(ptr noundef %5, ptr noundef nonnull %58) #17
  br label %61

61:                                               ; preds = %60, %30, %15, %12
  %62 = phi i32 [ 0, %60 ], [ -22, %15 ], [ -22, %12 ], [ -12, %30 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_roamed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_port_authorized(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_michael_mic_failure(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_cqm_rssi_notify(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_escan_handler(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %216, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 9
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = tail call i32 @net_ratelimit() #17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %216, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.wiphy, ptr %20, i32 0, i32 56
  %22 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.213, ptr noundef nonnull @__func__.brcmf_cfg80211_escan_handler, i32 noundef %23) #18
  br label %216

24:                                               ; preds = %10
  %25 = icmp eq i32 %8, 8
  br i1 %25, label %26, label %162

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %28, 140
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = tail call i32 @net_ratelimit() #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %216, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.wiphy, ptr %35, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.214, ptr noundef nonnull @__func__.brcmf_cfg80211_escan_handler) #18
  br label %216

37:                                               ; preds = %26
  %38 = icmp eq ptr %2, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %37
  %40 = tail call i32 @net_ratelimit() #17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %216, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.wiphy, ptr %44, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.215, ptr noundef nonnull @__func__.brcmf_cfg80211_escan_handler) #18
  br label %216

46:                                               ; preds = %37
  %47 = load i32, ptr %2, align 4
  %48 = icmp ugt i32 %47, 65000
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = icmp ugt i32 %47, %28
  %51 = icmp ult i32 %47, 140
  %52 = or i1 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49, %46
  %54 = tail call i32 @net_ratelimit() #17
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %216, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.wiphy, ptr %58, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.216, ptr noundef nonnull @__func__.brcmf_cfg80211_escan_handler, i32 noundef %47) #18
  br label %216

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.brcmf_escan_result_le, ptr %2, i32 0, i32 3
  %62 = load i16, ptr %61, align 2
  %63 = icmp eq i16 %62, 1
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = tail call i32 @net_ratelimit() #17
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %216, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.wiphy, ptr %69, i32 0, i32 56
  %71 = load i16, ptr %61, align 2
  %72 = zext i16 %71 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.217, ptr noundef nonnull @__func__.brcmf_cfg80211_escan_handler, i32 noundef %72) #18
  br label %216

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.brcmf_escan_result_le, ptr %2, i32 0, i32 4
  %75 = tail call zeroext i1 @brcmf_p2p_scan_finding_common_channel(ptr noundef %6, ptr noundef %74) #17
  br i1 %75, label %216, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 12
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %216, label %84

84:                                               ; preds = %80, %76
  %85 = getelementptr inbounds %struct.brcmf_escan_result_le, ptr %2, i32 0, i32 4, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = add nsw i32 %47, -12
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %96, label %89

89:                                               ; preds = %84
  %90 = tail call i32 @net_ratelimit() #17
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %216, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.wiphy, ptr %94, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.218, ptr noundef nonnull @__func__.brcmf_cfg80211_escan_handler, i32 noundef %86) #18
  br label %216

96:                                               ; preds = %84
  %97 = load ptr, ptr %6, align 4
  %98 = getelementptr inbounds %struct.wiphy, ptr %97, i32 0, i32 9
  %99 = load i16, ptr %98, align 4
  %100 = and i16 %99, 2
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.brcmf_escan_result_le, ptr %2, i32 0, i32 4, i32 4
  %104 = load i16, ptr %103, align 4
  %105 = and i16 %104, 2
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %102
  %108 = tail call i32 @net_ratelimit() #17
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %216, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.wiphy, ptr %112, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.219, ptr noundef nonnull @__func__.brcmf_cfg80211_escan_handler) #18
  br label %216

114:                                              ; preds = %102, %96
  %115 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 20, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = load i32, ptr %116, align 4
  %118 = sub i32 65000, %117
  %119 = icmp ugt i32 %86, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.brcmf_scan_results, ptr %116, i32 0, i32 2
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %152, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.brcmf_scan_results, ptr %116, i32 0, i32 3
  br label %137

126:                                              ; preds = %114
  %127 = tail call i32 @net_ratelimit() #17
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %216, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.wiphy, ptr %131, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.220, ptr noundef nonnull @__func__.brcmf_cfg80211_escan_handler) #18
  br label %216

133:                                              ; preds = %145
  %134 = add nuw i32 %138, 1
  %135 = load i32, ptr %121, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %133, %124
  %138 = phi i32 [ 0, %124 ], [ %134, %133 ]
  %139 = phi ptr [ null, %124 ], [ %146, %133 ]
  %140 = icmp eq ptr %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %139, i32 0, i32 1
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr i8, ptr %139, i32 %143
  br label %145

145:                                              ; preds = %141, %137
  %146 = phi ptr [ %144, %141 ], [ %125, %137 ]
  %147 = tail call fastcc i32 @brcmf_compare_update_same_bss(ptr noundef %6, ptr noundef %146, ptr noundef %74)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %133, label %216

149:                                              ; preds = %133
  %150 = load ptr, ptr %115, align 4
  %151 = load i32, ptr %116, align 4
  br label %152

152:                                              ; preds = %149, %120
  %153 = phi i32 [ %151, %149 ], [ %117, %120 ]
  %154 = phi ptr [ %150, %149 ], [ %116, %120 ]
  %155 = getelementptr i8, ptr %154, i32 %153
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %155, ptr align 4 %74, i32 %86, i1 false)
  %156 = load i32, ptr %74, align 4
  %157 = getelementptr inbounds %struct.brcmf_scan_results, ptr %116, i32 0, i32 1
  store i32 %156, ptr %157, align 4
  %158 = load i32, ptr %116, align 4
  %159 = add i32 %158, %86
  store i32 %159, ptr %116, align 4
  %160 = load i32, ptr %121, align 4
  %161 = add i32 %160, 1
  store i32 %161, ptr %121, align 4
  br label %216

162:                                              ; preds = %24
  %163 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 20
  store i32 0, ptr %163, align 4
  %164 = tail call zeroext i1 @brcmf_p2p_scan_finding_common_channel(ptr noundef %6, ptr noundef null) #17
  br i1 %164, label %216, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 12
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 4
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %216, label %173

173:                                              ; preds = %169, %165
  %174 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 10
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 20, i32 1
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr inbounds %struct.brcmf_scan_results, ptr %177, i32 0, i32 2
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %213, label %181

181:                                              ; preds = %173
  %182 = getelementptr inbounds %struct.brcmf_scan_results, ptr %177, i32 0, i32 1
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 109
  br i1 %184, label %193, label %185

185:                                              ; preds = %181
  %186 = tail call i32 @net_ratelimit() #17
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %213, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.brcmf_pub, ptr %175, i32 0, i32 2
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.wiphy, ptr %190, i32 0, i32 56
  %192 = load i32, ptr %182, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %191, ptr noundef nonnull @.str.221, ptr noundef nonnull @__func__.brcmf_inform_bss, i32 noundef %192) #18
  br label %213

193:                                              ; preds = %181
  %194 = getelementptr inbounds %struct.brcmf_scan_results, ptr %177, i32 0, i32 3
  br label %199

195:                                              ; preds = %209
  %196 = add nuw i32 %200, 1
  %197 = load i32, ptr %178, align 4
  %198 = icmp ult i32 %196, %197
  br i1 %198, label %199, label %213

199:                                              ; preds = %195, %193
  %200 = phi i32 [ 0, %193 ], [ %196, %195 ]
  %201 = phi ptr [ null, %193 ], [ %210, %195 ]
  %202 = icmp eq ptr %201, null
  br i1 %202, label %209, label %203

203:                                              ; preds = %199
  %204 = ptrtoint ptr %201 to i32
  %205 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %201, i32 0, i32 1
  %206 = load i32, ptr %205, align 4
  %207 = add i32 %206, %204
  %208 = inttoptr i32 %207 to ptr
  br label %209

209:                                              ; preds = %203, %199
  %210 = phi ptr [ %208, %203 ], [ %194, %199 ]
  %211 = tail call fastcc i32 @brcmf_inform_single_bss(ptr noundef %6, ptr noundef %210) #17
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %195, label %213

213:                                              ; preds = %209, %195, %188, %185, %173
  %214 = icmp ne i32 %8, 0
  %215 = tail call i32 @brcmf_notify_escan_complete(ptr noundef %6, ptr noundef %0, i1 noundef zeroext %214, i1 noundef zeroext false)
  br label %216

216:                                              ; preds = %213, %169, %162, %152, %145, %129, %126, %110, %107, %92, %89, %80, %73, %67, %64, %56, %53, %42, %39, %33, %30, %18, %15, %3
  %217 = phi i32 [ -1, %18 ], [ -1, %15 ], [ 0, %169 ], [ 0, %80 ], [ 0, %152 ], [ 0, %213 ], [ 0, %162 ], [ 0, %126 ], [ 0, %129 ], [ 0, %107 ], [ 0, %110 ], [ 0, %89 ], [ 0, %92 ], [ 0, %73 ], [ 0, %64 ], [ 0, %67 ], [ 0, %53 ], [ 0, %56 ], [ 0, %39 ], [ 0, %42 ], [ 0, %30 ], [ 0, %33 ], [ 0, %3 ], [ 0, %145 ]
  ret i32 %217
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_escan_timeout(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -40
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -452
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7, %1
  %12 = tail call i32 @net_ratelimit() #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.222, ptr noundef nonnull @__func__.brcmf_escan_timeout) #18
  br label %18

18:                                               ; preds = %14, %11
  %19 = getelementptr i8, ptr %0, i32 20
  %20 = load ptr, ptr @system_wq, align 4
  %21 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %20, ptr noundef %19) #17
  br label %22

22:                                               ; preds = %18, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_cfg80211_escan_timeout_worker(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -728
  %3 = getelementptr i8, ptr %0, i32 -68
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -36
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_scan_results, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.brcmf_scan_results, ptr %6, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 109
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @net_ratelimit() #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 56
  %21 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.221, ptr noundef nonnull @__func__.brcmf_inform_bss, i32 noundef %21) #18
  br label %42

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.brcmf_scan_results, ptr %6, i32 0, i32 3
  br label %28

24:                                               ; preds = %38
  %25 = add nuw i32 %29, 1
  %26 = load i32, ptr %7, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24, %22
  %29 = phi i32 [ 0, %22 ], [ %25, %24 ]
  %30 = phi ptr [ null, %22 ], [ %39, %24 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = ptrtoint ptr %30 to i32
  %34 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %30, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %33
  %37 = inttoptr i32 %36 to ptr
  br label %38

38:                                               ; preds = %32, %28
  %39 = phi ptr [ %37, %32 ], [ %23, %28 ]
  %40 = tail call fastcc i32 @brcmf_inform_single_bss(ptr noundef %2, ptr noundef %39) #17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %24, label %42

42:                                               ; preds = %38, %24, %17, %14, %1
  %43 = getelementptr i8, ptr %0, i32 -28
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @brcmf_notify_escan_complete(ptr noundef %2, ptr noundef %44, i1 noundef zeroext true, i1 noundef zeroext true)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_p2p_scan_finding_common_channel(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_compare_update_same_bss(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.brcmu_chan, align 4
  %5 = alloca %struct.brcmu_chan, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 8
  %7 = load i16, ptr %6, align 4
  store i16 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 26, i32 2
  %9 = load ptr, ptr %8, align 4
  call void %9(ptr noundef nonnull %4) #17
  %10 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %2, i32 0, i32 8
  %11 = load i16, ptr %10, align 4
  store i16 %11, ptr %5, align 4
  %12 = load ptr, ptr %8, align 4
  call void %12(ptr noundef nonnull %5) #17
  %13 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %2, i32 0, i32 2
  %14 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 2
  %15 = call i32 @bcmp(ptr noundef dereferenceable(6) %13, ptr noundef dereferenceable(6) %14, i32 6)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 3
  %19 = load i8, ptr %18, align 4
  %20 = getelementptr inbounds %struct.brcmu_chan, ptr %5, i32 0, i32 3
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %19, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %2, i32 0, i32 5
  %25 = load i8, ptr %24, align 2
  %26 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 5
  %27 = load i8, ptr %26, align 2
  %28 = icmp eq i8 %25, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %23
  %30 = zext i8 %25 to i32
  %31 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %2, i32 0, i32 6
  %32 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 6
  %33 = call i32 @bcmp(ptr %31, ptr %32, i32 %30)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 17
  %37 = load i8, ptr %36, align 4
  %38 = and i8 %37, 4
  %39 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %2, i32 0, i32 17
  %40 = load i8, ptr %39, align 4
  %41 = and i8 %40, 4
  %42 = icmp eq i8 %38, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 11
  %45 = load i16, ptr %44, align 2
  %46 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %2, i32 0, i32 11
  %47 = load i16, ptr %46, align 2
  %48 = icmp sgt i16 %47, %45
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  store i16 %47, ptr %44, align 2
  br label %59

50:                                               ; preds = %35
  %51 = icmp ne i8 %38, 0
  %52 = icmp eq i8 %41, 0
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %2, i32 0, i32 11
  %56 = load i16, ptr %55, align 2
  %57 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 11
  store i16 %56, ptr %57, align 2
  %58 = or i8 %37, 4
  store i8 %58, ptr %36, align 4
  br label %59

59:                                               ; preds = %54, %50, %49, %43, %29, %23, %17, %3
  %60 = phi i32 [ 1, %43 ], [ 1, %49 ], [ 1, %50 ], [ 1, %54 ], [ 0, %29 ], [ 0, %23 ], [ 0, %17 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_pno_wiphy_params(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_read_of_freq_limits(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }

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
!9 = !{i32 0, i32 33}
!10 = !{i8 0, i8 2}
!11 = !{i64 2149409687}
!12 = !{i64 2149405511}
!13 = !{i64 2149405586, i64 2149405613, i64 2149405660, i64 2149405682, i64 2149405710, i64 2149405730}
!14 = !{i64 2149432690}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.peeled.count", i32 1}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2155840413, i64 2155840901, i64 2155840450, i64 2155840506, i64 2155840540, i64 2155840564, i64 2155840605, i64 2155840626, i64 2155840654, i64 2155840688}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!21 = !{i64 2156267229, i64 2156267754, i64 2156267266, i64 2156267322, i64 2156267356, i64 2156267380, i64 2156267421, i64 2156267442, i64 2156267470, i64 2156267504}
