; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/ie.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/ie.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_ie = type { i16, i16, i16, [256 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee80211_vendor_ie = type { i8, i8, [3 x i8], i8 }
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
%struct.mwifiex_11h_intf_state = type { i8, i8 }
%struct.mwifiex_ds_mem_rw = type { i32, i32 }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.mwifiex_user_scan_chan = type { i8, i8, i8, i8, i32 }
%struct.mwifiex_ie_list = type { i16, i16, [16 x %struct.mwifiex_ie] }
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

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_set_mgmt_ies(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #5
  store i16 -1, ptr %6, align 2
  %7 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %83, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %83, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 262) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #5
  br label %308

19:                                               ; preds = %14
  %20 = load i32, ptr %11, align 4
  %21 = icmp ugt i32 %20, 2
  br i1 %21, label %22, label %54

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.mwifiex_ie, ptr %16, i32 0, i32 3
  br label %24

24:                                               ; preds = %47, %22
  %25 = phi i32 [ 0, %22 ], [ %50, %47 ]
  %26 = phi i32 [ %20, %22 ], [ %49, %47 ]
  %27 = phi i16 [ 0, %22 ], [ %48, %47 ]
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr i8, ptr %28, i32 %25
  %30 = getelementptr inbounds %struct.ieee_types_header, ptr %29, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = add nuw nsw i32 %32, 2
  %34 = icmp ult i32 %26, %33
  br i1 %34, label %84, label %35

35:                                               ; preds = %24
  %36 = load i8, ptr %29, align 1
  switch i8 %36, label %40 [
    i8 0, label %47
    i8 1, label %47
    i8 7, label %47
    i8 32, label %47
    i8 42, label %47
    i8 50, label %47
    i8 45, label %47
    i8 61, label %47
    i8 -65, label %47
    i8 -64, label %47
    i8 -35, label %37
  ]

37:                                               ; preds = %35
  %38 = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 20722, i32 noundef 2, ptr noundef %29, i32 noundef %33) #5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37, %35
  %41 = zext i16 %27 to i32
  %42 = add nuw nsw i32 %33, %41
  %43 = icmp ugt i32 %42, 256
  br i1 %43, label %84, label %44

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %23, i32 %41
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %45, ptr noundef align 1 %29, i32 %33, i1 false) #5
  %46 = trunc i32 %42 to i16
  br label %47

47:                                               ; preds = %44, %37, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35
  %48 = phi i16 [ %46, %44 ], [ %27, %37 ], [ %27, %35 ], [ %27, %35 ], [ %27, %35 ], [ %27, %35 ], [ %27, %35 ], [ %27, %35 ], [ %27, %35 ], [ %27, %35 ], [ %27, %35 ], [ %27, %35 ]
  %49 = sub i32 %26, %33
  %50 = add i32 %33, %25
  %51 = icmp ugt i32 %49, 2
  br i1 %51, label %24, label %52

52:                                               ; preds = %47
  %53 = load i32, ptr %11, align 4
  br label %54

54:                                               ; preds = %52, %19
  %55 = phi i32 [ %20, %19 ], [ %53, %52 ]
  %56 = phi i16 [ 0, %19 ], [ %48, %52 ]
  %57 = load ptr, ptr %7, align 4
  %58 = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 20722, i32 noundef 1, ptr noundef %57, i32 noundef %55) #5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.ieee80211_vendor_ie, ptr %58, i32 0, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = add nuw nsw i32 %63, 2
  %65 = zext i16 %56 to i32
  %66 = add nuw nsw i32 %64, %65
  %67 = icmp ugt i32 %66, 256
  br i1 %67, label %84, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.mwifiex_ie, ptr %16, i32 0, i32 3
  %70 = getelementptr i8, ptr %69, i32 %65
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %70, ptr noundef nonnull align 1 %58, i32 %64, i1 false) #5
  %71 = trunc i32 %66 to i16
  br label %74

