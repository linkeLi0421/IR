; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/sta_rx.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/sta_rx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rxpd = type <{ i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, [3 x i8], i8 }>
%struct.rx_packet_hdr = type { %struct.ethhdr, %struct.rfc_1042_hdr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.rfc_1042_hdr = type { i8, i8, i8, [3 x i8], i16 }
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
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }

@bridge_tunnel_header = external dso_local constant [6 x i8], align 1
@rfc1042_header = external dso_local constant [6 x i8], align 1
@.str = private unnamed_addr constant [25 x i8] c"Bypassed Gratuitous ARP\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"recv packet failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"wrong rx packet: len=%d, rx_pkt_offset=%d, rx_pkt_length=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Rx of mgmt packet failed\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_rx_packet(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rxpd, ptr %4, i32 0, i32 3
  %6 = load i16, ptr %5, align 1
  %7 = getelementptr inbounds %struct.rxpd, ptr %4, i32 0, i32 2
  %8 = load i16, ptr %7, align 1
  %9 = zext i16 %6 to i32
  %10 = getelementptr i8, ptr %4, i32 %9
  %11 = getelementptr %struct.rx_packet_hdr, ptr %10, i32 0, i32 1
  %12 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %11, ptr noundef nonnull dereferenceable(6) @bridge_tunnel_header, i32 6)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %11, ptr noundef nonnull dereferenceable(6) @rfc1042_header, i32 6)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.rfc_1042_hdr, ptr %11, i32 0, i32 4
  %19 = load i16, ptr %18, align 1
  switch i16 %19, label %20 [
    i16 -3200, label %26
    i16 14209, label %26
  ]

20:                                               ; preds = %17, %2
  %21 = getelementptr i8, ptr %11, i32 -6
  %22 = getelementptr inbounds %struct.ethhdr, ptr %10, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %11, ptr noundef align 1 dereferenceable(6) %22, i32 6, i1 false)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %21, ptr noundef align 1 dereferenceable(6) %10, i32 6, i1 false)
  %23 = ptrtoint ptr %21 to i32
  %24 = ptrtoint ptr %4 to i32
  %25 = sub i32 %23, %24
  br label %26

26:                                               ; preds = %20, %17, %17, %14
  %27 = phi i32 [ %25, %20 ], [ %9, %17 ], [ %9, %17 ], [ %9, %14 ]
  %28 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %27) #6
  %29 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 136
  %30 = load i8, ptr %29, align 1, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %56, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr inbounds %struct.ethhdr, ptr %33, i32 0, i32 2
  %35 = load i16, ptr %34, align 1
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #6
  switch i16 %36, label %56 [
    i16 2054, label %37
    i16 -31011, label %45
  ]

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %33, i32 20
  %39 = load i16, ptr %38, align 1
  switch i16 %39, label %56 [
    i16 512, label %40
    i16 256, label %40
  ]

40:                                               ; preds = %37, %37
  %41 = getelementptr i8, ptr %33, i32 28
  %42 = getelementptr i8, ptr %33, i32 38
  %43 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %41, ptr noundef dereferenceable(4) %42, i32 4) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %56

45:                                               ; preds = %32
  %46 = getelementptr i8, ptr %33, i32 54
  %47 = load i8, ptr %46, align 4
  %48 = icmp eq i8 %47, -120
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %33, i32 22
  %51 = getelementptr i8, ptr %33, i32 38
  %52 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %50, ptr noundef dereferenceable(16) %51, i32 16) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %40
  %55 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %55, i32 noundef 1073741824, ptr noundef nonnull @.str) #6
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #6
  br label %93

56:                                               ; preds = %49, %45, %40, %37, %32, %26
  %57 = load ptr, ptr %0, align 8
  %58 = getelementptr inbounds %struct.mwifiex_adapter, ptr %57, i32 0, i32 47
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 16384
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.ethhdr, ptr %10, i32 0, i32 2
  %64 = load i16, ptr %63, align 1
  %65 = icmp eq i16 %64, 3465
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = zext i16 %8 to i32
  tail call void @mwifiex_process_tdls_action_frame(ptr noundef %0, ptr noundef %10, i32 noundef %67) #6
  br label %68

