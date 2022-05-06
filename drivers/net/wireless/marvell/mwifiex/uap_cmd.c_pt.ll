; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/uap_cmd.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/uap_cmd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cfg80211_ap_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, i32, i32, ptr, i32, i32, %struct.cfg80211_crypto_settings, i8, i32, i32, i32, i8, i8, ptr, i8, %struct.cfg80211_bitrate_mask, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.cfg80211_fils_discovery, %struct.cfg80211_unsol_bcast_probe_resp, %struct.cfg80211_mbssid_config }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.148] }
%struct.anon.148 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.cfg80211_fils_discovery = type { i32, i32, i32, ptr }
%struct.cfg80211_unsol_bcast_probe_resp = type { i32, i32, ptr }
%struct.cfg80211_mbssid_config = type { ptr, i8, i8 }
%struct.mwifiex_uap_bss_param = type <{ i8, i8, i16, i16, i8, i8, %struct.mwifiex_802_11_ssid, i8, i8, i8, i8, i16, i16, i16, i16, i16, [2 x i8], %struct.wpa_param, [4 x %struct.wep_key], %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, [14 x i8], i32, i32, i8, i8, %struct.mwifiex_types_wmm_info, [2 x i8] }>
%struct.mwifiex_802_11_ssid = type { i32, [32 x i8] }
%struct.wpa_param = type { i8, i8, i8, i32, [64 x i8] }
%struct.wep_key = type { i8, i8, i16, [13 x i8] }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.mwifiex_types_wmm_info = type { [4 x i8], i8, i8, i8, i8, [4 x %struct.ieee_types_wmm_ac_parameters] }
%struct.ieee_types_wmm_ac_parameters = type { i8, i8, i16 }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mwifiex_11h_intf_state = type { i8, i8 }
%struct.mwifiex_ds_mem_rw = type { i32, i32 }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.mwifiex_user_scan_chan = type { i8, i8, i8, i8, i32 }
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
%struct.mwifiex_11ac_vht_cfg = type { i8, i8, i32, i32, i32 }
%struct.ieee_types_header = type { i8, i8 }
%struct.host_cmd_ds_command = type { i16, i16, i16, i16, %union.anon.149 }
%union.anon.149 = type <{ %struct.host_cmd_ds_802_11_rssi_info, [212 x i8] }>
%struct.host_cmd_ds_802_11_rssi_info = type { i16, i16, i16, [9 x i16], i64 }
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.host_cmd_tlv_bcast_ssid = type <{ %struct.mwifiex_ie_types_header, i8 }>
%struct.host_cmd_tlv_rates = type { %struct.mwifiex_ie_types_header, [0 x i8] }
%struct.host_cmd_tlv_channel_band = type { %struct.mwifiex_ie_types_header, i8, i8 }
%struct.host_cmd_tlv_beacon_period = type { %struct.mwifiex_ie_types_header, i16 }
%struct.host_cmd_tlv_dtim_period = type <{ %struct.mwifiex_ie_types_header, i8 }>
%struct.host_cmd_tlv_rts_threshold = type { %struct.mwifiex_ie_types_header, i16 }
%struct.host_cmd_tlv_frag_threshold = type { %struct.mwifiex_ie_types_header, i16 }
%struct.host_cmd_tlv_retry_limit = type <{ %struct.mwifiex_ie_types_header, i8 }>
%struct.host_cmd_tlv_akmp = type { %struct.mwifiex_ie_types_header, i16, i16 }
%struct.host_cmd_tlv_pwk_cipher = type { %struct.mwifiex_ie_types_header, i16, i8, i8 }
%struct.host_cmd_tlv_gwk_cipher = type { %struct.mwifiex_ie_types_header, i8, i8 }
%struct.host_cmd_tlv_passphrase = type { %struct.mwifiex_ie_types_header, [0 x i8] }
%struct.host_cmd_tlv_wep_key = type <{ %struct.mwifiex_ie_types_header, i8, i8, [1 x i8] }>
%struct.host_cmd_tlv_auth_type = type <{ %struct.mwifiex_ie_types_header, i8 }>
%struct.host_cmd_tlv_encrypt_protocol = type { %struct.mwifiex_ie_types_header, i16 }
%struct.mwifiex_ie_types_htcap = type { %struct.mwifiex_ie_types_header, %struct.ieee80211_ht_cap }
%struct.mwifiex_ie_types_wmmcap = type { %struct.mwifiex_ie_types_header, %struct.mwifiex_types_wmm_info }
%struct.host_cmd_tlv_ageout_timer = type { %struct.mwifiex_ie_types_header, i32 }
%struct.host_cmd_tlv_power_constraint = type <{ %struct.mwifiex_ie_types_header, i8 }>
%struct.mwifiex_ie_list = type { i16, i16, [16 x %struct.mwifiex_ie] }