72:                                               ; preds = %54
  %73 = icmp eq i16 %56, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %72, %68
  %75 = phi i16 [ %71, %68 ], [ %56, %72 ]
  store i16 -1, ptr %16, align 8
  %76 = getelementptr inbounds %struct.mwifiex_ie, ptr %16, i32 0, i32 1
  store i16 290, ptr %76, align 2
  %77 = getelementptr inbounds %struct.mwifiex_ie, ptr %16, i32 0, i32 2
  store i16 %75, ptr %77, align 4
  %78 = call fastcc i32 @mwifiex_update_uap_custom_ie(ptr noundef %0, ptr noundef nonnull %16, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i16, ptr %6, align 2
  %82 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 124
  store i16 %81, ptr %82, align 4
  br label %85

83:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #5
  br label %86

84:                                               ; preds = %74, %60, %40, %24
  tail call void @kfree(ptr noundef nonnull %16) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #5
  br label %308

85:                                               ; preds = %80, %72
  tail call void @kfree(ptr noundef nonnull %16) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #5
  br label %86

86:                                               ; preds = %85, %83
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i16 -1, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #5
  store i16 -1, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #5
  store i16 -1, ptr %5, align 2
  %87 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %152, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 12
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %152, label %94

94:                                               ; preds = %90
  %95 = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 20722, i32 noundef 4, ptr noundef nonnull %88, i32 noundef %92) #5
  %96 = icmp eq ptr %95, null
  br i1 %96, label %120, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %99 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %98, i32 noundef 3520, i32 noundef 262) #6
  %100 = icmp eq ptr %99, null
  br i1 %100, label %120, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.mwifiex_ie, ptr %99, i32 0, i32 2
  %103 = load i16, ptr %102, align 4
  %104 = zext i16 %103 to i32
  %105 = getelementptr inbounds %struct.ieee_types_header, ptr %95, i32 0, i32 1
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = add nuw nsw i32 %107, %104
  %109 = icmp ugt i32 %108, 254
  br i1 %109, label %120, label %110

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.mwifiex_ie, ptr %99, i32 0, i32 3
  %112 = getelementptr i8, ptr %111, i32 %104
  %113 = add nuw nsw i32 %107, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %112, ptr noundef nonnull align 1 %95, i32 %113, i1 false) #5
  %114 = load i8, ptr %105, align 1
  %115 = zext i8 %114 to i16
  %116 = add nuw nsw i16 %115, 2
  %117 = load i16, ptr %102, align 4
  %118 = add i16 %116, %117
  store i16 %118, ptr %102, align 4
  %119 = getelementptr inbounds %struct.mwifiex_ie, ptr %99, i32 0, i32 1
  store i16 256, ptr %119, align 2
  store i16 -1, ptr %99, align 8
  br label %120

120:                                              ; preds = %110, %101, %97, %94
  %121 = phi ptr [ null, %97 ], [ %99, %101 ], [ %99, %110 ], [ null, %94 ]
  %122 = load ptr, ptr %87, align 4
  %123 = load i32, ptr %91, align 4
  %124 = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 5271450, i32 noundef 9, ptr noundef %122, i32 noundef %123) #5
  %125 = icmp eq ptr %124, null
  br i1 %125, label %152, label %126

126:                                              ; preds = %120
  %127 = icmp eq ptr %121, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %126
  %129 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %130 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %129, i32 noundef 3520, i32 noundef 262) #6
  %131 = icmp eq ptr %130, null
  br i1 %131, label %152, label %132

132:                                              ; preds = %128, %126
  %133 = phi ptr [ %130, %128 ], [ %121, %126 ]
  %134 = getelementptr inbounds %struct.mwifiex_ie, ptr %133, i32 0, i32 2
  %135 = load i16, ptr %134, align 1
  %136 = zext i16 %135 to i32
  %137 = getelementptr inbounds %struct.ieee_types_header, ptr %124, i32 0, i32 1
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = add nuw nsw i32 %139, %136
  %141 = icmp ugt i32 %140, 254
  br i1 %141, label %152, label %142

142:                                              ; preds = %132
  %143 = getelementptr inbounds %struct.mwifiex_ie, ptr %133, i32 0, i32 3
  %144 = getelementptr i8, ptr %143, i32 %136
  %145 = add nuw nsw i32 %139, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %144, ptr noundef nonnull align 1 %124, i32 %145, i1 false) #5
  %146 = load i8, ptr %137, align 1
  %147 = zext i8 %146 to i16
  %148 = add nuw nsw i16 %147, 2
  %149 = load i16, ptr %134, align 1
  %150 = add i16 %148, %149
  store i16 %150, ptr %134, align 1
  %151 = getelementptr inbounds %struct.mwifiex_ie, ptr %133, i32 0, i32 1
  store i16 256, ptr %151, align 1
  store i16 -1, ptr %133, align 1
  br label %152