68:                                               ; preds = %66, %62, %56
  %69 = load i32, ptr %10, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79, !prof !9

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.rxpd, ptr %4, i32 0, i32 7
  %74 = load i8, ptr %73, align 1
  %75 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 28
  store i8 %74, ptr %75, align 1
  %76 = getelementptr inbounds %struct.rxpd, ptr %4, i32 0, i32 10
  %77 = load i8, ptr %76, align 1
  %78 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 27
  store i8 %77, ptr %78, align 2
  br label %79

79:                                               ; preds = %72, %68
  %80 = getelementptr inbounds %struct.rxpd, ptr %4, i32 0, i32 7
  %81 = load i8, ptr %80, align 1
  %82 = getelementptr inbounds %struct.rxpd, ptr %4, i32 0, i32 10
  %83 = load i8, ptr %82, align 1
  %84 = tail call zeroext i8 @mwifiex_adjust_data_rate(ptr noundef %0, i8 noundef zeroext %81, i8 noundef zeroext %83) #6
  %85 = getelementptr inbounds %struct.rxpd, ptr %4, i32 0, i32 8
  %86 = load i8, ptr %85, align 1
  %87 = getelementptr inbounds %struct.rxpd, ptr %4, i32 0, i32 9
  %88 = load i8, ptr %87, align 1
  tail call void @mwifiex_hist_data_add(ptr noundef %0, i8 noundef zeroext %84, i8 noundef signext %86, i8 noundef signext %88) #6
  %89 = tail call i32 @mwifiex_recv_packet(ptr noundef %0, ptr noundef %1) #6
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %92, i32 noundef 4, ptr noundef nonnull @.str.1) #6
  br label %93

93:                                               ; preds = %91, %79, %54
  %94 = phi i32 [ 0, %54 ], [ -1, %91 ], [ %89, %79 ]
  ret i32 %94
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_process_tdls_action_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_adjust_data_rate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_hist_data_add(ptr noundef, i8 noundef zeroext, i8 noundef signext, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_recv_packet(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_sta_rx_packet(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #6
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rxpd, ptr %6, i32 0, i32 4
  %8 = load i16, ptr %7, align 1
  %9 = getelementptr inbounds %struct.rxpd, ptr %6, i32 0, i32 3
  %10 = load i16, ptr %9, align 1
  %11 = getelementptr inbounds %struct.rxpd, ptr %6, i32 0, i32 2
  %12 = load i16, ptr %11, align 1
  %13 = getelementptr inbounds %struct.rxpd, ptr %6, i32 0, i32 5
  %14 = load i16, ptr %13, align 1
  %15 = zext i16 %10 to i32
  %16 = getelementptr i8, ptr %6, i32 %15
  %17 = zext i16 %12 to i32
  %18 = add nuw nsw i32 %17, %15
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp ugt i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %20, i32 noundef %15, i32 noundef %17) #6
  %24 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 16, i32 6
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #6
  br label %139

27:                                               ; preds = %2
  %28 = icmp eq i16 %8, 229
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = tail call i32 @mwifiex_process_mgmt_packet(ptr noundef %0, ptr noundef %1) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 8, ptr noundef nonnull @.str.3) #6
  br label %33

33:                                               ; preds = %32, %29
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #6
  br label %139

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 84
  %36 = load i8, ptr %35, align 2
  %37 = and i8 %36, 24
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 24
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 22
  %45 = load i8, ptr %44, align 4
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %43, %39, %34
  %48 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 47
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 16384
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.rxpd, ptr %6, i32 0, i32 12
  %54 = load i8, ptr %53, align 1
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52, %43
  %58 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 7
  %59 = load i32, ptr %58, align 4
  %60 = load i32, ptr %16, align 4
  %61 = xor i32 %60, %59
  %62 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 7, i32 4
  %63 = load i16, ptr %62, align 2
  %64 = getelementptr i8, ptr %16, i32 4
  %65 = load i16, ptr %64, align 2
  %66 = xor i16 %65, %63
  %67 = zext i16 %66 to i32
  %68 = or i32 %61, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %57, %52, %47
  %71 = tail call i32 @mwifiex_process_rx_packet(ptr noundef %0, ptr noundef %1)
  br label %139

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %74 = load i32, ptr %73, align 8
  switch i32 %74, label %90 [
    i32 2, label %75
    i32 8, label %75
  ]

75:                                               ; preds = %72, %72
  %76 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %77 = load i8, ptr %76, align 1
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 47
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 16384
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %113, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.rxpd, ptr %6, i32 0, i32 12
  %87 = load i8, ptr %86, align 1
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %113, label %90

90:                                               ; preds = %85, %75, %72
  %91 = getelementptr inbounds %struct.ethhdr, ptr %16, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef align 1 dereferenceable(6) %91, i32 6, i1 false)
  %92 = getelementptr inbounds %struct.rxpd, ptr %6, i32 0, i32 12
  %93 = load i8, ptr %92, align 1
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %124, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.rxpd, ptr %6, i32 0, i32 6
  %98 = load i8, ptr %97, align 1
  %99 = icmp ult i8 %98, 8
  br i1 %99, label %100, label %124