@.str = private unnamed_addr constant [27 x i8] c"11D: failed to enable 11D\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"PREP_CMD: unknown cmd %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Unknown channel width: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to set AP configuration\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to start the BSS\0A\00", align 1
@switch.table.mwifiex_set_secure_params = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 255, i16 128], align 2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_set_secure_params(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [16 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %5 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 8
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 13
  store i16 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 14
  store i16 4, ptr %10, align 2
  %11 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 17, i32 3
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 4
  store i8 0, ptr %13, align 4
  store i8 0, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 1
  store i8 0, ptr %14, align 1
  br label %170

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds [4 x i16], ptr @switch.table.mwifiex_set_secure_params, i32 0, i32 %17
  %21 = load i16, ptr %20, align 2
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i16 [ %21, %19 ], [ 255, %15 ]
  %24 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 12
  store i16 %23, ptr %24, align 2
  %25 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 15
  %26 = load i16, ptr %25, align 4
  %27 = or i16 %26, 3
  store i16 %27, ptr %25, align 4
  %28 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 7
  %29 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 7, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 13
  %34 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 14
  br label %42

35:                                               ; preds = %70, %22
  %36 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 7, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %110

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 17
  %41 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 17, i32 1
  br label %74

42:                                               ; preds = %70, %32
  %43 = phi i32 [ 0, %32 ], [ %71, %70 ]
  %44 = getelementptr %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 7, i32 5, i32 %43
  %45 = load i32, ptr %44, align 4
  switch i32 %45, label %70 [
    i32 1027073, label %46
    i32 1027074, label %56
  ]

46:                                               ; preds = %42
  %47 = load i32, ptr %28, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  store i16 8, ptr %33, align 4
  store i16 1, ptr %34, align 2
  %51 = load i32, ptr %28, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i32 [ %51, %50 ], [ %47, %46 ]
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %70, label %66

56:                                               ; preds = %42
  %57 = load i32, ptr %28, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  store i16 8, ptr %33, align 4
  store i16 2, ptr %34, align 2
  %61 = load i32, ptr %28, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi i32 [ %61, %60 ], [ %57, %56 ]
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62, %52
  %67 = phi i16 [ 1, %52 ], [ 2, %62 ]
  %68 = load i16, ptr %33, align 4
  %69 = or i16 %68, 32
  store i16 %69, ptr %33, align 4
  store i16 %67, ptr %34, align 2
  br label %70

70:                                               ; preds = %66, %62, %52, %42
  %71 = add nuw nsw i32 %43, 1
  %72 = load i32, ptr %29, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %42, label %35

74:                                               ; preds = %106, %39
  %75 = phi i32 [ 0, %39 ], [ %107, %106 ]
  %76 = getelementptr %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 7, i32 3, i32 %75
  %77 = load i32, ptr %76, align 4
  switch i32 %77, label %106 [
    i32 1027076, label %90
    i32 1027074, label %78
  ]

78:                                               ; preds = %74
  %79 = load i32, ptr %28, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i8, ptr %40, align 4
  %84 = or i8 %83, 4
  store i8 %84, ptr %40, align 4
  %85 = load i32, ptr %28, align 4
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi i32 [ %85, %82 ], [ %79, %78 ]
  %88 = and i32 %87, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %106, label %102

90:                                               ; preds = %74
  %91 = load i32, ptr %28, align 4
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i8, ptr %40, align 4
  %96 = or i8 %95, 8
  store i8 %96, ptr %40, align 4
  %97 = load i32, ptr %28, align 4
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i32 [ %97, %94 ], [ %91, %90 ]
  %100 = and i32 %99, 2
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98, %86
  %103 = phi i8 [ 4, %86 ], [ 8, %98 ]
  %104 = load i8, ptr %41, align 1
  %105 = or i8 %104, %103
  store i8 %105, ptr %41, align 1
  br label %106

106:                                              ; preds = %102, %98, %86, %74
  %107 = add nuw nsw i32 %75, 1
  %108 = load i32, ptr %36, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %74, label %110

110:                                              ; preds = %106, %35
  %111 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 7, i32 1
  %112 = load i32, ptr %111, align 4
  switch i32 %112, label %170 [
    i32 1027073, label %113
    i32 1027077, label %113
    i32 1027074, label %166
    i32 1027076, label %168
  ]

113:                                              ; preds = %110, %110
  %114 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 4
  %115 = load i8, ptr %114, align 4
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %170, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 13
  store i16 2, ptr %118, align 4
  %119 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 14
  store i16 4, ptr %119, align 2
  %120 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 17, i32 3
  store i32 0, ptr %120, align 4
  %121 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 62
  %122 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 0, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %124, i32 16, i1 false)
  %125 = getelementptr %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 18, i32 0
  store i8 0, ptr %125, align 2
  %126 = load i16, ptr %121, align 8
  %127 = icmp eq i16 %126, 0
  %128 = zext i1 %127 to i8
  %129 = getelementptr %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 18, i32 0, i32 1
  store i8 %128, ptr %129, align 1
  %130 = trunc i32 %123 to i16
  %131 = getelementptr %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 18, i32 0, i32 2
  store i16 %130, ptr %131, align 2
  %132 = getelementptr %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 18, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %132, ptr nonnull align 4 %4, i32 %123, i1 false)
  %133 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 1, i32 2
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 1, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %135, i32 16, i1 false)
  %136 = getelementptr %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 18, i32 1
  store i8 1, ptr %136, align 2
  %137 = load i16, ptr %121, align 8
  %138 = icmp eq i16 %137, 1
  %139 = zext i1 %138 to i8
  %140 = getelementptr %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 18, i32 1, i32 1
  store i8 %139, ptr %140, align 1
  %141 = trunc i32 %134 to i16
  %142 = getelementptr %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 18, i32 1, i32 2
  store i16 %141, ptr %142, align 2
  %143 = getelementptr %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 18, i32 1, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %143, ptr nonnull align 4 %4, i32 %134, i1 false)
  %144 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 2, i32 2
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 2, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %146, i32 16, i1 false)
  %147 = getelementptr %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 18, i32 2
  store i8 2, ptr %147, align 2
  %148 = load i16, ptr %121, align 8
  %149 = icmp eq i16 %148, 2
  %150 = zext i1 %149 to i8
  %151 = getelementptr %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 18, i32 2, i32 1
  store i8 %150, ptr %151, align 1
  %152 = trunc i32 %145 to i16
  %153 = getelementptr %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 18, i32 2, i32 2
  store i16 %152, ptr %153, align 2
  %154 = getelementptr %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 18, i32 2, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %154, ptr nonnull align 4 %4, i32 %145, i1 false)
  %155 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 3, i32 2
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 3, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %157, i32 16, i1 false)
  %158 = getelementptr %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 18, i32 3
  store i8 3, ptr %158, align 2
  %159 = load i16, ptr %121, align 8
  %160 = icmp eq i16 %159, 3
  %161 = zext i1 %160 to i8
  %162 = getelementptr %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 18, i32 3, i32 1
  store i8 %161, ptr %162, align 1
  %163 = trunc i32 %156 to i16
  %164 = getelementptr %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 18, i32 3, i32 2
  store i16 %163, ptr %164, align 2
  %165 = getelementptr %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 18, i32 3, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %165, ptr nonnull align 4 %4, i32 %156, i1 false)
  br label %170

166:                                              ; preds = %110
  %167 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 17, i32 2
  store i8 4, ptr %167, align 2
  br label %170

168:                                              ; preds = %110
  %169 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 17, i32 2
  store i8 8, ptr %169, align 2
  br label %170

170:                                              ; preds = %168, %166, %117, %113, %110, %8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_set_ht_params(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 47
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2048
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 1, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 45, ptr noundef %11, i32 noundef %13, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 19
  br i1 %15, label %20, label %17

17:                                               ; preds = %9
  %18 = getelementptr i8, ptr %14, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(26) %16, ptr noundef align 1 dereferenceable(26) %18, i32 26, i1 false)
  %19 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 125
  store i8 1, ptr %19, align 2
  br label %22

20:                                               ; preds = %9
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(26) %16, i8 0, i32 26, i1 false)
  store i16 4364, ptr %16, align 4
  %21 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 19, i32 1
  store i8 3, ptr %21, align 2
  br label %22

