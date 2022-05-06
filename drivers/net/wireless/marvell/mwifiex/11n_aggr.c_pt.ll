; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/11n_aggr.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/11n_aggr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rfc_1042_hdr = type { i8, i8, i8, [3 x i8], i16 }
%struct.mwifiex_tx_param = type { i32 }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mwifiex_ra_list_tbl = type { %struct.list_head, %struct.sk_buff_head, [6 x i8], i32, i16, i16, i8, i32, i8, i16, i8, i8 }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.tx_packet_hdr = type { %struct.ethhdr, %struct.rfc_1042_hdr }
%struct.txpd = type { i8, i8, i16, i16, i16, i32, i8, i8, i8, [2 x i8], i8, [2 x i8] }

@.str = private unnamed_addr constant [26 x i8] c"data: -EBUSY is returned\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: host_to_card failed: %#x\0A\00", align 1
@__func__.mwifiex_11n_aggregate_pkt = private unnamed_addr constant [26 x i8] c"mwifiex_11n_aggregate_pkt\00", align 1
@__const.mwifiex_11n_form_amsdu_pkt.snap = private unnamed_addr constant %struct.rfc_1042_hdr { i8 -86, i8 -86, i8 3, [3 x i8] zeroinitializer, i16 0 }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_11n_aggregate_pkt(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.mwifiex_tx_param, align 4
  %5 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 14
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  %12 = icmp eq ptr %10, null
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %15) #6
  br label %267

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 39
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = tail call ptr @mwifiex_alloc_dma_align_buf(i32 noundef %19, i32 noundef 2592) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %23) #6
  br label %267

24:                                               ; preds = %16
  %25 = add nuw nsw i32 %8, 20
  %26 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %25
  store ptr %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 14
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr i8, ptr %30, i32 %25
  store ptr %31, ptr %29, align 8
  %32 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %32, i8 0, i32 24, i1 false)
  %33 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3, i32 14
  %34 = load i8, ptr %33, align 2
  %35 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 14
  store i8 %34, ptr %35, align 2
  %36 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3, i32 13
  %37 = load i8, ptr %36, align 1
  %38 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 13
  store i8 %37, ptr %38, align 1
  %39 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3, i32 12
  %40 = load i8, ptr %39, align 4
  %41 = and i8 %40, 4
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 12
  store i8 4, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %24
  %46 = phi i8 [ 36, %43 ], [ 32, %24 ]
  %47 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 12
  store i8 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 13, i32 0, i32 5
  %49 = load i32, ptr %48, align 8
  %50 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 13, i32 0, i32 5
  store i32 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 2
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 2
  store i64 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 5
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 5
  %57 = load i32, ptr %56, align 8
  %58 = add i32 %55, 8
  %59 = add i32 %58, %57
  %60 = load i16, ptr %17, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp ugt i32 %59, %61
  br i1 %62, label %133, label %63

63:                                               ; preds = %45
  %64 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %1, i32 0, i32 9
  %65 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 9
  %66 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 3
  %67 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %68 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 15
  br label %78

69:                                               ; preds = %123
  %70 = load i32, ptr %54, align 8
  %71 = getelementptr inbounds %struct.sk_buff, ptr %125, i32 0, i32 5
  %72 = load i32, ptr %71, align 8
  %73 = add i32 %70, 8
  %74 = add i32 %73, %72
  %75 = load i16, ptr %17, align 2
  %76 = zext i16 %75 to i32
  %77 = icmp ugt i32 %74, %76
  br i1 %77, label %129, label %78