152:                                              ; preds = %142, %132, %128, %120, %90, %86
  %153 = phi ptr [ null, %86 ], [ null, %90 ], [ null, %128 ], [ %133, %132 ], [ %133, %142 ], [ %121, %120 ]
  %154 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 3
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %219, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 13
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %219, label %161

161:                                              ; preds = %157
  %162 = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 20722, i32 noundef 4, ptr noundef nonnull %155, i32 noundef %159) #5
  %163 = icmp eq ptr %162, null
  br i1 %163, label %187, label %164

164:                                              ; preds = %161
  %165 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %166 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %165, i32 noundef 3520, i32 noundef 262) #6
  %167 = icmp eq ptr %166, null
  br i1 %167, label %187, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.mwifiex_ie, ptr %166, i32 0, i32 2
  %170 = load i16, ptr %169, align 4
  %171 = zext i16 %170 to i32
  %172 = getelementptr inbounds %struct.ieee_types_header, ptr %162, i32 0, i32 1
  %173 = load i8, ptr %172, align 1
  %174 = zext i8 %173 to i32
  %175 = add nuw nsw i32 %174, %171
  %176 = icmp ugt i32 %175, 254
  br i1 %176, label %187, label %177

177:                                              ; preds = %168
  %178 = getelementptr inbounds %struct.mwifiex_ie, ptr %166, i32 0, i32 3
  %179 = getelementptr i8, ptr %178, i32 %171
  %180 = add nuw nsw i32 %174, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %179, ptr noundef nonnull align 1 %162, i32 %180, i1 false) #5
  %181 = load i8, ptr %172, align 1
  %182 = zext i8 %181 to i16
  %183 = add nuw nsw i16 %182, 2
  %184 = load i16, ptr %169, align 4
  %185 = add i16 %183, %184
  store i16 %185, ptr %169, align 4
  %186 = getelementptr inbounds %struct.mwifiex_ie, ptr %166, i32 0, i32 1
  store i16 32, ptr %186, align 2
  store i16 -1, ptr %166, align 8
  br label %187

187:                                              ; preds = %177, %168, %164, %161
  %188 = phi ptr [ null, %164 ], [ %166, %168 ], [ %166, %177 ], [ null, %161 ]
  %189 = load ptr, ptr %154, align 4
  %190 = load i32, ptr %158, align 4
  %191 = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 5271450, i32 noundef 9, ptr noundef %189, i32 noundef %190) #5
  %192 = icmp eq ptr %191, null
  br i1 %192, label %219, label %193

193:                                              ; preds = %187
  %194 = icmp eq ptr %188, null
  br i1 %194, label %195, label %199

195:                                              ; preds = %193
  %196 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %197 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %196, i32 noundef 3520, i32 noundef 262) #6
  %198 = icmp eq ptr %197, null
  br i1 %198, label %219, label %199

199:                                              ; preds = %195, %193
  %200 = phi ptr [ %197, %195 ], [ %188, %193 ]
  %201 = getelementptr inbounds %struct.mwifiex_ie, ptr %200, i32 0, i32 2
  %202 = load i16, ptr %201, align 1
  %203 = zext i16 %202 to i32
  %204 = getelementptr inbounds %struct.ieee_types_header, ptr %191, i32 0, i32 1
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i32
  %207 = add nuw nsw i32 %206, %203
  %208 = icmp ugt i32 %207, 254
  br i1 %208, label %219, label %209

209:                                              ; preds = %199
  %210 = getelementptr inbounds %struct.mwifiex_ie, ptr %200, i32 0, i32 3
  %211 = getelementptr i8, ptr %210, i32 %203
  %212 = add nuw nsw i32 %206, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %211, ptr noundef nonnull align 1 %191, i32 %212, i1 false) #5
  %213 = load i8, ptr %204, align 1
  %214 = zext i8 %213 to i16
  %215 = add nuw nsw i16 %214, 2
  %216 = load i16, ptr %201, align 1
  %217 = add i16 %215, %216
  store i16 %217, ptr %201, align 1
  %218 = getelementptr inbounds %struct.mwifiex_ie, ptr %200, i32 0, i32 1
  store i16 32, ptr %218, align 1
  store i16 -1, ptr %200, align 1
  br label %219

219:                                              ; preds = %209, %199, %195, %187, %157, %152
  %220 = phi ptr [ null, %152 ], [ null, %157 ], [ null, %195 ], [ %200, %199 ], [ %200, %209 ], [ %188, %187 ]
  %221 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 4
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %286, label %224

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 14
  %226 = load i32, ptr %225, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %286, label %228

