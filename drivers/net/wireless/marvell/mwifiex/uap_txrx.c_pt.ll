; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/uap_txrx.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/uap_txrx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.uap_rxpd = type <{ i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, [3 x i8], i8 }>
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
%struct.rx_packet_hdr = type { %struct.ethhdr, %struct.rfc_1042_hdr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.rfc_1042_hdr = type { i8, i8, i8, [3 x i8], i16 }
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
%struct.mwifiex_ra_list_tbl = type { %struct.list_head, %struct.sk_buff_head, [6 x i8], i32, i16, i16, i8, i32, i8, i16, i8, i8 }
%struct.uap_txpd = type { i8, i8, i16, i16, i16, i32, i8, i8, i8, [2 x i8], i8, [2 x i8] }

@.str = private unnamed_addr constant [36 x i8] c"drop packet in disconnected state.\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.1 = private unnamed_addr constant [47 x i8] c"Tx: Bridge packet limit reached. Drop packet!\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to allocate skb_uap\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"wrong rx packet: len=%d, offset=%d, length=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Rx of mgmt packet failed\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Tx: bad packet length: %d\0A\00", align 1
@bridge_tunnel_header = external dso_local constant [6 x i8], align 1
@rfc1042_header = external dso_local constant [6 x i8], align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"data: Tx: insufficient skb headroom %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Tx: cannot allocate new_skb\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"info: new skb headroom %d\0A\00", align 1
@mwifiex_1d_to_wmm_queue = external dso_local local_unnamed_addr constant [0 x i16], align 2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_handle_uap_rx_forward(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [6 x i8], align 4
  %4 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #6
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %6 = load i8, ptr %5, align 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str) #6
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #6
  br label %27

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.uap_rxpd, ptr %11, i32 0, i32 3
  %13 = load i16, ptr %12, align 1
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %11, i32 %14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %3, ptr noundef align 1 dereferenceable(6) %15, i32 6, i1 false)
  %16 = load i32, ptr %3, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %9
  %20 = tail call ptr @skb_copy(ptr noundef %1, i32 noundef 2592) #6
  tail call fastcc void @mwifiex_uap_queue_bridged_pkt(ptr noundef %0, ptr noundef %20)
  br label %25

21:                                               ; preds = %9
  %22 = call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef nonnull %3) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  call fastcc void @mwifiex_uap_queue_bridged_pkt(ptr noundef %0, ptr noundef %1)
  br label %27

25:                                               ; preds = %21, %19
  %26 = call i32 @mwifiex_process_rx_packet(ptr noundef %0, ptr noundef %1) #6
  br label %27

27:                                               ; preds = %25, %24, %8
  %28 = phi i32 [ %26, %25 ], [ 0, %24 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #6
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_uap_queue_bridged_pkt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uap_rxpd, ptr %5, i32 0, i32 3
  %7 = load i16, ptr %6, align 1
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 134
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 1023
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.1) #6
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #6
  tail call fastcc void @mwifiex_uap_cleanup_tx_queues(ptr noundef %0)
  br label %119

14:                                               ; preds = %2
  %15 = getelementptr %struct.rx_packet_hdr, ptr %9, i32 0, i32 1
  %16 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %15, ptr noundef nonnull dereferenceable(6) @bridge_tunnel_header, i32 6)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %15, ptr noundef nonnull dereferenceable(6) @rfc1042_header, i32 6)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rfc_1042_hdr, ptr %15, i32 0, i32 4
  %23 = load i16, ptr %22, align 1
  switch i16 %23, label %24 [
    i16 -3200, label %30
    i16 14209, label %30
  ]

24:                                               ; preds = %21, %14
  %25 = getelementptr i8, ptr %15, i32 -6
  %26 = getelementptr inbounds %struct.ethhdr, ptr %9, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %15, ptr noundef align 1 dereferenceable(6) %26, i32 6, i1 false)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %25, ptr noundef align 1 dereferenceable(6) %9, i32 6, i1 false)
  %27 = ptrtoint ptr %25 to i32
  %28 = ptrtoint ptr %5 to i32
  %29 = sub i32 %27, %28
  br label %30

