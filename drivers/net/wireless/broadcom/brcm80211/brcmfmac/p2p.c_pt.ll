; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.117, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type {}
%struct.anon.117 = type { i64, i64, i8 }
%struct.brcmf_cfg80211_info = type { ptr, ptr, %struct.brcmf_p2p_info, ptr, ptr, %struct.mutex, ptr, %struct.brcmf_cfg80211_connect_info, %struct.brcmf_pmk_list_le, i32, ptr, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, %struct.escan_info, %struct.timer_list, %struct.work_struct, %struct.list_head, %struct.brcmf_cfg80211_vif_event, %struct.completion, %struct.brcmu_d11inf, %struct.brcmf_assoclist_le, %struct.brcmf_cfg80211_wowl, ptr, [8 x i8] }
%struct.brcmf_p2p_info = type { ptr, i32, [6 x i8], [6 x i8], [6 x i8], [4 x %struct.p2p_bss], %struct.timer_list, i8, %struct.ieee80211_channel, i32, i8, %struct.completion, %struct.afx_hdl, i32, i32, %struct.completion, i8, i8, i8, i8 }
%struct.p2p_bss = type { ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.afx_hdl = type { %struct.work_struct, %struct.completion, i8, i32, i8, i16, i16, [6 x i8] }
%struct.brcmf_cfg80211_connect_info = type { ptr, i32, ptr, i32 }
%struct.brcmf_pmk_list_le = type { i32, [16 x %struct.brcmf_pmksa] }
%struct.brcmf_pmksa = type { [6 x i8], [16 x i8] }
%struct.escan_info = type { i32, ptr, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.brcmf_cfg80211_vif_event = type { %struct.wait_queue_head, %struct.spinlock, i8, ptr }
%struct.brcmu_d11inf = type { i8, ptr, ptr }
%struct.brcmf_assoclist_le = type { i32, [128 x [6 x i8]] }
%struct.brcmf_cfg80211_wowl = type { i8, i32, ptr, ptr, %struct.wait_queue_head, i8, i8 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.brcmf_p2p_disc_st_le = type { i8, i16, i16 }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.brcmf_cfg80211_vif = type { ptr, %struct.wireless_dev, %struct.brcmf_cfg80211_profile, i32, %struct.vif_saved_ie, %struct.list_head, i16, i8, i32, i32, i32, i32 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.brcmf_cfg80211_profile = type { [6 x i8], %struct.brcmf_cfg80211_security, [6 x %struct.brcmf_wsec_key], i32, i16, i8 }
%struct.brcmf_cfg80211_security = type { i32, i32, i32, i32 }
%struct.brcmf_wsec_key = type { i32, i32, [32 x i8], [18 x i32], i32, i32, [3 x i32], i32, i32, %struct.anon.121, [2 x i32], [6 x i8] }
%struct.anon.121 = type { i32, i16 }
%struct.vif_saved_ie = type { [512 x i8], [512 x i8], [512 x i8], [512 x i8], [512 x i8], i32, i32, i32, i32, i32 }
%struct.brcmu_chan = type { i16, i8, i8, i8, i32, i32 }
%struct.brcmf_if = type { ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, ptr, i32, i32, [6 x i8], i8, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, [8 x %struct.in6_addr], i8, i8 }
%struct.in6_addr = type { %union.anon.83 }
%union.anon.83 = type { [4 x i32] }
%struct.brcmf_bss_info_le = type { i32, i32, [6 x i8], i16, i16, i8, [32 x i8], %struct.anon.122, i16, i16, i8, i16, i8, i8, i32, i8, [1 x i32], i8, [3 x i8], [16 x i8], i16, i32, i16 }
%struct.anon.122 = type { i32, [16 x i8] }
%struct.brcmf_event_msg = type { i16, i16, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, i8 }
%struct.brcmf_rx_mgmt_data = type { i16, i16, i32, i32, i32 }
%struct.brcmf_p2p_pub_act_frame = type { i8, i8, [3 x i8], i8, i8, i8, [1 x i8] }
%struct.brcmf_p2psd_gas_pub_act_frame = type { i8, i8, i8, [1 x i8] }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.123 }
%union.anon.123 = type { %struct.anon.129, [16 x i8] }
%struct.anon.129 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.brcmf_fil_af_params_le = type { i32, i32, [6 x i8], [2 x i8], %struct.brcmf_fil_action_frame_le }
%struct.brcmf_fil_action_frame_le = type { [6 x i8], i16, i32, [1800 x i8] }
%struct.brcmf_fil_p2p_if_le = type { [6 x i8], i16, i16 }
%struct.vif_params = type { i32, i32, [6 x i8], ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.44, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.81, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.44 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%union.anon.81 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.brcmf_p2p_scan_le = type { i8, [3 x i8], %union.anon.156 }
%union.anon.156 = type { %struct.brcmf_escan_params_le }
%struct.brcmf_escan_params_le = type { i32, i16, i16, %struct.brcmf_scan_params_le }
%struct.brcmf_scan_params_le = type { %struct.brcmf_ssid_le, [6 x i8], i8, i8, i32, i32, i32, i32, i32, [1 x i16] }
%struct.brcmf_ssid_le = type { i32, [32 x i8] }

@.str = private unnamed_addr constant [42 x i8] c"%s: No memory available for action frame\0A\00", align 1
@__func__.brcmf_p2p_notify_action_frame_rx = private unnamed_addr constant [33 x i8] c"brcmf_p2p_notify_action_frame_rx\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: P2P Public action frame, unknown subtype.\0A\00", align 1
@__func__.brcmf_p2p_send_action_frame = private unnamed_addr constant [28 x i8] c"brcmf_p2p_send_action_frame\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: Unknown action type: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%s: Unknown Frame: category 0x%x, action 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%s: Couldn't find peer's channel.\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.5 = private unnamed_addr constant [43 x i8] c"%s: Failed to send Action Frame(retry %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"%s: vif for P2PAPI_BSSCFG_PRIMARY does not exist\0A\00", align 1
@__func__.brcmf_p2p_ifchange = private unnamed_addr constant [19 x i8] c"brcmf_p2p_ifchange\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"%s: vif for P2PAPI_BSSCFG_CONNECTION does not exist\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"p2p_ifupd\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"%s: p2p_ifupd FAILED, err=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"%s: No BRCMF_E_IF_CHANGE event received\0A\00", align 1
@__func__.brcmf_p2p_add_vif = private unnamed_addr constant [18 x i8] c"brcmf_p2p_add_vif\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"request p2p interface failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"%s: timeout occurred\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"%s: no if pointer provided\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"%s: Registering netdevice failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"roam_off\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"%s: P2P device creation failed.\0A\00", align 1
@__func__.brcmf_p2p_attach = private unnamed_addr constant [17 x i8] c"brcmf_p2p_attach\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"DIRECT-\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"%s: P2P config device not available\0A\00", align 1
@__func__.brcmf_p2p_enable_discovery = private unnamed_addr constant [27 x i8] c"brcmf_p2p_enable_discovery\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"p2p_disc\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"%s: set p2p_disc error\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"%s: unable to set WL_P2P_DISC_ST_SCAN\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"wsec\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"%s: wsec error %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"%s: error (%d)\0A\00", align 1
@__func__.brcmf_p2p_run_escan = private unnamed_addr constant [20 x i8] c"brcmf_p2p_run_escan\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.25 = private unnamed_addr constant [28 x i8] c"%s: no vif for bss type %d\0A\00", align 1
@__func__.brcmf_p2p_escan = private unnamed_addr constant [16 x i8] c"brcmf_p2p_escan\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"%s:  invalid search state %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"p2p_scan\00", align 1
@.str.28 = private unnamed_addr constant [52 x i8] c"%s: Discovery is not set, so we have nothing to do\0A\00", align 1
@__func__.brcmf_p2p_discover_listen = private unnamed_addr constant [26 x i8] c"brcmf_p2p_discover_listen\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"%s: Previous LISTEN is not completed yet\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"p2p_state\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"Po\9A\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"actframe_abort\00", align 1
@__func__.brcmf_p2p_abort_action_frame = private unnamed_addr constant [29 x i8] c"brcmf_p2p_abort_action_frame\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c" aborting action frame has failed (%d)\0A\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"%s: Unknown p2p pub act frame subtype: %d\0A\00", align 1
@__func__.brcmf_p2p_pub_af_tx = private unnamed_addr constant [20 x i8] c"brcmf_p2p_pub_af_tx\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__func__.brcmf_p2p_check_dwell_overflow = private unnamed_addr constant [31 x i8] c"brcmf_p2p_check_dwell_overflow\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"Action frame TX retry time over dwell time!\0A\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"actframe\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"%s:  sending action frame has failed\0A\00", align 1
@__func__.brcmf_p2p_tx_action_frame = private unnamed_addr constant [26 x i8] c"brcmf_p2p_tx_action_frame\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"%s: could not create discovery vif\0A\00", align 1
@__func__.brcmf_p2p_create_p2pdev = private unnamed_addr constant [24 x i8] c"brcmf_p2p_create_p2pdev\00", align 1
@.str.39 = private unnamed_addr constant [60 x i8] c"%s: discovery vif must be different from primary interface\0A\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"p2p_dev\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"%s: retrieving discover bsscfg index failed\0A\00", align 1
@.str.42 = private unnamed_addr constant [55 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"apsta\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"p2p_da_override\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"%s: failed to update device address ret %d\0A\00", align 1
@__func__.brcmf_p2p_set_firmware = private unnamed_addr constant [23 x i8] c"brcmf_p2p_set_firmware\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"%s: ERROR occurred! value is (%d)\0A\00", align 1
@__func__.brcmf_p2p_afx_handler = private unnamed_addr constant [22 x i8] c"brcmf_p2p_afx_handler\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"%s: channel list allocation failed\0A\00", align 1
@__func__.brcmf_p2p_act_frm_search = private unnamed_addr constant [25 x i8] c"brcmf_p2p_act_frm_search\00", align 1
@__func__.brcmf_p2p_get_conn_idx = private unnamed_addr constant [23 x i8] c"brcmf_p2p_get_conn_idx\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"Multi p2p not supported\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"p2p_ifadd\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"p2p_ifdis\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"p2p_ifdel\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_scan_prep(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = alloca [5 x i8], align 1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !9
  unreachable

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %1, align 8
  %12 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %25, %7
  %16 = phi i1 [ %27, %25 ], [ true, %7 ]
  %17 = phi i32 [ %26, %25 ], [ 0, %7 ]
  %18 = getelementptr %struct.cfg80211_ssid, ptr %11, i32 %17, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 7
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr %struct.cfg80211_ssid, ptr %11, i32 %17
  %23 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @.str.17, ptr noundef dereferenceable(7) %22, i32 7) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21, %15
  %26 = add nuw nsw i32 %17, 1
  %27 = icmp slt i32 %26, %13
  %28 = icmp eq i32 %26, %13
  br i1 %28, label %29, label %15

29:                                               ; preds = %25, %21
  %30 = phi i1 [ %27, %25 ], [ %16, %21 ]
  br i1 %30, label %31, label %51

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 4
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false) #12, !annotation !10
  %36 = call i32 @cfg80211_get_p2p_attr(ptr noundef %33, i32 noundef %35, i32 noundef 6, ptr noundef nonnull %4, i32 noundef 5) #12
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 4
  %40 = load i8, ptr %39, align 1
  switch i8 %40, label %41 [
    i8 11, label %43
    i8 6, label %43
    i8 1, label %43
  ]

41:                                               ; preds = %38, %31
  %42 = phi i32 [ -1, %38 ], [ %36, %31 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #12
  br label %51

43:                                               ; preds = %38, %38, %38
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #12
  %44 = zext i8 %40 to i16
  %45 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 2, i32 12, i32 5
  store i16 %44, ptr %45, align 2
  %46 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 2, i32 1
  call void @_clear_bit(i32 noundef 8, ptr noundef %46) #12
  %47 = call fastcc i32 @brcmf_p2p_enable_discovery(ptr noundef %10)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 20, i32 4
  store ptr @brcmf_p2p_run_escan, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %43, %41, %29, %7
  %52 = phi i32 [ %47, %43 ], [ 0, %49 ], [ 0, %29 ], [ %42, %41 ], [ 0, %7 ]
  ret i32 %52
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_p2p_enable_discovery(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.brcmf_p2p_disc_st_le, align 2
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 5
  %7 = getelementptr %struct.brcmf_p2p_info, ptr %0, i32 0, i32 5, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = tail call i32 @net_ratelimit() #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %58, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.brcmf_p2p_enable_discovery) #13
  br label %58

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %17
  %23 = load ptr, ptr %6, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %24, ptr noundef nonnull @.str.19, i32 noundef 1) #12
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = tail call i32 @net_ratelimit() #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %58, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.wiphy, ptr %32, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.brcmf_p2p_enable_discovery) #13
  br label %58

34:                                               ; preds = %22
  %35 = load ptr, ptr %7, align 4
  %36 = load ptr, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %2, i8 0, i64 6, i1 false)
  %37 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %36, ptr noundef nonnull @.str.30, ptr noundef nonnull %2, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = call i32 @net_ratelimit() #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.wiphy, ptr %44, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.brcmf_p2p_enable_discovery) #13
  br label %58

46:                                               ; preds = %34
  %47 = load ptr, ptr %35, align 4
  %48 = call i32 @brcmf_fil_bsscfg_int_set(ptr noundef %47, ptr noundef nonnull @.str.22, i32 noundef 4) #12
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = call i32 @net_ratelimit() #12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.wiphy, ptr %55, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.brcmf_p2p_enable_discovery, i32 noundef %48) #13
  br label %58

57:                                               ; preds = %46
  call void @_set_bit(i32 noundef 0, ptr noundef %18) #12
  br label %58

58:                                               ; preds = %57, %53, %50, %42, %39, %30, %27, %17, %13, %10
  %59 = phi i32 [ %25, %30 ], [ %25, %27 ], [ %37, %42 ], [ %37, %39 ], [ %48, %53 ], [ %48, %50 ], [ %48, %57 ], [ -1, %13 ], [ -1, %10 ], [ 0, %17 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_p2p_run_escan(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %2, null
  br i1 %7, label %87, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %95, label %12

12:                                               ; preds = %8
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 2) #12
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %87, label %15, !prof !8

15:                                               ; preds = %12
  %16 = extractvalue { i32, i1 } %13, 0
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %87, label %19

19:                                               ; preds = %15
  %20 = getelementptr %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 5, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %21, i32 0, i32 1, i32 3
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi ptr [ %25, %23 ], [ null, %19 ]
  %28 = load i32, ptr %9, align 8
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %2, i32 0, i32 22
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ieee80211_channel, ptr %32, i32 0, i32 3
  %34 = load i16, ptr %33, align 2
  %35 = icmp eq i16 %34, 1
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = getelementptr %struct.cfg80211_scan_request, ptr %2, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ieee80211_channel, ptr %38, i32 0, i32 3
  %40 = load i16, ptr %39, align 2
  %41 = icmp eq i16 %40, 6
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = getelementptr %struct.cfg80211_scan_request, ptr %2, i32 1, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ieee80211_channel, ptr %44, i32 0, i32 3
  %46 = load i16, ptr %45, align 2
  %47 = icmp eq i16 %46, 11
  br i1 %47, label %58, label %48

48:                                               ; preds = %42, %36, %30, %26
  %49 = icmp eq ptr %27, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %21, i32 0, i32 1, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 9
  br i1 %53, label %55, label %54

54:                                               ; preds = %50, %48
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32 [ 0, %54 ], [ 2, %50 ]
  %57 = icmp eq i32 %28, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %55, %42
  %59 = phi i32 [ %56, %55 ], [ 2, %42 ]
  br label %60

60:                                               ; preds = %77, %58
  %61 = phi i32 [ %78, %77 ], [ %28, %58 ]
  %62 = phi i32 [ %79, %77 ], [ 0, %58 ]
  %63 = phi i32 [ %80, %77 ], [ 0, %58 ]
  %64 = getelementptr %struct.cfg80211_scan_request, ptr %2, i32 0, i32 22, i32 %63
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.ieee80211_channel, ptr %65, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 10
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %60
  %71 = load ptr, ptr %4, align 4
  %72 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %71, i32 0, i32 26
  %73 = tail call zeroext i16 @channel_to_chanspec(ptr noundef %72, ptr noundef %65) #12
  %74 = getelementptr i16, ptr %17, i32 %63
  store i16 %73, ptr %74, align 2
  %75 = add i32 %62, 1
  %76 = load i32, ptr %9, align 8
  br label %77

77:                                               ; preds = %70, %60
  %78 = phi i32 [ %76, %70 ], [ %61, %60 ]
  %79 = phi i32 [ %75, %70 ], [ %62, %60 ]
  %80 = add nuw i32 %63, 1
  %81 = icmp ult i32 %80, %78
  br i1 %81, label %60, label %82

82:                                               ; preds = %77, %55
  %83 = phi i32 [ %56, %55 ], [ %59, %77 ]
  %84 = phi i32 [ 0, %55 ], [ %79, %77 ]
  %85 = tail call fastcc i32 @brcmf_p2p_escan(ptr noundef %4, i32 noundef %84, ptr noundef nonnull %17, i32 noundef %83)
  tail call void @kfree(ptr noundef nonnull %17) #12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %82, %15, %12, %3
  %88 = phi i32 [ %85, %82 ], [ -12, %15 ], [ -22, %3 ], [ -12, %12 ]
  %89 = tail call i32 @net_ratelimit() #12
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.wiphy, ptr %93, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.brcmf_p2p_run_escan, i32 noundef %88) #13
  br label %95

95:                                               ; preds = %91, %87, %82, %8
  %96 = phi i32 [ %88, %87 ], [ %88, %91 ], [ 0, %82 ], [ 0, %8 ]
  ret i32 %96
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_remain_on_channel(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !9
  unreachable

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.ieee80211_channel, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, 1000
  %15 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %14) #12
  %16 = tail call fastcc i32 @brcmf_p2p_enable_discovery(ptr noundef %11)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %8
  %19 = trunc i32 %15 to i16
  %20 = tail call fastcc i32 @brcmf_p2p_discover_listen(ptr noundef %11, i16 noundef zeroext %19, i32 noundef %3)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 2, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(56) %23, ptr noundef align 4 dereferenceable(56) %2, i32 56, i1 false)
  %24 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %10, i32 0, i32 2, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = zext i32 %25 to i64
  store i64 %26, ptr %4, align 8
  tail call void @cfg80211_ready_on_channel(ptr noundef %1, i64 noundef %26, ptr noundef %2, i32 noundef %3, i32 noundef 3264) #12
  br label %27

27:                                               ; preds = %22, %18, %8
  %28 = phi i32 [ %16, %8 ], [ %20, %18 ], [ 0, %22 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_p2p_discover_listen(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.brcmf_p2p_disc_st_le, align 2
  %5 = alloca %struct.brcmu_chan, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !10
  %9 = getelementptr %struct.brcmf_p2p_info, ptr %0, i32 0, i32 5, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = tail call i32 @net_ratelimit() #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.brcmf_pub, ptr %8, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.brcmf_p2p_discover_listen) #13
  br label %48

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 1
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 512
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = tail call i32 @net_ratelimit() #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.brcmf_pub, ptr %8, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.brcmf_p2p_discover_listen) #13
  br label %48

31:                                               ; preds = %19
  %32 = trunc i16 %1 to i8
  %33 = getelementptr inbounds %struct.brcmu_chan, ptr %5, i32 0, i32 1
  store i8 %32, ptr %33, align 2
  %34 = getelementptr inbounds %struct.brcmu_chan, ptr %5, i32 0, i32 4
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 26, i32 1
  %36 = load ptr, ptr %35, align 4
  call void %36(ptr noundef nonnull %5) #12
  %37 = load ptr, ptr %10, align 4
  %38 = load i16, ptr %5, align 4
  %39 = trunc i32 %2 to i16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  store i16 1, ptr %4, align 2, !annotation !10
  %40 = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %4, i32 0, i32 1
  store i16 %38, ptr %40, align 2
  %41 = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %4, i32 0, i32 2
  store i16 %39, ptr %41, align 2
  %42 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %37, ptr noundef nonnull @.str.30, ptr noundef nonnull %4, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  call void @_set_bit(i32 noundef 9, ptr noundef %20) #12
  %45 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 9
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %44, %31, %27, %24, %15, %12
  %49 = phi i32 [ 0, %27 ], [ 0, %24 ], [ %42, %31 ], [ 0, %44 ], [ -1, %15 ], [ -1, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  ret i32 %49
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ready_on_channel(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_notify_listen_complete(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 2, i32 1
  %8 = tail call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @_test_and_clear_bit(i32 noundef 11, ptr noundef %7) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %7) #12
  %14 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 2, i32 15
  tail call void @complete(ptr noundef %14) #12
  br label %15

15:                                               ; preds = %13, %10
  %16 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 2, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 2, i32 8
  tail call void @cfg80211_remain_on_channel_expired(ptr noundef %18, i64 noundef %21, ptr noundef %22, i32 noundef 3264) #12
  br label %23

23:                                               ; preds = %15, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_remain_on_channel_expired(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_p2p_cancel_remain_on_channel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.brcmf_p2p_disc_st_le, align 2
  %3 = icmp eq ptr %0, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %2, i8 0, i64 6, i1 false)
  %5 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef nonnull %2, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 2, i32 1
  %10 = call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %9) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %4
  %13 = call i32 @_test_and_clear_bit(i32 noundef 11, ptr noundef %9) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  call void @_clear_bit(i32 noundef 12, ptr noundef %9) #12
  %16 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 2, i32 15
  call void @complete(ptr noundef %16) #12
  br label %17

17:                                               ; preds = %15, %12
  %18 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 2, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 2, i32 8
  call void @cfg80211_remain_on_channel_expired(ptr noundef %20, i64 noundef %23, ptr noundef %24, i32 noundef 3264) #12
  br label %25

25:                                               ; preds = %17, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @brcmf_p2p_scan_finding_common_channel(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.brcmu_chan, align 4
  %4 = alloca [6 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 8192
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %59, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 12, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 12, i32 1
  tail call void @complete(ptr noundef %16) #12
  br label %59

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 20
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %1, i32 %20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %4, i8 0, i32 6, i1 false)
  %22 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 21
  %23 = load i32, ptr %22, align 4
  %24 = call i32 @cfg80211_get_p2p_attr(ptr noundef %21, i32 noundef %23, i32 noundef 13, ptr noundef nonnull %4, i32 noundef 6) #12
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i32, ptr %22, align 4
  %28 = call i32 @cfg80211_get_p2p_attr(ptr noundef %21, i32 noundef %27, i32 noundef 3, ptr noundef nonnull %4, i32 noundef 6) #12
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %59

30:                                               ; preds = %26, %17
  %31 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 12, i32 7
  %32 = load i32, ptr %4, align 4
  %33 = load i32, ptr %31, align 4
  %34 = xor i32 %33, %32
  %35 = getelementptr inbounds i8, ptr %4, i32 4
  %36 = load i16, ptr %35, align 4
  %37 = getelementptr %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 12, i32 7, i32 4
  %38 = load i16, ptr %37, align 2
  %39 = xor i16 %38, %36
  %40 = zext i16 %39 to i32
  %41 = or i32 %34, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 15
  %45 = load i8, ptr %44, align 4
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.brcmf_bss_info_le, ptr %1, i32 0, i32 8
  %49 = load i16, ptr %48, align 4
  store i16 %49, ptr %3, align 4
  %50 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 26, i32 2
  %51 = load ptr, ptr %50, align 4
  call void %51(ptr noundef nonnull %3) #12
  %52 = getelementptr inbounds %struct.brcmu_chan, ptr %3, i32 0, i32 2
  %53 = load i8, ptr %52, align 1
  store i8 %53, ptr %44, align 4
  br label %54

54:                                               ; preds = %47, %43
  %55 = phi i8 [ %53, %47 ], [ %45, %43 ]
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 12, i32 3
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 12, i32 1
  call void @complete(ptr noundef %58) #12
  br label %59

59:                                               ; preds = %54, %30, %26, %15, %11, %2
  %60 = xor i1 %8, true
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret i1 %60
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_get_p2p_attr(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_notify_action_frame_rx(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.brcmu_chan, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -16
  %12 = getelementptr %struct.brcmf_rx_mgmt_data, ptr %2, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !10
  %13 = icmp ult i32 %10, 16
  br i1 %13, label %158, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.brcmf_rx_mgmt_data, ptr %2, i32 0, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  store i16 %17, ptr %4, align 4
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 26, i32 2
  %19 = load ptr, ptr %18, align 4
  call void %19(ptr noundef nonnull %4) #12
  %20 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %21, i32 0, i32 6
  %23 = load i16, ptr %22, align 4
  %24 = and i16 %23, 8192
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %158, label %26

26:                                               ; preds = %14
  %27 = icmp eq ptr %12, null
  %28 = icmp ult i32 %11, 8
  %29 = or i1 %27, %28
  br i1 %29, label %103, label %30

30:                                               ; preds = %26
  %31 = load i8, ptr %12, align 1
  %32 = icmp eq i8 %31, 4
  br i1 %32, label %33, label %103

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.brcmf_p2p_pub_act_frame, ptr %12, i32 0, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 9
  br i1 %36, label %37, label %103

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.brcmf_p2p_pub_act_frame, ptr %12, i32 0, i32 3
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 9
  br i1 %40, label %41, label %103

41:                                               ; preds = %37
  %42 = getelementptr %struct.brcmf_rx_mgmt_data, ptr %2, i32 1, i32 1
  %43 = call i32 @bcmp(ptr noundef dereferenceable(3) %42, ptr noundef nonnull dereferenceable(3) @.str.31, i32 3) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %103

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.brcmf_p2p_pub_act_frame, ptr %12, i32 0, i32 4
  %47 = load i8, ptr %46, align 1
  switch i8 %47, label %115 [
    i8 0, label %48
    i8 8, label %99
    i8 2, label %99
  ]

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 7
  %50 = load ptr, ptr %8, align 4
  %51 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 1
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %52, 4096
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %115, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 16
  %57 = load i8, ptr %56, align 4, !range !11
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %115, label %59

59:                                               ; preds = %55
  %60 = getelementptr %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 5, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.brcmf_if, ptr %62, i32 0, i32 8
  %64 = call i32 @memcmp(ptr noundef dereferenceable(6) %49, ptr noundef dereferenceable(6) %63, i32 noundef 6) #12
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 17
  store i8 1, ptr %67, align 1
  %68 = call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %51) #12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 12, i32 1
  call void @complete(ptr noundef %71) #12
  br label %72

72:                                               ; preds = %70, %66
  %73 = call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %51) #12
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %115, label %75

75:                                               ; preds = %72
  call fastcc void @brcmf_p2p_stop_wait_next_action_frame(ptr noundef %50) #12
  br label %115

76:                                               ; preds = %59
  %77 = load volatile i32, ptr %51, align 4
  %78 = and i32 %77, 8192
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %158, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 12, i32 7
  %82 = load i32, ptr %81, align 4
  %83 = load i32, ptr %49, align 4
  %84 = xor i32 %83, %82
  %85 = getelementptr %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 12, i32 7, i32 4
  %86 = load i16, ptr %85, align 2
  %87 = getelementptr %struct.brcmf_event_msg, ptr %1, i32 0, i32 7, i32 4
  %88 = load i16, ptr %87, align 2
  %89 = xor i16 %88, %86
  %90 = zext i16 %89 to i32
  %91 = or i32 %84, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %158

93:                                               ; preds = %80
  %94 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 2
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 12, i32 3
  store i32 %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 12, i32 1
  call void @complete(ptr noundef %98) #12
  br label %158

99:                                               ; preds = %45, %45
  %100 = icmp eq i8 %47, 2
  call void @brcmf_set_mpc(ptr noundef %0, i32 noundef 1) #12
  br i1 %100, label %101, label %115

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 1
  call void @_clear_bit(i32 noundef 8, ptr noundef %102) #12
  br label %115

103:                                              ; preds = %41, %37, %33, %30, %26
  %104 = icmp ult i32 %11, 3
  %105 = or i1 %27, %104
  br i1 %105, label %115, label %106

106:                                              ; preds = %103
  %107 = load i8, ptr %12, align 1
  %108 = icmp eq i8 %107, 4
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.brcmf_p2psd_gas_pub_act_frame, ptr %12, i32 0, i32 1
  %111 = load i8, ptr %110, align 1
  %112 = add i8 %111, -10
  %113 = icmp ult i8 %112, 4
  %114 = select i1 %113, i8 %111, i8 -1
  br label %115

115:                                              ; preds = %109, %106, %103, %101, %99, %75, %72, %55, %48, %45
  %116 = phi i8 [ 2, %101 ], [ %47, %99 ], [ 0, %72 ], [ 0, %75 ], [ 0, %48 ], [ 0, %55 ], [ -1, %103 ], [ -1, %106 ], [ %47, %45 ], [ %114, %109 ]
  %117 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 1
  %118 = load volatile i32, ptr %117, align 4
  %119 = and i32 %118, 4096
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 10
  %123 = load i8, ptr %122, align 4
  %124 = icmp eq i8 %123, %116
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  call void @_clear_bit(i32 noundef 12, ptr noundef %117) #12
  call fastcc void @brcmf_p2p_stop_wait_next_action_frame(ptr noundef %7)
  br label %126

126:                                              ; preds = %125, %121, %115
  %127 = add i32 %10, 8
  %128 = call noalias align 64 ptr @__kmalloc(i32 noundef %127, i32 noundef 3520) #14
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = call i32 @net_ratelimit() #12
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %158, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.wiphy, ptr %135, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.brcmf_p2p_notify_action_frame_rx) #13
  br label %158

137:                                              ; preds = %126
  %138 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %128, i32 0, i32 2
  %139 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %138, ptr noundef align 4 dereferenceable(6) %139, i32 6, i1 false)
  %140 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %128, i32 0, i32 4
  %141 = call i32 @brcmf_fil_cmd_data_get(ptr noundef %0, i32 noundef 23, ptr noundef %140, i32 noundef 6) #12
  %142 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %128, i32 0, i32 3
  %143 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %142, ptr noundef align 4 dereferenceable(6) %143, i32 6, i1 false)
  store i16 208, ptr %128, align 64
  %144 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %128, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %144, ptr align 1 %12, i32 %11, i1 false)
  %145 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 2
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 3
  %149 = load i8, ptr %148, align 4
  %150 = icmp ne i8 %149, 0
  %151 = zext i1 %150 to i32
  %152 = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %147, i32 noundef %151) #12
  %153 = load ptr, ptr %20, align 4
  %154 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %153, i32 0, i32 1
  %155 = urem i32 %152, 1000
  %156 = sub i32 %152, %155
  %157 = call zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef %154, i32 noundef %156, i32 noundef 0, ptr noundef nonnull %128, i32 noundef %127, i32 noundef 0) #12
  call void @kfree(ptr noundef nonnull %128) #12
  br label %158

158:                                              ; preds = %137, %133, %130, %93, %80, %76, %14, %3
  %159 = phi i32 [ 0, %137 ], [ 0, %3 ], [ 0, %14 ], [ 0, %93 ], [ 0, %80 ], [ 0, %76 ], [ -12, %133 ], [ -12, %130 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret i32 %159
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_set_mpc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_p2p_stop_wait_next_action_frame(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1024
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %1
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load volatile i32, ptr %6, align 4
  %16 = and i32 %15, 128
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 13
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 1, ptr %2, align 4
  %23 = getelementptr %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 5, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %25, ptr noundef nonnull @.str.32, ptr noundef nonnull %2, i32 noundef 4) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = call i32 @net_ratelimit() #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_p2p_abort_action_frame, ptr noundef nonnull @.str.33, i32 noundef %26) #12
  br label %33

32:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %41

33:                                               ; preds = %31, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %34 = call i32 @brcmf_notify_escan_complete(ptr noundef %0, ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext true) #12
  br label %41

35:                                               ; preds = %14, %1
  %36 = load volatile i32, ptr %6, align 4
  %37 = and i32 %36, 2048
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call i32 @brcmf_notify_escan_complete(ptr noundef %0, ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext true) #12
  br label %41

41:                                               ; preds = %39, %35, %33, %32, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_data_get(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_notify_action_tx_complete(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 2, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 60
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  tail call void @_set_bit(i32 noundef 6, ptr noundef %7) #12
  %20 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 2, i32 19
  %21 = load i8, ptr %20, align 1, !range !11
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 2, i32 11
  tail call void @complete(ptr noundef %24) #12
  br label %28

25:                                               ; preds = %15
  tail call void @_set_bit(i32 noundef 7, ptr noundef %7) #12
  tail call fastcc void @brcmf_p2p_stop_wait_next_action_frame(ptr noundef %6)
  br label %28

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 2, i32 11
  tail call void @complete(ptr noundef %27) #12
  br label %28

28:                                               ; preds = %26, %25, %23, %19, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @brcmf_p2p_send_action_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %2, i32 0, i32 4
  %11 = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %2, i32 0, i32 4, i32 1
  %12 = load i16, ptr %11, align 2
  %13 = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %2, i32 0, i32 4, i32 3
  store i32 200, ptr %8, align 4
  %14 = load i8, ptr %13, align 4
  %15 = getelementptr %struct.brcmf_fil_af_params_le, ptr %2, i32 0, i32 4, i32 3, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 10
  store i8 -1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 16
  store i8 0, ptr %18, align 4
  %19 = icmp eq ptr %13, null
  %20 = icmp ult i16 %12, 8
  %21 = or i1 %19, %20
  br i1 %21, label %78, label %22

22:                                               ; preds = %3
  %23 = load i8, ptr %13, align 1
  %24 = icmp eq i8 %23, 4
  br i1 %24, label %25, label %78

25:                                               ; preds = %22
  %26 = load i8, ptr %15, align 1
  %27 = icmp eq i8 %26, 9
  br i1 %27, label %28, label %78

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %2, i32 0, i32 4, i32 3, i32 5
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 9
  br i1 %31, label %32, label %78

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %2, i32 0, i32 4, i32 3, i32 2
  %34 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %33, ptr noundef nonnull dereferenceable(3) @.str.31, i32 3) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %32
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %2, i32 0, i32 4, i32 3, i32 6
  %39 = load i8, ptr %38, align 1
  switch i8 %39, label %62 [
    i8 0, label %40
    i8 1, label %44
    i8 2, label %45
    i8 3, label %47
    i8 4, label %48
    i8 5, label %49
    i8 6, label %50
    i8 7, label %51
    i8 8, label %61
  ]

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 1
  tail call void @_set_bit(i32 noundef 8, ptr noundef %41) #12
  %42 = load i8, ptr %38, align 1
  %43 = add i8 %42, 1
  store i8 %43, ptr %17, align 4
  store i8 1, ptr %18, align 4
  store i32 400, ptr %8, align 4
  br label %122

44:                                               ; preds = %36
  store i8 2, ptr %17, align 4
  store i32 400, ptr %8, align 4
  br label %122

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 1
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %46) #12
  store i32 100, ptr %8, align 4
  br label %122

47:                                               ; preds = %36
  store i8 4, ptr %17, align 4
  store i32 400, ptr %8, align 4
  br label %122

48:                                               ; preds = %36
  store i32 100, ptr %8, align 4
  br label %122

49:                                               ; preds = %36
  store i8 6, ptr %17, align 4
  store i32 1000, ptr %8, align 4
  br label %122

50:                                               ; preds = %36
  store i32 100, ptr %8, align 4
  br label %122

51:                                               ; preds = %36
  %52 = load i16, ptr %11, align 2
  %53 = add i16 %52, -8
  %54 = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %2, i32 0, i32 4, i32 3, i32 8
  %55 = zext i16 %53 to i32
  %56 = tail call i32 @cfg80211_get_p2p_attr(ptr noundef %54, i32 noundef %55, i32 noundef 15, ptr noundef null, i32 noundef 0) #12
  %57 = lshr i32 %56, 31
  %58 = trunc i32 %57 to i8
  %59 = load i8, ptr %38, align 1
  %60 = add i8 %59, 1
  store i8 %60, ptr %17, align 4
  store i32 400, ptr %8, align 4
  br label %122

61:                                               ; preds = %36
  store i8 0, ptr %17, align 4
  store i32 400, ptr %8, align 4
  br label %122

62:                                               ; preds = %36
  %63 = tail call i32 @net_ratelimit() #12
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.brcmf_pub, ptr %37, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.wiphy, ptr %67, i32 0, i32 56
  %69 = load i8, ptr %38, align 1
  %70 = zext i8 %69 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.brcmf_p2p_pub_af_tx, i32 noundef %70) #13
  br label %71

71:                                               ; preds = %65, %62
  %72 = tail call i32 @net_ratelimit() #12
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %122, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.wiphy, ptr %76, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.brcmf_p2p_send_action_frame) #13
  br label %122