228:                                              ; preds = %224
  %229 = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 20722, i32 noundef 4, ptr noundef nonnull %222, i32 noundef %226) #5
  %230 = icmp eq ptr %229, null
  br i1 %230, label %254, label %231

231:                                              ; preds = %228
  %232 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %233 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %232, i32 noundef 3520, i32 noundef 262) #6
  %234 = icmp eq ptr %233, null
  br i1 %234, label %254, label %235

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.mwifiex_ie, ptr %233, i32 0, i32 2
  %237 = load i16, ptr %236, align 4
  %238 = zext i16 %237 to i32
  %239 = getelementptr inbounds %struct.ieee_types_header, ptr %229, i32 0, i32 1
  %240 = load i8, ptr %239, align 1
  %241 = zext i8 %240 to i32
  %242 = add nuw nsw i32 %241, %238
  %243 = icmp ugt i32 %242, 254
  br i1 %243, label %254, label %244

244:                                              ; preds = %235
  %245 = getelementptr inbounds %struct.mwifiex_ie, ptr %233, i32 0, i32 3
  %246 = getelementptr i8, ptr %245, i32 %238
  %247 = add nuw nsw i32 %241, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %246, ptr noundef nonnull align 1 %229, i32 %247, i1 false) #5
  %248 = load i8, ptr %239, align 1
  %249 = zext i8 %248 to i16
  %250 = add nuw nsw i16 %249, 2
  %251 = load i16, ptr %236, align 4
  %252 = add i16 %250, %251
  store i16 %252, ptr %236, align 4
  %253 = getelementptr inbounds %struct.mwifiex_ie, ptr %233, i32 0, i32 1
  store i16 10, ptr %253, align 2
  store i16 -1, ptr %233, align 8
  br label %254

254:                                              ; preds = %244, %235, %231, %228
  %255 = phi ptr [ null, %231 ], [ %233, %235 ], [ %233, %244 ], [ null, %228 ]
  %256 = load ptr, ptr %221, align 4
  %257 = load i32, ptr %225, align 4
  %258 = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 5271450, i32 noundef 9, ptr noundef %256, i32 noundef %257) #5
  %259 = icmp eq ptr %258, null
  br i1 %259, label %286, label %260

260:                                              ; preds = %254
  %261 = icmp eq ptr %255, null
  br i1 %261, label %262, label %266

262:                                              ; preds = %260
  %263 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %264 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %263, i32 noundef 3520, i32 noundef 262) #6
  %265 = icmp eq ptr %264, null
  br i1 %265, label %286, label %266

266:                                              ; preds = %262, %260
  %267 = phi ptr [ %264, %262 ], [ %255, %260 ]
  %268 = getelementptr inbounds %struct.mwifiex_ie, ptr %267, i32 0, i32 2
  %269 = load i16, ptr %268, align 1
  %270 = zext i16 %269 to i32
  %271 = getelementptr inbounds %struct.ieee_types_header, ptr %258, i32 0, i32 1
  %272 = load i8, ptr %271, align 1
  %273 = zext i8 %272 to i32
  %274 = add nuw nsw i32 %273, %270
  %275 = icmp ugt i32 %274, 254
  br i1 %275, label %293, label %276

276:                                              ; preds = %266
  %277 = getelementptr inbounds %struct.mwifiex_ie, ptr %267, i32 0, i32 3
  %278 = getelementptr i8, ptr %277, i32 %270
  %279 = add nuw nsw i32 %273, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %278, ptr noundef nonnull align 1 %258, i32 %279, i1 false) #5
  %280 = load i8, ptr %271, align 1
  %281 = zext i8 %280 to i16
  %282 = add nuw nsw i16 %281, 2
  %283 = load i16, ptr %268, align 1
  %284 = add i16 %282, %283
  store i16 %284, ptr %268, align 1
  %285 = getelementptr inbounds %struct.mwifiex_ie, ptr %267, i32 0, i32 1
  store i16 10, ptr %285, align 1
  store i16 -1, ptr %267, align 1
  br label %293

286:                                              ; preds = %262, %254, %224, %219
  %287 = phi ptr [ null, %219 ], [ null, %224 ], [ null, %262 ], [ %255, %254 ]
  %288 = icmp ne ptr %153, null
  %289 = icmp ne ptr %220, null
  %290 = select i1 %288, i1 true, i1 %289
  %291 = icmp ne ptr %287, null
  %292 = select i1 %290, i1 true, i1 %291
  br i1 %292, label %293, label %297

