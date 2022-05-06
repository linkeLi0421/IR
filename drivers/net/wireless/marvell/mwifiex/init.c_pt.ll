; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/init.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/init.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_dnld_fw:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_dnld_fw\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_dnld_fw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.mwifiex_bss_prio_node = type { %struct.list_head, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.117, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.134, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.117 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.134 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
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
%struct.mwifiex_opt_sleep_confirm = type { i16, i16, i16, i16, i16, i16 }

@tos_to_tid_inv = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str = private unnamed_addr constant [23 x i8] c"info: free cmd buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"curr_cmd is still in processing\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"info: shutdown mwifiex...\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"WLAN FW already running! Skip FW dnld\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"WLAN read winner status failed!\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"WLAN is not the winner! Skip FW dnld\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"prog_fw failed ret=%#x\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"FW failed to be active in time\0A\00", align 1
@__kstrtab_mwifiex_dnld_fw = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_dnld_fw = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_dnld_fw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_dnld_fw to i32), ptr @__kstrtab_mwifiex_dnld_fw, ptr @__kstrtabns_mwifiex_dnld_fw }, section "___ksymtab_gpl+mwifiex_dnld_fw", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.8 = private unnamed_addr constant [32 x i8] c"%s: failed to alloc cmd buffer\0A\00", align 1
@__func__.mwifiex_allocate_adapter = private unnamed_addr constant [25 x i8] c"mwifiex_allocate_adapter\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"%s: failed to alloc sleep cfm\09 cmd buffer\0A\00", align 1
@mfg_mode = external dso_local local_unnamed_addr global i8, align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Firmware wakeup failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [81 x i8] c"info: delete BSS priority table,\09bss_type = %d, bss_num = %d, i = %d,\09head = %p\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"info: Delete\09node %p, next = %p\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_mwifiex_dnld_fw], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_init_priv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  store i8 0, ptr %2, align 8
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 7
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %3, i8 -1, i32 6, i1 false) #5
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 9
  store i8 0, ptr %4, align 1
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 10
  store i8 2, ptr %5, align 2
  %6 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 19
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  store i32 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 32
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 33
  store i8 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 35
  store i16 8, ptr %10, align 2
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 36
  store i16 8, ptr %11, align 8
  %12 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 4
  store i8 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 5
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 7
  %15 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 17
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(118) %14, i8 0, i64 118, i1 false)
  store i32 65555, ptr %15, align 4
  %16 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 51
  store i16 100, ptr %16, align 8
  %17 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 46
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(280) %18, i8 0, i32 280, i1 false)
  %19 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 54
  store i16 10, ptr %19, align 4
  %20 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 47
  %21 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 91
  %22 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 56
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(39) %20, i8 0, i64 39, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(504) %21, i8 0, i64 504, i1 false)
  store i8 6, ptr %22, align 8
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 55
  store i16 0, ptr %23, align 2
  %24 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 58
  store i8 0, ptr %24, align 2
  %25 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 20
  %26 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 27
  %27 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 37
  %28 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 63
  %29 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 113
  store i8 0, ptr %29, align 2
  %30 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 93
  %31 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 96
  %32 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 73
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(13) %25, i8 0, i64 13, i1 false)
  store i32 0, ptr %26, align 2
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(321) %28, i8 0, i64 321, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(257) %30, i8 0, i64 257, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(2337) %31, i8 0, i64 2337, i1 false)
  store i8 1, ptr %32, align 2
  %33 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 74
  store i8 0, ptr %33, align 1
  %34 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 75
  store i8 0, ptr %34, align 8
  %35 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 100
  store ptr null, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 101
  store i32 0, ptr %36, align 8
  %37 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 71
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 72
  store i16 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 125
  store i8 0, ptr %39, align 2
  %40 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 129
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(64) %40, i8 0, i32 64, i1 false)
  %41 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 114
  store i8 0, ptr %41, align 1
  %42 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 132
  store i8 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 134
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 135
  store i8 0, ptr %44, align 8
  %45 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 136
  store i8 0, ptr %45, align 1
  %46 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 142
  store i8 0, ptr %46, align 8
  %47 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 88
  %48 = load i64, ptr @tos_to_tid_inv, align 1
  store i64 %48, ptr %47, align 4
  tail call void @mwifiex_init_11h_params(ptr noundef %0) #5
  %49 = load ptr, ptr %0, align 8
  %50 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %51 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 12) #6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %69, label %53