78:                                               ; preds = %32, %28, %25, %22, %3
  %79 = icmp ult i16 %12, 3
  %80 = or i1 %19, %79
  br i1 %80, label %100, label %81

81:                                               ; preds = %78
  %82 = load i8, ptr %13, align 1
  %83 = icmp eq i8 %82, 4
  br i1 %83, label %84, label %100

84:                                               ; preds = %81
  %85 = load i8, ptr %15, align 1
  %86 = add i8 %85, -10
  %87 = icmp ult i8 %86, 4
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = zext i8 %16 to i32
  switch i8 %16, label %93 [
    i8 12, label %90
    i8 10, label %90
    i8 13, label %92
    i8 11, label %92
  ]

90:                                               ; preds = %88, %88
  %91 = add nuw nsw i8 %16, 1
  store i8 %91, ptr %17, align 4
  store i32 400, ptr %8, align 4
  br label %122

92:                                               ; preds = %88, %88
  store i32 100, ptr %8, align 4
  br label %122

93:                                               ; preds = %88
  %94 = tail call i32 @net_ratelimit() #12
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %329, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.wiphy, ptr %98, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.brcmf_p2p_send_action_frame, i32 noundef %89) #13
  br label %329

100:                                              ; preds = %84, %81, %78
  %101 = icmp ult i16 %12, 7
  %102 = or i1 %19, %101
  br i1 %102, label %113, label %103