30:                                               ; preds = %24, %21, %21, %18
  %31 = phi i32 [ %29, %24 ], [ %8, %21 ], [ %8, %21 ], [ %8, %18 ]
  %32 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %31) #6
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %35 = load ptr, ptr %34, align 8
  %36 = ptrtoint ptr %33 to i32
  %37 = ptrtoint ptr %35 to i32
  %38 = sub i32 %36, %37
  %39 = icmp ult i32 %38, 100
  br i1 %39, label %40, label %58

40:                                               ; preds = %30
  %41 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %41, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %38) #6
  %42 = tail call ptr @skb_realloc_headroom(ptr noundef %1, i32 noundef 100) #6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %49, !prof !8

44:                                               ; preds = %40
  %45 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %45, i32 noundef 4, ptr noundef nonnull @.str.7) #6
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #6
  %46 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 16, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  br label %119

49:                                               ; preds = %40
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #6
  %50 = load ptr, ptr %0, align 8
  %51 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 17
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 16
  %54 = load ptr, ptr %53, align 8
  %55 = ptrtoint ptr %52 to i32
  %56 = ptrtoint ptr %54 to i32
  %57 = sub i32 %55, %56
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %50, i32 noundef 1073741824, ptr noundef nonnull @.str.8, i32 noundef %57) #6
  br label %58

58:                                               ; preds = %49, %30
  %59 = phi ptr [ %42, %49 ], [ %1, %30 ]
  %60 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 3, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %60, i8 0, i32 24, i1 false)
  %61 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 4
  %62 = load i8, ptr %61, align 1
  %63 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 3, i32 13
  store i8 %62, ptr %63, align 1
  %64 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 1
  %65 = load i8, ptr %64, align 4
  %66 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 3, i32 14
  store i8 %65, ptr %66, align 2
  %67 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 3, i32 12
  store i8 2, ptr %67, align 4
  %68 = getelementptr inbounds %struct.ethhdr, ptr %9, i32 0, i32 1
  %69 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %68) #6
  %70 = icmp eq ptr %69, null
  br i1 %70, label %90, label %71

71:                                               ; preds = %58
  %72 = load volatile i32, ptr @jiffies, align 64
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %69, i32 0, i32 11
  store i64 %73, ptr %74, align 8
  %75 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 5
  %76 = load i32, ptr %75, align 8
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %69, i32 0, i32 11, i32 2
  %79 = load i64, ptr %78, align 8
  %80 = add i64 %79, %77
  store i64 %80, ptr %78, align 8
  %81 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %69, i32 0, i32 11, i32 4
  %82 = load i32, ptr %81, align 8
  %83 = add i32 %82, 1
  store i32 %83, ptr %81, align 8
  %84 = getelementptr inbounds %struct.uap_rxpd, ptr %5, i32 0, i32 7
  %85 = load i8, ptr %84, align 1
  %86 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %69, i32 0, i32 11, i32 7
  store i8 %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.uap_rxpd, ptr %5, i32 0, i32 10
  %88 = load i8, ptr %87, align 1
  %89 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %69, i32 0, i32 11, i32 8
  store i8 %88, ptr %89, align 1
  br label %90

90:                                               ; preds = %71, %58
  %91 = load i32, ptr %9, align 4
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 5
  %96 = load i32, ptr %95, align 8
  %97 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 16
  %98 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 16, i32 2
  %99 = load i32, ptr %98, align 8
  %100 = add i32 %99, %96
  store i32 %100, ptr %98, align 8
  %101 = load i32, ptr %97, align 8
  %102 = add i32 %101, 1
  store i32 %102, ptr %97, align 8
  %103 = load i32, ptr %95, align 8
  %104 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 3, i32 16
  store i32 %103, ptr %104, align 8
  br label %105

105:                                              ; preds = %94, %90
  %106 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #6
  %107 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 2
  store i64 %106, ptr %107, align 8
  %108 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 13, i32 0, i32 5
  %109 = load i32, ptr %108, align 8
  %110 = getelementptr [0 x i16], ptr @mwifiex_1d_to_wmm_queue, i32 0, i32 %109
  %111 = load i16, ptr %110, align 2
  %112 = zext i16 %111 to i32
  %113 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 78, i32 %112
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %113) #6, !srcloc !9
  %114 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %113, ptr %113, i32 1, ptr elementtype(i32) %113) #6, !srcloc !10
  tail call void @mwifiex_wmm_add_buf_txqueue(ptr noundef %0, ptr noundef %59) #6
  %115 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %115) #6, !srcloc !9
  %116 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %115, ptr %115, i32 1, ptr elementtype(i32) %115) #6, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #6, !srcloc !9
  %117 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #6, !srcloc !10
  %118 = load ptr, ptr %0, align 8
  tail call void @mwifiex_queue_main_work(ptr noundef %118) #6
  br label %119