22:                                               ; preds = %20, %17, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_set_vht_params(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 1, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext -65, ptr noundef %5, i32 noundef %7, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 20
  %12 = getelementptr i8, ptr %8, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(12) %11, ptr noundef align 1 dereferenceable(12) %12, i32 12, i1 false)
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i8 [ 1, %10 ], [ 0, %3 ]
  %15 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 126
  store i8 %14, ptr %15, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_set_tpc_params(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 1, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 34, ptr noundef %5, i32 noundef %7, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %8, i32 2
  %12 = load i8, ptr %11, align 1
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i8 [ %12, %10 ], [ 0, %3 ]
  %15 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 25
  store i8 %14, ptr %15, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_set_vht_width(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = alloca %struct.mwifiex_11ac_vht_cfg, align 4
  %5 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  store i8 2, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 129
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, ptr %4, i32 0, i32 2
  store i32 %7, ptr %8, align 4
  %9 = select i1 %2, i32 65530, i32 65535
  %10 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, ptr %4, i32 0, i32 3
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, ptr %4, i32 0, i32 4
  store i32 %9, ptr %11, align 4
  %12 = icmp ugt i32 %1, 2
  %13 = and i1 %12, %2
  %14 = select i1 %13, i8 7, i8 3
  %15 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, ptr %4, i32 0, i32 1
  store i8 %14, ptr %15, align 1
  %16 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 274, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %4, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_set_uap_rates(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 36
  %6 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %1, i32 0, i32 1, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -36
  %9 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 1, ptr noundef %5, i32 noundef %8, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ieee_types_header, ptr %9, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp ugt i8 %13, 14
  br i1 %14, label %39, label %15

15:                                               ; preds = %11
  %16 = zext i8 %13 to i32
  %17 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %0, i32 0, i32 21
  %18 = getelementptr %struct.ieee_types_header, ptr %9, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %17, ptr align 1 %18, i32 %16, i1 false)
  %19 = load i8, ptr %12, align 1
  %20 = zext i8 %19 to i32
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i32 [ %20, %15 ], [ 0, %2 ]
  %23 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %1, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %1, i32 0, i32 1, i32 11
  %26 = load i32, ptr %25, align 4
  %27 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 50, ptr noundef %24, i32 noundef %26, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.ieee_types_header, ptr %27, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = sub nsw i32 14, %22
  %34 = icmp slt i32 %33, %32
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %0, i32 0, i32 21
  %37 = getelementptr i8, ptr %36, i32 %22
  %38 = getelementptr %struct.ieee_types_header, ptr %27, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr align 1 %38, i32 %32, i1 false)
  br label %39

39:                                               ; preds = %35, %29, %21, %11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mwifiex_set_sys_config_invalid_data(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %0, i32 0, i32 7
  store i8 127, ptr %2, align 4
  %3 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %0, i32 0, i32 8
  store i8 127, ptr %3, align 1
  %4 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %0, i32 0, i32 9
  store i8 127, ptr %4, align 2
  %5 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %0, i32 0, i32 11
  store i16 32767, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %0, i32 0, i32 12
  store i16 127, ptr %6, align 2
  %7 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %0, i32 0, i32 2
  store i16 32767, ptr %7, align 2
  %8 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %0, i32 0, i32 3
  store i16 32767, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %0, i32 0, i32 4
  store i8 127, ptr %9, align 2
  %10 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %0, i32 0, i32 24
  store i8 -1, ptr %10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_set_wmm_params(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 1, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 20722, i32 noundef 2, ptr noundef %5, i32 noundef %7) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %8, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp ugt i8 %12, 24
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = zext i8 %12 to i32
  %16 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 26
  %17 = getelementptr i8, ptr %8, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %16, ptr align 1 %17, i32 %15, i1 false)
  br label %23

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 26
  %20 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 26, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(24) %20, i8 0, i32 18, i1 false)
  store i32 49434624, ptr %19, align 2
  %21 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 26, i32 1
  store i8 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 26, i32 2
  store i8 1, ptr %22, align 1
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i8 [ 0, %18 ], [ 1, %14 ]
  %25 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 74
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 24
  store i8 0, ptr %26, align 4
  br label %27

27:                                               ; preds = %23, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_config_uap_11d(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 7, ptr noundef %5, i32 noundef %7, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  store i32 1, ptr %3, align 4
  %11 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 22, i16 noundef zeroext 1, i32 noundef 9, ptr noundef nonnull %3, i1 noundef zeroext true) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %14, i32 noundef 4, ptr noundef nonnull @.str) #7
  br label %15