103:                                              ; preds = %100
  %104 = load i8, ptr %13, align 1
  %105 = icmp eq i8 %104, 127
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %2, i32 0, i32 4, i32 3, i32 4
  %108 = load i8, ptr %107, align 1
  %109 = icmp eq i8 %108, 9
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %15, ptr noundef nonnull dereferenceable(3) @.str.31, i32 3) #12
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %110, %106, %103, %100
  %114 = tail call i32 @net_ratelimit() #12
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %382, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.wiphy, ptr %118, i32 0, i32 56
  %120 = zext i8 %14 to i32
  %121 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.brcmf_p2p_send_action_frame, i32 noundef %120, i32 noundef %121) #13
  br label %382

122:                                              ; preds = %110, %92, %90, %74, %71, %61, %51, %50, %49, %48, %47, %45, %44, %40
  %123 = phi i1 [ false, %40 ], [ false, %44 ], [ true, %45 ], [ false, %47 ], [ true, %48 ], [ false, %49 ], [ true, %50 ], [ false, %51 ], [ true, %61 ], [ true, %110 ], [ true, %92 ], [ true, %90 ], [ false, %74 ], [ false, %71 ]
  %124 = phi i8 [ 1, %40 ], [ 0, %44 ], [ 0, %45 ], [ 1, %47 ], [ 0, %48 ], [ 1, %49 ], [ 0, %50 ], [ %58, %51 ], [ 0, %61 ], [ 0, %110 ], [ 0, %92 ], [ 1, %90 ], [ 0, %74 ], [ 0, %71 ]
  %125 = phi i1 [ true, %40 ], [ false, %44 ], [ false, %45 ], [ false, %47 ], [ false, %48 ], [ false, %49 ], [ false, %50 ], [ true, %51 ], [ false, %61 ], [ false, %110 ], [ false, %92 ], [ false, %90 ], [ false, %74 ], [ false, %71 ]
  %126 = phi i32 [ 0, %40 ], [ -1, %44 ], [ 1, %45 ], [ -1, %47 ], [ -1, %48 ], [ -1, %49 ], [ -1, %50 ], [ 0, %51 ], [ -1, %61 ], [ -1, %110 ], [ -1, %92 ], [ -1, %90 ], [ -1, %74 ], [ -1, %71 ]
  %127 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 5
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %128, i32 0, i32 3
  %130 = load volatile i32, ptr %129, align 4
  %131 = and i32 %130, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %122
  tail call void @msleep(i32 noundef 50) #12
  br label %134

