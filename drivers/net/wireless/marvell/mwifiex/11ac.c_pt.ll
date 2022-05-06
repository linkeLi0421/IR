; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/11ac.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/11ac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.mwifiex_bssdescriptor = type <{ [6 x i8], %struct.cfg80211_ssid, i8, i32, i32, i32, i32, i16, i8, i8, i32, [14 x i8], [14 x i8], i16, [2 x i8], i64, i64, %union.ieee_types_phy_param_set, %union.ieee_types_ss_param_set, i8, i16, %struct.ieee_types_wmm_parameter, i8, [3 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, i8, i8, ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i32, i8, i8, i8, [5 x i8] }>
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%union.ieee_types_phy_param_set = type { %struct.ieee_types_fh_param_set }
%struct.ieee_types_fh_param_set = type <{ i8, i8, i16, i8, i8, i8 }>
%union.ieee_types_ss_param_set = type { %struct.ieee_types_cf_param_set }
%struct.ieee_types_cf_param_set = type { i8, i8, i8, i8, i16, i16 }
%struct.ieee_types_wmm_parameter = type { %struct.ieee_types_vendor_header, i8, i8, i8, i8, [4 x %struct.ieee_types_wmm_ac_parameters] }
%struct.ieee_types_vendor_header = type { i8, i8, %struct.anon.141 }
%struct.anon.141 = type { [3 x i8], i8 }
%struct.ieee_types_wmm_ac_parameters = type { i8, i8, i16 }
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_private = type <{ ptr, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i32, i8, [3 x i8], ptr, %struct.net_device_stats, i32, i32, i32, i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, [18 x i16], [2 x i8], i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i8], ptr, %struct.cfg80211_ssid, [6 x i8], i8, %struct.mwifiex_current_bss_params, i16, i8, i8, i16, i16, i8, i8, i8, i8, %struct.mwifiex_802_11_security, [4 x %struct.mwifiex_wep_key], i16, [256 x i8], i16, i8, %struct.host_cmd_ds_802_11_key_material, %struct.host_cmd_ds_802_11_key_material_v2, [256 x i8], i8, i16, ptr, i16, i8, i8, i8, [3 x i8], %struct.mwifiex_wmm_desc, [4 x %struct.atomic_t], %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, [8 x %struct.mwifiex_tx_aggr], %struct.mwifiex_add_ba_param, [8 x i16], [8 x i8], %struct.list_head, %struct.spinlock, [500 x i8], i32, [256 x i8], i8, i8, [8 x %struct.mwifiex_vendor_spec_cfg_ie], [256 x i8], i8, i8, ptr, i32, %struct.spinlock, %struct.wireless_dev, %struct.mwifiex_chan_freq_power, i32, [128 x i8], ptr, i16, [2 x i8], %struct.mutex, ptr, [6 x i8], %struct.wps, i8, i32, i32, i8, i8, %struct.mwifiex_ds_misc_subsc_evt, [16 x %struct.mwifiex_ie], i16, i16, i16, i16, i8, i8, i32, [4 x i8], %struct.mwifiex_roc_cfg, i8, i8, i8, i8, i32, i8, i8, [2 x i8], %struct.mwifiex_uap_bss_param, %struct.cfg80211_chan_def, ptr, %struct.sk_buff_head, i8, [3 x i8], %struct.timer_list, i8, [3 x i8], %struct.idr, %struct.spinlock, ptr, %struct.cfg80211_chan_def, ptr, %struct.delayed_work, %struct.timer_list, ptr, %struct.delayed_work, %struct.cfg80211_beacon_data, %struct.mwifiex_11h_intf_state, [2 x i8], %struct.mwifiex_ds_mem_rw, %struct.sk_buff_head, [50 x %struct.mwifiex_user_scan_chan], i8, i8, [2 x i8] }>
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_current_bss_params = type { %struct.mwifiex_bssdescriptor, i8, i8, i8, i32, [14 x i8] }
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
%struct.ieee_types_oper_mode_ntf = type { i8, i8, i8 }
%struct.mwifiex_ie_types_oper_mode_ntf = type <{ %struct.mwifiex_ie_types_header, i8 }>
%struct.host_cmd_ds_command = type { i16, i16, i16, i16, %union.anon.148 }
%union.anon.148 = type <{ %struct.host_cmd_ds_802_11_rssi_info, [212 x i8] }>
%struct.host_cmd_ds_802_11_rssi_info = type { i16, i16, i16, [9 x i16], i64 }
%struct.mwifiex_11ac_vht_cfg = type { i8, i8, i32, i32, i32 }
%struct.host_cmd_11ac_vht_cfg = type { i16, i8, i8, i32, i32, i32 }