15:                                               ; preds = %13, %10, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_uap_prepare_cmd(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #4 {
  switch i16 %1, label %490 [
    i16 176, label %7
    i16 177, label %483
    i16 178, label %483
    i16 175, label %483
    i16 179, label %483
    i16 181, label %484
    i16 221, label %487
  ]

7:                                                ; preds = %6
  store i16 176, ptr %5, align 1
  %8 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 %2, ptr %8, align 2
  %9 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 1
  switch i32 %3, label %497 [
    i32 0, label %10
    i32 1, label %469
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %10
  store i16 0, ptr %9, align 1
  %15 = load i32, ptr %11, align 4
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 2
  store i16 %16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 3
  %19 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 6, i32 1
  %20 = load i32, ptr %11, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %18, ptr align 4 %19, i32 %20, i1 false) #7
  %21 = load i32, ptr %11, align 4
  %22 = trunc i32 %21 to i16
  %23 = add i32 %21, 4
  %24 = getelementptr i8, ptr %9, i32 %23
  store i16 304, ptr %24, align 1
  %25 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %24, i32 0, i32 1
  store i16 1, ptr %25, align 1
  %26 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 7
  %27 = load i8, ptr %26, align 4
  %28 = getelementptr inbounds %struct.host_cmd_tlv_bcast_ssid, ptr %24, i32 0, i32 1
  store i8 %27, ptr %28, align 1
  %29 = add i16 %22, 19
  %30 = getelementptr i8, ptr %24, i32 5
  br label %31

31:                                               ; preds = %14, %10
  %32 = phi ptr [ %9, %10 ], [ %30, %14 ]
  %33 = phi i16 [ 10, %10 ], [ %29, %14 ]
  %34 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 21
  %35 = load i8, ptr %34, align 2
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %115, label %37

37:                                               ; preds = %31
  store i16 1, ptr %32, align 1
  %38 = load i8, ptr %34, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %107, label %40

40:                                               ; preds = %37
  %41 = getelementptr %struct.host_cmd_tlv_rates, ptr %32, i32 0, i32 1, i32 0
  store i8 %38, ptr %41, align 1
  %42 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 21, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %107, label %45

45:                                               ; preds = %40
  %46 = getelementptr %struct.host_cmd_tlv_rates, ptr %32, i32 0, i32 1, i32 1
  store i8 %43, ptr %46, align 1
  %47 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 21, i32 2
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %107, label %50

50:                                               ; preds = %45
  %51 = getelementptr %struct.host_cmd_tlv_rates, ptr %32, i32 0, i32 1, i32 2
  store i8 %48, ptr %51, align 1
  %52 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 21, i32 3
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %107, label %55

55:                                               ; preds = %50
  %56 = getelementptr %struct.host_cmd_tlv_rates, ptr %32, i32 0, i32 1, i32 3
  store i8 %53, ptr %56, align 1
  %57 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 21, i32 4
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %107, label %60

60:                                               ; preds = %55
  %61 = getelementptr %struct.host_cmd_tlv_rates, ptr %32, i32 0, i32 1, i32 4
  store i8 %58, ptr %61, align 1
  %62 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 21, i32 5
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %107, label %65

65:                                               ; preds = %60
  %66 = getelementptr %struct.host_cmd_tlv_rates, ptr %32, i32 0, i32 1, i32 5
  store i8 %63, ptr %66, align 1
  %67 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 21, i32 6
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %107, label %70

70:                                               ; preds = %65
  %71 = getelementptr %struct.host_cmd_tlv_rates, ptr %32, i32 0, i32 1, i32 6
  store i8 %68, ptr %71, align 1
  %72 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 21, i32 7
  %73 = load i8, ptr %72, align 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %107, label %75

75:                                               ; preds = %70
  %76 = getelementptr %struct.host_cmd_tlv_rates, ptr %32, i32 0, i32 1, i32 7
  store i8 %73, ptr %76, align 1
  %77 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 21, i32 8
  %78 = load i8, ptr %77, align 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %107, label %80

80:                                               ; preds = %75
  %81 = getelementptr %struct.host_cmd_tlv_rates, ptr %32, i32 0, i32 1, i32 8
  store i8 %78, ptr %81, align 1
  %82 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 21, i32 9
  %83 = load i8, ptr %82, align 1
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %107, label %85

85:                                               ; preds = %80
  %86 = getelementptr %struct.host_cmd_tlv_rates, ptr %32, i32 0, i32 1, i32 9
  store i8 %83, ptr %86, align 1
  %87 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 21, i32 10
  %88 = load i8, ptr %87, align 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %107, label %90

90:                                               ; preds = %85
  %91 = getelementptr %struct.host_cmd_tlv_rates, ptr %32, i32 0, i32 1, i32 10
  store i8 %88, ptr %91, align 1
  %92 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 21, i32 11
  %93 = load i8, ptr %92, align 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %90
  %96 = getelementptr %struct.host_cmd_tlv_rates, ptr %32, i32 0, i32 1, i32 11
  store i8 %93, ptr %96, align 1
  %97 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 21, i32 12
  %98 = load i8, ptr %97, align 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %95
  %101 = getelementptr %struct.host_cmd_tlv_rates, ptr %32, i32 0, i32 1, i32 12
  store i8 %98, ptr %101, align 1
  %102 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 21, i32 13
  %103 = load i8, ptr %102, align 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = getelementptr %struct.host_cmd_tlv_rates, ptr %32, i32 0, i32 1, i32 13
  store i8 %103, ptr %106, align 1
  br label %107

107:                                              ; preds = %105, %100, %95, %90, %85, %80, %75, %70, %65, %60, %55, %50, %45, %40, %37
  %108 = phi i32 [ 0, %37 ], [ 1, %40 ], [ 2, %45 ], [ 3, %50 ], [ 4, %55 ], [ 5, %60 ], [ 6, %65 ], [ 7, %70 ], [ 8, %75 ], [ 9, %80 ], [ 10, %85 ], [ 11, %90 ], [ 12, %95 ], [ 13, %100 ], [ 14, %105 ]
  %109 = trunc i32 %108 to i16
  %110 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %32, i32 0, i32 1
  store i16 %109, ptr %110, align 1
  %111 = add nuw nsw i32 %108, 4
  %112 = trunc i32 %111 to i16
  %113 = add i16 %33, %112
  %114 = getelementptr i8, ptr %32, i32 %111
  br label %115

115:                                              ; preds = %107, %31
  %116 = phi ptr [ %32, %31 ], [ %114, %107 ]
  %117 = phi i16 [ %33, %31 ], [ %113, %107 ]
  %118 = load i8, ptr %4, align 4
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %139, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 1
  %122 = load i8, ptr %121, align 1
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  %125 = icmp ult i8 %118, 15
  %126 = select i1 %124, i1 %125, i1 false
  br i1 %126, label %131, label %127

127:                                              ; preds = %120
  %128 = xor i1 %124, true
  %129 = icmp ult i8 %118, -90
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %139

131:                                              ; preds = %127, %120
  store i16 298, ptr %116, align 1
  %132 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %116, i32 0, i32 1
  store i16 2, ptr %132, align 1
  %133 = load i8, ptr %121, align 1
  %134 = getelementptr inbounds %struct.host_cmd_tlv_channel_band, ptr %116, i32 0, i32 1
  store i8 %133, ptr %134, align 1
  %135 = load i8, ptr %4, align 4
  %136 = getelementptr inbounds %struct.host_cmd_tlv_channel_band, ptr %116, i32 0, i32 2
  store i8 %135, ptr %136, align 1
  %137 = add i16 %117, 6
  %138 = getelementptr i8, ptr %116, i32 6
  br label %139

139:                                              ; preds = %131, %127, %115
  %140 = phi ptr [ %116, %115 ], [ %138, %131 ], [ %116, %127 ]
  %141 = phi i16 [ %117, %115 ], [ %137, %131 ], [ %117, %127 ]
  %142 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 11
  %143 = load i16, ptr %142, align 4
  %144 = add i16 %143, -50
  %145 = icmp ult i16 %144, 3951
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  store i16 300, ptr %140, align 1
  %147 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %140, i32 0, i32 1
  store i16 2, ptr %147, align 1
  %148 = load i16, ptr %142, align 4
  %149 = getelementptr inbounds %struct.host_cmd_tlv_beacon_period, ptr %140, i32 0, i32 1
  store i16 %148, ptr %149, align 1
  %150 = add i16 %141, 6
  %151 = getelementptr i8, ptr %140, i32 6
  br label %152

152:                                              ; preds = %146, %139
  %153 = phi ptr [ %151, %146 ], [ %140, %139 ]
  %154 = phi i16 [ %150, %146 ], [ %141, %139 ]
  %155 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 9
  %156 = load i8, ptr %155, align 2
  %157 = add i8 %156, -1
  %158 = icmp ult i8 %157, 100
  br i1 %158, label %159, label %165

159:                                              ; preds = %152
  store i16 301, ptr %153, align 1
  %160 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %153, i32 0, i32 1
  store i16 1, ptr %160, align 1
  %161 = load i8, ptr %155, align 2
  %162 = getelementptr inbounds %struct.host_cmd_tlv_dtim_period, ptr %153, i32 0, i32 1
  store i8 %161, ptr %162, align 1
  %163 = add i16 %154, 5
  %164 = getelementptr i8, ptr %153, i32 5
  br label %165

165:                                              ; preds = %159, %152
  %166 = phi ptr [ %164, %159 ], [ %153, %152 ]
  %167 = phi i16 [ %163, %159 ], [ %154, %152 ]
  %168 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 2
  %169 = load i16, ptr %168, align 2
  %170 = icmp ult i16 %169, 2348
  br i1 %170, label %171, label %177

171:                                              ; preds = %165
  store i16 307, ptr %166, align 1
  %172 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %166, i32 0, i32 1
  store i16 2, ptr %172, align 1
  %173 = load i16, ptr %168, align 2
  %174 = getelementptr inbounds %struct.host_cmd_tlv_rts_threshold, ptr %166, i32 0, i32 1
  store i16 %173, ptr %174, align 1
  %175 = add i16 %167, 6
  %176 = getelementptr i8, ptr %166, i32 6
  br label %177

177:                                              ; preds = %171, %165
  %178 = phi ptr [ %176, %171 ], [ %166, %165 ]
  %179 = phi i16 [ %175, %171 ], [ %167, %165 ]
  %180 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 3
  %181 = load i16, ptr %180, align 4
  %182 = add i16 %181, -256
  %183 = icmp ult i16 %182, 2091
  br i1 %183, label %184, label %190

184:                                              ; preds = %177
  store i16 326, ptr %178, align 1
  %185 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %178, i32 0, i32 1
  store i16 2, ptr %185, align 1
  %186 = load i16, ptr %180, align 4
  %187 = getelementptr inbounds %struct.host_cmd_tlv_frag_threshold, ptr %178, i32 0, i32 1
  store i16 %186, ptr %187, align 1
  %188 = add i16 %179, 6
  %189 = getelementptr i8, ptr %178, i32 6
  br label %190

190:                                              ; preds = %184, %177
  %191 = phi ptr [ %189, %184 ], [ %178, %177 ]
  %192 = phi i16 [ %188, %184 ], [ %179, %177 ]
  %193 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 4
  %194 = load i8, ptr %193, align 2
  %195 = icmp ult i8 %194, 15
  br i1 %195, label %196, label %202

196:                                              ; preds = %190
  store i16 349, ptr %191, align 1
  %197 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %191, i32 0, i32 1
  store i16 1, ptr %197, align 1
  %198 = load i8, ptr %193, align 2
  %199 = getelementptr inbounds %struct.host_cmd_tlv_retry_limit, ptr %191, i32 0, i32 1
  store i8 %198, ptr %199, align 1
  %200 = add i16 %192, 5
  %201 = getelementptr i8, ptr %191, i32 5
  br label %202

202:                                              ; preds = %196, %190
  %203 = phi ptr [ %201, %196 ], [ %191, %190 ]
  %204 = phi i16 [ %200, %196 ], [ %192, %190 ]
  %205 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 13
  %206 = load i16, ptr %205, align 4
  %207 = and i16 %206, 104
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %275, label %209

209:                                              ; preds = %202
  store i16 321, ptr %203, align 1
  %210 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %203, i32 0, i32 1
  store i16 4, ptr %210, align 1
  %211 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 15
  %212 = load i16, ptr %211, align 4
  %213 = getelementptr inbounds %struct.host_cmd_tlv_akmp, ptr %203, i32 0, i32 2
  store i16 %212, ptr %213, align 1
  %214 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 14
  %215 = load i16, ptr %214, align 2
  %216 = getelementptr inbounds %struct.host_cmd_tlv_akmp, ptr %203, i32 0, i32 1
  store i16 %215, ptr %216, align 1
  %217 = add i16 %204, 8
  %218 = getelementptr i8, ptr %203, i32 8
  %219 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 17
  %220 = load i8, ptr %219, align 4
  %221 = and i8 %220, 12
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %230, label %223

223:                                              ; preds = %209
  store i16 401, ptr %218, align 1
  %224 = getelementptr i8, ptr %203, i32 10
  store i16 4, ptr %224, align 1
  %225 = getelementptr i8, ptr %203, i32 12
  store i16 8, ptr %225, align 1
  %226 = load i8, ptr %219, align 4
  %227 = getelementptr i8, ptr %203, i32 14
  store i8 %226, ptr %227, align 1
  %228 = add i16 %204, 16
  %229 = getelementptr i8, ptr %203, i32 16
  br label %230

230:                                              ; preds = %223, %209
  %231 = phi i16 [ %228, %223 ], [ %217, %209 ]
  %232 = phi ptr [ %229, %223 ], [ %218, %209 ]
  %233 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 17, i32 1
  %234 = load i8, ptr %233, align 1
  %235 = and i8 %234, 12
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %244, label %237

237:                                              ; preds = %230
  store i16 401, ptr %232, align 1
  %238 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %232, i32 0, i32 1
  store i16 4, ptr %238, align 1
  %239 = getelementptr inbounds %struct.host_cmd_tlv_pwk_cipher, ptr %232, i32 0, i32 1
  store i16 32, ptr %239, align 1
  %240 = load i8, ptr %233, align 1
  %241 = getelementptr inbounds %struct.host_cmd_tlv_pwk_cipher, ptr %232, i32 0, i32 2
  store i8 %240, ptr %241, align 1
  %242 = add i16 %231, 8
  %243 = getelementptr i8, ptr %232, i32 8
  br label %244

244:                                              ; preds = %237, %230
  %245 = phi i16 [ %242, %237 ], [ %231, %230 ]
  %246 = phi ptr [ %243, %237 ], [ %232, %230 ]
  %247 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 17, i32 2
  %248 = load i8, ptr %247, align 2
  %249 = and i8 %248, 12
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %244
  store i16 402, ptr %246, align 1
  %252 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %246, i32 0, i32 1
  store i16 2, ptr %252, align 1
  %253 = load i8, ptr %247, align 2
  %254 = getelementptr inbounds %struct.host_cmd_tlv_gwk_cipher, ptr %246, i32 0, i32 1
  store i8 %253, ptr %254, align 1
  %255 = add i16 %245, 6
  %256 = getelementptr i8, ptr %246, i32 6
  br label %257

257:                                              ; preds = %251, %244
  %258 = phi i16 [ %255, %251 ], [ %245, %244 ]
  %259 = phi ptr [ %256, %251 ], [ %246, %244 ]
  %260 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 17, i32 3
  %261 = load i32, ptr %260, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %373, label %263

263:                                              ; preds = %257
  store i16 316, ptr %259, align 1
  %264 = load i32, ptr %260, align 4
  %265 = trunc i32 %264 to i16
  %266 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %259, i32 0, i32 1
  store i16 %265, ptr %266, align 1
  %267 = getelementptr inbounds %struct.host_cmd_tlv_passphrase, ptr %259, i32 0, i32 1
  %268 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 17, i32 4
  %269 = load i32, ptr %260, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %267, ptr align 4 %268, i32 %269, i1 false) #7
  %270 = load i32, ptr %260, align 4
  %271 = add i32 %270, 4
  %272 = trunc i32 %271 to i16
  %273 = add i16 %258, %272
  %274 = getelementptr i8, ptr %259, i32 %271
  br label %373