134:                                              ; preds = %133, %122
  %135 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 9
  %136 = load volatile i32, ptr %135, align 4
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  tail call void @brcmf_abort_scanning(ptr noundef %0) #12
  br label %140

140:                                              ; preds = %139, %134
  %141 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 12, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %141, ptr noundef align 4 dereferenceable(6) %10, i32 6, i1 false)
  br i1 %125, label %142, label %143

142:                                              ; preds = %140
  tail call void @brcmf_set_mpc(ptr noundef %5, i32 noundef 0) #12
  br label %143

143:                                              ; preds = %142, %140
  %144 = load i8, ptr %17, align 4
  %145 = icmp eq i8 %144, -1
  br i1 %145, label %148, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 1
  tail call void @_set_bit(i32 noundef 12, ptr noundef %147) #12
  br label %148

148:                                              ; preds = %146, %143
  %149 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 13
  store i32 0, ptr %149, align 4
  %150 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 1
  tail call void @_set_bit(i32 noundef 10, ptr noundef %150) #12
  %151 = icmp eq i8 %124, 0
  br i1 %151, label %223, label %152

152:                                              ; preds = %148
  %153 = load i32, ptr %2, align 4
  switch i32 %153, label %223 [
    i32 1, label %154
    i32 6, label %154
    i32 11, label %154
  ]

154:                                              ; preds = %152, %152, %152
  %155 = getelementptr %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 5, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %156, i32 0, i32 4, i32 5
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %223, label %160

160:                                              ; preds = %154
  %161 = trunc i32 %153 to i16
  %162 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 12, i32 6
  store i16 %161, ptr %162, align 4
  %163 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 12
  %164 = load ptr, ptr %127, align 4
  %165 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 12, i32 1
  store i32 0, ptr %165, align 4
  tail call void @_set_bit(i32 noundef 13, ptr noundef %150) #12
  %166 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 12, i32 2
  store i8 1, ptr %166, align 4
  %167 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 12, i32 3
  store i32 -1, ptr %167, align 4
  %168 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 12, i32 4
  %169 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 12, i32 5
  %170 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %164, i32 0, i32 3
  br label %171

171:                                              ; preds = %207, %160
  %172 = phi i32 [ 0, %160 ], [ %196, %207 ]
  store i8 0, ptr %168, align 4
  %173 = load ptr, ptr @system_wq, align 4
  %174 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %173, ptr noundef %163) #12
  %175 = tail call i32 @wait_for_completion_timeout(ptr noundef %165, i32 noundef 45) #12
  %176 = load i32, ptr %167, align 4
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %210

178:                                              ; preds = %171
  %179 = load volatile i32, ptr %150, align 4
  %180 = and i32 %179, 8192
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %210, label %182

182:                                              ; preds = %178
  %183 = load i16, ptr %169, align 2
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %182
  store i8 1, ptr %168, align 4
  %186 = load ptr, ptr @system_wq, align 4
  %187 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %186, ptr noundef %163) #12
  %188 = tail call i32 @wait_for_completion_timeout(ptr noundef %165, i32 noundef 45) #12
  %189 = load i32, ptr %167, align 4
  %190 = icmp eq i32 %189, -1
  br i1 %190, label %191, label %210

191:                                              ; preds = %185, %182
  %192 = load volatile i32, ptr %150, align 4
  %193 = and i32 %192, 8192
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %210, label %195

195:                                              ; preds = %191
  %196 = add nuw nsw i32 %172, 1
  %197 = load volatile i32, ptr %170, align 4
  %198 = and i32 %197, 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load volatile i32, ptr %170, align 4
  %202 = and i32 %201, 2
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %200, %195
  tail call void @msleep(i32 noundef 200) #12
  br label %205

205:                                              ; preds = %204, %200
  %206 = icmp eq i32 %196, 5
  br i1 %206, label %210, label %207

207:                                              ; preds = %205
  %208 = load i32, ptr %167, align 4
  %209 = icmp eq i32 %208, -1
  br i1 %209, label %171, label %210

210:                                              ; preds = %207, %205, %191, %185, %178, %171
  store i8 0, ptr %166, align 4
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %150) #12
  %211 = load i32, ptr %167, align 4
  %212 = icmp eq i32 %211, -1
  br i1 %212, label %213, label %220

213:                                              ; preds = %210
  %214 = tail call i32 @net_ratelimit() #12
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %329, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %218 = load ptr, ptr %217, align 4
  %219 = getelementptr inbounds %struct.wiphy, ptr %218, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %219, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.brcmf_p2p_send_action_frame) #13
  br label %329

220:                                              ; preds = %210
  %221 = tail call i32 @brcmf_notify_escan_complete(ptr noundef %0, ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext true) #12
  %222 = load i32, ptr %167, align 4
  store i32 %222, ptr %2, align 4
  br label %223

223:                                              ; preds = %220, %154, %152, %148
  %224 = load volatile i32, ptr @jiffies, align 64
  %225 = icmp ult i32 %9, 16777216
  br i1 %225, label %236, label %226

226:                                              ; preds = %223
  %227 = load volatile i32, ptr @jiffies, align 64
  %228 = sub i32 %227, %224
  %229 = tail call i32 @jiffies_to_msecs(i32 noundef %228) #12
  %230 = and i32 %9, 16777215
  %231 = icmp ugt i32 %229, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %226
  %233 = tail call i32 @net_ratelimit() #12
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %232
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_p2p_check_dwell_overflow, ptr noundef nonnull @.str.35) #12
  br label %236

236:                                              ; preds = %235, %232, %226, %223
  %237 = phi i1 [ true, %232 ], [ true, %235 ], [ false, %226 ], [ false, %223 ]
  %238 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 17
  %239 = load i8, ptr %238, align 1, !range !11
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %320

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 11
  %243 = getelementptr inbounds %struct.brcmf_fil_af_params_le, ptr %2, i32 0, i32 4, i32 3, i32 5
  %244 = getelementptr %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 5, i32 2
  %245 = getelementptr %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 5, i32 1
  %246 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 14
  %247 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 8, i32 1
  %248 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 19
  %249 = and i32 %9, 16777215
  br label %250

250:                                              ; preds = %313, %241
  %251 = phi i1 [ %237, %241 ], [ %314, %313 ]
  %252 = phi i32 [ 0, %241 ], [ %303, %313 ]
  %253 = phi i1 [ false, %241 ], [ %302, %313 ]
  %254 = xor i1 %253, true
  %255 = icmp ult i32 %252, 5
  %256 = select i1 %254, i1 %255, i1 false
  %257 = xor i1 %251, true
  %258 = and i1 %256, %257
  br i1 %258, label %259, label %317

259:                                              ; preds = %250
  %260 = load i32, ptr %2, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  tail call void @msleep(i32 noundef 40) #12
  br label %263