293:                                              ; preds = %286, %276, %266
  %294 = phi ptr [ %287, %286 ], [ %267, %276 ], [ %267, %266 ]
  %295 = call fastcc i32 @mwifiex_update_uap_custom_ie(ptr noundef %0, ptr noundef %153, ptr noundef nonnull %3, ptr noundef %220, ptr noundef nonnull %4, ptr noundef %294, ptr noundef nonnull %5) #5
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %305

297:                                              ; preds = %293, %286
  %298 = phi ptr [ %294, %293 ], [ null, %286 ]
  %299 = load i16, ptr %3, align 2
  %300 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 121
  store i16 %299, ptr %300, align 2
  %301 = load i16, ptr %4, align 2
  %302 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 122
  store i16 %301, ptr %302, align 8
  %303 = load i16, ptr %5, align 2
  %304 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 123
  store i16 %303, ptr %304, align 2
  br label %305

305:                                              ; preds = %297, %293
  %306 = phi ptr [ %294, %293 ], [ %298, %297 ]
  %307 = phi i32 [ %295, %293 ], [ 0, %297 ]
  tail call void @kfree(ptr noundef %153) #5
  tail call void @kfree(ptr noundef %220) #5
  tail call void @kfree(ptr noundef %306) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  br label %308

308:                                              ; preds = %305, %84, %18
  %309 = phi i32 [ %307, %305 ], [ -12, %18 ], [ -22, %84 ]
  ret i32 %309
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_del_mgmt_ies(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 124
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, -1
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 262) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %70, label %9

9:                                                ; preds = %5
  %10 = load i16, ptr %2, align 4
  store i16 %10, ptr %7, align 8
  %11 = getelementptr inbounds %struct.mwifiex_ie, ptr %7, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.mwifiex_ie, ptr %7, i32 0, i32 2
  store i16 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 122
  %14 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 123
  %15 = tail call fastcc i32 @mwifiex_update_uap_custom_ie(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef null, ptr noundef %13, ptr noundef null, ptr noundef %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %64

17:                                               ; preds = %9
  store i16 -1, ptr %2, align 4
  br label %18

18:                                               ; preds = %17, %1
  %19 = phi ptr [ %7, %17 ], [ null, %1 ]
  %20 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 121
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, -1
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 262) #6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %64, label %27

27:                                               ; preds = %23
  %28 = load i16, ptr %20, align 2
  store i16 %28, ptr %25, align 8
  %29 = getelementptr inbounds %struct.mwifiex_ie, ptr %25, i32 0, i32 1
  store i16 0, ptr %29, align 2
  %30 = getelementptr inbounds %struct.mwifiex_ie, ptr %25, i32 0, i32 2
  store i16 0, ptr %30, align 4
  br label %31

31:                                               ; preds = %27, %18
  %32 = phi ptr [ %25, %27 ], [ null, %18 ]
  %33 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 122
  %34 = load i16, ptr %33, align 8
  %35 = icmp eq i16 %34, -1
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %38 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3264, i32 noundef 262) #6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %64, label %40

40:                                               ; preds = %36
  %41 = load i16, ptr %33, align 8
  store i16 %41, ptr %38, align 8
  %42 = getelementptr inbounds %struct.mwifiex_ie, ptr %38, i32 0, i32 1
  store i16 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.mwifiex_ie, ptr %38, i32 0, i32 2
  store i16 0, ptr %43, align 4
  br label %44

44:                                               ; preds = %40, %31
  %45 = phi ptr [ %38, %40 ], [ null, %31 ]
  %46 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 123
  %47 = load i16, ptr %46, align 2
  %48 = icmp eq i16 %47, -1
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %51 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3264, i32 noundef 262) #6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %64, label %53

53:                                               ; preds = %49
  %54 = load i16, ptr %46, align 2
  store i16 %54, ptr %51, align 8
  %55 = getelementptr inbounds %struct.mwifiex_ie, ptr %51, i32 0, i32 1
  store i16 0, ptr %55, align 2
  %56 = getelementptr inbounds %struct.mwifiex_ie, ptr %51, i32 0, i32 2
  store i16 0, ptr %56, align 4
  br label %61

57:                                               ; preds = %44
  %58 = icmp ne ptr %32, null
  %59 = icmp ne ptr %45, null
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %53
  %62 = phi ptr [ %51, %53 ], [ null, %57 ]
  %63 = tail call fastcc i32 @mwifiex_update_uap_custom_ie(ptr noundef %0, ptr noundef %32, ptr noundef %20, ptr noundef %45, ptr noundef %33, ptr noundef %62, ptr noundef %46)
  br label %64