@max_rate_lgi_160MHZ = internal unnamed_addr constant [8 x [3 x i16]] [[3 x i16] [i16 585, i16 702, i16 780], [3 x i16] [i16 1170, i16 1404, i16 1560], [3 x i16] [i16 1755, i16 2106, i16 0], [3 x i16] [i16 2340, i16 2808, i16 3120], [3 x i16] [i16 2925, i16 3510, i16 3900], [3 x i16] [i16 3510, i16 4212, i16 4680], [3 x i16] [i16 4095, i16 4914, i16 5460], [3 x i16] [i16 4680, i16 5616, i16 6240]], align 2
@max_rate_lgi_80MHZ = internal unnamed_addr constant [8 x [3 x i16]] [[3 x i16] [i16 292, i16 351, i16 390], [3 x i16] [i16 585, i16 702, i16 780], [3 x i16] [i16 877, i16 1053, i16 1170], [3 x i16] [i16 1170, i16 1404, i16 1560], [3 x i16] [i16 1462, i16 1755, i16 1950], [3 x i16] [i16 1755, i16 2106, i16 0], [3 x i16] [i16 2047, i16 2457, i16 2730], [3 x i16] [i16 2340, i16 2808, i16 3120]], align 2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_fill_vht_cap_tlv(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = and i8 %2, 4
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 131
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 132
  %9 = select i1 %6, ptr %7, ptr %8
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %1, align 1
  %11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 133
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ieee80211_vht_cap, ptr %1, i32 0, i32 1
  %14 = load i16, ptr %13, align 1
  %15 = zext i16 %14 to i32
  %16 = and i32 %12, 3
  %17 = and i32 %15, 3
  %18 = icmp eq i32 %16, 3
  %19 = icmp eq i32 %17, 3
  %20 = select i1 %18, i1 true, i1 %19
  %21 = tail call i32 @llvm.umin.i32(i32 %16, i32 %17)
  %22 = trunc i32 %21 to i16
  %23 = select i1 %20, i16 3, i16 %22
  %24 = lshr i32 %12, 2
  %25 = and i32 %24, 3
  %26 = lshr i32 %15, 2
  %27 = and i32 %26, 3
  %28 = icmp eq i32 %25, 3
  %29 = icmp eq i32 %27, 3
  %30 = select i1 %28, i1 true, i1 %29
  %31 = tail call i32 @llvm.umin.i32(i32 %25, i32 %27)
  %32 = trunc i32 %31 to i16
  %33 = shl nuw nsw i16 %32, 2
  %34 = select i1 %30, i16 12, i16 %33
  %35 = or i16 %23, %34
  %36 = lshr i32 %12, 4
  %37 = and i32 %36, 3
  %38 = lshr i32 %15, 4
  %39 = and i32 %38, 3
  %40 = icmp eq i32 %37, 3
  %41 = icmp eq i32 %39, 3
  %42 = select i1 %40, i1 true, i1 %41
  %43 = tail call i32 @llvm.umin.i32(i32 %37, i32 %39)
  %44 = trunc i32 %43 to i16
  %45 = shl nuw nsw i16 %44, 4
  %46 = select i1 %42, i16 48, i16 %45
  %47 = or i16 %35, %46
  %48 = lshr i32 %12, 6
  %49 = and i32 %48, 3
  %50 = lshr i32 %15, 6
  %51 = and i32 %50, 3
  %52 = icmp eq i32 %49, 3
  %53 = icmp eq i32 %51, 3
  %54 = select i1 %52, i1 true, i1 %53
  %55 = tail call i32 @llvm.umin.i32(i32 %49, i32 %51)
  %56 = trunc i32 %55 to i16
  %57 = shl nuw nsw i16 %56, 6
  %58 = select i1 %54, i16 192, i16 %57
  %59 = or i16 %47, %58
  %60 = lshr i32 %12, 8
  %61 = and i32 %60, 3
  %62 = lshr i32 %15, 8
  %63 = and i32 %62, 3
  %64 = icmp eq i32 %61, 3
  %65 = icmp eq i32 %63, 3
  %66 = select i1 %64, i1 true, i1 %65
  %67 = tail call i32 @llvm.umin.i32(i32 %61, i32 %63)
  %68 = trunc i32 %67 to i16
  %69 = shl nuw nsw i16 %68, 8
  %70 = select i1 %66, i16 768, i16 %69
  %71 = or i16 %59, %70
  %72 = lshr i32 %12, 10
  %73 = and i32 %72, 3
  %74 = lshr i32 %15, 10
  %75 = and i32 %74, 3
  %76 = icmp eq i32 %73, 3
  %77 = icmp eq i32 %75, 3
  %78 = select i1 %76, i1 true, i1 %77
  %79 = tail call i32 @llvm.umin.i32(i32 %73, i32 %75)
  %80 = trunc i32 %79 to i16
  %81 = shl nuw nsw i16 %80, 10
  %82 = select i1 %78, i16 3072, i16 %81
  %83 = or i16 %71, %82
  %84 = lshr i32 %12, 12
  %85 = and i32 %84, 3
  %86 = lshr i32 %15, 12
  %87 = and i32 %86, 3
  %88 = icmp eq i32 %85, 3
  %89 = icmp eq i32 %87, 3
  %90 = select i1 %88, i1 true, i1 %89
  %91 = tail call i32 @llvm.umin.i32(i32 %85, i32 %87)
  %92 = trunc i32 %91 to i16
  %93 = shl nuw nsw i16 %92, 12
  %94 = select i1 %90, i16 12288, i16 %93
  %95 = or i16 %83, %94
  %96 = lshr i32 %12, 14
  %97 = and i32 %96, 3
  %98 = lshr i32 %15, 14
  %99 = icmp eq i32 %97, 3
  %100 = icmp eq i32 %98, 3
  %101 = select i1 %99, i1 true, i1 %100
  %102 = tail call i32 @llvm.umin.i32(i32 %97, i32 %98)
  %103 = trunc i32 %102 to i16
  %104 = shl nuw i16 %103, 14
  %105 = select i1 %101, i16 -16384, i16 %104
  %106 = or i16 %95, %105
  store i16 %106, ptr %13, align 1
  %107 = load ptr, ptr %0, align 8
  %108 = and i8 %2, 32
  %109 = icmp eq i8 %108, 0
  %110 = getelementptr inbounds %struct.mwifiex_adapter, ptr %107, i32 0, i32 132
  %111 = getelementptr inbounds %struct.mwifiex_adapter, ptr %107, i32 0, i32 131
  %112 = select i1 %109, ptr %111, ptr %110
  %113 = load i32, ptr %112, align 4
  %114 = zext i16 %106 to i32
  %115 = and i32 %114, 12
  %116 = icmp ne i32 %115, 12
  %117 = and i32 %114, 48
  %118 = icmp eq i32 %117, 48
  %119 = and i32 %114, 192
  %120 = icmp eq i32 %119, 192
  %121 = and i32 %114, 768
  %122 = icmp eq i32 %121, 768
  %123 = and i32 %114, 3072
  %124 = icmp eq i32 %123, 3072
  %125 = and i32 %114, 12288
  %126 = icmp eq i32 %125, 12288
  %127 = and i32 %114, 49152
  %128 = icmp eq i32 %127, 49152
  %129 = zext i1 %116 to i32
  %130 = select i1 %118, i32 %129, i32 2
  %131 = select i1 %120, i32 %130, i32 3
  %132 = select i1 %122, i32 %131, i32 4
  %133 = select i1 %124, i32 %132, i32 5
  %134 = select i1 %126, i32 %133, i32 6
  %135 = select i1 %128, i32 %134, i32 7
  %136 = shl nuw nsw i32 %135, 1
  %137 = lshr i32 %114, %136
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 3
  %140 = icmp eq i8 %139, 3
  %141 = select i1 %140, i8 2, i8 %139
  %142 = and i32 %113, 12
  %143 = icmp eq i32 %142, 0
  %144 = zext i8 %141 to i32
  br i1 %143, label %149, label %145

145:                                              ; preds = %3
  %146 = getelementptr [8 x [3 x i16]], ptr @max_rate_lgi_160MHZ, i32 0, i32 %135, i32 %144
  %147 = load i16, ptr %146, align 2
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %153, label %158

149:                                              ; preds = %3
  %150 = getelementptr [8 x [3 x i16]], ptr @max_rate_lgi_80MHZ, i32 0, i32 %135, i32 %144
  %151 = load i16, ptr %150, align 2
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %149, %145
  %154 = phi ptr [ @max_rate_lgi_160MHZ, %145 ], [ @max_rate_lgi_80MHZ, %149 ]
  %155 = add nsw i32 %144, -1
  %156 = getelementptr [8 x [3 x i16]], ptr %154, i32 0, i32 %135, i32 %155
  %157 = load i16, ptr %156, align 2
  br label %158

158:                                              ; preds = %153, %149, %145
  %159 = phi i16 [ %147, %145 ], [ %151, %149 ], [ %157, %153 ]
  %160 = getelementptr inbounds %struct.ieee80211_vht_cap, ptr %1, i32 0, i32 1, i32 1
  store i16 %159, ptr %160, align 1
  %161 = load i32, ptr %11, align 4
  %162 = lshr i32 %161, 16
  %163 = getelementptr inbounds %struct.ieee80211_vht_cap, ptr %1, i32 0, i32 1, i32 2
  %164 = load i16, ptr %163, align 1
  %165 = zext i16 %164 to i32
  %166 = and i32 %162, 3
  %167 = and i32 %165, 3
  %168 = icmp eq i32 %166, 3
  %169 = icmp eq i32 %167, 3
  %170 = select i1 %168, i1 true, i1 %169
  %171 = tail call i32 @llvm.umin.i32(i32 %166, i32 %167)
  %172 = trunc i32 %171 to i16
  %173 = select i1 %170, i16 3, i16 %172
  %174 = lshr i32 %161, 18
  %175 = and i32 %174, 3
  %176 = lshr i32 %165, 2
  %177 = and i32 %176, 3
  %178 = icmp eq i32 %175, 3
  %179 = icmp eq i32 %177, 3
  %180 = select i1 %178, i1 true, i1 %179
  %181 = tail call i32 @llvm.umin.i32(i32 %175, i32 %177)
  %182 = trunc i32 %181 to i16
  %183 = shl nuw nsw i16 %182, 2
  %184 = select i1 %180, i16 12, i16 %183
  %185 = or i16 %173, %184
  %186 = lshr i32 %161, 20
  %187 = and i32 %186, 3
  %188 = lshr i32 %165, 4
  %189 = and i32 %188, 3
  %190 = icmp eq i32 %187, 3
  %191 = icmp eq i32 %189, 3
  %192 = select i1 %190, i1 true, i1 %191
  %193 = tail call i32 @llvm.umin.i32(i32 %187, i32 %189)
  %194 = trunc i32 %193 to i16
  %195 = shl nuw nsw i16 %194, 4
  %196 = select i1 %192, i16 48, i16 %195
  %197 = or i16 %185, %196
  %198 = lshr i32 %161, 22
  %199 = and i32 %198, 3
  %200 = lshr i32 %165, 6
  %201 = and i32 %200, 3
  %202 = icmp eq i32 %199, 3
  %203 = icmp eq i32 %201, 3
  %204 = select i1 %202, i1 true, i1 %203
  %205 = tail call i32 @llvm.umin.i32(i32 %199, i32 %201)
  %206 = trunc i32 %205 to i16
  %207 = shl nuw nsw i16 %206, 6
  %208 = select i1 %204, i16 192, i16 %207
  %209 = or i16 %197, %208
  %210 = lshr i32 %161, 24
  %211 = and i32 %210, 3
  %212 = lshr i32 %165, 8
  %213 = and i32 %212, 3
  %214 = icmp eq i32 %211, 3
  %215 = icmp eq i32 %213, 3
  %216 = select i1 %214, i1 true, i1 %215
  %217 = tail call i32 @llvm.umin.i32(i32 %211, i32 %213)
  %218 = trunc i32 %217 to i16
  %219 = shl nuw nsw i16 %218, 8
  %220 = select i1 %216, i16 768, i16 %219
  %221 = or i16 %209, %220
  %222 = lshr i32 %161, 26
  %223 = and i32 %222, 3
  %224 = lshr i32 %165, 10
  %225 = and i32 %224, 3
  %226 = icmp eq i32 %223, 3
  %227 = icmp eq i32 %225, 3
  %228 = select i1 %226, i1 true, i1 %227
  %229 = tail call i32 @llvm.umin.i32(i32 %223, i32 %225)
  %230 = trunc i32 %229 to i16
  %231 = shl nuw nsw i16 %230, 10
  %232 = select i1 %228, i16 3072, i16 %231
  %233 = or i16 %221, %232
  %234 = lshr i32 %161, 28
  %235 = and i32 %234, 3
  %236 = lshr i32 %165, 12
  %237 = and i32 %236, 3
  %238 = icmp eq i32 %235, 3
  %239 = icmp eq i32 %237, 3
  %240 = select i1 %238, i1 true, i1 %239
  %241 = tail call i32 @llvm.umin.i32(i32 %235, i32 %237)
  %242 = trunc i32 %241 to i16
  %243 = shl nuw nsw i16 %242, 12
  %244 = select i1 %240, i16 12288, i16 %243
  %245 = or i16 %233, %244
  %246 = lshr i32 %161, 30
  %247 = lshr i32 %165, 14
  %248 = icmp eq i32 %246, 3
  %249 = icmp eq i32 %247, 3
  %250 = select i1 %248, i1 true, i1 %249
  %251 = tail call i32 @llvm.umin.i32(i32 %246, i32 %247)
  %252 = trunc i32 %251 to i16
  %253 = shl nuw i16 %252, 14
  %254 = select i1 %250, i16 -16384, i16 %253
  %255 = or i16 %245, %254
  store i16 %255, ptr %163, align 1
  %256 = load ptr, ptr %0, align 8
  %257 = getelementptr inbounds %struct.mwifiex_adapter, ptr %256, i32 0, i32 132
  %258 = getelementptr inbounds %struct.mwifiex_adapter, ptr %256, i32 0, i32 131
  %259 = select i1 %109, ptr %258, ptr %257
  %260 = load i32, ptr %259, align 4
  %261 = zext i16 %255 to i32
  %262 = and i32 %261, 12
  %263 = icmp ne i32 %262, 12
  %264 = and i32 %261, 48
  %265 = icmp eq i32 %264, 48
  %266 = and i32 %261, 192
  %267 = icmp eq i32 %266, 192
  %268 = and i32 %261, 768
  %269 = icmp eq i32 %268, 768
  %270 = and i32 %261, 3072
  %271 = icmp eq i32 %270, 3072
  %272 = and i32 %261, 12288
  %273 = icmp eq i32 %272, 12288
  %274 = and i32 %261, 49152
  %275 = icmp eq i32 %274, 49152
  %276 = zext i1 %263 to i32
  %277 = select i1 %265, i32 %276, i32 2
  %278 = select i1 %267, i32 %277, i32 3
  %279 = select i1 %269, i32 %278, i32 4
  %280 = select i1 %271, i32 %279, i32 5
  %281 = select i1 %273, i32 %280, i32 6
  %282 = select i1 %275, i32 %281, i32 7
  %283 = shl nuw nsw i32 %282, 1
  %284 = lshr i32 %261, %283
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 3
  %287 = icmp eq i8 %286, 3
  %288 = select i1 %287, i8 2, i8 %286
  %289 = and i32 %260, 12
  %290 = icmp eq i32 %289, 0
  %291 = zext i8 %288 to i32
  br i1 %290, label %296, label %292

292:                                              ; preds = %158
  %293 = getelementptr [8 x [3 x i16]], ptr @max_rate_lgi_160MHZ, i32 0, i32 %282, i32 %291
  %294 = load i16, ptr %293, align 2
  %295 = icmp eq i16 %294, 0
  br i1 %295, label %300, label %305

296:                                              ; preds = %158
  %297 = getelementptr [8 x [3 x i16]], ptr @max_rate_lgi_80MHZ, i32 0, i32 %282, i32 %291
  %298 = load i16, ptr %297, align 2
  %299 = icmp eq i16 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %296, %292
  %301 = phi ptr [ @max_rate_lgi_160MHZ, %292 ], [ @max_rate_lgi_80MHZ, %296 ]
  %302 = add nsw i32 %291, -1
  %303 = getelementptr [8 x [3 x i16]], ptr %301, i32 0, i32 %282, i32 %302
  %304 = load i16, ptr %303, align 2
  br label %305

305:                                              ; preds = %300, %296, %292
  %306 = phi i16 [ %294, %292 ], [ %298, %296 ], [ %304, %300 ]
  %307 = getelementptr inbounds %struct.ieee80211_vht_cap, ptr %1, i32 0, i32 1, i32 3
  store i16 %306, ptr %307, align 1
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_append_11ac_tlv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 13
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 4
  %8 = icmp eq i16 %7, 0
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 132
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 131
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 36
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds i8, ptr %17, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %18, i8 0, i32 12, i1 false)
  store i16 191, ptr %17, align 1
  %19 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %17, i32 0, i32 1
  store i16 12, ptr %19, align 1
  %20 = getelementptr i8, ptr %17, i32 4
  %21 = load ptr, ptr %13, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %20, ptr noundef align 1 dereferenceable(12) %21, i32 12, i1 false)
  %22 = load i16, ptr %5, align 4
  %23 = trunc i16 %22 to i8
  tail call void @mwifiex_fill_vht_cap_tlv(ptr noundef %0, ptr noundef %20, i8 noundef zeroext %23)
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr i8, ptr %24, i32 16
  store ptr %25, ptr %2, align 4
  br label %26