275:                                              ; preds = %202
  %276 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 18, i32 0, i32 2
  %277 = load i16, ptr %276, align 2
  switch i16 %277, label %298 [
    i16 13, label %278
    i16 5, label %278
  ]

278:                                              ; preds = %275, %275
  %279 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 18, i32 0
  store i16 315, ptr %203, align 1
  %280 = load i16, ptr %276, align 2
  %281 = add i16 %280, 2
  %282 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %203, i32 0, i32 1
  store i16 %281, ptr %282, align 1
  %283 = load i8, ptr %279, align 2
  %284 = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %203, i32 0, i32 1
  store i8 %283, ptr %284, align 1
  %285 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 18, i32 0, i32 1
  %286 = load i8, ptr %285, align 1
  %287 = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %203, i32 0, i32 2
  store i8 %286, ptr %287, align 1
  %288 = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %203, i32 0, i32 3
  %289 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 18, i32 0, i32 3
  %290 = load i16, ptr %276, align 2
  %291 = zext i16 %290 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %288, ptr align 2 %289, i32 %291, i1 false) #7
  %292 = load i16, ptr %276, align 2
  %293 = zext i16 %292 to i32
  %294 = add nuw nsw i32 %293, 6
  %295 = trunc i32 %294 to i16
  %296 = add i16 %204, %295
  %297 = getelementptr i8, ptr %203, i32 %294
  br label %298