64:                                               ; preds = %61, %57, %49, %36, %23, %9
  %65 = phi ptr [ %32, %61 ], [ null, %57 ], [ null, %9 ], [ null, %23 ], [ %32, %36 ], [ %32, %49 ]
  %66 = phi ptr [ %45, %61 ], [ null, %57 ], [ null, %9 ], [ null, %23 ], [ null, %36 ], [ %45, %49 ]
  %67 = phi ptr [ %62, %61 ], [ null, %57 ], [ null, %9 ], [ null, %23 ], [ null, %36 ], [ null, %49 ]
  %68 = phi ptr [ %19, %61 ], [ %19, %57 ], [ %7, %9 ], [ %19, %23 ], [ %19, %36 ], [ %19, %49 ]
  %69 = phi i32 [ %63, %61 ], [ 0, %57 ], [ -1, %9 ], [ -12, %23 ], [ -12, %36 ], [ -12, %49 ]
  tail call void @kfree(ptr noundef %68) #5
  tail call void @kfree(ptr noundef %65) #5
  tail call void @kfree(ptr noundef %66) #5
  tail call void @kfree(ptr noundef %67) #5
  br label %70

70:                                               ; preds = %64, %5
  %71 = phi i32 [ %69, %64 ], [ -12, %5 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_update_uap_custom_ie(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2, ptr noundef readonly %3, ptr nocapture noundef writeonly %4, ptr noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 {
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 4196) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %203, label %11

11:                                               ; preds = %7
  store i16 361, ptr %9, align 8
  %12 = getelementptr inbounds %struct.mwifiex_ie_list, ptr %9, i32 0, i32 2
  %13 = icmp eq ptr %1, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.mwifiex_ie, ptr %1, i32 0, i32 2
  %16 = load i16, ptr %15, align 1
  %17 = add i16 %16, 6
  %18 = zext i16 %17 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %12, ptr nonnull align 1 %1, i32 %18, i1 false)
  %19 = getelementptr i8, ptr %12, i32 %18
  %20 = getelementptr inbounds %struct.mwifiex_ie_list, ptr %9, i32 0, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = add i16 %21, %17
  store i16 %22, ptr %20, align 2
  br label %23

23:                                               ; preds = %14, %11
  %24 = phi ptr [ %19, %14 ], [ %12, %11 ]
  %25 = icmp eq ptr %3, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.mwifiex_ie, ptr %3, i32 0, i32 2
  %28 = load i16, ptr %27, align 1
  %29 = add i16 %28, 6
  %30 = zext i16 %29 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %24, ptr nonnull align 1 %3, i32 %30, i1 false)
  %31 = getelementptr i8, ptr %24, i32 %30
  %32 = getelementptr inbounds %struct.mwifiex_ie_list, ptr %9, i32 0, i32 1
  %33 = load i16, ptr %32, align 2
  %34 = add i16 %33, %29
  store i16 %34, ptr %32, align 2
  br label %35

35:                                               ; preds = %26, %23
  %36 = phi ptr [ %31, %26 ], [ %24, %23 ]
  %37 = icmp eq ptr %5, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.mwifiex_ie_list, ptr %9, i32 0, i32 1
  %40 = load i16, ptr %39, align 2
  br label %49

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.mwifiex_ie, ptr %5, i32 0, i32 2
  %43 = load i16, ptr %42, align 1
  %44 = add i16 %43, 6
  %45 = zext i16 %44 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %36, ptr nonnull align 1 %5, i32 %45, i1 false)
  %46 = getelementptr inbounds %struct.mwifiex_ie_list, ptr %9, i32 0, i32 1
  %47 = load i16, ptr %46, align 2
  %48 = add i16 %47, %44
  br label %49

49:                                               ; preds = %41, %38
  %50 = phi i16 [ %40, %38 ], [ %48, %41 ]
  %51 = getelementptr inbounds %struct.mwifiex_ie_list, ptr %9, i32 0, i32 1
  store i16 0, ptr %51, align 2
  %52 = icmp ugt i16 %50, 3
  br i1 %52, label %53, label %164