263:                                              ; preds = %262, %259
  %264 = load ptr, ptr %4, align 4
  %265 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %264, i32 0, i32 10
  %266 = load ptr, ptr %265, align 4
  store i32 0, ptr %242, align 4
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %150) #12
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %150) #12
  %267 = load i8, ptr %243, align 1
  %268 = icmp eq i8 %267, 2
  %269 = select i1 %268, ptr %244, ptr %245
  %270 = load ptr, ptr %269, align 4
  %271 = load ptr, ptr %270, align 4
  %272 = tail call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %271, ptr noundef nonnull @.str.36, ptr noundef %2, i32 noundef 1828) #12
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %281, label %274

274:                                              ; preds = %263
  %275 = tail call i32 @net_ratelimit() #12
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %300, label %277

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct.brcmf_pub, ptr %266, i32 0, i32 2
  %279 = load ptr, ptr %278, align 4
  %280 = getelementptr inbounds %struct.wiphy, ptr %279, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %280, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.brcmf_p2p_tx_action_frame) #13
  br label %300

281:                                              ; preds = %263
  %282 = load i32, ptr %2, align 4
  store i32 %282, ptr %149, align 4
  %283 = load volatile i32, ptr @jiffies, align 64
  store i32 %283, ptr %246, align 4
  %284 = load volatile i32, ptr %150, align 4
  %285 = and i32 %284, 512
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %292, label %287

287:                                              ; preds = %281
  %288 = load i32, ptr %247, align 4
  %289 = mul i32 %288, 1000
  %290 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %289) #12
  %291 = icmp eq i32 %282, %290
  br i1 %291, label %293, label %292

292:                                              ; preds = %287, %281
  br label %293

293:                                              ; preds = %292, %287
  %294 = phi i8 [ 1, %292 ], [ 0, %287 ]
  store i8 %294, ptr %248, align 1
  %295 = tail call i32 @wait_for_completion_timeout(ptr noundef %242, i32 noundef 200) #12
  %296 = load volatile i32, ptr %150, align 4
  %297 = and i32 %296, 64
  %298 = icmp eq i32 %297, 0
  %299 = select i1 %298, i32 -5, i32 0
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %150) #12
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %150) #12
  br label %300

300:                                              ; preds = %293, %277, %274
  %301 = phi i32 [ 1, %277 ], [ 1, %274 ], [ %299, %293 ]
  %302 = icmp eq i32 %301, 0
  %303 = add nuw nsw i32 %252, 1
  br i1 %225, label %313, label %304

304:                                              ; preds = %300
  %305 = load volatile i32, ptr @jiffies, align 64
  %306 = sub i32 %305, %224
  %307 = tail call i32 @jiffies_to_msecs(i32 noundef %306) #12
  %308 = icmp ugt i32 %307, %249
  br i1 %308, label %309, label %313

309:                                              ; preds = %304
  %310 = tail call i32 @net_ratelimit() #12
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %309
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_p2p_check_dwell_overflow, ptr noundef nonnull @.str.35) #12
  br label %313

313:                                              ; preds = %312, %309, %304, %300
  %314 = phi i1 [ true, %309 ], [ true, %312 ], [ false, %304 ], [ false, %300 ]
  %315 = load i8, ptr %238, align 1, !range !11
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %250, label %317

317:                                              ; preds = %313, %250
  %318 = phi i1 [ %253, %250 ], [ %302, %313 ]
  %319 = phi i32 [ %252, %250 ], [ %303, %313 ]
  br i1 %318, label %332, label %320

320:                                              ; preds = %317, %236
  %321 = phi i32 [ %319, %317 ], [ 0, %236 ]
  %322 = tail call i32 @net_ratelimit() #12
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %328, label %324

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %326 = load ptr, ptr %325, align 4
  %327 = getelementptr inbounds %struct.wiphy, ptr %326, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %327, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.brcmf_p2p_send_action_frame, i32 noundef %321) #13
  br label %328

328:                                              ; preds = %324, %320
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %150) #12
  br label %329

329:                                              ; preds = %328, %216, %213, %96, %93
  %330 = phi i32 [ -1, %96 ], [ -1, %93 ], [ %126, %216 ], [ %126, %213 ], [ %126, %328 ]
  %331 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 1
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %331) #12
  br label %370

332:                                              ; preds = %317
  %333 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 1
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %333) #12
  br i1 %123, label %370, label %334

334:                                              ; preds = %332
  %335 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 17
  %336 = load i8, ptr %335, align 1, !range !11
  %337 = icmp eq i8 %336, 0
  br i1 %337, label %338, label %370

338:                                              ; preds = %334
  %339 = load volatile i32, ptr %333, align 4
  %340 = and i32 %339, 4096
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %370, label %342

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 13
  %344 = load i32, ptr %343, align 4
  %345 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 12, i32 5
  %346 = load i16, ptr %345, align 2
  %347 = zext i16 %346 to i32
  %348 = icmp eq i32 %344, %347
  br i1 %348, label %349, label %370

349:                                              ; preds = %342
  %350 = load volatile i32, ptr @jiffies, align 64
  %351 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 14
  %352 = load i32, ptr %351, align 4
  %353 = sub i32 %350, %352
  %354 = tail call i32 @jiffies_to_msecs(i32 noundef %353) #12
  %355 = load i32, ptr %8, align 4
  %356 = tail call i32 @llvm.usub.sat.i32(i32 %355, i32 %354)
  %357 = icmp sgt i32 %356, 50
  br i1 %357, label %358, label %370

358:                                              ; preds = %349
  tail call void @_set_bit(i32 noundef 11, ptr noundef %333) #12
  %359 = add nuw i32 %356, 100
  %360 = load i32, ptr %343, align 4
  %361 = trunc i32 %360 to i16
  %362 = tail call fastcc i32 @brcmf_p2p_discover_listen(ptr noundef %4, i16 noundef zeroext %361, i32 noundef %359)
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %358
  %365 = add nuw i32 %356, 200
  %366 = tail call i32 @__msecs_to_jiffies(i32 noundef %365) #12
  %367 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 15
  %368 = tail call i32 @wait_for_completion_timeout(ptr noundef %367, i32 noundef %366) #12
  br label %369

369:                                              ; preds = %364, %358
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %333) #12
  br label %370

370:                                              ; preds = %369, %349, %342, %338, %334, %332, %329
  %371 = phi ptr [ %331, %329 ], [ %333, %349 ], [ %333, %369 ], [ %333, %342 ], [ %333, %338 ], [ %333, %334 ], [ %333, %332 ]
  %372 = phi i1 [ false, %329 ], [ true, %349 ], [ true, %369 ], [ true, %342 ], [ true, %338 ], [ true, %334 ], [ true, %332 ]
  %373 = phi i32 [ %330, %329 ], [ %126, %349 ], [ %126, %369 ], [ %126, %342 ], [ %126, %338 ], [ %126, %334 ], [ %126, %332 ]
  %374 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 17
  %375 = load i8, ptr %374, align 1, !range !11
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %378, label %377

377:                                              ; preds = %370
  store i8 0, ptr %374, align 1
  br label %378

378:                                              ; preds = %377, %370
  %379 = phi i1 [ true, %377 ], [ %372, %370 ]
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %371) #12
  %380 = icmp eq i32 %373, 1
  br i1 %380, label %381, label %382

381:                                              ; preds = %378
  tail call void @brcmf_set_mpc(ptr noundef %5, i32 noundef 1) #12
  br label %382

382:                                              ; preds = %381, %378, %116, %113
  %383 = phi i1 [ false, %116 ], [ false, %113 ], [ %379, %381 ], [ %379, %378 ]
  ret i1 %383
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_abort_scanning(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_notify_escan_complete(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_notify_rx_mgmt_p2p_probereq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.brcmu_chan, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !10
  %10 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 16
  br i1 %12, label %72, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.brcmf_rx_mgmt_data, ptr %2, i32 0, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  store i16 %16, ptr %4, align 4
  %17 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 26, i32 2
  %18 = load ptr, ptr %17, align 4
  call void %18(ptr noundef nonnull %4) #12
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 8192
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 12, i32 7
  %25 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 7
  %26 = load i32, ptr %24, align 4
  %27 = load i32, ptr %25, align 4
  %28 = xor i32 %27, %26
  %29 = getelementptr %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 12, i32 7, i32 4
  %30 = load i16, ptr %29, align 2
  %31 = getelementptr %struct.brcmf_event_msg, ptr %1, i32 0, i32 7, i32 4
  %32 = load i16, ptr %31, align 2
  %33 = xor i16 %32, %30
  %34 = zext i16 %33 to i32
  %35 = or i32 %28, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 12, i32 3
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2, i32 12, i32 1
  call void @complete(ptr noundef %42) #12
  br label %43

43:                                               ; preds = %37, %23, %13
  %44 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 10
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %72, label %47

47:                                               ; preds = %43
  %48 = load volatile i32, ptr %19, align 4
  %49 = and i32 %48, 256
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %9, i32 0, i32 6
  %53 = load i16, ptr %52, align 4
  %54 = and i16 %53, 16
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %51
  %57 = getelementptr %struct.brcmf_rx_mgmt_data, ptr %2, i32 1
  %58 = load i32, ptr %10, align 4
  %59 = add i32 %58, -16
  %60 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 2
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 3
  %64 = load i8, ptr %63, align 4
  %65 = icmp ne i8 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %62, i32 noundef %66) #12
  %68 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %9, i32 0, i32 1
  %69 = urem i32 %67, 1000
  %70 = sub i32 %67, %69
  %71 = call zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef %68, i32 noundef %70, i32 noundef 0, ptr noundef %57, i32 noundef %59, i32 noundef 0) #12
  br label %72

72:                                               ; preds = %56, %51, %47, %43, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_ifchange(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.brcmf_fil_p2p_if_le, align 2
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !10
  %8 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = tail call i32 @net_ratelimit() #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %62, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.brcmf_p2p_ifchange) #13
  br label %62

18:                                               ; preds = %2
  %19 = load ptr, ptr %9, align 4
  %20 = tail call i32 @brcmf_notify_escan_complete(ptr noundef %0, ptr noundef %19, i1 noundef zeroext true, i1 noundef zeroext true) #12
  %21 = getelementptr %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 5, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = tail call i32 @net_ratelimit() #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %62, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.brcmf_p2p_ifchange) #13
  br label %62

31:                                               ; preds = %18
  %32 = load ptr, ptr %22, align 4
  tail call void @brcmf_set_mpc(ptr noundef %32, i32 noundef 0) #12
  call fastcc void @brcmf_p2p_get_current_chanspec(ptr noundef %5, ptr noundef nonnull %4)
  %33 = trunc i32 %1 to i16
  %34 = getelementptr inbounds %struct.brcmf_fil_p2p_if_le, ptr %3, i32 0, i32 1
  store i16 %33, ptr %34, align 2
  %35 = load i16, ptr %4, align 2
  %36 = getelementptr inbounds %struct.brcmf_fil_p2p_if_le, ptr %3, i32 0, i32 2
  store i16 %35, ptr %36, align 2
  %37 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %3, ptr noundef align 2 dereferenceable(6) %37, i32 6, i1 false)
  tail call void @brcmf_cfg80211_arm_vif_event(ptr noundef %0, ptr noundef nonnull %22) #12
  %38 = load ptr, ptr %22, align 4
  %39 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %38, ptr noundef nonnull @.str.8, ptr noundef nonnull %3, i32 noundef 10) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %31
  %42 = call i32 @net_ratelimit() #12
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.wiphy, ptr %46, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.brcmf_p2p_ifchange, i32 noundef %39) #13
  br label %48

48:                                               ; preds = %44, %41
  call void @brcmf_cfg80211_arm_vif_event(ptr noundef %0, ptr noundef null) #12
  br label %62

49:                                               ; preds = %31
  %50 = call i32 @brcmf_cfg80211_wait_vif_event(ptr noundef %0, i8 noundef zeroext 3, i32 noundef 150) #12
  call void @brcmf_cfg80211_arm_vif_event(ptr noundef %0, ptr noundef null) #12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = call i32 @net_ratelimit() #12
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.wiphy, ptr %57, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.brcmf_p2p_ifchange) #13
  br label %62