298:                                              ; preds = %278, %275
  %299 = phi i16 [ %296, %278 ], [ %204, %275 ]
  %300 = phi ptr [ %297, %278 ], [ %203, %275 ]
  %301 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 18, i32 1, i32 2
  %302 = load i16, ptr %301, align 2
  switch i16 %302, label %323 [
    i16 13, label %303
    i16 5, label %303
  ]

303:                                              ; preds = %298, %298
  %304 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 18, i32 1
  store i16 315, ptr %300, align 1
  %305 = load i16, ptr %301, align 2
  %306 = add i16 %305, 2
  %307 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %300, i32 0, i32 1
  store i16 %306, ptr %307, align 1
  %308 = load i8, ptr %304, align 2
  %309 = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %300, i32 0, i32 1
  store i8 %308, ptr %309, align 1
  %310 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 18, i32 1, i32 1
  %311 = load i8, ptr %310, align 1
  %312 = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %300, i32 0, i32 2
  store i8 %311, ptr %312, align 1
  %313 = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %300, i32 0, i32 3
  %314 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 18, i32 1, i32 3
  %315 = load i16, ptr %301, align 2
  %316 = zext i16 %315 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %313, ptr align 2 %314, i32 %316, i1 false) #7
  %317 = load i16, ptr %301, align 2
  %318 = zext i16 %317 to i32
  %319 = add nuw nsw i32 %318, 6
  %320 = trunc i32 %319 to i16
  %321 = add i16 %299, %320
  %322 = getelementptr i8, ptr %300, i32 %319
  br label %323

323:                                              ; preds = %303, %298
  %324 = phi i16 [ %321, %303 ], [ %299, %298 ]
  %325 = phi ptr [ %322, %303 ], [ %300, %298 ]
  %326 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 18, i32 2, i32 2
  %327 = load i16, ptr %326, align 2
  switch i16 %327, label %348 [
    i16 13, label %328
    i16 5, label %328
  ]

328:                                              ; preds = %323, %323
  %329 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 18, i32 2
  store i16 315, ptr %325, align 1
  %330 = load i16, ptr %326, align 2
  %331 = add i16 %330, 2
  %332 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %325, i32 0, i32 1
  store i16 %331, ptr %332, align 1
  %333 = load i8, ptr %329, align 2
  %334 = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %325, i32 0, i32 1
  store i8 %333, ptr %334, align 1
  %335 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 18, i32 2, i32 1
  %336 = load i8, ptr %335, align 1
  %337 = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %325, i32 0, i32 2
  store i8 %336, ptr %337, align 1
  %338 = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %325, i32 0, i32 3
  %339 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 18, i32 2, i32 3
  %340 = load i16, ptr %326, align 2
  %341 = zext i16 %340 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %338, ptr align 2 %339, i32 %341, i1 false) #7
  %342 = load i16, ptr %326, align 2
  %343 = zext i16 %342 to i32
  %344 = add nuw nsw i32 %343, 6
  %345 = trunc i32 %344 to i16
  %346 = add i16 %324, %345
  %347 = getelementptr i8, ptr %325, i32 %344
  br label %348

348:                                              ; preds = %328, %323
  %349 = phi i16 [ %346, %328 ], [ %324, %323 ]
  %350 = phi ptr [ %347, %328 ], [ %325, %323 ]
  %351 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 18, i32 3, i32 2
  %352 = load i16, ptr %351, align 2
  switch i16 %352, label %373 [
    i16 13, label %353
    i16 5, label %353
  ]

353:                                              ; preds = %348, %348
  %354 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 18, i32 3
  store i16 315, ptr %350, align 1
  %355 = load i16, ptr %351, align 2
  %356 = add i16 %355, 2
  %357 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %350, i32 0, i32 1
  store i16 %356, ptr %357, align 1
  %358 = load i8, ptr %354, align 2
  %359 = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %350, i32 0, i32 1
  store i8 %358, ptr %359, align 1
  %360 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 18, i32 3, i32 1
  %361 = load i8, ptr %360, align 1
  %362 = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %350, i32 0, i32 2
  store i8 %361, ptr %362, align 1
  %363 = getelementptr inbounds %struct.host_cmd_tlv_wep_key, ptr %350, i32 0, i32 3
  %364 = getelementptr %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 18, i32 3, i32 3
  %365 = load i16, ptr %351, align 2
  %366 = zext i16 %365 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %363, ptr align 2 %364, i32 %366, i1 false) #7
  %367 = load i16, ptr %351, align 2
  %368 = zext i16 %367 to i32
  %369 = add nuw nsw i32 %368, 6
  %370 = trunc i32 %369 to i16
  %371 = add i16 %349, %370
  %372 = getelementptr i8, ptr %350, i32 %369
  br label %373

373:                                              ; preds = %353, %348, %263, %257
  %374 = phi ptr [ %274, %263 ], [ %259, %257 ], [ %372, %353 ], [ %350, %348 ]
  %375 = phi i16 [ %273, %263 ], [ %258, %257 ], [ %371, %353 ], [ %349, %348 ]
  %376 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 12
  %377 = load i16, ptr %376, align 2
  switch i16 %377, label %385 [
    i16 255, label %378
    i16 1, label %378
    i16 0, label %378
  ]