53:                                               ; preds = %1
  %54 = getelementptr inbounds %struct.mwifiex_adapter, ptr %49, i32 0, i32 35
  %55 = getelementptr inbounds %struct.mwifiex_bss_prio_node, ptr %51, i32 0, i32 1
  store ptr %0, ptr %55, align 8
  store volatile ptr %51, ptr %51, align 8
  %56 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %51, ptr %56, align 4
  %57 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 3
  %58 = load i8, ptr %57, align 2
  %59 = zext i8 %58 to i32
  %60 = getelementptr %struct.mwifiex_bss_prio_tbl, ptr %54, i32 %59, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %60) #5
  %61 = load i8, ptr %57, align 2
  %62 = zext i8 %61 to i32
  %63 = getelementptr %struct.mwifiex_bss_prio_tbl, ptr %54, i32 %62
  %64 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  store ptr %51, ptr %64, align 4
  store ptr %63, ptr %51, align 8
  store ptr %65, ptr %56, align 4
  store volatile ptr %51, ptr %65, align 4
  %66 = load i8, ptr %57, align 2
  %67 = zext i8 %66 to i32
  %68 = getelementptr %struct.mwifiex_bss_prio_tbl, ptr %54, i32 %67, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %68) #5
  br label %69

69:                                               ; preds = %53, %1
  %70 = phi i32 [ 0, %53 ], [ -12, %1 ]
  ret i32 %70
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_init_11h_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_set_trans_start(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %7

7:                                                ; preds = %17, %5
  %8 = phi i32 [ %3, %5 ], [ %18, %17 ]
  %9 = phi i32 [ 0, %5 ], [ %19, %17 ]
  %10 = load ptr, ptr %6, align 64
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = getelementptr %struct.netdev_queue, ptr %10, i32 %9, i32 11
  %13 = load volatile i32, ptr %12, align 8
  %14 = icmp eq i32 %13, %11
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  store volatile i32 %11, ptr %12, align 8
  %16 = load i32, ptr %2, align 4
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi i32 [ %8, %7 ], [ %16, %15 ]
  %19 = add nuw i32 %9, 1
  %20 = icmp ult i32 %19, %18
  br i1 %20, label %7, label %21

21:                                               ; preds = %17, %1
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %23 = load ptr, ptr %22, align 64
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = getelementptr inbounds %struct.netdev_queue, ptr %23, i32 0, i32 11
  %26 = load volatile i32, ptr %25, align 8
  %27 = icmp eq i32 %26, %24
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store volatile i32 %24, ptr %25, align 8
  br label %29

29:                                               ; preds = %28, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_wake_up_net_dev_queue(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 123
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %13, %9 ]
  %11 = load ptr, ptr %8, align 64
  %12 = getelementptr %struct.netdev_queue, ptr %11, i32 %10
  tail call void @netif_tx_wake_queue(ptr noundef %12) #5
  %13 = add nuw i32 %10, 1
  %14 = load i32, ptr %4, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %9, label %16

16:                                               ; preds = %9, %2
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_stop_net_dev_queue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 123
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #5
  tail call void @netif_tx_stop_all_queues(ptr noundef %0) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_free_cmd_buffers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 64
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 64, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  %7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 66
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 66, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %12 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 68
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 68, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  %17 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %106, label %22

20:                                               ; preds = %22
  %21 = icmp eq i8 %30, 0
  br i1 %21, label %106, label %33

22:                                               ; preds = %22, %1
  %23 = phi i32 [ %29, %22 ], [ 0, %1 ]
  %24 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 35, i32 %23
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  %29 = add nuw nsw i32 %23, 1
  %30 = load i8, ptr %17, align 4
  %31 = zext i8 %30 to i32
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %22, label %20

33:                                               ; preds = %101, %20
  %34 = phi i8 [ %102, %101 ], [ %30, %20 ]
  %35 = phi i32 [ %103, %101 ], [ 0, %20 ]
  %36 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %35
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %101, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 77
  %41 = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %40, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %40, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %41, align 4
  %45 = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 1
  %46 = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 1, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %45, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %47, ptr %49, align 4
  store volatile ptr %48, ptr %47, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %45, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %46, align 4
  %50 = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 2
  %51 = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 2, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %50, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %52, ptr %54, align 4
  store volatile ptr %53, ptr %52, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %50, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %51, align 4
  %55 = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 3
  %56 = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 3, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %55, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %57, ptr %59, align 4
  store volatile ptr %58, ptr %57, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %55, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %56, align 4
  %60 = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 4
  %61 = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 4, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %60, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %62, ptr %64, align 4
  store volatile ptr %63, ptr %62, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %60, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %61, align 4
  %65 = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 5
  %66 = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 5, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %65, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %67, ptr %69, align 4
  store volatile ptr %68, ptr %67, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %65, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %66, align 4
  %70 = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 6
  %71 = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 6, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %70, align 4
  %74 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  store ptr %72, ptr %74, align 4
  store volatile ptr %73, ptr %72, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %70, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %71, align 4
  %75 = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 7
  %76 = getelementptr %struct.mwifiex_private, ptr %37, i32 0, i32 77, i32 0, i32 7, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = load ptr, ptr %75, align 4
  %79 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  store ptr %77, ptr %79, align 4
  store volatile ptr %78, ptr %77, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %75, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %76, align 4
  %80 = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 83
  %81 = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 83, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %80, align 4
  %84 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  store ptr %82, ptr %84, align 4
  store volatile ptr %83, ptr %82, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %80, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %81, align 4
  %85 = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 89
  %86 = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 89, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %85, align 4
  %89 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  store ptr %87, ptr %89, align 4
  store volatile ptr %88, ptr %87, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %85, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %86, align 4
  %90 = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 79
  %91 = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 79, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %90, align 4
  %94 = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  store ptr %92, ptr %94, align 4
  store volatile ptr %93, ptr %92, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %90, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %91, align 4
  %95 = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 81
  %96 = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 81, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = load ptr, ptr %95, align 4
  %99 = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  store ptr %97, ptr %99, align 4
  store volatile ptr %98, ptr %97, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %95, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %96, align 4
  %100 = load i8, ptr %17, align 4
  br label %101

101:                                              ; preds = %39, %33
  %102 = phi i8 [ %34, %33 ], [ %100, %39 ]
  %103 = add nuw nsw i32 %35, 1
  %104 = zext i8 %102 to i32
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %33, label %106

106:                                              ; preds = %101, %20, %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str) #5
  tail call void @mwifiex_free_cmd_buffer(ptr noundef %0) #5
  %107 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 95
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %108, i32 noundef 1) #5
  br label %111