26:                                               ; preds = %16, %3
  %27 = phi i32 [ 16, %16 ], [ 0, %3 ]
  %28 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 39
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %61, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr inbounds i8, ptr %36, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(9) %37, i8 0, i32 5, i1 false)
  store i16 192, ptr %36, align 1
  %38 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %36, i32 0, i32 1
  store i16 5, ptr %38, align 1
  %39 = getelementptr i8, ptr %36, i32 4
  %40 = load ptr, ptr %28, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %39, ptr noundef align 1 dereferenceable(5) %40, i32 5, i1 false)
  %41 = lshr i32 %12, 2
  %42 = and i32 %41, 3
  switch i32 %42, label %56 [
    i32 0, label %43
    i32 1, label %48
    i32 2, label %52
  ]

43:                                               ; preds = %35
  %44 = load ptr, ptr %28, align 8
  %45 = load i8, ptr %44, align 1
  %46 = icmp ne i8 %45, 0
  %47 = zext i1 %46 to i8
  br label %56

48:                                               ; preds = %35
  %49 = load ptr, ptr %28, align 8
  %50 = load i8, ptr %49, align 1
  %51 = tail call i8 @llvm.umin.i8(i8 %50, i8 2)
  br label %56

52:                                               ; preds = %35
  %53 = load ptr, ptr %28, align 8
  %54 = load i8, ptr %53, align 1
  %55 = tail call i8 @llvm.umin.i8(i8 %54, i8 3)
  br label %56