100:                                              ; preds = %96
  %101 = call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef nonnull %3) #6
  %102 = icmp eq ptr %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = load i16, ptr %13, align 1
  %105 = load i8, ptr %97, align 1
  %106 = zext i8 %105 to i32
  %107 = getelementptr %struct.mwifiex_sta_node, ptr %101, i32 0, i32 6, i32 %106
  store i16 %104, ptr %107, align 2
  br label %108

108:                                              ; preds = %103, %100
  %109 = getelementptr inbounds %struct.rxpd, ptr %6, i32 0, i32 8
  %110 = load i8, ptr %109, align 1
  %111 = getelementptr inbounds %struct.rxpd, ptr %6, i32 0, i32 9
  %112 = load i8, ptr %111, align 1
  call void @mwifiex_auto_tdls_update_peer_signal(ptr noundef %0, ptr noundef nonnull %3, i8 noundef signext %110, i8 noundef signext %112) #6
  br label %124

113:                                              ; preds = %85, %80
  %114 = icmp eq i16 %8, 231
  br i1 %114, label %122, label %115

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.rxpd, ptr %6, i32 0, i32 6
  %117 = load i8, ptr %116, align 1
  %118 = icmp ult i8 %117, 8
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = zext i8 %117 to i32
  %121 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 87, i32 %120
  store i16 %14, ptr %121, align 2
  br label %122

122:                                              ; preds = %119, %115, %113
  %123 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef align 8 dereferenceable(6) %123, i32 6, i1 false)
  br label %124

124:                                              ; preds = %122, %108, %96, %90
  %125 = getelementptr inbounds %struct.rxpd, ptr %6, i32 0, i32 6
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i16
  %128 = trunc i16 %8 to i8
  %129 = call i32 @mwifiex_11n_rx_reorder_pkt(ptr noundef %0, i16 noundef zeroext %14, i16 noundef zeroext %127, ptr noundef nonnull %3, i8 noundef zeroext %128, ptr noundef %1) #6
  %130 = icmp ne i32 %129, 0
  %131 = icmp eq i16 %8, 231
  %132 = select i1 %130, i1 true, i1 %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #6
  br label %134

134:                                              ; preds = %133, %124
  br i1 %130, label %135, label %139

135:                                              ; preds = %134
  %136 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 16, i32 6
  %137 = load i32, ptr %136, align 8
  %138 = add i32 %137, 1
  store i32 %138, ptr %136, align 8
  br label %139

139:                                              ; preds = %135, %134, %70, %33, %23
  %140 = phi i32 [ 0, %23 ], [ %30, %33 ], [ 0, %70 ], [ %129, %135 ], [ 0, %134 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #6
  ret i32 %140
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_mgmt_packet(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_auto_tdls_update_peer_signal(ptr noundef, ptr noundef, i8 noundef signext, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_11n_rx_reorder_pkt(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