119:                                              ; preds = %105, %44, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_rx_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_uap_recv_packet(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %92, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ethhdr, ptr %7, i32 0, i32 1
  %9 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %8) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %5
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %9, i32 0, i32 11
  store i64 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %9, i32 0, i32 11, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = add i64 %19, %17
  store i64 %20, ptr %18, align 8
  %21 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %9, i32 0, i32 11, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 8
  br label %24

24:                                               ; preds = %11, %5
  %25 = load i32, ptr %7, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %7) #6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %68, label %31

31:                                               ; preds = %28, %24
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %34 = load ptr, ptr %33, align 8
  %35 = ptrtoint ptr %32 to i32
  %36 = ptrtoint ptr %34 to i32
  %37 = sub i32 %35, %36
  %38 = icmp ult i32 %37, 100
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = tail call ptr @skb_realloc_headroom(ptr noundef nonnull %1, i32 noundef 100) #6
  br label %43

41:                                               ; preds = %31
  %42 = tail call ptr @skb_copy(ptr noundef nonnull %1, i32 noundef 2592) #6
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi ptr [ %40, %39 ], [ %42, %41 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %64, label %46, !prof !8

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 3, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %47, i8 0, i32 24, i1 false)
  %48 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 4
  %49 = load i8, ptr %48, align 1
  %50 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 3, i32 13
  store i8 %49, ptr %50, align 1
  %51 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 1
  %52 = load i8, ptr %51, align 4
  %53 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 3, i32 14
  store i8 %52, ptr %53, align 2
  %54 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 3, i32 12
  store i8 2, ptr %54, align 4
  %55 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #6
  %56 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 2
  store i64 %55, ptr %56, align 8
  tail call void @mwifiex_wmm_add_buf_txqueue(ptr noundef %0, ptr noundef nonnull %44) #6
  %57 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %57) #6, !srcloc !9
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %57, ptr %57, i32 1, ptr elementtype(i32) %57) #6, !srcloc !10
  %59 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 134
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #6, !srcloc !9
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #6, !srcloc !10
  %61 = load volatile i32, ptr %59, align 4
  %62 = icmp sgt i32 %61, 1023
  br i1 %62, label %63, label %65

63:                                               ; preds = %46
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.1) #6
  tail call fastcc void @mwifiex_uap_cleanup_tx_queues(ptr noundef %0)
  br label %65

64:                                               ; preds = %43
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.2) #6
  br label %65

65:                                               ; preds = %64, %63, %46
  tail call void @mwifiex_queue_main_work(ptr noundef %3) #6
  %66 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %7) #6
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %92

68:                                               ; preds = %65, %28
  %69 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.anon.49, ptr %1, i32 0, i32 2
  store ptr %70, ptr %71, align 8
  %72 = load ptr, ptr %69, align 4
  %73 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %1, ptr noundef %72) #6
  %74 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  store i16 %73, ptr %74, align 8
  %75 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %76 = load i16, ptr %75, align 8
  %77 = and i16 %76, -97
  store i16 %77, ptr %75, align 8
  %78 = load i8, ptr %3, align 4
  %79 = add i8 %78, -1
  %80 = icmp ult i8 %79, 2
  br i1 %80, label %81, label %90

81:                                               ; preds = %68
  %82 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %83 = load i32, ptr %82, align 8
  %84 = icmp ugt i32 %83, 4096
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %87 = load i32, ptr %86, align 8
  %88 = add i32 %83, -4096
  %89 = add i32 %88, %87
  store i32 %89, ptr %82, align 8
  br label %90

90:                                               ; preds = %85, %81, %68
  %91 = tail call i32 @netif_rx_any_context(ptr noundef nonnull %1) #6
  br label %92