53:                                               ; preds = %156, %49
  %54 = phi i16 [ %160, %156 ], [ 0, %49 ]
  %55 = phi i16 [ %162, %156 ], [ %50, %49 ]
  %56 = phi i32 [ %64, %156 ], [ 4, %49 ]
  %57 = sext i16 %55 to i32
  %58 = and i32 %56, 65535
  %59 = getelementptr i8, ptr %9, i32 %58
  %60 = getelementptr inbounds %struct.mwifiex_ie, ptr %59, i32 0, i32 2
  %61 = load i16, ptr %60, align 1
  %62 = sext i16 %61 to i32
  %63 = add nsw i32 %62, 6
  %64 = add nsw i32 %63, %58
  %65 = icmp ugt i32 %63, %57
  br i1 %65, label %171, label %66

66:                                               ; preds = %53
  %67 = load i16, ptr %59, align 1
  %68 = getelementptr inbounds %struct.mwifiex_ie, ptr %59, i32 0, i32 1
  %69 = load i16, ptr %68, align 1
  %70 = icmp eq i16 %67, -1
  br i1 %70, label %71, label %127

71:                                               ; preds = %66
  %72 = load ptr, ptr %0, align 8
  %73 = getelementptr inbounds %struct.mwifiex_adapter, ptr %72, i32 0, i32 125
  %74 = load i16, ptr %73, align 4
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %171, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.mwifiex_adapter, ptr %72, i32 0, i32 5
  %78 = icmp ugt i16 %61, 256
  %79 = zext i16 %74 to i32
  br label %80

80:                                               ; preds = %112, %76
  %81 = phi i32 [ 0, %76 ], [ %113, %112 ]
  %82 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 120, i32 %81, i32 1
  %83 = load i16, ptr %82, align 2
  %84 = icmp eq i16 %83, -1
  br i1 %84, label %112, label %85

85:                                               ; preds = %80
  %86 = icmp eq i16 %83, %69
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  br i1 %78, label %112, label %115

88:                                               ; preds = %85
  %89 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 120, i32 %81, i32 2
  %90 = load i16, ptr %89, align 2
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %88
  %93 = load i8, ptr %77, align 4
  %94 = zext i8 %93 to i32
  %95 = icmp eq i8 %93, 0
  br i1 %95, label %115, label %96

96:                                               ; preds = %109, %92
  %97 = phi i32 [ %110, %109 ], [ 0, %92 ]
  %98 = getelementptr %struct.mwifiex_adapter, ptr %72, i32 0, i32 4, i32 %97
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %0
  br i1 %100, label %109, label %101

101:                                              ; preds = %96
  %102 = getelementptr %struct.mwifiex_private, ptr %99, i32 0, i32 120, i32 %81, i32 1
  %103 = load i16, ptr %102, align 1
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = getelementptr %struct.mwifiex_private, ptr %99, i32 0, i32 120, i32 %81, i32 2
  %107 = load i16, ptr %106, align 1
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105, %101, %96
  %110 = add nuw nsw i32 %97, 1
  %111 = icmp eq i32 %110, %94
  br i1 %111, label %115, label %96

112:                                              ; preds = %105, %88, %87, %80
  %113 = add nuw nsw i32 %81, 1
  %114 = icmp eq i32 %113, %79
  br i1 %114, label %171, label %80

115:                                              ; preds = %109, %92, %87
  %116 = trunc i32 %81 to i16
  %117 = icmp eq i16 %116, -1
  br i1 %117, label %171, label %118

118:                                              ; preds = %115
  %119 = and i32 %81, 65535
  %120 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 120, i32 %119, i32 3
  %121 = getelementptr inbounds %struct.mwifiex_ie, ptr %59, i32 0, i32 3
  %122 = zext i16 %61 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %120, ptr align 1 %121, i32 %122, i1 false) #5
  %123 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 120, i32 %119, i32 2
  store i16 %61, ptr %123, align 2
  %124 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 120, i32 %119
  store i16 %116, ptr %124, align 2
  %125 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 120, i32 %119, i32 1
  store i16 %69, ptr %125, align 2
  store i16 %116, ptr %59, align 1
  %126 = load i16, ptr %51, align 2
  br label %156

127:                                              ; preds = %66
  %128 = icmp eq i16 %69, 0
  br i1 %128, label %129, label %171

129:                                              ; preds = %127
  %130 = load ptr, ptr %0, align 8
  %131 = getelementptr inbounds %struct.mwifiex_adapter, ptr %130, i32 0, i32 5
  %132 = load i8, ptr %131, align 4
  %133 = zext i8 %132 to i32
  %134 = icmp eq i8 %132, 0
  %135 = zext i16 %67 to i32
  br i1 %134, label %152, label %136

