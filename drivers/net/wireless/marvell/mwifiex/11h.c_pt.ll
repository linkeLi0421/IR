; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/11h.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/11h.c"
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
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.137, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.137 = type { i64, i64, i8 }
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_ie_types_pwr_capability = type { %struct.mwifiex_ie_types_header, i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.host_cmd_ds_command = type { i16, i16, i16, i16, %union.anon.148 }
%union.anon.148 = type <{ %struct.host_cmd_ds_802_11_rssi_info, [212 x i8] }>
%struct.host_cmd_ds_802_11_rssi_info = type { i16, i16, i16, [9 x i16], i64 }
%struct.mwifiex_chan_desc = type { i16, i8, i8 }
%struct.mwifiex_radar_params = type { ptr, i32 }
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
%struct.mwifiex_dbg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_wait_queue = type { %struct.wait_queue_head, i32 }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }

@.str = private unnamed_addr constant [39 x i8] c"CAC timer finished; No radar detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"11h: issuing DFS Radar check for channel=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"cancelling CAC\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to stop CAC in FW\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Aborting delayed work for CAC.\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Error in channel report event\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"RADAR Detected on channel %d!\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"radar detected; indicating kernel\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Failed to stop CAC in FW\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"regdomain: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"radar detection type: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"channel switch: AP already stopped\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Failed to start AP after channel switch\0A\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"indicating channel switch completion to kernel\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mwifiex_init_11h_params(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 157
  store i8 1, ptr %2, align 8
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 157, i32 1
  store i8 0, ptr %3, align 1
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_is_11h_active(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 157, i32 1
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_11h_activate(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %4 = zext i1 %1 to i32
  store i32 %4, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 1
  %8 = icmp ne i8 %7, 0
  %9 = and i1 %8, %1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = or i32 %4, 2
  store i32 %11, ptr %3, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 22, i16 noundef zeroext 1, i32 noundef 10, ptr noundef nonnull %3, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_11h_process_join(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 57
  %7 = load i8, ptr %6, align 8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %81, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 1, i32 3
  store i32 %14, ptr %5, align 4
  %15 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 22, i16 noundef zeroext 1, i32 noundef 10, ptr noundef nonnull %5, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  %16 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 157, i32 1
  store i8 1, ptr %16, align 1
  %17 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 20
  %18 = load i16, ptr %17, align 8
  %19 = or i16 %18, 256
  store i16 %19, ptr %17, align 8
  %20 = icmp eq ptr %1, null
  br i1 %20, label %87, label %21

21:                                               ; preds = %9
  %22 = load ptr, ptr %1, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %87, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 13
  %26 = load i16, ptr %25, align 4
  %27 = trunc i16 %26 to i8
  %28 = call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %27) #6
  %29 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103
  %30 = load ptr, ptr %29, align 8
  %31 = zext i8 %28 to i32
  %32 = getelementptr %struct.wiphy, ptr %30, i32 0, i32 53, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %1, align 4
  store i16 33, ptr %34, align 1
  %35 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %34, i32 0, i32 1
  store i16 2, ptr %35, align 1
  %36 = getelementptr inbounds %struct.mwifiex_ie_types_pwr_capability, ptr %34, i32 0, i32 1
  store i8 0, ptr %36, align 1
  %37 = getelementptr inbounds %struct.mwifiex_ie_types_pwr_capability, ptr %34, i32 0, i32 2
  store i8 0, ptr %37, align 1
  %38 = load ptr, ptr %1, align 4
  %39 = getelementptr i8, ptr %38, i32 6
  store ptr %39, ptr %1, align 4
  store i16 32, ptr %39, align 1
  %40 = getelementptr i8, ptr %38, i32 8
  store i16 2, ptr %40, align 1
  %41 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 5
  %42 = load i32, ptr %41, align 8
  %43 = trunc i32 %42 to i8
  %44 = getelementptr i8, ptr %38, i32 10
  store i8 %43, ptr %44, align 1
  %45 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 58
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr i8, ptr %38, i32 11
  store i8 %46, ptr %47, align 1
  %48 = load ptr, ptr %1, align 4
  %49 = getelementptr i8, ptr %48, i32 6
  store ptr %49, ptr %1, align 4
  store i16 266, ptr %49, align 1
  %50 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %33, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = trunc i32 %51 to i16
  %53 = shl i16 %52, 1
  %54 = add i16 %53, 2
  %55 = getelementptr i8, ptr %48, i32 8
  store i16 %54, ptr %55, align 1
  %56 = load ptr, ptr %1, align 4
  %57 = getelementptr i8, ptr %56, i32 4
  %58 = getelementptr i8, ptr %56, i32 5
  store ptr %58, ptr %1, align 4
  store i8 36, ptr %57, align 1
  %59 = load i32, ptr %50, align 4
  %60 = trunc i32 %59 to i8
  %61 = shl i8 %60, 1
  %62 = load ptr, ptr %1, align 4
  %63 = getelementptr i8, ptr %62, i32 1
  store ptr %63, ptr %1, align 4
  store i8 %61, ptr %62, align 1
  %64 = load i32, ptr %50, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %66, %24
  %67 = phi i32 [ %78, %66 ], [ 0, %24 ]
  %68 = load ptr, ptr %33, align 4
  %69 = getelementptr %struct.ieee80211_channel, ptr %68, i32 %67, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = mul i32 %70, 1000
  %72 = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %71) #6
  %73 = trunc i32 %72 to i8
  %74 = load ptr, ptr %1, align 4
  %75 = getelementptr i8, ptr %74, i32 1
  store ptr %75, ptr %1, align 4
  store i8 %73, ptr %74, align 1
  %76 = load ptr, ptr %1, align 4
  %77 = getelementptr i8, ptr %76, i32 1
  store ptr %77, ptr %1, align 4
  store i8 1, ptr %76, align 1
  %78 = add nuw nsw i32 %67, 1
  %79 = load i32, ptr %50, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %66, label %87

81:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4
  %82 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 22, i16 noundef zeroext 1, i32 noundef 10, ptr noundef nonnull %4, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %83 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 157, i32 1
  store i8 0, ptr %83, align 1
  %84 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 20
  %85 = load i16, ptr %84, align 8
  %86 = and i16 %85, -257
  store i16 %86, ptr %84, align 8
  br label %87

87:                                               ; preds = %81, %66, %24, %21, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_dfs_cac_work_queue(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca %struct.cfg80211_chan_def, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #6
  %3 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef align 8 dereferenceable(28) %3, i32 28, i1 false)
  %4 = getelementptr i8, ptr %0, i32 -4963
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -9984
  %9 = load ptr, ptr %8, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str) #6
  %10 = getelementptr i8, ptr %0, i32 -9956
  %11 = load ptr, ptr %10, align 4
  call void @cfg80211_cac_event(ptr noundef %11, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 3264) #6
  br label %12

12:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_cac_event(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_issue_chan_report_request(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  store i16 221, ptr %1, align 1
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 16, ptr %5, align 1
  store i16 5000, ptr %4, align 1
  %6 = load ptr, ptr %2, align 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_channel, ptr %7, i32 0, i32 3
  %9 = load i16, ptr %8, align 2
  %10 = trunc i16 %9 to i8
  %11 = getelementptr inbounds %struct.mwifiex_chan_desc, ptr %4, i32 0, i32 2
  store i8 %10, ptr %11, align 1
  %12 = load ptr, ptr %2, align 1
  %13 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.mwifiex_radar_params, ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 1
  %19 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i32 %18, ptr %19, align 1
  %20 = load i32, ptr %17, align 1
  %21 = icmp eq i32 %20, 0
  %22 = load ptr, ptr %0, align 8
  br i1 %21, label %29, label %23

23:                                               ; preds = %3
  %24 = load ptr, ptr %2, align 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ieee80211_channel, ptr %25, i32 0, i32 3
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %22, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %28) #6
  br label %30

29:                                               ; preds = %3
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %22, i32 noundef 1, ptr noundef nonnull @.str.2) #6
  br label %30

30:                                               ; preds = %29, %23
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_stop_radar_detection(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.mwifiex_radar_params, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.mwifiex_radar_params, ptr %3, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 221, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %3, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_abort_cac(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.mwifiex_radar_params, align 8
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103, i32 36
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 150
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  store ptr %7, ptr %2, align 8
  %8 = getelementptr inbounds %struct.mwifiex_radar_params, ptr %2, i32 0, i32 1
  store i32 0, ptr %8, align 4
  %9 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 221, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %2, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.3) #6
  br label %13

13:                                               ; preds = %11, %6
  %14 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %14, i32 noundef 1, ptr noundef nonnull @.str.4) #6
  %15 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 152
  %16 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %15) #6
  %17 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  call void @cfg80211_cac_event(ptr noundef %18, ptr noundef %7, i32 noundef 2, i32 noundef 3264) #6
  br label %19

19:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_11h_handle_chanrpt_ready(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = load i32, ptr %5, align 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 4, ptr noundef nonnull @.str.5) #6
  br label %46

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, 65516
  %14 = getelementptr i8, ptr %4, i32 20
  %15 = and i32 %13, 65535
  %16 = icmp ugt i32 %15, 3
  br i1 %16, label %17, label %46