92:                                               ; preds = %90, %65, %2
  %93 = phi i32 [ 0, %90 ], [ -1, %2 ], [ 0, %65 ]
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wmm_add_buf_txqueue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_uap_cleanup_tx_queues(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 135
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 9
  %6 = load i8, ptr %4, align 8
  br label %7

7:                                                ; preds = %68, %1
  %8 = phi i8 [ %6, %1 ], [ %71, %68 ]
  %9 = phi i32 [ 0, %1 ], [ %70, %68 ]
  %10 = icmp eq i8 %8, 8
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i8 0, ptr %4, align 8
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi i8 [ 0, %11 ], [ %8, %7 ]
  %14 = zext i8 %13 to i32
  %15 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %2, i32 0, i32 %14
  %16 = load ptr, ptr %0, align 8
  %17 = load ptr, ptr %15, align 4
  %18 = icmp eq ptr %17, %15
  br i1 %18, label %68, label %19

19:                                               ; preds = %12
  %20 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 2, i32 %9
  %21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %16, i32 0, i32 134
  br label %22

22:                                               ; preds = %60, %19
  %23 = phi ptr [ %17, %19 ], [ %62, %60 ]
  %24 = phi i1 [ false, %19 ], [ %61, %60 ]
  %25 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %23, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %60, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %23, i32 0, i32 1, i32 1
  %30 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %23, i32 0, i32 11
  br label %31

31:                                               ; preds = %56, %28
  %32 = phi i1 [ %57, %56 ], [ %24, %28 ]
  %33 = phi ptr [ %34, %56 ], [ %26, %28 ]
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %33, %25
  br i1 %35, label %60, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 3, i32 12
  %38 = load i8, ptr %37, align 4
  %39 = and i8 %38, 2
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %36
  %42 = load i32, ptr %29, align 4
  %43 = add i32 %42, -1
  store volatile i32 %43, ptr %29, align 4
  %44 = load ptr, ptr %33, align 8
  %45 = getelementptr inbounds %struct.anon.49, ptr %33, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  store ptr null, ptr %45, align 4
  store ptr null, ptr %33, align 8
  %47 = getelementptr inbounds %struct.anon.49, ptr %44, i32 0, i32 1
  store volatile ptr %46, ptr %47, align 4
  store volatile ptr %44, ptr %46, align 8
  %48 = tail call i32 @mwifiex_write_data_complete(ptr noundef %16, ptr noundef %33, i32 noundef 0, i32 noundef -1) #6
  %49 = load i8, ptr %30, align 1, !range !11
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %41
  %52 = load i32, ptr %20, align 4
  %53 = add i32 %52, -1
  store i32 %53, ptr %20, align 4
  br label %56

54:                                               ; preds = %41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #6, !srcloc !9
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #6, !srcloc !12
  br label %56

56:                                               ; preds = %54, %51, %36
  %57 = phi i1 [ %32, %36 ], [ true, %54 ], [ true, %51 ]
  %58 = load volatile i32, ptr %21, align 4
  %59 = icmp slt i32 %58, 129
  br i1 %59, label %60, label %31

60:                                               ; preds = %56, %31, %22
  %61 = phi i1 [ %24, %22 ], [ %57, %56 ], [ %32, %31 ]
  %62 = load ptr, ptr %23, align 4
  %63 = icmp eq ptr %62, %15
  br i1 %63, label %64, label %22

64:                                               ; preds = %60
  %65 = load i8, ptr %4, align 8
  br i1 %61, label %66, label %68

66:                                               ; preds = %64
  %67 = add i8 %65, 1
  store i8 %67, ptr %4, align 8
  br label %73

68:                                               ; preds = %64, %12
  %69 = phi i8 [ %13, %12 ], [ %65, %64 ]
  %70 = add nuw nsw i32 %9, 1
  %71 = add i8 %69, 1
  store i8 %71, ptr %4, align 8
  %72 = icmp eq i32 %70, 8
  br i1 %72, label %73, label %7

73:                                               ; preds = %68, %66
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_queue_main_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_any_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_uap_rx_packet(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [6 x i8], align 4
  %4 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #6
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uap_rxpd, ptr %6, i32 0, i32 4
  %8 = load i16, ptr %7, align 1
  %9 = getelementptr inbounds %struct.uap_rxpd, ptr %6, i32 0, i32 3
  %10 = load i16, ptr %9, align 1
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %6, i32 %11
  %13 = getelementptr inbounds %struct.ethhdr, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %3, align 4
  %15 = getelementptr i8, ptr %13, i32 4
  %16 = load i16, ptr %15, align 2
  %17 = getelementptr inbounds i8, ptr %3, i32 4
  store i16 %16, ptr %17, align 4
  %18 = load i16, ptr %9, align 1
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.uap_rxpd, ptr %6, i32 0, i32 2
  %21 = load i16, ptr %20, align 1
  %22 = zext i16 %21 to i32
  %23 = add nuw nsw i32 %22, %19
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp ugt i32 %23, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %25, i32 noundef %19, i32 noundef %22) #6
  %29 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 16, i32 6
  %30 = load i32, ptr %29, align 8
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 8
  %32 = call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef nonnull %3) #6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %32, i32 0, i32 11, i32 6
  %36 = load i32, ptr %35, align 8
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 8
  br label %38