59:                                               ; preds = %49
  %60 = load ptr, ptr %22, align 4
  %61 = call i32 @brcmf_fil_cmd_int_set(ptr noundef %60, i32 noundef 158, i32 noundef 20) #12
  br label %62

62:                                               ; preds = %59, %55, %52, %48, %27, %24, %14, %11
  %63 = phi i32 [ %39, %48 ], [ %61, %59 ], [ -1, %14 ], [ -1, %11 ], [ -1, %27 ], [ -1, %24 ], [ -5, %55 ], [ -5, %52 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #12
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_p2p_get_current_chanspec(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca %struct.brcmu_chan, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !10
  %5 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @brcmf_fil_cmd_data_get(ptr noundef %7, i32 noundef 23, ptr noundef nonnull %3, i32 noundef 6) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %12 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 2048) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  store i32 2048, ptr %12, align 8
  %15 = call i32 @brcmf_fil_cmd_data_get(ptr noundef %7, i32 noundef 136, ptr noundef nonnull %12, i32 noundef 2048) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %12, i32 76
  %19 = load i16, ptr %18, align 4
  store i16 %19, ptr %1, align 2
  call void @kfree(ptr noundef nonnull %12) #12
  br label %28

20:                                               ; preds = %14
  call void @kfree(ptr noundef nonnull %12) #12
  br label %21

21:                                               ; preds = %20, %10, %2
  %22 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 1
  store i8 11, ptr %22, align 2
  %23 = getelementptr inbounds %struct.brcmu_chan, ptr %4, i32 0, i32 4
  store i32 0, ptr %23, align 4
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %24, i32 0, i32 26, i32 1
  %26 = load ptr, ptr %25, align 4
  call void %26(ptr noundef nonnull %4) #12
  %27 = load i16, ptr %4, align 4
  store i16 %27, ptr %1, align 2
  br label %28

28:                                               ; preds = %21, %17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_cfg80211_arm_vif_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_cfg80211_wait_vif_event(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_int_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @brcmf_p2p_add_vif(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.brcmf_fil_p2p_if_le, align 2
  %7 = alloca i16, align 2
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !9
  unreachable

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %12, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @brcmf_get_ifp(ptr noundef %14, i32 noundef 0) #12
  %16 = getelementptr inbounds %struct.brcmf_if, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 1408
  %19 = load ptr, ptr %13, align 4
  %20 = tail call zeroext i1 @brcmf_cfg80211_vif_event_armed(ptr noundef %12) #12
  br i1 %20, label %121, label %21

21:                                               ; preds = %10
  switch i32 %3, label %121 [
    i32 8, label %27
    i32 9, label %22
    i32 10, label %23
  ]

22:                                               ; preds = %21
  br label %27

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %12, i32 0, i32 2
  %25 = getelementptr inbounds %struct.vif_params, ptr %4, i32 0, i32 2
  %26 = tail call fastcc ptr @brcmf_p2p_create_p2pdev(ptr noundef %24, ptr noundef %25)
  br label %121

27:                                               ; preds = %22, %21
  %28 = phi i1 [ true, %22 ], [ false, %21 ]
  %29 = phi i16 [ 1, %22 ], [ 0, %21 ]
  %30 = tail call ptr @brcmf_alloc_vif(ptr noundef %12, i32 noundef %3) #12
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %121, label %32

32:                                               ; preds = %27
  tail call void @brcmf_cfg80211_arm_vif_event(ptr noundef %12, ptr noundef %30) #12
  %33 = load ptr, ptr %13, align 4
  %34 = tail call ptr @brcmf_get_ifp(ptr noundef %33, i32 noundef 0) #12
  %35 = getelementptr inbounds %struct.brcmf_if, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 1408
  %38 = icmp eq ptr %37, null
  br i1 %38, label %66, label %39

39:                                               ; preds = %32
  %40 = getelementptr %struct.brcmf_cfg80211_info, ptr %12, i32 0, i32 2, i32 5, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %49

43:                                               ; preds = %49
  %44 = tail call zeroext i1 @brcmf_feat_is_enabled(ptr noundef nonnull %37, i32 noundef 5) #12
  br i1 %44, label %55, label %45

45:                                               ; preds = %43
  %46 = tail call i32 @net_ratelimit() #12
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %45
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_p2p_get_conn_idx, ptr noundef nonnull @.str.49) #12
  br label %66

49:                                               ; preds = %39
  %50 = getelementptr %struct.brcmf_cfg80211_info, ptr %12, i32 0, i32 2, i32 5, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %43, label %66

53:                                               ; preds = %39
  %54 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %12, i32 0, i32 2, i32 3
  br label %57

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %12, i32 0, i32 2, i32 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ 2, %53 ], [ 3, %55 ]
  %59 = phi ptr [ %54, %53 ], [ %56, %55 ]
  %60 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %12, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i16 0, ptr %7, align 2, !annotation !10
  call fastcc void @brcmf_p2p_get_current_chanspec(ptr noundef %60, ptr noundef nonnull %7) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %6, ptr noundef align 1 dereferenceable(6) %59, i32 6, i1 false) #12
  %61 = getelementptr inbounds %struct.brcmf_fil_p2p_if_le, ptr %6, i32 0, i32 1
  store i16 %29, ptr %61, align 2
  %62 = load i16, ptr %7, align 2
  %63 = getelementptr inbounds %struct.brcmf_fil_p2p_if_le, ptr %6, i32 0, i32 2
  store i16 %62, ptr %63, align 2
  %64 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %18, ptr noundef nonnull @.str.50, ptr noundef nonnull %6, i32 noundef 10) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %6) #12
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %57, %49, %48, %45, %32
  %67 = phi i32 [ %64, %57 ], [ -22, %32 ], [ -22, %48 ], [ -22, %45 ], [ -22, %49 ]
  %68 = call i32 @net_ratelimit() #12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_p2p_add_vif, ptr noundef nonnull @.str.11) #12
  br label %71

71:                                               ; preds = %70, %66
  call void @brcmf_cfg80211_arm_vif_event(ptr noundef %12, ptr noundef null) #12
  br label %118

72:                                               ; preds = %57
  %73 = call i32 @brcmf_cfg80211_wait_vif_event(ptr noundef %12, i8 noundef zeroext 1, i32 noundef 150) #12
  call void @brcmf_cfg80211_arm_vif_event(ptr noundef %12, ptr noundef null) #12
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = call i32 @net_ratelimit() #12
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %118, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.brcmf_pub, ptr %19, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.wiphy, ptr %80, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.brcmf_p2p_add_vif) #13
  br label %118

82:                                               ; preds = %72
  %83 = load ptr, ptr %30, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = call i32 @net_ratelimit() #12
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %118, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.brcmf_pub, ptr %19, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.wiphy, ptr %90, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.brcmf_p2p_add_vif) #13
  br label %118

92:                                               ; preds = %82
  %93 = getelementptr inbounds %struct.brcmf_if, ptr %83, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = call ptr @strncpy(ptr noundef %94, ptr noundef %1, i32 noundef 15)
  %96 = load ptr, ptr %93, align 4
  %97 = getelementptr inbounds %struct.net_device, ptr %96, i32 0, i32 34
  store i8 %2, ptr %97, align 1
  %98 = call i32 @brcmf_net_attach(ptr noundef nonnull %83, i1 noundef zeroext true) #12
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %92
  %101 = call i32 @net_ratelimit() #12
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.brcmf_pub, ptr %19, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.wiphy, ptr %105, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.brcmf_p2p_add_vif) #13
  br label %107

107:                                              ; preds = %103, %100
  %108 = load ptr, ptr %93, align 4
  call void @free_netdev(ptr noundef %108) #12
  br label %118

109:                                              ; preds = %92
  %110 = getelementptr %struct.brcmf_cfg80211_info, ptr %12, i32 0, i32 2, i32 5, i32 %58
  store ptr %30, ptr %110, align 4
  %111 = call i32 @brcmf_fil_iovar_int_set(ptr noundef nonnull %83, ptr noundef nonnull @.str.15, i32 noundef 1) #12
  br i1 %28, label %112, label %114

112:                                              ; preds = %109
  %113 = call i32 @brcmf_fil_cmd_int_set(ptr noundef nonnull %83, i32 noundef 158, i32 noundef 20) #12
  br label %114

114:                                              ; preds = %112, %109
  %115 = getelementptr inbounds %struct.brcmf_if, ptr %83, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %116, i32 0, i32 1
  br label %121

118:                                              ; preds = %107, %88, %85, %78, %75, %71
  %119 = phi i32 [ %67, %71 ], [ %98, %107 ], [ -5, %78 ], [ -5, %75 ], [ -2, %88 ], [ -2, %85 ]
  call void @brcmf_free_vif(ptr noundef %30) #12
  %120 = inttoptr i32 %119 to ptr
  br label %121

121:                                              ; preds = %118, %114, %27, %23, %21, %10
  %122 = phi ptr [ %26, %23 ], [ %120, %118 ], [ %117, %114 ], [ %30, %27 ], [ inttoptr (i32 -16 to ptr), %10 ], [ inttoptr (i32 -95 to ptr), %21 ]
  ret ptr %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_cfg80211_vif_event_armed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @brcmf_p2p_create_p2pdev(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !10
  %7 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 5
  %8 = getelementptr %struct.brcmf_p2p_info, ptr %0, i32 0, i32 5, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %154

11:                                               ; preds = %2
  %12 = tail call ptr @brcmf_alloc_vif(ptr noundef %4, i32 noundef 10) #12
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = tail call i32 @net_ratelimit() #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %154, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.brcmf_p2p_create_p2pdev) #13
  br label %154

21:                                               ; preds = %11
  %22 = load ptr, ptr %7, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %1, null
  %25 = getelementptr inbounds %struct.brcmf_if, ptr %23, i32 0, i32 8
  br i1 %24, label %26, label %28

26:                                               ; preds = %21
  %27 = load i8, ptr %25, align 4
  br label %54

28:                                               ; preds = %21
  %29 = load i32, ptr %1, align 4
  %30 = load i32, ptr %25, align 4
  %31 = xor i32 %30, %29
  %32 = getelementptr i8, ptr %1, i32 4
  %33 = load i16, ptr %32, align 2
  %34 = getelementptr %struct.brcmf_if, ptr %23, i32 0, i32 8, i32 4
  %35 = load i16, ptr %34, align 2
  %36 = xor i16 %35, %33
  %37 = zext i16 %36 to i32
  %38 = or i32 %31, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %28
  %41 = tail call i32 @net_ratelimit() #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %151, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.wiphy, ptr %45, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.brcmf_p2p_create_p2pdev) #13
  br label %151

47:                                               ; preds = %28
  %48 = trunc i32 %30 to i8
  %49 = zext i16 %33 to i32
  %50 = or i32 %29, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %53, ptr noundef nonnull align 1 dereferenceable(6) %1, i32 6, i1 false) #12
  br label %67

54:                                               ; preds = %47, %26
  %55 = phi i8 [ %27, %26 ], [ %48, %47 ]
  %56 = and i8 %55, 2
  %57 = icmp eq i8 %56, 0
  %58 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 2
  br i1 %57, label %59, label %63

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.brcmf_if, ptr %23, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %58, ptr noundef align 1 dereferenceable(6) %60, i32 6, i1 false) #12
  %61 = load i8, ptr %58, align 4
  %62 = or i8 %61, 2
  store i8 %62, ptr %58, align 4
  br label %67

63:                                               ; preds = %54
  tail call void @get_random_bytes(ptr noundef %58, i32 noundef 6) #12
  %64 = load i8, ptr %58, align 1
  %65 = and i8 %64, -4
  %66 = or i8 %65, 2
  store i8 %66, ptr %58, align 1
  br label %67