78:                                               ; preds = %69, %63
  %79 = phi i32 [ 0, %63 ], [ %84, %69 ]
  %80 = tail call ptr @skb_dequeue(ptr noundef %9) #6
  %81 = load i16, ptr %64, align 2
  %82 = add i16 %81, -1
  store i16 %82, ptr %64, align 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #6, !srcloc !8
  %83 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 1, ptr elementtype(i32) %65) #6, !srcloc !9
  %84 = add i32 %79, 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %66) #6
  %85 = tail call ptr @skb_put(ptr noundef %20, i32 noundef 22) #6
  %86 = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 17
  %87 = load ptr, ptr %86, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %85, ptr noundef align 1 dereferenceable(12) %87, i32 12, i1 false) #6
  %88 = load ptr, ptr %86, align 4
  %89 = getelementptr inbounds %struct.ethhdr, ptr %88, i32 0, i32 2
  %90 = load i16, ptr %89, align 1
  %91 = getelementptr inbounds %struct.tx_packet_hdr, ptr %85, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %91, ptr noundef nonnull align 4 dereferenceable(6) @__const.mwifiex_11n_form_amsdu_pkt.snap, i32 6, i1 false) #6
  %92 = getelementptr inbounds %struct.tx_packet_hdr, ptr %85, i32 0, i32 1, i32 4
  store i16 %90, ptr %92, align 1
  %93 = tail call ptr @skb_pull(ptr noundef %80, i32 noundef 14) #6
  %94 = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 5
  %95 = load i32, ptr %94, align 8
  %96 = trunc i32 %95 to i16
  %97 = add i16 %96, 8
  %98 = tail call i16 @llvm.bswap.i16(i16 %97) #6
  %99 = getelementptr inbounds %struct.ethhdr, ptr %85, i32 0, i32 2
  store i16 %98, ptr %99, align 1
  %100 = load ptr, ptr %86, align 4
  %101 = load i32, ptr %94, align 8
  %102 = tail call ptr @skb_put(ptr noundef %20, i32 noundef %101) #6
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %102, ptr align 1 %100, i32 %101, i1 false) #6
  %103 = load ptr, ptr %29, align 8
  %104 = ptrtoint ptr %103 to i32
  %105 = sub i32 0, %104
  %106 = and i32 %105, 3
  %107 = tail call i32 @mwifiex_write_data_complete(ptr noundef %5, ptr noundef %80, i32 noundef 0, i32 noundef 0) #6
  tail call void @_raw_spin_lock_bh(ptr noundef %66) #6
  %108 = tail call i32 @mwifiex_is_ralist_valid(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %78
  tail call void @_raw_spin_unlock_bh(ptr noundef %66) #6
  br label %267

111:                                              ; preds = %78
  %112 = load i32, ptr %67, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load ptr, ptr %68, align 4
  %116 = load ptr, ptr %29, align 8
  %117 = ptrtoint ptr %115 to i32
  %118 = ptrtoint ptr %116 to i32
  %119 = sub i32 %117, %118
  br label %120

120:                                              ; preds = %114, %111
  %121 = phi i32 [ %119, %114 ], [ 0, %111 ]
  %122 = icmp slt i32 %121, %106
  br i1 %122, label %129, label %123

123:                                              ; preds = %120
  %124 = tail call ptr @skb_put(ptr noundef nonnull %20, i32 noundef %106) #6
  %125 = load ptr, ptr %9, align 4
  %126 = icmp eq ptr %125, %9
  %127 = icmp eq ptr %125, null
  %128 = or i1 %126, %127
  br i1 %128, label %129, label %69

129:                                              ; preds = %123, %120, %69
  %130 = phi i32 [ %106, %123 ], [ %106, %69 ], [ 0, %120 ]
  %131 = phi ptr [ null, %123 ], [ %125, %69 ], [ %80, %120 ]
  %132 = shl i32 %84, 1
  br label %133

133:                                              ; preds = %129, %45
  %134 = phi i32 [ 0, %45 ], [ %130, %129 ]
  %135 = phi ptr [ %10, %45 ], [ %131, %129 ]
  %136 = phi i32 [ 0, %45 ], [ %132, %129 ]
  %137 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %137) #6
  %138 = load i32, ptr %54, align 8
  %139 = sub i32 %138, %134
  tail call void @skb_trim(ptr noundef nonnull %20, i32 noundef %139) #6
  %140 = tail call ptr @skb_push(ptr noundef %20, i32 noundef 20) #6
  %141 = load ptr, ptr %26, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %141, i8 0, i32 20, i1 false) #6
  %142 = load i32, ptr %50, align 8
  %143 = trunc i32 %142 to i8
  %144 = getelementptr inbounds %struct.txpd, ptr %141, i32 0, i32 6
  store i8 %143, ptr %144, align 1
  %145 = tail call zeroext i8 @mwifiex_wmm_compute_drv_pkt_delay(ptr noundef %0, ptr noundef %20) #6
  %146 = getelementptr inbounds %struct.txpd, ptr %141, i32 0, i32 8
  store i8 %145, ptr %146, align 1
  %147 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 4
  %148 = load i8, ptr %147, align 1
  %149 = getelementptr inbounds %struct.txpd, ptr %141, i32 0, i32 1
  store i8 %148, ptr %149, align 1
  %150 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 1
  %151 = load i8, ptr %150, align 4
  store i8 %151, ptr %141, align 1
  %152 = getelementptr inbounds %struct.txpd, ptr %141, i32 0, i32 3
  store i16 20, ptr %152, align 1
  %153 = getelementptr inbounds %struct.txpd, ptr %141, i32 0, i32 4
  store i16 230, ptr %153, align 1
  %154 = load i32, ptr %54, align 8
  %155 = trunc i32 %154 to i16
  %156 = add i16 %155, -20
  %157 = getelementptr inbounds %struct.txpd, ptr %141, i32 0, i32 2
  store i16 %156, ptr %157, align 1
  %158 = load i8, ptr %47, align 4
  %159 = and i8 %158, 4
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %133
  %162 = getelementptr inbounds %struct.txpd, ptr %141, i32 0, i32 7
  %163 = load i8, ptr %162, align 1
  %164 = or i8 %163, 16
  store i8 %164, ptr %162, align 1
  br label %165