56:                                               ; preds = %52, %48, %43, %35
  %57 = phi i8 [ %55, %52 ], [ %51, %48 ], [ %47, %43 ], [ 0, %35 ]
  store i8 %57, ptr %39, align 1
  %58 = load ptr, ptr %2, align 4
  %59 = getelementptr i8, ptr %58, i32 9
  store ptr %59, ptr %2, align 4
  %60 = or i32 %27, 9
  br label %61

61:                                               ; preds = %56, %31, %26
  %62 = phi i32 [ %60, %56 ], [ %27, %31 ], [ %27, %26 ]
  %63 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 42
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %2, align 4
  %68 = getelementptr inbounds i8, ptr %67, i32 4
  store i8 0, ptr %68, align 1
  store i16 199, ptr %67, align 1
  %69 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %67, i32 0, i32 1
  store i16 1, ptr %69, align 1
  %70 = getelementptr inbounds %struct.ieee_types_oper_mode_ntf, ptr %64, i32 0, i32 2
  %71 = load i8, ptr %70, align 1
  %72 = getelementptr inbounds %struct.mwifiex_ie_types_oper_mode_ntf, ptr %67, i32 0, i32 1
  store i8 %71, ptr %72, align 1
  %73 = load ptr, ptr %2, align 4
  %74 = getelementptr i8, ptr %73, i32 5
  store ptr %74, ptr %2, align 4
  %75 = add nsw i32 %62, 5
  br label %76