111:                                              ; preds = %110, %106
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_free_cmd_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_init_lock_list(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 48
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 36
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 61
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 123
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %21, %1
  %10 = phi i8 [ %22, %21 ], [ %7, %1 ]
  %11 = phi i32 [ %23, %21 ], [ 0, %1 ]
  %12 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.mwifiex_private, ptr %13, i32 0, i32 77, i32 3
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mwifiex_private, ptr %13, i32 0, i32 102
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mwifiex_private, ptr %13, i32 0, i32 80
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, ptr %13, i32 0, i32 82
  store i32 0, ptr %19, align 4
  %20 = load i8, ptr %6, align 4
  br label %21

21:                                               ; preds = %15, %9
  %22 = phi i8 [ %10, %9 ], [ %20, %15 ]
  %23 = add nuw nsw i32 %11, 1
  %24 = zext i8 %22 to i32
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %9, label %26

26:                                               ; preds = %21, %1
  %27 = phi i8 [ 0, %1 ], [ %22, %21 ]
  %28 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 64
  store volatile ptr %28, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 64, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 66
  store volatile ptr %30, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 66, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 68
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 68, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 65
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 67
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 69
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 70
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 146
  %39 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 146, i32 2
  store i32 0, ptr %39, align 4
  store ptr %38, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 146, i32 0, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  %41 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 146, i32 1
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 71
  %43 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 71, i32 2
  store i32 0, ptr %43, align 4
  store ptr %42, ptr %42, align 4
  %44 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 71, i32 0, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  %45 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 71, i32 1
  store i32 0, ptr %45, align 4
  %46 = icmp eq i8 %27, 0
  br i1 %46, label %111, label %49

47:                                               ; preds = %49
  %48 = icmp eq i8 %55, 0
  br i1 %48, label %111, label %58

49:                                               ; preds = %49, %26
  %50 = phi i32 [ %54, %49 ], [ 0, %26 ]
  %51 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 35, i32 %50
  store volatile ptr %51, ptr %51, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %51, ptr %52, align 4
  %53 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 35, i32 %50, i32 1
  store i32 0, ptr %53, align 4
  %54 = add nuw nsw i32 %50, 1
  %55 = load i8, ptr %6, align 4
  %56 = zext i8 %55 to i32
  %57 = icmp ult i32 %54, %56
  br i1 %57, label %49, label %47

58:                                               ; preds = %106, %47
  %59 = phi i8 [ %107, %106 ], [ %55, %47 ]
  %60 = phi i32 [ %108, %106 ], [ 0, %47 ]
  %61 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %106, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 77
  store volatile ptr %65, ptr %65, align 4
  %66 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 77, i32 0, i32 0, i32 0, i32 1
  store ptr %65, ptr %66, align 4
  %67 = getelementptr %struct.mwifiex_private, ptr %62, i32 0, i32 77, i32 0, i32 1
  store volatile ptr %67, ptr %67, align 4
  %68 = getelementptr %struct.mwifiex_private, ptr %62, i32 0, i32 77, i32 0, i32 1, i32 0, i32 1
  store ptr %67, ptr %68, align 4
  %69 = getelementptr %struct.mwifiex_private, ptr %62, i32 0, i32 77, i32 0, i32 2
  store volatile ptr %69, ptr %69, align 4
  %70 = getelementptr %struct.mwifiex_private, ptr %62, i32 0, i32 77, i32 0, i32 2, i32 0, i32 1
  store ptr %69, ptr %70, align 4
  %71 = getelementptr %struct.mwifiex_private, ptr %62, i32 0, i32 77, i32 0, i32 3
  store volatile ptr %71, ptr %71, align 4
  %72 = getelementptr %struct.mwifiex_private, ptr %62, i32 0, i32 77, i32 0, i32 3, i32 0, i32 1
  store ptr %71, ptr %72, align 4
  %73 = getelementptr %struct.mwifiex_private, ptr %62, i32 0, i32 77, i32 0, i32 4
  store volatile ptr %73, ptr %73, align 4
  %74 = getelementptr %struct.mwifiex_private, ptr %62, i32 0, i32 77, i32 0, i32 4, i32 0, i32 1
  store ptr %73, ptr %74, align 4
  %75 = getelementptr %struct.mwifiex_private, ptr %62, i32 0, i32 77, i32 0, i32 5
  store volatile ptr %75, ptr %75, align 4
  %76 = getelementptr %struct.mwifiex_private, ptr %62, i32 0, i32 77, i32 0, i32 5, i32 0, i32 1
  store ptr %75, ptr %76, align 4
  %77 = getelementptr %struct.mwifiex_private, ptr %62, i32 0, i32 77, i32 0, i32 6
  store volatile ptr %77, ptr %77, align 4
  %78 = getelementptr %struct.mwifiex_private, ptr %62, i32 0, i32 77, i32 0, i32 6, i32 0, i32 1
  store ptr %77, ptr %78, align 4
  %79 = getelementptr %struct.mwifiex_private, ptr %62, i32 0, i32 77, i32 0, i32 7
  store volatile ptr %79, ptr %79, align 4
  %80 = getelementptr %struct.mwifiex_private, ptr %62, i32 0, i32 77, i32 0, i32 7, i32 0, i32 1
  store ptr %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 83
  store volatile ptr %81, ptr %81, align 4
  %82 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 83, i32 1
  store ptr %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 89
  store volatile ptr %83, ptr %83, align 4
  %84 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 89, i32 1
  store ptr %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 79
  store volatile ptr %85, ptr %85, align 4
  %86 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 79, i32 1
  store ptr %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 81
  store volatile ptr %87, ptr %87, align 4
  %88 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 81, i32 1
  store ptr %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 141
  %90 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 141, i32 2
  store i32 0, ptr %90, align 4
  store ptr %89, ptr %89, align 4
  %91 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 141, i32 0, i32 0, i32 1
  store ptr %89, ptr %91, align 4
  %92 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 141, i32 1
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 160
  %94 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 160, i32 2
  store i32 0, ptr %94, align 4
  store ptr %93, ptr %93, align 4
  %95 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 160, i32 0, i32 0, i32 1
  store ptr %93, ptr %95, align 4
  %96 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 160, i32 1
  store i32 0, ptr %96, align 4
  %97 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 84
  store i32 0, ptr %97, align 8
  %98 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 90
  store i32 0, ptr %98, align 4
  %99 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 148
  store i32 0, ptr %99, align 8
  %100 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 147
  store i32 0, ptr %100, align 4
  %101 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 147, i32 0, i32 1
  store i32 33554436, ptr %101, align 4
  %102 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 147, i32 0, i32 2
  store ptr null, ptr %102, align 4
  %103 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 147, i32 1
  store i32 0, ptr %103, align 4
  %104 = getelementptr inbounds %struct.mwifiex_private, ptr %62, i32 0, i32 147, i32 2
  store i32 0, ptr %104, align 4
  %105 = load i8, ptr %6, align 4
  br label %106

106:                                              ; preds = %64, %58
  %107 = phi i8 [ %59, %58 ], [ %105, %64 ]
  %108 = add nuw nsw i32 %60, 1
  %109 = zext i8 %107 to i32
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %58, label %111

111:                                              ; preds = %106, %47, %26
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_init_fw(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 45
  store i32 1, ptr %2, align 4
  %3 = tail call i32 @mwifiex_alloc_cmd_buffer(ptr noundef %0) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.mwifiex_allocate_adapter) #5
  br label %161

6:                                                ; preds = %1
  %7 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16, i32 noundef 2592) #5
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 95
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.mwifiex_allocate_adapter) #5
  br label %161

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  store ptr %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 14
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 4
  store ptr %17, ptr %15, align 8
  %18 = load ptr, ptr %8, align 4
  %19 = tail call ptr @skb_put(ptr noundef %18, i32 noundef 12) #5
  %20 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 54
  store i8 0, ptr %20, align 1
  %21 = load i8, ptr %0, align 4
  %22 = icmp eq i8 %21, 0
  %23 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 53
  br i1 %22, label %24, label %25

