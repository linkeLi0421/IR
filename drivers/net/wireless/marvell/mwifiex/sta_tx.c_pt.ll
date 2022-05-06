; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/sta_tx.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/sta_tx.c"
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
%struct.txpd = type { i8, i8, i16, i16, i16, i32, i8, i8, i8, [2 x i8], i8, [2 x i8] }
%struct.mwifiex_tx_param = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Tx: bad packet length: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: host_to_card failed: ret=%d\0A\00", align 1
@__func__.mwifiex_send_null_packet = private unnamed_addr constant [25 x i8] c"mwifiex_send_null_packet\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"data: %s: host_to_card succeeded\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mwifiex_process_sta_txpd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 0) #4
  store i32 -1, ptr %11, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  br label %120

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
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/marvell/mwifiex/sta_tx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 61, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

23:                                               ; preds = %13
  %24 = load i32, ptr %15, align 1
  %25 = icmp eq i32 %24, 229
  %26 = select i1 %25, i16 229, i16 0
  %27 = sub nsw i32 44, %6
  %28 = add i32 %27, %18
  %29 = and i32 %28, 63
  %30 = add nuw nsw i32 %29, 20
  %31 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %30) #4
  %32 = load ptr, ptr %14, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %32, i8 0, i32 20, i1 false)
  %33 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 4
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.txpd, ptr %32, i32 0, i32 1
  store i8 %34, ptr %35, align 1
  %36 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 1
  %37 = load i8, ptr %36, align 4
  store i8 %37, ptr %32, align 1
  %38 = load i32, ptr %7, align 8
  %39 = sub i32 %38, %30
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds %struct.txpd, ptr %32, i32 0, i32 2
  store i16 %40, ptr %41, align 1
  %42 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 5
  %43 = load i32, ptr %42, align 8
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.txpd, ptr %32, i32 0, i32 6
  store i8 %44, ptr %45, align 1
  %46 = tail call zeroext i8 @mwifiex_wmm_compute_drv_pkt_delay(ptr noundef %0, ptr noundef %1) #4
  %47 = getelementptr inbounds %struct.txpd, ptr %32, i32 0, i32 8
  store i8 %46, ptr %47, align 1
  %48 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %49 = load i8, ptr %48, align 4
  %50 = and i8 %49, 24
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %23
  %53 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  %54 = load i8, ptr %53, align 4
  %55 = getelementptr inbounds %struct.txpd, ptr %32, i32 0, i32 10
  store i8 %54, ptr %55, align 1
  %56 = getelementptr inbounds %struct.txpd, ptr %32, i32 0, i32 7
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
  %66 = getelementptr inbounds %struct.txpd, ptr %32, i32 0, i32 5
  store i32 %65, ptr %66, align 1
  br label %67

67:                                               ; preds = %62, %59
  %68 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 104
  %69 = load i16, ptr %68, align 2
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %96, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %0, align 8
  %73 = getelementptr inbounds %struct.mwifiex_adapter, ptr %72, i32 0, i32 88
  %74 = load i16, ptr %73, align 4
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %96, label %76

76:                                               ; preds = %71
  %77 = tail call i32 @mwifiex_wmm_lists_empty(ptr noundef %72) #4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.mwifiex_adapter, ptr %72, i32 0, i32 54
  %81 = load i8, ptr %80, align 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.mwifiex_adapter, ptr %72, i32 0, i32 60
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = tail call i32 @is_command_pending(ptr noundef %72) #4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87, %83, %79, %76
  %91 = getelementptr inbounds %struct.mwifiex_adapter, ptr %72, i32 0, i32 99
  store i8 1, ptr %91, align 1
  br label %96

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.mwifiex_adapter, ptr %72, i32 0, i32 99
  store i8 0, ptr %93, align 1
  %94 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 86
  store i8 1, ptr %94, align 4
  %95 = getelementptr inbounds %struct.txpd, ptr %32, i32 0, i32 7
  store i8 8, ptr %95, align 1
  br label %96

96:                                               ; preds = %92, %90, %71, %67
  %97 = load i8, ptr %48, align 4
  %98 = and i8 %97, 4
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.txpd, ptr %32, i32 0, i32 7
  %102 = load i8, ptr %101, align 1
  %103 = or i8 %102, 16
  store i8 %103, ptr %101, align 1
  br label %104

104:                                              ; preds = %100, %96
  %105 = trunc i32 %30 to i16
  br i1 %25, label %106, label %110

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.txpd, ptr %32, i32 0, i32 4
  store i16 %26, ptr %107, align 1
  %108 = trunc i32 %29 to i16
  %109 = add nuw nsw i16 %108, 28
  br label %110

110:                                              ; preds = %106, %104
  %111 = phi i16 [ %109, %106 ], [ %105, %104 ]
  %112 = getelementptr inbounds %struct.txpd, ptr %32, i32 0, i32 3
  store i16 %111, ptr %112, align 1
  %113 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %6) #4
  %114 = getelementptr inbounds %struct.txpd, ptr %32, i32 0, i32 5
  %115 = load i32, ptr %114, align 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 19
  %119 = load i32, ptr %118, align 4
  store i32 %119, ptr %114, align 1
  br label %120