67:                                               ; preds = %63, %59, %52
  %68 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 3
  %69 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %68, ptr noundef align 4 dereferenceable(6) %69, i32 6, i1 false) #12
  %70 = load i8, ptr %68, align 2
  %71 = or i8 %70, 2
  store i8 %71, ptr %68, align 2
  %72 = getelementptr %struct.brcmf_p2p_info, ptr %0, i32 0, i32 3, i32 4
  %73 = load i8, ptr %72, align 2
  %74 = xor i8 %73, -128
  store i8 %74, ptr %72, align 2
  %75 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %75, ptr noundef align 4 dereferenceable(6) %69, i32 6, i1 false) #12
  %76 = load i8, ptr %75, align 4
  %77 = or i8 %76, 2
  store i8 %77, ptr %75, align 4
  %78 = getelementptr %struct.brcmf_p2p_info, ptr %0, i32 0, i32 4, i32 4
  %79 = load i8, ptr %78, align 4
  %80 = xor i8 %79, -112
  store i8 %80, ptr %78, align 4
  %81 = load ptr, ptr %23, align 4
  %82 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %23, i32 noundef 3, i32 noundef 1) #12
  %83 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %23, ptr noundef nonnull @.str.43, i32 noundef 1) #12
  %84 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %23, i32 noundef 2, i32 noundef 1) #12
  %85 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %23, ptr noundef nonnull @.str.19, i32 noundef 0) #12
  %86 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %23, ptr noundef nonnull @.str.44, ptr noundef %69, i32 noundef 6) #12
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %67
  %89 = tail call i32 @net_ratelimit() #12
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.brcmf_pub, ptr %81, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.wiphy, ptr %93, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.brcmf_p2p_set_firmware, i32 noundef %86) #13
  br label %95

95:                                               ; preds = %91, %88, %67
  %96 = load ptr, ptr %0, align 4
  tail call void @brcmf_cfg80211_arm_vif_event(ptr noundef %96, ptr noundef %12) #12
  tail call void @brcmf_fweh_p2pdev_setup(ptr noundef %23, i1 noundef zeroext true) #12
  %97 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %23, ptr noundef nonnull @.str.19, i32 noundef 1) #12
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = tail call i32 @net_ratelimit() #12
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 2
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.wiphy, ptr %104, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.brcmf_p2p_create_p2pdev) #13
  br label %106

106:                                              ; preds = %102, %99
  tail call void @brcmf_fweh_p2pdev_setup(ptr noundef %23, i1 noundef zeroext false) #12
  %107 = load ptr, ptr %0, align 4
  tail call void @brcmf_cfg80211_arm_vif_event(ptr noundef %107, ptr noundef null) #12
  br label %151

108:                                              ; preds = %95
  %109 = load ptr, ptr %0, align 4
  %110 = tail call i32 @brcmf_cfg80211_wait_vif_event(ptr noundef %109, i8 noundef zeroext 1, i32 noundef 150) #12
  %111 = load ptr, ptr %0, align 4
  tail call void @brcmf_cfg80211_arm_vif_event(ptr noundef %111, ptr noundef null) #12
  tail call void @brcmf_fweh_p2pdev_setup(ptr noundef %23, i1 noundef zeroext false) #12
  %112 = icmp eq i32 %110, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = tail call i32 @net_ratelimit() #12
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %151, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.wiphy, ptr %118, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.brcmf_p2p_create_p2pdev) #13
  br label %151

120:                                              ; preds = %108
  %121 = load ptr, ptr %12, align 4
  store ptr %12, ptr %8, align 4
  %122 = getelementptr inbounds %struct.brcmf_if, ptr %121, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %122, ptr noundef align 4 dereferenceable(6) %69, i32 6, i1 false)
  %123 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %12, i32 0, i32 1
  %124 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %12, i32 0, i32 1, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %124, ptr noundef align 4 dereferenceable(6) %69, i32 6, i1 false)
  %125 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %23, ptr noundef nonnull @.str.40, ptr noundef nonnull %3) #12
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %120
  %128 = call i32 @net_ratelimit() #12
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %151, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 2
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.wiphy, ptr %132, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.brcmf_p2p_create_p2pdev) #13
  br label %151

134:                                              ; preds = %120
  %135 = getelementptr inbounds %struct.brcmf_if, ptr %121, i32 0, i32 7
  %136 = load i32, ptr %135, align 4
  %137 = load i32, ptr %3, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %140, label %139, !prof !12

139:                                              ; preds = %134
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 2218, i32 noundef 9, ptr noundef null) #12
  br label %140

140:                                              ; preds = %139, %134
  %141 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 11
  store i32 0, ptr %141, align 4
  %142 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 11, i32 1
  call void @__init_swait_queue_head(ptr noundef %142, ptr noundef nonnull @.str.46, ptr noundef nonnull @init_completion.__key) #12
  %143 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 12
  store i32 -32, ptr %143, align 4
  %144 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 12, i32 0, i32 1
  store volatile ptr %144, ptr %144, align 4
  %145 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 12, i32 0, i32 1, i32 1
  store ptr %144, ptr %145, align 4
  %146 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 12, i32 0, i32 2
  store ptr @brcmf_p2p_afx_handler, ptr %146, align 4
  %147 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 12, i32 1
  store i32 0, ptr %147, align 4
  %148 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 12, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %148, ptr noundef nonnull @.str.46, ptr noundef nonnull @init_completion.__key) #12
  %149 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 15
  store i32 0, ptr %149, align 4
  %150 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 15, i32 1
  call void @__init_swait_queue_head(ptr noundef %150, ptr noundef nonnull @.str.46, ptr noundef nonnull @init_completion.__key) #12
  br label %154

151:                                              ; preds = %130, %127, %116, %113, %106, %43, %40
  %152 = phi i32 [ %97, %106 ], [ %125, %130 ], [ %125, %127 ], [ -22, %43 ], [ -22, %40 ], [ -5, %116 ], [ -5, %113 ]
  call void @brcmf_free_vif(ptr noundef %12) #12
  %153 = inttoptr i32 %152 to ptr
  br label %154

154:                                              ; preds = %151, %140, %17, %14, %2
  %155 = phi ptr [ %153, %151 ], [ %123, %140 ], [ %12, %17 ], [ %12, %14 ], [ inttoptr (i32 -28 to ptr), %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret ptr %155
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_alloc_vif(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_net_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_free_vif(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_del_vif(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.brcmf_p2p_disc_st_le, align 2
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !9
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %1, i32 -4
  %10 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void @brcmf_cfg80211_arm_vif_event(ptr noundef %8, ptr noundef %9) #12
  switch i32 %11, label %86 [
    i32 8, label %12
    i32 9, label %18
    i32 10, label %22
  ]

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %1, i32 1300
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 2, i32 1
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %17) #12
  br i1 %16, label %55, label %42

18:                                               ; preds = %6
  %19 = load ptr, ptr %1, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26, !prof !8

21:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !9
  unreachable

22:                                               ; preds = %6
  %23 = getelementptr %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 2, i32 5, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %86, label %45

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.wiphy, ptr %19, i32 1, i32 0, i32 3, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %28, i32 0, i32 10
  %30 = load ptr, ptr %29, align 4
  %31 = tail call ptr @brcmf_get_ifp(ptr noundef %30, i32 noundef 0) #12
  %32 = getelementptr inbounds %struct.brcmf_if, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 1408
  %35 = getelementptr i8, ptr %1, i32 16
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 72
  %38 = load ptr, ptr %37, align 32
  %39 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %34, ptr noundef nonnull @.str.51, ptr noundef %38, i32 noundef 6) #12
  %40 = icmp eq i32 %39, 0
  %41 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 2, i32 1
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %41) #12
  br i1 %40, label %42, label %55

42:                                               ; preds = %26, %12
  %43 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 25
  %44 = tail call i32 @wait_for_completion_timeout(ptr noundef %43, i32 noundef 50) #12
  br label %55

45:                                               ; preds = %22
  %46 = load ptr, ptr %9, align 4
  tail call void @brcmf_p2p_cancel_remain_on_channel(ptr noundef %46)
  %47 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 2, i32 5
  %48 = load ptr, ptr %23, align 4
  %49 = load ptr, ptr %48, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %3, i8 0, i64 6, i1 false) #12
  %50 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %49, ptr noundef nonnull @.str.30, ptr noundef nonnull %3, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %51 = load ptr, ptr %47, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %52, ptr noundef nonnull @.str.19, i32 noundef 0) #12
  %54 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 2, i32 1
  call void @_clear_bit(i32 noundef 8, ptr noundef %54) #12
  br label %75

55:                                               ; preds = %42, %26, %12
  %56 = tail call i32 @brcmf_vif_clear_mgmt_ies(ptr noundef %9) #12
  %57 = load ptr, ptr %1, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60, !prof !8

59:                                               ; preds = %55
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !9
  unreachable

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.wiphy, ptr %57, i32 1, i32 0, i32 3, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %62, i32 0, i32 10
  %64 = load ptr, ptr %63, align 4
  %65 = tail call ptr @brcmf_get_ifp(ptr noundef %64, i32 noundef 0) #12
  %66 = getelementptr inbounds %struct.brcmf_if, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 1408
  %69 = getelementptr i8, ptr %1, i32 16
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 72
  %72 = load ptr, ptr %71, align 32
  %73 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %68, ptr noundef nonnull @.str.52, ptr noundef %72, i32 noundef 6) #12
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %60, %45
  %76 = phi i1 [ true, %45 ], [ false, %60 ]
  %77 = call i32 @brcmf_cfg80211_wait_vif_event(ptr noundef %8, i8 noundef zeroext 2, i32 noundef 150) #12
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 -5, i32 0
  br label %80

80:                                               ; preds = %75, %60
  %81 = phi i1 [ false, %60 ], [ %76, %75 ]
  %82 = phi i32 [ %73, %60 ], [ %79, %75 ]
  %83 = load ptr, ptr %9, align 4
  call void @brcmf_remove_interface(ptr noundef %83, i1 noundef zeroext true) #12
  call void @brcmf_cfg80211_arm_vif_event(ptr noundef %8, ptr noundef null) #12
  br i1 %81, label %86, label %84

84:                                               ; preds = %80
  %85 = getelementptr %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 2, i32 5, i32 2
  store ptr null, ptr %85, align 4
  br label %86