38:                                               ; preds = %34, %28
  call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #6
  br label %93

39:                                               ; preds = %2
  switch i16 %8, label %45 [
    i16 229, label %40
    i16 231, label %60
  ]

40:                                               ; preds = %39
  %41 = tail call i32 @mwifiex_process_mgmt_packet(ptr noundef %0, ptr noundef %1) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 8, ptr noundef nonnull @.str.4) #6
  br label %44

44:                                               ; preds = %43, %40
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #6
  br label %93

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.uap_rxpd, ptr %6, i32 0, i32 6
  %47 = load i8, ptr %46, align 1
  %48 = icmp ult i8 %47, 8
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %50) #6
  %51 = call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef nonnull %3) #6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.uap_rxpd, ptr %6, i32 0, i32 5
  %55 = load i16, ptr %54, align 1
  %56 = load i8, ptr %46, align 1
  %57 = zext i8 %56 to i32
  %58 = getelementptr %struct.mwifiex_sta_node, ptr %51, i32 0, i32 6, i32 %57
  store i16 %55, ptr %58, align 2
  br label %59

59:                                               ; preds = %53, %49
  call void @_raw_spin_unlock_bh(ptr noundef %50) #6
  br label %60

60:                                               ; preds = %59, %45, %39
  %61 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 125
  %62 = load i8, ptr %61, align 2
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.uap_rxpd, ptr %6, i32 0, i32 6
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = call ptr @mwifiex_11n_get_rx_reorder_tbl(ptr noundef %0, i32 noundef %67, ptr noundef nonnull %3) #6
  %69 = icmp eq ptr %68, null
  %70 = load i16, ptr %7, align 1
  br i1 %69, label %73, label %71

71:                                               ; preds = %64
  %72 = trunc i16 %70 to i8
  br label %77

73:                                               ; preds = %64
  %74 = icmp eq i16 %70, 230
  br i1 %74, label %77, label %75

75:                                               ; preds = %73, %60
  %76 = call i32 @mwifiex_handle_uap_rx_forward(ptr noundef %0, ptr noundef %1)
  br label %93

77:                                               ; preds = %73, %71
  %78 = phi i8 [ %72, %71 ], [ -26, %73 ]
  %79 = getelementptr inbounds %struct.uap_rxpd, ptr %6, i32 0, i32 5
  %80 = load i16, ptr %79, align 1
  %81 = load i8, ptr %65, align 1
  %82 = zext i8 %81 to i16
  %83 = call i32 @mwifiex_11n_rx_reorder_pkt(ptr noundef %0, i16 noundef zeroext %80, i16 noundef zeroext %82, ptr noundef nonnull %3, i8 noundef zeroext %78, ptr noundef %1) #6
  %84 = icmp ne i32 %83, 0
  %85 = icmp eq i16 %8, 231
  %86 = select i1 %84, i1 true, i1 %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #6
  br label %88

88:                                               ; preds = %87, %77
  br i1 %84, label %89, label %93

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 16, i32 6
  %91 = load i32, ptr %90, align 8
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 8
  br label %93