165:                                              ; preds = %161, %133
  %166 = getelementptr inbounds %struct.txpd, ptr %141, i32 0, i32 5
  %167 = load i32, ptr %166, align 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 19
  %171 = load i32, ptr %170, align 4
  store i32 %171, ptr %166, align 1
  br label %172

172:                                              ; preds = %169, %165
  %173 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %174 = load i8, ptr %173, align 1
  %175 = and i8 %174, 1
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %172
  %178 = load ptr, ptr %0, align 8
  %179 = getelementptr inbounds %struct.mwifiex_adapter, ptr %178, i32 0, i32 104
  %180 = load i16, ptr %179, align 2
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %177
  %183 = tail call zeroext i8 @mwifiex_check_last_packet_indication(ptr noundef %0) #6
  %184 = icmp eq i8 %183, 1
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load ptr, ptr %0, align 8
  %187 = getelementptr inbounds %struct.mwifiex_adapter, ptr %186, i32 0, i32 86
  store i8 1, ptr %187, align 4
  %188 = getelementptr inbounds %struct.txpd, ptr %141, i32 0, i32 7
  store i8 8, ptr %188, align 1
  br label %189

189:                                              ; preds = %185, %182, %177, %172
  %190 = load i8, ptr %173, align 1
  %191 = and i8 %190, 1
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = load ptr, ptr %26, align 4
  br label %195

195:                                              ; preds = %193, %189
  %196 = phi ptr [ %194, %193 ], [ null, %189 ]
  %197 = tail call ptr @skb_push(ptr noundef nonnull %20, i32 noundef %8) #6
  %198 = trunc i32 %136 to i8
  %199 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 15
  store i8 %198, ptr %199, align 1
  %200 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 53
  %201 = load i8, ptr %200, align 4
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %195
  %204 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 86
  %205 = load i8, ptr %204, align 4
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %203, %195
  %208 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 72
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %208) #6, !srcloc !8
  %209 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %208, ptr %208, i32 %136, ptr elementtype(i32) %208) #6, !srcloc !10
  %210 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 71
  tail call void @skb_queue_tail(ptr noundef %210, ptr noundef nonnull %20) #6
  br label %267

211:                                              ; preds = %203
  %212 = icmp eq ptr %135, null
  br i1 %212, label %217, label %213

213:                                              ; preds = %211
  %214 = getelementptr inbounds %struct.sk_buff, ptr %135, i32 0, i32 5
  %215 = load i32, ptr %214, align 8
  %216 = add i32 %215, 20
  br label %217

217:                                              ; preds = %213, %211
  %218 = phi i32 [ %216, %213 ], [ 0, %211 ]
  store i32 %218, ptr %4, align 4
  %219 = load i8, ptr %5, align 4
  %220 = icmp eq i8 %219, 2
  %221 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 18, i32 10
  %222 = load ptr, ptr %221, align 4
  br i1 %220, label %223, label %226