76:                                               ; preds = %66, %61
  %77 = phi i32 [ %75, %66 ], [ %62, %61 ]
  ret i32 %77
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_cmd_11ac_cfg(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, i16 noundef zeroext %2, ptr nocapture noundef readonly %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  store i16 274, ptr %1, align 1
  %6 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 24, ptr %6, align 1
  store i16 %2, ptr %5, align 1
  %7 = load i8, ptr %3, align 4
  %8 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  store i8 %7, ptr %8, align 1
  %9 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, ptr %3, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.host_cmd_11ac_vht_cfg, ptr %5, i32 0, i32 2
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, ptr %3, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i32 %13, ptr %14, align 1
  %15 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, ptr %3, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  store i32 %16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, ptr %3, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 3
  store i32 %19, ptr %20, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @mwifiex_set_11ac_ba_params(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 86, i32 2
  store i32 65535, ptr %2, align 4
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 86
  store i32 64, ptr %3, align 4
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 86, i32 1
  store i32 64, ptr %4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mwifiex_is_bss_in_11ac_mode(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 39
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 36
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = icmp ne ptr %3, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i8, ptr %3, align 1
  %11 = icmp ne i8 %10, 0
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi i1 [ false, %1 ], [ %11, %9 ]
  ret i1 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mwifiex_get_center_freq_index(ptr nocapture noundef readnone %0, i8 noundef zeroext %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #5 {
  %5 = and i8 %1, 32
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %4
  switch i32 %2, label %30 [
    i32 36, label %8
    i32 40, label %8
    i32 44, label %8
    i32 48, label %8
    i32 52, label %11
    i32 56, label %11
    i32 60, label %11
    i32 64, label %11
    i32 100, label %16
    i32 104, label %16
    i32 108, label %16
    i32 112, label %16
    i32 116, label %19
    i32 120, label %19
    i32 124, label %19
    i32 128, label %19
    i32 132, label %24
    i32 136, label %24
    i32 140, label %24
    i32 144, label %24
    i32 149, label %27
    i32 153, label %27
    i32 157, label %27
    i32 161, label %27
  ]

8:                                                ; preds = %7, %7, %7, %7
  %9 = icmp eq i8 %3, 1
  %10 = select i1 %9, i8 42, i8 0
  br label %30

11:                                               ; preds = %7, %7, %7, %7
  %12 = icmp eq i8 %3, 2
  %13 = select i1 %12, i8 50, i8 0
  %14 = icmp eq i8 %3, 1
  %15 = select i1 %14, i8 58, i8 %13
  br label %30

16:                                               ; preds = %7, %7, %7, %7
  %17 = icmp eq i8 %3, 1
  %18 = select i1 %17, i8 106, i8 0
  br label %30

19:                                               ; preds = %7, %7, %7, %7
  %20 = icmp eq i8 %3, 2
  %21 = select i1 %20, i8 114, i8 0
  %22 = icmp eq i8 %3, 1
  %23 = select i1 %22, i8 122, i8 %21
  br label %30

24:                                               ; preds = %7, %7, %7, %7
  %25 = icmp eq i8 %3, 1
  %26 = select i1 %25, i8 -118, i8 0
  br label %30

27:                                               ; preds = %7, %7, %7, %7
  %28 = icmp eq i8 %3, 1
  %29 = select i1 %28, i8 -101, i8 0
  br label %30

30:                                               ; preds = %27, %24, %19, %16, %11, %8, %7, %4
  %31 = phi i8 [ 0, %4 ], [ %10, %8 ], [ %18, %16 ], [ %26, %24 ], [ %29, %27 ], [ 42, %7 ], [ %15, %11 ], [ %23, %19 ]
  ret i8 %31
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

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