378:                                              ; preds = %373, %373, %373
  store i16 287, ptr %374, align 1
  %379 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %374, i32 0, i32 1
  store i16 1, ptr %379, align 1
  %380 = load i16, ptr %376, align 2
  %381 = trunc i16 %380 to i8
  %382 = getelementptr inbounds %struct.host_cmd_tlv_auth_type, ptr %374, i32 0, i32 1
  store i8 %381, ptr %382, align 1
  %383 = add i16 %375, 5
  %384 = getelementptr i8, ptr %374, i32 5
  br label %385

385:                                              ; preds = %378, %373
  %386 = phi ptr [ %374, %373 ], [ %384, %378 ]
  %387 = phi i16 [ %375, %373 ], [ %383, %378 ]
  %388 = load i16, ptr %205, align 4
  %389 = icmp eq i16 %388, 0
  br i1 %389, label %396, label %390

390:                                              ; preds = %385
  store i16 320, ptr %386, align 1
  %391 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %386, i32 0, i32 1
  store i16 2, ptr %391, align 1
  %392 = load i16, ptr %205, align 4
  %393 = getelementptr inbounds %struct.host_cmd_tlv_encrypt_protocol, ptr %386, i32 0, i32 1
  store i16 %392, ptr %393, align 1
  %394 = add i16 %387, 6
  %395 = getelementptr i8, ptr %386, i32 6
  br label %396

396:                                              ; preds = %390, %385
  %397 = phi ptr [ %386, %385 ], [ %395, %390 ]
  %398 = phi i16 [ %387, %385 ], [ %394, %390 ]
  %399 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 19
  %400 = load i16, ptr %399, align 4
  %401 = icmp eq i16 %400, 0
  br i1 %401, label %422, label %402

402:                                              ; preds = %396
  store i16 45, ptr %397, align 1
  %403 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %397, i32 0, i32 1
  store i16 26, ptr %403, align 1
  %404 = load i16, ptr %399, align 4
  %405 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, ptr %397, i32 0, i32 1
  store i16 %404, ptr %405, align 1
  %406 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 19, i32 1
  %407 = load i8, ptr %406, align 2
  %408 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, ptr %397, i32 0, i32 1, i32 1
  store i8 %407, ptr %408, align 1
  %409 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, ptr %397, i32 0, i32 1, i32 2
  %410 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 19, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %409, ptr noundef align 1 dereferenceable(16) %410, i32 16, i1 false) #7
  %411 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 19, i32 3
  %412 = load i16, ptr %411, align 1
  %413 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, ptr %397, i32 0, i32 1, i32 3
  store i16 %412, ptr %413, align 1
  %414 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 19, i32 4
  %415 = load i32, ptr %414, align 1
  %416 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, ptr %397, i32 0, i32 1, i32 4
  store i32 %415, ptr %416, align 1
  %417 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 19, i32 5
  %418 = load i8, ptr %417, align 1
  %419 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, ptr %397, i32 0, i32 1, i32 5
  store i8 %418, ptr %419, align 1
  %420 = add i16 %398, 30
  %421 = getelementptr i8, ptr %397, i32 30
  br label %422

422:                                              ; preds = %402, %396
  %423 = phi ptr [ %397, %396 ], [ %421, %402 ]
  %424 = phi i16 [ %398, %396 ], [ %420, %402 ]
  %425 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 26, i32 3
  %426 = load i8, ptr %425, align 2
  %427 = icmp eq i8 %426, -1
  br i1 %427, label %434, label %428

428:                                              ; preds = %422
  %429 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 26
  store i16 221, ptr %423, align 1
  %430 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %423, i32 0, i32 1
  store i16 24, ptr %430, align 1
  %431 = getelementptr inbounds %struct.mwifiex_ie_types_wmmcap, ptr %423, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(24) %431, ptr noundef align 2 dereferenceable(24) %429, i32 24, i1 false) #7
  %432 = add i16 %424, 28
  %433 = getelementptr i8, ptr %423, i32 28
  br label %434

434:                                              ; preds = %428, %422
  %435 = phi ptr [ %423, %422 ], [ %433, %428 ]
  %436 = phi i16 [ %424, %422 ], [ %432, %428 ]
  %437 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 22
  %438 = load i32, ptr %437, align 4
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %446, label %440

440:                                              ; preds = %434
  store i16 313, ptr %435, align 1
  %441 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %435, i32 0, i32 1
  store i16 4, ptr %441, align 1
  %442 = load i32, ptr %437, align 4
  %443 = getelementptr inbounds %struct.host_cmd_tlv_ageout_timer, ptr %435, i32 0, i32 1
  store i32 %442, ptr %443, align 1
  %444 = add i16 %436, 8
  %445 = getelementptr i8, ptr %435, i32 8
  br label %446

446:                                              ; preds = %440, %434
  %447 = phi ptr [ %435, %434 ], [ %445, %440 ]
  %448 = phi i16 [ %436, %434 ], [ %444, %440 ]
  %449 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 25
  %450 = load i8, ptr %449, align 1
  %451 = icmp eq i8 %450, 0
  br i1 %451, label %458, label %452

452:                                              ; preds = %446
  store i16 32, ptr %447, align 1
  %453 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %447, i32 0, i32 1
  store i16 1, ptr %453, align 1
  %454 = load i8, ptr %449, align 1
  %455 = getelementptr inbounds %struct.host_cmd_tlv_power_constraint, ptr %447, i32 0, i32 1
  store i8 %454, ptr %455, align 1
  %456 = add i16 %448, 5
  %457 = getelementptr i8, ptr %447, i32 5
  br label %458

458:                                              ; preds = %452, %446
  %459 = phi ptr [ %447, %446 ], [ %457, %452 ]
  %460 = phi i16 [ %448, %446 ], [ %456, %452 ]
  %461 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %4, i32 0, i32 23
  %462 = load i32, ptr %461, align 4
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %493, label %464

464:                                              ; preds = %458
  store i16 379, ptr %459, align 1
  %465 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %459, i32 0, i32 1
  store i16 4, ptr %465, align 1
  %466 = load i32, ptr %461, align 4
  %467 = getelementptr inbounds %struct.host_cmd_tlv_ageout_timer, ptr %459, i32 0, i32 1
  store i32 %466, ptr %467, align 1
  %468 = add i16 %460, 8
  br label %493

469:                                              ; preds = %7
  %470 = icmp eq ptr %4, null
  br i1 %470, label %497, label %471

471:                                              ; preds = %469
  %472 = getelementptr inbounds %struct.mwifiex_ie_list, ptr %4, i32 0, i32 1
  %473 = load i16, ptr %472, align 1
  %474 = icmp eq i16 %473, 0
  br i1 %474, label %497, label %475