86:                                               ; preds = %84, %80, %22, %6
  %87 = phi i32 [ 0, %22 ], [ -524, %6 ], [ %82, %84 ], [ %82, %80 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_vif_clear_mgmt_ies(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_remove_interface(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_p2p_ifp_removed(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !9
  unreachable

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wiphy, ptr %6, i32 1, i32 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.brcmf_cfg80211_info, ptr %11, i32 0, i32 2, i32 5, i32 1
  store ptr null, ptr %12, align 4
  br i1 %1, label %16, label %13

13:                                               ; preds = %9
  tail call void @rtnl_lock() #12
  %14 = load ptr, ptr %11, align 4
  tail call void @mutex_lock(ptr noundef %14) #12
  tail call void @cfg80211_unregister_wdev(ptr noundef %5) #12
  %15 = load ptr, ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef %15) #12
  tail call void @rtnl_unlock() #12
  br label %17

16:                                               ; preds = %9
  tail call void @cfg80211_unregister_wdev(ptr noundef %5) #12
  br label %17

17:                                               ; preds = %16, %13
  tail call void @brcmf_free_vif(ptr noundef %4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unregister_wdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_start_device(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !9
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %7, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %9) #12
  %10 = tail call fastcc i32 @brcmf_p2p_enable_discovery(ptr noundef %8)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %1, i32 1300
  tail call void @_set_bit(i32 noundef 0, ptr noundef %13) #12
  br label %14

14:                                               ; preds = %12, %5
  tail call void @mutex_unlock(ptr noundef %9) #12
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_p2p_stop_device(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.brcmf_p2p_disc_st_le, align 2
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !9
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %1, i32 -4
  %10 = getelementptr %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 2, i32 5, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %9
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %8, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %14) #12
  %15 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %3, i8 0, i64 6, i1 false)
  %16 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %15, ptr noundef nonnull @.str.30, ptr noundef nonnull %3, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  call void @brcmf_abort_scanning(ptr noundef %8) #12
  %17 = getelementptr i8, ptr %1, i32 1300
  call void @_clear_bit(i32 noundef 0, ptr noundef %17) #12
  call void @mutex_unlock(ptr noundef %14) #12
  br label %18

18:                                               ; preds = %13, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_p2p_attach(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2
  store ptr %0, ptr %5, align 4
  %6 = tail call ptr @brcmf_get_ifp(ptr noundef %4, i32 noundef 0) #12
  %7 = getelementptr inbounds %struct.brcmf_if, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 5
  store ptr %8, ptr %9, align 4
  br i1 %1, label %10, label %22

10:                                               ; preds = %2
  %11 = tail call fastcc ptr @brcmf_p2p_create_p2pdev(ptr noundef %5, ptr noundef null)
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = tail call i32 @net_ratelimit() #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.brcmf_p2p_attach) #13
  br label %20

20:                                               ; preds = %16, %13
  %21 = ptrtoint ptr %11 to i32
  br label %24

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 2, i32 18
  store i8 1, ptr %23, align 2
  br label %24

24:                                               ; preds = %22, %20, %10
  %25 = phi i32 [ %21, %20 ], [ 0, %10 ], [ 0, %22 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_get_ifp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_p2p_detach(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.brcmf_p2p_disc_st_le, align 2
  %3 = getelementptr %struct.brcmf_p2p_info, ptr %0, i32 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 4
  tail call void @brcmf_p2p_cancel_remain_on_channel(ptr noundef %7)
  %8 = getelementptr inbounds %struct.brcmf_p2p_info, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %3, align 4
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %2, i8 0, i64 6, i1 false) #12
  %11 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %10, ptr noundef nonnull @.str.30, ptr noundef nonnull %2, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %12 = load ptr, ptr %8, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %13, ptr noundef nonnull @.str.19, i32 noundef 0) #12
  %15 = load ptr, ptr %4, align 4
  call void @brcmf_remove_interface(ptr noundef %15, i1 noundef zeroext false) #12
  br label %16

16:                                               ; preds = %6, %1
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(244) %0, i8 0, i32 244, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_bsscfg_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @channel_to_chanspec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_p2p_escan(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.brcmf_p2p_disc_st_le, align 2
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = shl i32 %1, 1
  %10 = add i32 %9, 76
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %87, label %13

13:                                               ; preds = %4
  %14 = getelementptr %struct.brcmf_p2p_info, ptr %0, i32 0, i32 5, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = tail call i32 @net_ratelimit() #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %85, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.brcmf_pub, ptr %8, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.brcmf_p2p_escan, i32 noundef 1) #13
  br label %85

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %11, i32 0, i32 2
  switch i32 %3, label %29 [
    i32 2, label %36
    i32 0, label %26
  ]

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %11, i32 0, i32 2, i32 0, i32 3
  store i32 7, ptr %27, align 4
  %28 = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %11, i32 0, i32 2, i32 0, i32 3, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 16 dereferenceable(7) %28, ptr noundef nonnull align 1 dereferenceable(7) @.str.17, i32 7, i1 false)
  br label %36

29:                                               ; preds = %24
  %30 = tail call i32 @net_ratelimit() #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %85, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.brcmf_pub, ptr %8, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.wiphy, ptr %34, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.brcmf_p2p_escan, i32 noundef %3) #13
  br label %85

36:                                               ; preds = %26, %24
  %37 = load ptr, ptr %15, align 4
  %38 = trunc i32 %3 to i8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2, !annotation !10
  store i8 %38, ptr %5, align 2
  %39 = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %5, i32 0, i32 1
  store i16 0, ptr %39, align 2
  %40 = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, ptr %5, i32 0, i32 2
  store i16 0, ptr %40, align 2
  %41 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %37, ptr noundef nonnull @.str.30, ptr noundef nonnull %5, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  store i8 69, ptr %11, align 64
  %42 = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %11, i32 0, i32 2, i32 0, i32 3, i32 2
  store i8 2, ptr %42, align 2
  %43 = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %11, i32 0, i32 2, i32 0, i32 3, i32 3
  store i8 0, ptr %43, align 1
  %44 = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %11, i32 0, i32 2, i32 0, i32 3, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 16 dereferenceable(6) %44, i8 -1, i32 6, i1 false) #12
  %45 = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %11, i32 0, i32 2, i32 0, i32 3, i32 7
  store i32 60, ptr %45, align 4
  %46 = add i32 %1, -3
  %47 = icmp ult i32 %46, 2
  br i1 %47, label %54, label %48

48:                                               ; preds = %36
  %49 = icmp eq i32 %1, 2
  br i1 %49, label %54, label %50

50:                                               ; preds = %48
  %51 = load ptr, ptr %0, align 4
  %52 = call zeroext i1 @brcmf_get_vif_state_any(ptr noundef %51, i32 noundef 2) #12
  %53 = select i1 %52, i32 -1, i32 80
  br label %54

54:                                               ; preds = %50, %48, %36
  %55 = phi i32 [ 40, %36 ], [ 100, %48 ], [ %53, %50 ]
  %56 = icmp eq i32 %1, 1
  %57 = trunc i32 %55 to i8
  %58 = sdiv i8 %57, 30
  %59 = select i1 %56, i32 200, i32 %55
  %60 = call i8 @llvm.smax.i8(i8 %58, i8 1)
  %61 = zext i8 %60 to i32
  %62 = select i1 %56, i32 10, i32 %61
  %63 = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %11, i32 0, i32 2, i32 0, i32 3, i32 5
  store i32 %59, ptr %63, align 4
  %64 = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %11, i32 0, i32 2, i32 0, i32 3, i32 4
  store i32 %62, ptr %64, align 8
  %65 = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %11, i32 0, i32 2, i32 0, i32 3, i32 6
  store i32 -1, ptr %65, align 64
  %66 = and i32 %1, 65535
  %67 = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %11, i32 0, i32 2, i32 0, i32 3, i32 8
  store i32 %66, ptr %67, align 8
  %68 = icmp eq i32 %1, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %69, %54
  %70 = phi i32 [ %74, %69 ], [ 0, %54 ]
  %71 = getelementptr i16, ptr %2, i32 %70
  %72 = load i16, ptr %71, align 2
  %73 = getelementptr %struct.brcmf_p2p_scan_le, ptr %11, i32 0, i32 2, i32 0, i32 3, i32 9, i32 %70
  store i16 %72, ptr %73, align 2
  %74 = add nuw i32 %70, 1
  %75 = icmp eq i32 %74, %1
  br i1 %75, label %76, label %69

76:                                               ; preds = %69, %54
  store i32 1, ptr %25, align 4
  %77 = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %11, i32 0, i32 2, i32 0, i32 1
  store i16 1, ptr %77, align 8
  %78 = getelementptr inbounds %struct.brcmf_p2p_scan_le, ptr %11, i32 0, i32 2, i32 0, i32 2
  store i16 4660, ptr %78, align 2
  %79 = load ptr, ptr %15, align 4
  %80 = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %79, ptr noundef nonnull @.str.27, ptr noundef nonnull %11, i32 noundef %10) #12
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load ptr, ptr %0, align 4
  %84 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %83, i32 0, i32 9
  call void @_set_bit(i32 noundef 0, ptr noundef %84) #12
  br label %85

85:                                               ; preds = %82, %76, %32, %29, %20, %17
  %86 = phi i32 [ %80, %76 ], [ 0, %82 ], [ -22, %20 ], [ -22, %17 ], [ -22, %32 ], [ -22, %29 ]
  call void @kfree(ptr noundef nonnull %11) #12
  br label %87

87:                                               ; preds = %85, %4
  %88 = phi i32 [ %86, %85 ], [ -12, %4 ]
  ret i32 %88
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_get_vif_state_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_bsscfg_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fweh_p2pdev_setup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_p2p_afx_handler(ptr noundef %0) #0 {
  %2 = alloca %struct.brcmu_chan, align 4
  %3 = getelementptr i8, ptr %0, i32 -164
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.afx_hdl, ptr %0, i32 0, i32 2
  %8 = load i8, ptr %7, align 4, !range !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %86, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.afx_hdl, ptr %0, i32 0, i32 4
  %12 = load i8, ptr %11, align 4, !range !11
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.afx_hdl, ptr %0, i32 0, i32 5
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @prandom_u32() #12
  %20 = urem i32 %19, 3
  %21 = mul nuw nsw i32 %20, 100
  %22 = add nuw nsw i32 %21, 100
  %23 = tail call fastcc i32 @brcmf_p2p_discover_listen(ptr noundef %3, i16 noundef zeroext %16, i32 noundef %22)
  br label %69

24:                                               ; preds = %14, %10
  %25 = getelementptr inbounds %struct.afx_hdl, ptr %0, i32 0, i32 6
  %26 = load i16, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #12, !annotation !10
  %27 = icmp eq i16 %26, 0
  %28 = select i1 %27, i32 3, i32 2
  %29 = shl nuw nsw i32 %28, 1
  %30 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = tail call i32 @net_ratelimit() #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %67, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.wiphy, ptr %37, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.brcmf_p2p_act_frm_search) #13
  br label %67

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.brcmu_chan, ptr %2, i32 0, i32 4
  store i32 0, ptr %40, align 4
  br i1 %27, label %49, label %41

41:                                               ; preds = %39
  %42 = trunc i16 %26 to i8
  %43 = getelementptr inbounds %struct.brcmu_chan, ptr %2, i32 0, i32 1
  store i8 %42, ptr %43, align 2
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %44, i32 0, i32 26, i32 1
  %46 = load ptr, ptr %45, align 4
  call void %46(ptr noundef nonnull %2) #12
  %47 = load i16, ptr %2, align 4
  store i16 %47, ptr %30, align 64
  %48 = getelementptr i16, ptr %30, i32 1
  store i16 %47, ptr %48, align 2
  br label %65

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.brcmu_chan, ptr %2, i32 0, i32 1
  store i8 1, ptr %50, align 2
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %51, i32 0, i32 26, i32 1
  %53 = load ptr, ptr %52, align 4
  call void %53(ptr noundef nonnull %2) #12
  %54 = load i16, ptr %2, align 4
  store i16 %54, ptr %30, align 64
  store i8 6, ptr %50, align 2
  %55 = load ptr, ptr %3, align 4
  %56 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %55, i32 0, i32 26, i32 1
  %57 = load ptr, ptr %56, align 4
  call void %57(ptr noundef nonnull %2) #12
  %58 = load i16, ptr %2, align 4
  %59 = getelementptr i16, ptr %30, i32 1
  store i16 %58, ptr %59, align 2
  store i8 11, ptr %50, align 2
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %60, i32 0, i32 26, i32 1
  %62 = load ptr, ptr %61, align 4
  call void %62(ptr noundef nonnull %2) #12
  %63 = load i16, ptr %2, align 4
  %64 = getelementptr i16, ptr %30, i32 2
  store i16 %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %49, %41
  %66 = call fastcc i32 @brcmf_p2p_escan(ptr noundef %3, i32 noundef %28, ptr noundef nonnull %30, i32 noundef 2) #12
  call void @kfree(ptr noundef nonnull %30) #12
  br label %67

67:                                               ; preds = %65, %35, %32
  %68 = phi i32 [ %66, %65 ], [ -12, %35 ], [ -12, %32 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  br label %69

69:                                               ; preds = %67, %18
  %70 = phi i32 [ %23, %18 ], [ %68, %67 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %69
  %73 = call i32 @net_ratelimit() #12
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.wiphy, ptr %77, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.brcmf_p2p_afx_handler, i32 noundef %70) #13
  br label %79

79:                                               ; preds = %75, %72
  %80 = getelementptr i8, ptr %0, i32 -160
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %81, 8192
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.afx_hdl, ptr %0, i32 0, i32 1
  call void @complete(ptr noundef %85) #12
  br label %86

86:                                               ; preds = %84, %79, %69, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_feat_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

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
!9 = !{i64 2155730541, i64 2155731029, i64 2155730578, i64 2155730634, i64 2155730668, i64 2155730692, i64 2155730733, i64 2155730754, i64 2155730782, i64 2155730816}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", i32 2000, i32 1}