223:                                              ; preds = %217
  %224 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 10
  %225 = load i8, ptr %224, align 2
  br label %226

226:                                              ; preds = %223, %217
  %227 = phi i8 [ %225, %223 ], [ 0, %217 ]
  %228 = call i32 %222(ptr noundef %5, i8 noundef zeroext %227, ptr noundef nonnull %20, ptr noundef nonnull %4) #6
  switch i32 %228, label %266 [
    i32 -16, label %229
    i32 -1, label %259
    i32 0, label %264
  ]

229:                                              ; preds = %226
  call void @_raw_spin_lock_bh(ptr noundef %137) #6
  %230 = call i32 @mwifiex_is_ralist_valid(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %229
  call void @_raw_spin_unlock_bh(ptr noundef %137) #6
  %233 = call i32 @mwifiex_write_data_complete(ptr noundef %5, ptr noundef nonnull %20, i32 noundef 1, i32 noundef -1) #6
  br label %267

234:                                              ; preds = %229
  %235 = load i8, ptr %173, align 1
  %236 = and i8 %235, 1
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %238, label %251

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 104
  %240 = load i16, ptr %239, align 2
  %241 = icmp eq i16 %240, 0
  br i1 %241, label %251, label %242

242:                                              ; preds = %238
  %243 = load i8, ptr %204, align 4
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %251, label %245

245:                                              ; preds = %242
  %246 = load ptr, ptr %0, align 8
  %247 = getelementptr inbounds %struct.mwifiex_adapter, ptr %246, i32 0, i32 86
  store i8 0, ptr %247, align 4
  %248 = icmp eq ptr %196, null
  br i1 %248, label %251, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.txpd, ptr %196, i32 0, i32 7
  store i8 0, ptr %250, align 1
  br label %251

251:                                              ; preds = %249, %245, %242, %238, %234
  call void @skb_queue_tail(ptr noundef %9, ptr noundef nonnull %20) #6
  %252 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %1, i32 0, i32 9
  %253 = load i16, ptr %252, align 2
  %254 = add i16 %253, 1
  store i16 %254, ptr %252, align 2
  %255 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %255) #6, !srcloc !8
  %256 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %255, ptr %255, i32 1, ptr elementtype(i32) %255) #6, !srcloc !10
  %257 = load i8, ptr %47, align 4
  %258 = or i8 %257, 1
  store i8 %258, ptr %47, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %137) #6
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 4, ptr noundef nonnull @.str) #6
  br label %267

259:                                              ; preds = %226
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mwifiex_11n_aggregate_pkt, i32 noundef -1) #6
  %260 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 2
  %261 = load i32, ptr %260, align 4
  %262 = add i32 %261, 1
  store i32 %262, ptr %260, align 4
  %263 = call i32 @mwifiex_write_data_complete(ptr noundef %5, ptr noundef nonnull %20, i32 noundef 1, i32 noundef -1) #6
  br label %267

264:                                              ; preds = %226
  %265 = call i32 @mwifiex_write_data_complete(ptr noundef %5, ptr noundef nonnull %20, i32 noundef 1, i32 noundef 0) #6
  br label %266

266:                                              ; preds = %264, %226
  call void @mwifiex_rotate_priolists(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6
  br label %267

267:                                              ; preds = %266, %259, %251, %232, %207, %110, %22, %14
  %268 = phi i32 [ 0, %207 ], [ 0, %259 ], [ -1, %232 ], [ -1, %110 ], [ -1, %22 ], [ 0, %14 ], [ 0, %266 ], [ 0, %251 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %268
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_alloc_dma_align_buf(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_write_data_complete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_is_ralist_valid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_rotate_priolists(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_wmm_compute_drv_pkt_delay(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_check_last_packet_indication(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 709946, i64 2148199917, i64 2148199943, i64 2148199990, i64 2148200012, i64 2148200040, i64 2148200060}
!9 = !{i64 2148213689, i64 2148213715, i64 2148213744, i64 2148213778, i64 2148213809, i64 2148213832}
!10 = !{i64 2148211332, i64 2148211358, i64 2148211387, i64 2148211421, i64 2148211452, i64 2148211475}