475:                                              ; preds = %471
  %476 = add i16 %473, 14
  store i16 361, ptr %9, align 1
  %477 = load i16, ptr %472, align 1
  %478 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 2
  store i16 %477, ptr %478, align 1
  %479 = getelementptr %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 3
  %480 = getelementptr inbounds %struct.mwifiex_ie_list, ptr %4, i32 0, i32 2
  %481 = load i16, ptr %472, align 1
  %482 = zext i16 %481 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %479, ptr align 1 %480, i32 %482, i1 false) #7
  br label %493

483:                                              ; preds = %6, %6, %6, %6
  store i16 %1, ptr %5, align 1
  br label %493

484:                                              ; preds = %6
  %485 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 181, ptr %5, align 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %485, ptr noundef align 1 dereferenceable(6) %4, i32 6, i1 false) #7
  %486 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 3
  store i16 3, ptr %486, align 1
  br label %493

487:                                              ; preds = %6
  %488 = tail call i32 @mwifiex_cmd_issue_chan_report_request(ptr noundef %0, ptr noundef %5, ptr noundef %4) #7
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %496, label %497

490:                                              ; preds = %6
  %491 = zext i16 %1 to i32
  %492 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %492, i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %491) #7
  br label %497

493:                                              ; preds = %484, %483, %475, %464, %458
  %494 = phi i16 [ 16, %484 ], [ 8, %483 ], [ %476, %475 ], [ %460, %458 ], [ %468, %464 ]
  %495 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 %494, ptr %495, align 1
  br label %496

496:                                              ; preds = %493, %487
  br label %497

497:                                              ; preds = %496, %490, %487, %471, %469, %7
  %498 = phi i32 [ -1, %490 ], [ 0, %496 ], [ -1, %487 ], [ -1, %7 ], [ -1, %471 ], [ -1, %469 ]
  ret i32 %498
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_issue_chan_report_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_uap_set_channel(ptr noundef %0, ptr nocapture noundef %1, [7 x i32] %2) local_unnamed_addr #4 {
  %4 = extractvalue [7 x i32] %2, 0
  %5 = inttoptr i32 %4 to ptr
  %6 = extractvalue [7 x i32] %2, 1
  %7 = extractvalue [7 x i32] %2, 2
  %8 = extractvalue [7 x i32] %2, 3
  %9 = extractvalue [7 x i32] %2, 4
  %10 = extractvalue [7 x i32] %2, 5
  %11 = extractvalue [7 x i32] %2, 6
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 84
  %14 = load i8, ptr %13, align 2
  %15 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 139
  store ptr %5, ptr %15, align 8
  %16 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 139, i32 1
  store i32 %6, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 139, i32 2
  store i32 %7, ptr %17, align 8
  %18 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 139, i32 3
  store i32 %8, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 139, i32 4
  store i32 %9, ptr %19, align 8
  %20 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 139, i32 4, i32 1
  store i32 %10, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 139, i32 5
  store i32 %11, ptr %21, align 8
  %22 = getelementptr inbounds %struct.ieee80211_channel, ptr %5, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, 1000
  %25 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %24) #7
  %26 = trunc i32 %25 to i8
  store i8 %26, ptr %1, align 4
  %27 = load i32, ptr %5, align 4
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq i32 %6, 0
  br i1 %28, label %30, label %32

30:                                               ; preds = %3
  %31 = select i1 %29, i8 3, i8 11
  br label %37

32:                                               ; preds = %3
  %33 = select i1 %29, i8 4, i8 20
  %34 = icmp ugt i32 %6, 2
  %35 = or i8 %33, 32
  %36 = select i1 %34, i8 %35, i8 %33
  br label %37

37:                                               ; preds = %32, %30
  %38 = phi i8 [ 0, %30 ], [ 1, %32 ]
  %39 = phi i8 [ %31, %30 ], [ %36, %32 ]
  %40 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %1, i32 0, i32 1
  store i8 %38, ptr %40, align 1
  switch i32 %6, label %54 [
    i32 6, label %56
    i32 7, label %56
    i32 0, label %56
    i32 1, label %56
    i32 2, label %41
    i32 3, label %48
    i32 4, label %48
    i32 5, label %48
  ]

41:                                               ; preds = %37
  %42 = load i32, ptr %22, align 4
  %43 = icmp ult i32 %7, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = or i8 %38, 48
  store i8 %45, ptr %40, align 1
  br label %56

46:                                               ; preds = %41
  %47 = or i8 %38, 16
  store i8 %47, ptr %40, align 1
  br label %56

48:                                               ; preds = %37, %37, %37
  %49 = and i32 %25, 255
  %50 = tail call zeroext i8 @mwifiex_get_sec_chan_offset(i32 noundef %49) #7
  %51 = shl i8 %50, 4
  %52 = load i8, ptr %40, align 1
  %53 = or i8 %51, %52
  store i8 %53, ptr %40, align 1
  br label %56

54:                                               ; preds = %37
  %55 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %55, i32 noundef 536870912, ptr noundef nonnull @.str.2, i32 noundef %6) #7
  br label %56

56:                                               ; preds = %54, %48, %46, %44, %37, %37, %37, %37
  %57 = load ptr, ptr %0, align 8
  %58 = getelementptr inbounds %struct.mwifiex_adapter, ptr %57, i32 0, i32 84
  store i8 %39, ptr %58, align 2
  %59 = icmp eq i8 %14, %39
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %0, align 8
  %62 = getelementptr inbounds %struct.mwifiex_adapter, ptr %61, i32 0, i32 10
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 @mwifiex_send_domain_info_cmd_fw(ptr noundef %63) #7
  tail call void @mwifiex_dnld_txpwr_table(ptr noundef %0) #7
  br label %65

65:                                               ; preds = %60, %56
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_get_sec_chan_offset(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_domain_info_cmd_fw(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_dnld_txpwr_table(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_config_start_uap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 176, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %1, i1 noundef zeroext true) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 4, ptr noundef nonnull @.str.3) #7
  br label %25

7:                                                ; preds = %2
  %8 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 177, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 4, ptr noundef nonnull @.str.4) #7
  br label %25

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 4
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 17
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, -9
  %19 = select i1 %15, i32 0, i32 8
  %20 = or i32 %18, %19
  store i32 %20, ptr %16, align 4
  %21 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 17
  %22 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 40, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %21, i1 noundef zeroext true) #7
  %23 = icmp ne i32 %22, 0
  %24 = sext i1 %23 to i32
  br label %25

25:                                               ; preds = %12, %10, %5
  %26 = phi i32 [ -1, %5 ], [ -1, %10 ], [ %24, %12 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_vendor_elem(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #5

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }

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