120:                                              ; preds = %117, %110, %10
  %121 = phi ptr [ %12, %10 ], [ %14, %117 ], [ %14, %110 ]
  %122 = load ptr, ptr %121, align 4
  ret ptr %122
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_wmm_compute_drv_pkt_delay(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @mwifiex_check_last_packet_indication(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 88
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @mwifiex_wmm_lists_empty(ptr noundef %2) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 54
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 60
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = tail call i32 @is_command_pending(ptr noundef %2) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %13, %9, %6
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i8 [ 1, %20 ], [ 0, %17 ]
  %23 = phi i8 [ 0, %20 ], [ 1, %17 ]
  %24 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 99
  store i8 %22, ptr %24, align 1
  br label %25

25:                                               ; preds = %21, %1
  %26 = phi i8 [ 0, %1 ], [ %23, %21 ]
  ret i8 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_send_null_packet(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.mwifiex_tx_param, align 4
  %4 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !10
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 12
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %88

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %11 = load i8, ptr %10, align 8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %88, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 53
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %88

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 18, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call zeroext i1 %19(ptr noundef %0) #4
  br i1 %22, label %23, label %88

23:                                               ; preds = %21, %17
  %24 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 64, i32 noundef 2592) #4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %88, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 3, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %27, i8 0, i32 24, i1 false)
  %28 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 3, i32 13
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 1
  %32 = load i8, ptr %31, align 4
  %33 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 3, i32 14
  store i8 %32, ptr %33, align 2
  %34 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 14
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i32
  %37 = sub nsw i32 44, %36
  %38 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 3, i32 16
  store i32 %37, ptr %38, align 8
  %39 = load i8, ptr %34, align 4
  %40 = zext i8 %39 to i32
  %41 = add nuw nsw i32 %40, 20
  %42 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 17
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 %41
  store ptr %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 14
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr i8, ptr %46, i32 %41
  store ptr %47, ptr %45, align 8
  %48 = tail call ptr @skb_push(ptr noundef nonnull %24, i32 noundef 20) #4
  %49 = load ptr, ptr %42, align 4
  %50 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 19
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.txpd, ptr %49, i32 0, i32 5
  store i32 %51, ptr %52, align 1
  %53 = getelementptr inbounds %struct.txpd, ptr %49, i32 0, i32 7
  store i8 %1, ptr %53, align 1
  %54 = getelementptr inbounds %struct.txpd, ptr %49, i32 0, i32 6
  store i8 7, ptr %54, align 1
  %55 = getelementptr inbounds %struct.txpd, ptr %49, i32 0, i32 3
  store i16 20, ptr %55, align 1
  %56 = load i8, ptr %28, align 1
  %57 = getelementptr inbounds %struct.txpd, ptr %49, i32 0, i32 1
  store i8 %56, ptr %57, align 1
  %58 = load i8, ptr %31, align 4
  store i8 %58, ptr %49, align 1
  %59 = load i8, ptr %34, align 4
  %60 = zext i8 %59 to i32
  %61 = tail call ptr @skb_push(ptr noundef nonnull %24, i32 noundef %60) #4
  %62 = load i8, ptr %4, align 4
  %63 = icmp eq i8 %62, 2
  br i1 %63, label %64, label %70

64:                                               ; preds = %26
  %65 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 18, i32 10
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 10
  %68 = load i8, ptr %67, align 2
  %69 = tail call i32 %66(ptr noundef %4, i8 noundef zeroext %68, ptr noundef nonnull %24, ptr noundef null) #4
  br label %74

70:                                               ; preds = %26
  store i32 0, ptr %3, align 4
  %71 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 18, i32 10
  %72 = load ptr, ptr %71, align 4
  %73 = call i32 %72(ptr noundef %4, i8 noundef zeroext 0, ptr noundef nonnull %24, ptr noundef nonnull %3) #4
  br label %74

74:                                               ; preds = %70, %64
  %75 = phi i32 [ %69, %64 ], [ %73, %70 ]
  switch i32 %75, label %88 [
    i32 -16, label %76
    i32 -1, label %80
    i32 0, label %84
    i32 -115, label %86
  ]

76:                                               ; preds = %74
  call void @__dev_kfree_skb_any(ptr noundef nonnull %24, i32 noundef 1) #4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mwifiex_send_null_packet, i32 noundef -16) #4
  %77 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 118, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 4
  br label %88

80:                                               ; preds = %74
  call void @__dev_kfree_skb_any(ptr noundef nonnull %24, i32 noundef 1) #4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mwifiex_send_null_packet, i32 noundef -1) #4
  %81 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 118, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %81, align 4
  br label %88

84:                                               ; preds = %74
  call void @__dev_kfree_skb_any(ptr noundef nonnull %24, i32 noundef 1) #4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 8, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.mwifiex_send_null_packet) #4
  %85 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 86
  store i8 1, ptr %85, align 4
  br label %88

86:                                               ; preds = %74
  %87 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 86
  store i8 1, ptr %87, align 4
  br label %88

88:                                               ; preds = %86, %84, %80, %76, %74, %23, %21, %13, %9, %2
  %89 = phi i32 [ -1, %2 ], [ -1, %9 ], [ -1, %13 ], [ -1, %21 ], [ -1, %23 ], [ %75, %74 ], [ -115, %86 ], [ 0, %84 ], [ -1, %80 ], [ -16, %76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_wmm_lists_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_command_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
!9 = !{i64 2157815108, i64 2157815617, i64 2157815145, i64 2157815201, i64 2157815235, i64 2157815259, i64 2157815300, i64 2157815321, i64 2157815349, i64 2157815383}
!10 = !{!"auto-init"}