93:                                               ; preds = %89, %88, %75, %44, %38
  %94 = phi i32 [ 0, %38 ], [ %41, %44 ], [ %76, %75 ], [ %83, %89 ], [ 0, %88 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #6
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_mgmt_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_11n_get_rx_reorder_tbl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_11n_rx_reorder_pkt(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mwifiex_process_uap_txpd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 14
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef 0) #6
  store i32 -1, ptr %11, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  br label %83

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %17 = load ptr, ptr %16, align 8
  %18 = ptrtoint ptr %15 to i32
  %19 = ptrtoint ptr %17 to i32
  %20 = sub i32 %18, %19
  %21 = icmp ult i32 %20, 100
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/marvell/mwifiex/uap_txrx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 474, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

23:                                               ; preds = %13
  %24 = load i32, ptr %15, align 1
  %25 = icmp eq i32 %24, 229
  %26 = select i1 %25, i16 229, i16 0
  %27 = sub nsw i32 44, %6
  %28 = add i32 %27, %18
  %29 = and i32 %28, 63
  %30 = add nuw nsw i32 %29, 20
  %31 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %30) #6
  %32 = load ptr, ptr %14, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %32, i8 0, i32 20, i1 false)
  %33 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 4
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.uap_txpd, ptr %32, i32 0, i32 1
  store i8 %34, ptr %35, align 1
  %36 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 1
  %37 = load i8, ptr %36, align 4
  store i8 %37, ptr %32, align 1
  %38 = load i32, ptr %7, align 8
  %39 = sub i32 %38, %30
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds %struct.uap_txpd, ptr %32, i32 0, i32 2
  store i16 %40, ptr %41, align 1
  %42 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 5
  %43 = load i32, ptr %42, align 8
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.uap_txpd, ptr %32, i32 0, i32 6
  store i8 %44, ptr %45, align 1
  %46 = tail call zeroext i8 @mwifiex_wmm_compute_drv_pkt_delay(ptr noundef %0, ptr noundef %1) #6
  %47 = getelementptr inbounds %struct.uap_txpd, ptr %32, i32 0, i32 8
  store i8 %46, ptr %47, align 1
  %48 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %49 = load i8, ptr %48, align 4
  %50 = and i8 %49, 24
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %23
  %53 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  %54 = load i8, ptr %53, align 4
  %55 = getelementptr inbounds %struct.uap_txpd, ptr %32, i32 0, i32 10
  store i8 %54, ptr %55, align 1
  %56 = getelementptr inbounds %struct.uap_txpd, ptr %32, i32 0, i32 7
  %57 = load i8, ptr %56, align 1
  %58 = or i8 %57, 32
  store i8 %58, ptr %56, align 1
  br label %59

59:                                               ; preds = %52, %23
  %60 = load i8, ptr %45, align 1
  %61 = icmp ult i8 %60, 8
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = zext i8 %60 to i32
  %64 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 8, i32 %63
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.uap_txpd, ptr %32, i32 0, i32 5
  store i32 %65, ptr %66, align 1
  br label %67

67:                                               ; preds = %62, %59
  %68 = trunc i32 %30 to i16
  br i1 %25, label %69, label %73

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.uap_txpd, ptr %32, i32 0, i32 4
  store i16 %26, ptr %70, align 1
  %71 = trunc i32 %29 to i16
  %72 = add nuw nsw i16 %71, 28
  br label %73

73:                                               ; preds = %69, %67
  %74 = phi i16 [ %72, %69 ], [ %68, %67 ]
  %75 = getelementptr inbounds %struct.uap_txpd, ptr %32, i32 0, i32 3
  store i16 %74, ptr %75, align 1
  %76 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %6) #6
  %77 = getelementptr inbounds %struct.uap_txpd, ptr %32, i32 0, i32 5
  %78 = load i32, ptr %77, align 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 19
  %82 = load i32, ptr %81, align 4
  store i32 %82, ptr %77, align 1
  br label %83

83:                                               ; preds = %80, %73, %10
  %84 = phi ptr [ %12, %10 ], [ %14, %80 ], [ %14, %73 ]
  %85 = load ptr, ptr %84, align 4
  ret ptr %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_wmm_compute_drv_pkt_delay(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_write_data_complete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 717297, i64 2148207268, i64 2148207294, i64 2148207341, i64 2148207363, i64 2148207391, i64 2148207411}
!10 = !{i64 2148218683, i64 2148218709, i64 2148218738, i64 2148218772, i64 2148218803, i64 2148218826}
!11 = !{i8 0, i8 2}
!12 = !{i64 2148221040, i64 2148221066, i64 2148221095, i64 2148221129, i64 2148221160, i64 2148221183}
!13 = !{i64 2157836425, i64 2157836937, i64 2157836462, i64 2157836518, i64 2157836552, i64 2157836576, i64 2157836617, i64 2157836638, i64 2157836666, i64 2157836700}