136:                                              ; preds = %149, %129
  %137 = phi i32 [ %150, %149 ], [ 0, %129 ]
  %138 = getelementptr %struct.mwifiex_adapter, ptr %130, i32 0, i32 4, i32 %137
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, %0
  br i1 %140, label %149, label %141

141:                                              ; preds = %136
  %142 = getelementptr %struct.mwifiex_private, ptr %139, i32 0, i32 120, i32 %135, i32 1
  %143 = load i16, ptr %142, align 1
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = getelementptr %struct.mwifiex_private, ptr %139, i32 0, i32 120, i32 %135, i32 2
  %147 = load i16, ptr %146, align 1
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %149, label %171

149:                                              ; preds = %145, %141, %136
  %150 = add nuw nsw i32 %137, 1
  %151 = icmp eq i32 %150, %133
  br i1 %151, label %152, label %136

152:                                              ; preds = %149, %129
  store i16 0, ptr %60, align 1
  %153 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 120, i32 %135
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(262) %153, ptr noundef align 1 dereferenceable(262) %59, i32 262, i1 false) #5
  %154 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 120, i32 %135, i32 2
  %155 = load i16, ptr %154, align 2
  br label %156

156:                                              ; preds = %152, %118
  %157 = phi i16 [ %54, %152 ], [ %126, %118 ]
  %158 = phi i16 [ %155, %152 ], [ %61, %118 ]
  %159 = add i16 %158, 6
  %160 = add i16 %159, %157
  store i16 %160, ptr %51, align 2
  %161 = trunc i32 %63 to i16
  %162 = sub i16 %55, %161
  %163 = icmp ugt i16 %162, 3
  br i1 %163, label %53, label %164

164:                                              ; preds = %156, %49
  %165 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %166 = load i8, ptr %165, align 1
  %167 = and i8 %166, 1
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %164
  %170 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 176, i16 noundef zeroext 1, i32 noundef 1, ptr noundef nonnull %9, i1 noundef zeroext true) #5
  br label %171

171:                                              ; preds = %169, %164, %145, %127, %115, %112, %71, %53
  %172 = phi i32 [ %170, %169 ], [ 0, %164 ], [ -1, %112 ], [ -1, %145 ], [ -1, %127 ], [ -1, %115 ], [ -1, %71 ], [ -1, %53 ]
  br i1 %13, label %183, label %173

173:                                              ; preds = %171
  %174 = load i16, ptr %2, align 2
  %175 = icmp eq i16 %174, -1
  br i1 %175, label %176, label %183

176:                                              ; preds = %173
  %177 = load i16, ptr %12, align 4
  store i16 %177, ptr %2, align 2
  %178 = getelementptr inbounds %struct.mwifiex_ie, ptr %1, i32 0, i32 2
  %179 = load i16, ptr %178, align 1
  %180 = add i16 %179, 6
  %181 = zext i16 %180 to i32
  %182 = getelementptr i8, ptr %12, i32 %181
  br label %183

183:                                              ; preds = %176, %173, %171
  %184 = phi ptr [ %182, %176 ], [ %12, %173 ], [ %12, %171 ]
  br i1 %25, label %195, label %185

185:                                              ; preds = %183
  %186 = load i16, ptr %3, align 1
  %187 = icmp eq i16 %186, -1
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = load i16, ptr %184, align 2
  store i16 %189, ptr %4, align 2
  %190 = getelementptr inbounds %struct.mwifiex_ie, ptr %3, i32 0, i32 2
  %191 = load i16, ptr %190, align 1
  %192 = add i16 %191, 6
  %193 = zext i16 %192 to i32
  %194 = getelementptr i8, ptr %184, i32 %193
  br label %195

195:                                              ; preds = %188, %185, %183
  %196 = phi ptr [ %194, %188 ], [ %184, %185 ], [ %184, %183 ]
  br i1 %37, label %202, label %197

197:                                              ; preds = %195
  %198 = load i16, ptr %5, align 1
  %199 = icmp eq i16 %198, -1
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = load i16, ptr %196, align 2
  store i16 %201, ptr %6, align 2
  br label %202

202:                                              ; preds = %200, %197, %195
  tail call void @kfree(ptr noundef nonnull %9) #5
  br label %203

203:                                              ; preds = %202, %7
  %204 = phi i32 [ %172, %202 ], [ -12, %7 ]
  ret i32 %204
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_vendor_elem(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