24:                                               ; preds = %11
  store i8 1, ptr %23, align 4
  br label %27

25:                                               ; preds = %11
  store i8 0, ptr %23, align 4
  %26 = icmp eq i8 %21, 2
  br i1 %26, label %28, label %27

27:                                               ; preds = %25, %24
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i8 [ 4, %27 ], [ 0, %25 ]
  %30 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 14
  store i8 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 55
  store i8 0, ptr %31, align 2
  %32 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 56
  store i8 0, ptr %32, align 1
  %33 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 57
  store i8 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %34) #5
  store i32 1, ptr %2, align 4
  %35 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 89
  store i16 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 90
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 91
  store i8 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 77
  store i32 3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 78
  store i16 40, ptr %39, align 4
  %40 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 79
  store i16 40, ptr %40, align 2
  %41 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 80
  store i16 110, ptr %41, align 4
  %42 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 81
  store i16 50, ptr %42, align 2
  %43 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 76
  store i16 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 92
  store i16 1, ptr %44, align 2
  %45 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 93
  store i16 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 98
  store i8 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 99
  store i8 0, ptr %47, align 1
  %48 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 100
  store i16 1000, ptr %48, align 2
  %49 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 101
  store i16 1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 103
  %51 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 102
  store i8 0, ptr %51, align 2
  %52 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 40
  store i64 0, ptr %50, align 4
  store i16 2048, ptr %52, align 4
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %34) #5
  %53 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 107
  store i32 0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 107, i32 1
  store i8 -1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 107, i32 2
  store i8 -1, ptr %55, align 1
  %56 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 108
  store i8 0, ptr %56, align 2
  %57 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 112
  %58 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 117
  store i8 0, ptr %58, align 1
  %59 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 116
  store i8 0, ptr %59, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(2053) %57, i8 0, i64 2053, i1 false) #5
  tail call void @mwifiex_wmm_init(ptr noundef %0) #5
  %60 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 23
  store volatile i32 0, ptr %60, align 4
  %61 = load ptr, ptr %8, align 4
  %62 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 17
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 5
  %65 = load i32, ptr %64, align 8
  tail call void @llvm.memset.p0.i32(ptr align 1 %63, i8 0, i32 %65, i1 false) #5
  store i16 228, ptr %63, align 1
  %66 = load ptr, ptr %8, align 4
  %67 = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 5
  %68 = load i32, ptr %67, align 8
  %69 = trunc i32 %68 to i16
  %70 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, ptr %63, i32 0, i32 1
  store i16 %69, ptr %70, align 1
  %71 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, ptr %63, i32 0, i32 3
  store i16 0, ptr %71, align 1
  %72 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, ptr %63, i32 0, i32 4
  store i16 5, ptr %72, align 1
  %73 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, ptr %63, i32 0, i32 5
  store i16 1, ptr %73, align 1
  %74 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 87
  %75 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 86
  store i8 0, ptr %75, align 4
  %76 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 94
  store i16 0, ptr %76, align 2
  %77 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 82
  store i8 0, ptr %77, align 4
  %78 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 84
  store i8 0, ptr %78, align 2
  %79 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 83
  store i8 0, ptr %79, align 1
  %80 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 85
  store ptr null, ptr %80, align 4
  %81 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 13
  store i32 0, ptr %81, align 4
  %82 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 47
  store i32 0, ptr %82, align 4
  %83 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 52
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(2312) %83, i8 0, i32 2312, i1 false) #5
  %84 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 50
  store i32 0, ptr %84, align 4
  %85 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 74
  store i16 0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 96
  tail call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(14) %74, i8 0, i64 14, i1 false) #5
  store i16 5, ptr %86, align 4
  %87 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 97
  store i16 0, ptr %87, align 2
  %88 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 119
  %89 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 125
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(72) %88, i8 0, i64 72, i1 false) #5
  store i16 16, ptr %89, align 4
  %90 = load i8, ptr @mfg_mode, align 1, !range !8
  %91 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 147
  store i8 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 139
  store i8 0, ptr %92, align 1
  %93 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 140
  store i8 0, ptr %93, align 4
  %94 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 11
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %94, i8 -1, i32 6, i1 false) #5
  %95 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 2
  store i8 3, ptr %95, align 4
  %96 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 2, i32 1
  store i8 3, ptr %96, align 1
  %97 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 2, i32 2
  store i8 3, ptr %97, align 2
  %98 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 159
  store i8 0, ptr %98, align 4
  %99 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 106
  tail call void @init_timer_key(ptr noundef %99, ptr noundef nonnull @wakeup_timer_fn, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  %100 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 168
  store i32 0, ptr %100, align 4
  %101 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 169
  tail call void @init_timer_key(ptr noundef %101, ptr noundef nonnull @fw_dump_timer_fn, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  %102 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %103 = load i8, ptr %102, align 4
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %124, label %105

105:                                              ; preds = %116, %28
  %106 = phi i8 [ %117, %116 ], [ %103, %28 ]
  %107 = phi i32 [ %118, %116 ], [ 0, %28 ]
  %108 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %107
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %105
  %112 = tail call i32 @mwifiex_init_priv(ptr noundef nonnull %109)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %161

114:                                              ; preds = %111
  %115 = load i8, ptr %102, align 4
  br label %116

116:                                              ; preds = %114, %105
  %117 = phi i8 [ %115, %114 ], [ %106, %105 ]
  %118 = add nuw nsw i32 %107, 1
  %119 = zext i8 %117 to i32
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %105, label %121

121:                                              ; preds = %116
  %122 = load i8, ptr %91, align 4, !range !8
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %127, label %129

124:                                              ; preds = %28
  %125 = load i8, ptr %91, align 4, !range !8
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %150, label %129

127:                                              ; preds = %121
  %128 = icmp eq i8 %117, 0
  br i1 %128, label %150, label %130

129:                                              ; preds = %124, %121
  store i32 0, ptr %2, align 4
  br label %150

130:                                              ; preds = %143, %127
  %131 = phi i8 [ %144, %143 ], [ %117, %127 ]
  %132 = phi i32 [ %147, %143 ], [ 0, %127 ]
  %133 = phi i8 [ %146, %143 ], [ 1, %127 ]
  %134 = phi i32 [ %145, %143 ], [ 0, %127 ]
  %135 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %132
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %143, label %138

138:                                              ; preds = %130
  %139 = tail call i32 @mwifiex_sta_init_cmd(ptr noundef nonnull %136, i8 noundef zeroext %133, i1 noundef zeroext true) #5
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %161, label %141

141:                                              ; preds = %138
  %142 = load i8, ptr %102, align 4
  br label %143

143:                                              ; preds = %141, %130
  %144 = phi i8 [ %131, %130 ], [ %142, %141 ]
  %145 = phi i32 [ %134, %130 ], [ %139, %141 ]
  %146 = phi i8 [ %133, %130 ], [ 0, %141 ]
  %147 = add nuw nsw i32 %132, 1
  %148 = zext i8 %144 to i32
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %130, label %150

150:                                              ; preds = %143, %129, %127, %124
  %151 = phi i32 [ -115, %129 ], [ 0, %127 ], [ 0, %124 ], [ %145, %143 ]
  %152 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 67
  tail call void @_raw_spin_lock_bh(ptr noundef %152) #5
  %153 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 66
  %154 = load volatile ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, %153
  tail call void @_raw_spin_unlock_bh(ptr noundef %152) #5
  br i1 %155, label %160, label %156

156:                                              ; preds = %150
  %157 = tail call i32 @mwifiex_main_process(ptr noundef %0) #5
  %158 = icmp eq i32 %157, -1
  %159 = select i1 %158, i32 %151, i32 -115
  br label %161

160:                                              ; preds = %150
  store i32 0, ptr %2, align 4
  br label %161

161:                                              ; preds = %160, %156, %138, %111, %10, %5
  %162 = phi i32 [ %151, %160 ], [ %159, %156 ], [ -1, %5 ], [ -1, %10 ], [ -1, %138 ], [ -1, %111 ]
  ret i32 %162
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_sta_init_cmd(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_main_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_free_priv(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mwifiex_clean_txrx(ptr noundef %0) #5
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %37, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 4
  br label %9

9:                                                ; preds = %32, %6
  %10 = phi i32 [ 0, %6 ], [ %33, %32 ]
  %11 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 35, i32 %10
  %12 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 35, i32 %10, i32 1
  %13 = load i8, ptr %7, align 4
  %14 = zext i8 %13 to i32
  %15 = load i8, ptr %8, align 1
  %16 = zext i8 %15 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1073741824, ptr noundef nonnull @.str.11, i32 noundef %14, i32 noundef %16, i32 noundef %10, ptr noundef %11) #5
  tail call void @_raw_spin_lock_bh(ptr noundef %12) #5
  %17 = load ptr, ptr %11, align 4
  %18 = icmp eq ptr %17, %11
  br i1 %18, label %32, label %19

19:                                               ; preds = %30, %9
  %20 = phi ptr [ %21, %30 ], [ %17, %9 ]
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mwifiex_bss_prio_node, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1073741824, ptr noundef nonnull @.str.12, ptr noundef %20, ptr noundef %21) #5
  %26 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %20, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  tail call void @kfree(ptr noundef %20) #5
  br label %30

30:                                               ; preds = %25, %19
  %31 = icmp eq ptr %21, %11
  br i1 %31, label %32, label %19

32:                                               ; preds = %30, %9
  tail call void @_raw_spin_unlock_bh(ptr noundef %12) #5
  %33 = add nuw nsw i32 %10, 1
  %34 = load i8, ptr %3, align 4
  %35 = zext i8 %34 to i32
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %9, label %37

37:                                               ; preds = %32, %1
  tail call void @mwifiex_free_curr_bcn(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_clean_txrx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_free_curr_bcn(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_shutdown_drv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 45
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %70, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 60
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 536870912, ptr noundef nonnull @.str.1) #5
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 63
  %11 = tail call i32 @del_timer_sync(ptr noundef %10) #5
  %12 = load ptr, ptr %6, align 4
  tail call void @mwifiex_recycle_cmd_node(ptr noundef %0, ptr noundef %12) #5
  store ptr null, ptr %6, align 4
  br label %13

13:                                               ; preds = %9, %5
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.2) #5
  %14 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %25, %13
  %18 = phi i8 [ %26, %25 ], [ %15, %13 ]
  %19 = phi i32 [ %27, %25 ], [ 0, %13 ]
  %20 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  tail call void @mwifiex_clean_auto_tdls(ptr noundef nonnull %21) #5
  tail call void @mwifiex_abort_cac(ptr noundef nonnull %21) #5
  tail call void @mwifiex_free_priv(ptr noundef nonnull %21)
  %24 = load i8, ptr %14, align 4
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi i8 [ %18, %17 ], [ %24, %23 ]
  %27 = add nuw nsw i32 %19, 1
  %28 = zext i8 %26 to i32
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %17, label %30

30:                                               ; preds = %25, %13
  %31 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 72
  store volatile i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 71
  %33 = tail call ptr @skb_dequeue(ptr noundef %32) #5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %35, %30
  %36 = phi ptr [ %38, %35 ], [ %33, %30 ]
  %37 = tail call i32 @mwifiex_write_data_complete(ptr noundef %0, ptr noundef nonnull %36, i32 noundef 0, i32 noundef 0) #5
  %38 = tail call ptr @skb_dequeue(ptr noundef %32) #5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %35

40:                                               ; preds = %35, %30
  %41 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 70
  tail call void @_raw_spin_lock_bh(ptr noundef %41) #5
  %42 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 146
  %43 = tail call ptr @skb_dequeue(ptr noundef %42) #5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %63, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 20
  br label %47

47:                                               ; preds = %60, %45
  %48 = phi ptr [ %43, %45 ], [ %61, %60 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #5, !srcloc !9
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #5, !srcloc !10
  %50 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 3, i32 12
  %51 = load i8, ptr %50, align 4
  %52 = zext i8 %51 to i32
  %53 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %52
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.mwifiex_private, ptr %54, i32 0, i32 16, i32 6
  %58 = load i32, ptr %57, align 8
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 8
  br label %60

60:                                               ; preds = %56, %47
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %48, i32 noundef 1) #5
  %61 = tail call ptr @skb_dequeue(ptr noundef %42) #5
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %47

63:                                               ; preds = %60, %40
  tail call void @_raw_spin_unlock_bh(ptr noundef %41) #5
  %64 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 106
  %65 = tail call i32 @del_timer(ptr noundef %64) #5
  %66 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 169
  %67 = tail call i32 @del_timer_sync(ptr noundef %66) #5
  tail call void @mwifiex_cancel_all_pending_cmd(ptr noundef %0) #5
  %68 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 121
  tail call void @__wake_up(ptr noundef %68, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  %69 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 111
  tail call void @__wake_up(ptr noundef %69, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  store i32 4, ptr %2, align 4
  br label %70

70:                                               ; preds = %63, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_recycle_cmd_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_clean_auto_tdls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_abort_cac(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_write_data_complete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_dnld_fw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 18, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0, i32 noundef 1) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.3) #5
  br label %36

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 18, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 8
  store i32 0, ptr %13, align 4
  %14 = tail call i32 %10(ptr noundef %0) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.4) #5
  br label %36

17:                                               ; preds = %12
  %18 = load i32, ptr %13, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.5) #5
  br label %30

21:                                               ; preds = %17, %8
  %22 = phi i32 [ 150, %17 ], [ 1, %8 ]
  %23 = icmp eq ptr %1, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 18, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %0, ptr noundef nonnull %1) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %27) #5
  br label %36