17:                                               ; preds = %10
  %18 = getelementptr i8, ptr %4, i32 22
  %19 = getelementptr i8, ptr %4, i32 24
  %20 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 150
  %21 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 152
  %22 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  br label %23

23:                                               ; preds = %40, %17
  %24 = phi i32 [ %15, %17 ], [ %44, %40 ]
  %25 = load i16, ptr %18, align 1
  %26 = load i16, ptr %14, align 1
  %27 = icmp eq i16 %26, 347
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load i8, ptr %19, align 1
  %30 = and i8 %29, 16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 8
  %34 = load ptr, ptr %20, align 8
  %35 = getelementptr inbounds %struct.ieee80211_channel, ptr %34, i32 0, i32 3
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %33, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %37) #6
  %38 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %21) #6
  %39 = load ptr, ptr %22, align 4
  tail call void @cfg80211_cac_event(ptr noundef %39, ptr noundef %20, i32 noundef 0, i32 noundef 3264) #6
  br label %40

40:                                               ; preds = %32, %28, %23
  %41 = zext i16 %25 to i32
  %42 = add nuw nsw i32 %24, 65532
  %43 = sub nuw nsw i32 %42, %41
  %44 = and i32 %43, 65535
  %45 = icmp ugt i32 %44, 3
  br i1 %45, label %23, label %46

46:                                               ; preds = %40, %10, %8
  %47 = phi i32 [ -1, %8 ], [ 0, %10 ], [ 0, %40 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_11h_handle_radar_detected(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca %struct.mwifiex_radar_params, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.7) #6
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 150
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store ptr %7, ptr %3, align 8
  %8 = getelementptr inbounds %struct.mwifiex_radar_params, ptr %3, i32 0, i32 1
  store i32 0, ptr %8, align 4
  %9 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 221, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %3, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.8) #6
  br label %13

13:                                               ; preds = %11, %2
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  call void @__cfg80211_radar_event(ptr noundef %16, ptr noundef %7, i1 noundef zeroext false, i32 noundef 3264) #6
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr i8, ptr %5, i32 8
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %17, i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %20) #6
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr i8, ptr %5, i32 9
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %21, i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %24) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_dfs_chan_sw_work_queue(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 -10052
  %3 = getelementptr i8, ptr %0, i32 -448
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 4, ptr noundef nonnull @.str.11) #6
  br label %38

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -496
  %10 = getelementptr i8, ptr %0, i32 -100
  %11 = load i32, ptr %10, align 8
  %12 = insertvalue [7 x i32] undef, i32 %11, 0
  %13 = getelementptr i8, ptr %0, i32 -96
  %14 = load i32, ptr %13, align 4
  %15 = insertvalue [7 x i32] %12, i32 %14, 1
  %16 = getelementptr i8, ptr %0, i32 -92
  %17 = load i32, ptr %16, align 8
  %18 = insertvalue [7 x i32] %15, i32 %17, 2
  %19 = getelementptr i8, ptr %0, i32 -88
  %20 = load i32, ptr %19, align 4
  %21 = insertvalue [7 x i32] %18, i32 %20, 3
  %22 = getelementptr i8, ptr %0, i32 -84
  %23 = load i32, ptr %22, align 8
  %24 = insertvalue [7 x i32] %21, i32 %23, 4
  %25 = getelementptr i8, ptr %0, i32 -80
  %26 = load i32, ptr %25, align 4
  %27 = insertvalue [7 x i32] %24, i32 %26, 5
  %28 = getelementptr i8, ptr %0, i32 -76
  %29 = load i32, ptr %28, align 8
  %30 = insertvalue [7 x i32] %27, i32 %29, 6
  tail call void @mwifiex_uap_set_channel(ptr noundef %2, ptr noundef %9, [7 x i32] %30) #6
  %31 = tail call i32 @mwifiex_config_start_uap(ptr noundef %2, ptr noundef %9) #6
  %32 = icmp eq i32 %31, 0
  %33 = load ptr, ptr %2, align 8
  br i1 %32, label %35, label %34

34:                                               ; preds = %8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %33, i32 noundef 4, ptr noundef nonnull @.str.12) #6
  br label %38

35:                                               ; preds = %8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %33, i32 noundef 1, ptr noundef nonnull @.str.13) #6
  %36 = getelementptr i8, ptr %0, i32 -10024
  %37 = load ptr, ptr %36, align 4
  tail call void @cfg80211_ch_switch_notify(ptr noundef %37, ptr noundef %10) #6
  br label %38

38:                                               ; preds = %35, %34, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_uap_set_channel(ptr noundef, ptr noundef, [7 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_config_start_uap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ch_switch_notify(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cfg80211_radar_event(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