30:                                               ; preds = %24, %21, %20
  %31 = phi i32 [ %22, %24 ], [ %22, %21 ], [ 150, %20 ]
  %32 = load ptr, ptr %3, align 4
  %33 = tail call i32 %32(ptr noundef %0, i32 noundef %31) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.7) #5
  br label %36

36:                                               ; preds = %35, %30, %29, %16, %7
  %37 = phi i32 [ %14, %16 ], [ %27, %29 ], [ 0, %7 ], [ %33, %35 ], [ 0, %30 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_alloc_cmd_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wmm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wakeup_timer_fn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -3180
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.10) #5
  %3 = getelementptr i8, ptr %0, i32 -2784
  store i32 3, ptr %3, align 4
  tail call void @mwifiex_cancel_all_pending_cmd(ptr noundef %2) #5
  %4 = getelementptr i8, ptr %0, i32 -2988
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %2) #5
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fw_dump_timer_fn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -5772
  tail call void @mwifiex_upload_device_dump(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_cancel_all_pending_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_upload_device_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 721829, i64 2148211800, i64 2148211826, i64 2148211873, i64 2148211895, i64 2148211923, i64 2148211943}
!10 = !{i64 2148225572, i64 2148225598, i64 2148225627, i64 2148225661, i64 2148225692, i64 2148225715}
