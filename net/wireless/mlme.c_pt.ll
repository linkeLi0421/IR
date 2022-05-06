; ModuleID = '/llk/IR/net/wireless/mlme.c_pt.bc'
source_filename = "../net/wireless/mlme.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_rx_assoc_resp:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_rx_assoc_resp\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_rx_assoc_resp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_rx_mlme_mgmt:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_rx_mlme_mgmt\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_rx_mlme_mgmt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_auth_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_auth_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_auth_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_assoc_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_assoc_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_assoc_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_abandon_assoc:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_abandon_assoc\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_abandon_assoc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_tx_mlme_mgmt:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_tx_mlme_mgmt\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_tx_mlme_mgmt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_michael_mic_failure:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_michael_mic_failure\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_michael_mic_failure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_rx_mgmt_khz:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_rx_mgmt_khz\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_rx_mgmt_khz:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cfg80211_radar_event:\09\09\09\09\09"
module asm "\09.asciz \09\22__cfg80211_radar_event\22\09\09\09\09\09"
module asm "__kstrtabns___cfg80211_radar_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_cac_event:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_cac_event\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_cac_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_background_cac_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_background_cac_abort\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_background_cac_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.115, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.24 }
%union.anon.24 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.25 }
%union.anon.25 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.115 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.123 }
%union.anon.123 = type { %struct.anon.129, [16 x i8] }
%struct.anon.129 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.cfg80211_internal_bss = type { %struct.list_head, %struct.list_head, %struct.rb_node, i64, i32, i32, %struct.atomic_t, i64, [6 x i8], %struct.cfg80211_bss }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.cfg80211_auth_request = type { ptr, ptr, i32, i32, ptr, i8, i8, ptr, i32 }
%struct.cfg80211_registered_device = type { ptr, %struct.list_head, %struct.rfkill_ops, %struct.work_struct, [2 x i8], ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.rb_root, i32, i32, ptr, ptr, ptr, %struct.list_head, i64, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, %struct.delayed_work, %struct.work_struct, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.work_struct, %struct.spinlock, [24 x i8], %struct.wiphy }
%struct.rfkill_ops = type { ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.114, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.anon.114 = type { i64, i64, i8 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cfg80211_assoc_request = type { ptr, ptr, ptr, i32, %struct.cfg80211_crypto_settings, i8, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, ptr, i32, ptr, %struct.ieee80211_s1g_cap, %struct.ieee80211_s1g_cap }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_s1g_cap = type { [10 x i8], [5 x i8] }
%struct.cfg80211_deauth_request = type { ptr, ptr, i32, i16, i8 }
%struct.cfg80211_disassoc_request = type { ptr, ptr, i32, i16, i8 }
%struct.mgmt_frame_regs = type { i32, i32, i32, i32 }
%struct.cfg80211_mgmt_registration = type { %struct.list_head, ptr, i32, i32, i16, i8, [0 x i8] }
%struct.ieee80211_txrx_stypes = type { i16, i16 }
%struct.cfg80211_mgmt_tx_params = type { ptr, i8, i32, ptr, i32, i8, i8, i32, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@__kstrtab_cfg80211_rx_assoc_resp = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_rx_assoc_resp = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_rx_assoc_resp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_rx_assoc_resp to i32), ptr @__kstrtab_cfg80211_rx_assoc_resp, ptr @__kstrtabns_cfg80211_rx_assoc_resp }, section "___ksymtab+cfg80211_rx_assoc_resp", align 4
@.str = private unnamed_addr constant [20 x i8] c"net/wireless/mlme.c\00", align 1
@__kstrtab_cfg80211_rx_mlme_mgmt = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_rx_mlme_mgmt = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_rx_mlme_mgmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_rx_mlme_mgmt to i32), ptr @__kstrtab_cfg80211_rx_mlme_mgmt, ptr @__kstrtabns_cfg80211_rx_mlme_mgmt }, section "___ksymtab+cfg80211_rx_mlme_mgmt", align 4
@__kstrtab_cfg80211_auth_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_auth_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_auth_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_auth_timeout to i32), ptr @__kstrtab_cfg80211_auth_timeout, ptr @__kstrtabns_cfg80211_auth_timeout }, section "___ksymtab+cfg80211_auth_timeout", align 4
@__kstrtab_cfg80211_assoc_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_assoc_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_assoc_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_assoc_timeout to i32), ptr @__kstrtab_cfg80211_assoc_timeout, ptr @__kstrtabns_cfg80211_assoc_timeout }, section "___ksymtab+cfg80211_assoc_timeout", align 4
@__kstrtab_cfg80211_abandon_assoc = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_abandon_assoc = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_abandon_assoc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_abandon_assoc to i32), ptr @__kstrtab_cfg80211_abandon_assoc, ptr @__kstrtabns_cfg80211_abandon_assoc }, section "___ksymtab+cfg80211_abandon_assoc", align 4
@__kstrtab_cfg80211_tx_mlme_mgmt = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_tx_mlme_mgmt = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_tx_mlme_mgmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_tx_mlme_mgmt to i32), ptr @__kstrtab_cfg80211_tx_mlme_mgmt, ptr @__kstrtabns_cfg80211_tx_mlme_mgmt }, section "___ksymtab+cfg80211_tx_mlme_mgmt", align 4
@__kstrtab_cfg80211_michael_mic_failure = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_michael_mic_failure = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_michael_mic_failure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_michael_mic_failure to i32), ptr @__kstrtab_cfg80211_michael_mic_failure, ptr @__kstrtabns_cfg80211_michael_mic_failure }, section "___ksymtab+cfg80211_michael_mic_failure", align 4
@cfg80211_mlme_register_mgmt.__msg = internal constant [26 x i8] c"frame type not management\00", align 1
@cfg80211_mlme_register_mgmt.__msg.1 = internal constant [19 x i8] c"Invalid frame type\00", align 1
@cfg80211_mlme_register_mgmt.__msg.2 = internal constant [44 x i8] c"Registration to specific type not supported\00", align 1
@cfg80211_mlme_register_mgmt.__msg.3 = internal constant [41 x i8] c"Authentication algorithm number required\00", align 1
@cfg80211_mlme_register_mgmt.__msg.4 = internal constant [25 x i8] c"Match already configured\00", align 1
@__kstrtab_cfg80211_rx_mgmt_khz = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_rx_mgmt_khz = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_rx_mgmt_khz = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_rx_mgmt_khz to i32), ptr @__kstrtab_cfg80211_rx_mgmt_khz, ptr @__kstrtabns_cfg80211_rx_mgmt_khz }, section "___ksymtab+cfg80211_rx_mgmt_khz", align 4
@cfg80211_wq = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab___cfg80211_radar_event = external dso_local constant [0 x i8], align 1
@__kstrtabns___cfg80211_radar_event = external dso_local constant [0 x i8], align 1
@__ksymtab___cfg80211_radar_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cfg80211_radar_event to i32), ptr @__kstrtab___cfg80211_radar_event, ptr @__kstrtabns___cfg80211_radar_event }, section "___ksymtab+__cfg80211_radar_event", align 4
@__kstrtab_cfg80211_cac_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_cac_event = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_cac_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_cac_event to i32), ptr @__kstrtab_cfg80211_cac_event, ptr @__kstrtabns_cfg80211_cac_event }, section "___ksymtab+cfg80211_cac_event", align 4
@__kstrtab_cfg80211_background_cac_abort = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_background_cac_abort = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_background_cac_abort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_background_cac_abort to i32), ptr @__kstrtab_cfg80211_background_cac_abort, ptr @__kstrtabns_cfg80211_background_cac_abort }, section "___ksymtab+cfg80211_background_cac_abort", align 4
@__tracepoint_cfg80211_send_rx_assoc = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"net/wireless/core.h\00", align 1
@__tracepoint_cfg80211_rx_mlme_mgmt = external dso_local global %struct.tracepoint, align 4
@__tracepoint_cfg80211_send_auth_timeout = external dso_local global %struct.tracepoint, align 4
@__tracepoint_cfg80211_send_assoc_timeout = external dso_local global %struct.tracepoint, align 4
@__tracepoint_cfg80211_tx_mlme_mgmt = external dso_local global %struct.tracepoint, align 4
@__tracepoint_cfg80211_michael_mic_failure = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_auth = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_return_int = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_assoc = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_deauth = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_disassoc = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_update_mgmt_frame_registrations = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_return_void = external dso_local global %struct.tracepoint, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_rdev_crit_proto_stop = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_mgmt_tx = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_return_int_cookie = external dso_local global %struct.tracepoint, align 4
@__tracepoint_cfg80211_rx_mgmt = external dso_local global %struct.tracepoint, align 4
@__tracepoint_cfg80211_return_bool = external dso_local global %struct.tracepoint, align 4
@__tracepoint_cfg80211_radar_event = external dso_local global %struct.tracepoint, align 4
@__tracepoint_cfg80211_cac_event = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_set_radar_background = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab___cfg80211_radar_event, ptr @__ksymtab_cfg80211_abandon_assoc, ptr @__ksymtab_cfg80211_assoc_timeout, ptr @__ksymtab_cfg80211_auth_timeout, ptr @__ksymtab_cfg80211_background_cac_abort, ptr @__ksymtab_cfg80211_cac_event, ptr @__ksymtab_cfg80211_michael_mic_failure, ptr @__ksymtab_cfg80211_rx_assoc_resp, ptr @__ksymtab_cfg80211_rx_mgmt_khz, ptr @__ksymtab_cfg80211_rx_mlme_mgmt, ptr @__ksymtab_cfg80211_tx_mlme_mgmt], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_rx_assoc_resp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.cfg80211_connect_resp_params, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

14:                                               ; preds = %7
  %15 = getelementptr i8, ptr %11, i32 -544
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #11
  %16 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 0, i32 2, i32 2
  %17 = load ptr, ptr %1, align 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 4
  %20 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 0, i32 2
  %21 = select i1 %19, ptr %20, ptr %16
  %22 = select i1 %19, i32 -28, i32 -30
  %23 = add i32 %22, %3
  %24 = getelementptr inbounds i8, ptr %8, i32 28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %24, i8 0, i32 24, i1 false)
  %25 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 0, i32 1
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  store i32 %27, ptr %8, align 4
  %28 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 4
  %29 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %8, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %8, i32 0, i32 2
  store ptr %1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %8, i32 0, i32 3
  store ptr %5, ptr %31, align 4
  %32 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %8, i32 0, i32 4
  store i32 %6, ptr %32, align 4
  %33 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %8, i32 0, i32 5
  store ptr %21, ptr %33, align 4
  %34 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %8, i32 0, i32 6
  store i32 %23, ptr %34, align 4
  %35 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %8, i32 0, i32 8
  store i32 0, ptr %35, align 4
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_send_rx_assoc, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %14
  %39 = tail call ptr @llvm.thread.pointer() #11
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 5
  %43 = getelementptr i32, ptr @__cpu_online_mask, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %41, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  %50 = tail call i32 @__traceiter_cfg80211_send_rx_assoc(ptr noundef null, ptr noundef %0, ptr noundef %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  br label %51

51:                                               ; preds = %49, %38, %14
  %52 = tail call zeroext i1 @cfg80211_sme_rx_assoc_resp(ptr noundef %10, i16 noundef zeroext %26) #11
  br i1 %52, label %53, label %70

53:                                               ; preds = %51
  %54 = getelementptr i8, ptr %1, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #11, !srcloc !13
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #11, !srcloc !14
  %56 = extractvalue { i32, i32 } %55, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59, !prof !8

58:                                               ; preds = %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 200, i32 noundef 9, ptr noundef null) #11
  br label %59

59:                                               ; preds = %58, %53
  %60 = getelementptr i8, ptr %1, i32 24
  %61 = load ptr, ptr %60, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = getelementptr i8, ptr %61, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #11, !srcloc !13
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, ptr elementtype(i32) %64) #11, !srcloc !14
  %66 = extractvalue { i32, i32 } %65, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69, !prof !8

68:                                               ; preds = %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 205, i32 noundef 9, ptr noundef null) #11
  br label %69

69:                                               ; preds = %68, %63, %59
  tail call void @cfg80211_put_bss(ptr noundef nonnull %11, ptr noundef %1) #11
  br label %72

70:                                               ; preds = %51
  tail call void @nl80211_send_rx_assoc(ptr noundef %15, ptr noundef %0, ptr noundef %2, i32 noundef %3, i32 noundef 3264, i32 noundef %4, ptr noundef %5, i32 noundef %6) #11
  %71 = icmp eq i16 %26, 0
  call void @__cfg80211_connect_result(ptr noundef %0, ptr noundef nonnull %8, i1 noundef zeroext %71) #11
  br label %72

72:                                               ; preds = %70, %69
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_sme_rx_assoc_resp(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_rx_assoc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cfg80211_connect_result(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_rx_mlme_mgmt(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %5 = load ptr, ptr %4, align 8
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_rx_mlme_mgmt, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = tail call ptr @llvm.thread.pointer() #11
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %20 = tail call i32 @__traceiter_cfg80211_rx_mlme_mgmt(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %21

21:                                               ; preds = %19, %8, %3
  %22 = icmp ult i32 %2, 2
  br i1 %22, label %23, label %24, !prof !8

23:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 133, i32 noundef 9, ptr noundef null) #11
  br label %38

24:                                               ; preds = %21
  %25 = load i16, ptr %1, align 2
  %26 = trunc i16 %25 to i8
  %27 = and i8 %26, -4
  switch i8 %27, label %38 [
    i8 -80, label %28
    i8 -64, label %36
    i8 -96, label %37
  ]

28:                                               ; preds = %24
  %29 = load ptr, ptr %5, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32, !prof !8

31:                                               ; preds = %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %29, i32 -544
  %34 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  tail call void @nl80211_send_rx_auth(ptr noundef %33, ptr noundef %35, ptr noundef %1, i32 noundef %2, i32 noundef 3264) #11
  tail call void @cfg80211_sme_rx_auth(ptr noundef %5, ptr noundef %1, i32 noundef %2) #11
  br label %38

36:                                               ; preds = %24
  tail call fastcc void @cfg80211_process_deauth(ptr noundef %5, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false)
  br label %38

37:                                               ; preds = %24
  tail call fastcc void @cfg80211_process_disassoc(ptr noundef %5, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false)
  br label %38

38:                                               ; preds = %37, %36, %32, %24, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cfg80211_process_deauth(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %5, i32 -544
  %10 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6
  %11 = load i16, ptr %10, align 2
  %12 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 3
  %13 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 72
  %16 = load ptr, ptr %15, align 32
  %17 = load i32, ptr %12, align 4
  %18 = load i32, ptr %16, align 4
  %19 = xor i32 %18, %17
  %20 = getelementptr %struct.ieee80211_mgmt, ptr %1, i32 0, i32 3, i32 4
  %21 = load i16, ptr %20, align 2
  %22 = getelementptr i8, ptr %16, i32 4
  %23 = load i16, ptr %22, align 2
  %24 = xor i16 %23, %21
  %25 = zext i16 %24 to i32
  %26 = or i32 %19, %25
  %27 = icmp ne i32 %26, 0
  tail call void @nl80211_send_deauth(ptr noundef %9, ptr noundef %14, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef 3264) #11
  %28 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 25
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 4
  %33 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %29, i32 0, i32 9, i32 11
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %32, align 4
  %36 = xor i32 %35, %34
  %37 = getelementptr %struct.cfg80211_internal_bss, ptr %29, i32 0, i32 9, i32 11, i32 4
  %38 = load i16, ptr %37, align 2
  %39 = getelementptr %struct.ieee80211_mgmt, ptr %1, i32 0, i32 4, i32 4
  %40 = load i16, ptr %39, align 2
  %41 = xor i16 %40, %38
  %42 = zext i16 %41 to i32
  %43 = or i32 %36, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load ptr, ptr %13, align 4
  tail call void @__cfg80211_disconnected(ptr noundef %46, ptr noundef null, i32 noundef 0, i16 noundef zeroext %11, i1 noundef zeroext %27) #11
  tail call void @cfg80211_sme_deauth(ptr noundef %0) #11
  br label %47

47:                                               ; preds = %45, %31, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cfg80211_process_disassoc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %5, i32 -544
  %10 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6
  %11 = load i16, ptr %10, align 2
  %12 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 3
  %13 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 72
  %16 = load ptr, ptr %15, align 32
  %17 = load i32, ptr %12, align 4
  %18 = load i32, ptr %16, align 4
  %19 = xor i32 %18, %17
  %20 = getelementptr %struct.ieee80211_mgmt, ptr %1, i32 0, i32 3, i32 4
  %21 = load i16, ptr %20, align 2
  %22 = getelementptr i8, ptr %16, i32 4
  %23 = load i16, ptr %22, align 2
  %24 = xor i16 %23, %21
  %25 = zext i16 %24 to i32
  %26 = or i32 %19, %25
  %27 = icmp ne i32 %26, 0
  tail call void @nl80211_send_disassoc(ptr noundef %9, ptr noundef %14, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef 3264) #11
  %28 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 25
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 4
  %33 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %29, i32 0, i32 9, i32 11
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %32, align 4
  %36 = xor i32 %35, %34
  %37 = getelementptr %struct.cfg80211_internal_bss, ptr %29, i32 0, i32 9, i32 11, i32 4
  %38 = load i16, ptr %37, align 2
  %39 = getelementptr %struct.ieee80211_mgmt, ptr %1, i32 0, i32 4, i32 4
  %40 = load i16, ptr %39, align 2
  %41 = xor i16 %40, %38
  %42 = zext i16 %41 to i32
  %43 = or i32 %36, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45, !prof !18

45:                                               ; preds = %31, %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 117, i32 noundef 9, ptr noundef null) #11
  br label %48

46:                                               ; preds = %31
  %47 = load ptr, ptr %13, align 4
  tail call void @__cfg80211_disconnected(ptr noundef %47, ptr noundef null, i32 noundef 0, i16 noundef zeroext %11, i1 noundef zeroext %27) #11
  tail call void @cfg80211_sme_disassoc(ptr noundef %0) #11
  br label %48

48:                                               ; preds = %46, %45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_auth_timeout(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

8:                                                ; preds = %2
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_send_auth_timeout, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = tail call ptr @llvm.thread.pointer() #11
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %23 = tail call i32 @__traceiter_cfg80211_send_auth_timeout(ptr noundef null, ptr noundef %0, ptr noundef %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %24

24:                                               ; preds = %22, %11, %8
  %25 = getelementptr i8, ptr %5, i32 -544
  tail call void @nl80211_send_auth_timeout(ptr noundef %25, ptr noundef %0, ptr noundef %1, i32 noundef 3264) #11
  tail call void @cfg80211_sme_auth_timeout(ptr noundef %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_auth_timeout(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sme_auth_timeout(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_assoc_timeout(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %5, i32 -544
  %10 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 11
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_send_assoc_timeout, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = tail call ptr @llvm.thread.pointer() #11
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %25 = tail call i32 @__traceiter_cfg80211_send_assoc_timeout(ptr noundef null, ptr noundef %0, ptr noundef %10) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  br label %26

26:                                               ; preds = %24, %13, %8
  tail call void @nl80211_send_assoc_timeout(ptr noundef %9, ptr noundef %0, ptr noundef %10, i32 noundef 3264) #11
  tail call void @cfg80211_sme_assoc_timeout(ptr noundef %4) #11
  %27 = getelementptr i8, ptr %1, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #11, !srcloc !13
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #11, !srcloc !14
  %29 = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32, !prof !8

31:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 200, i32 noundef 9, ptr noundef null) #11
  br label %32

32:                                               ; preds = %31, %26
  %33 = getelementptr i8, ptr %1, i32 24
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %34, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #11, !srcloc !13
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #11, !srcloc !14
  %39 = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42, !prof !8

41:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 205, i32 noundef 9, ptr noundef null) #11
  br label %42

42:                                               ; preds = %41, %36, %32
  tail call void @cfg80211_put_bss(ptr noundef nonnull %5, ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_assoc_timeout(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sme_assoc_timeout(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_abandon_assoc(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  tail call void @cfg80211_sme_abandon_assoc(ptr noundef %4) #11
  %6 = getelementptr i8, ptr %1, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #11, !srcloc !13
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #11, !srcloc !14
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 200, i32 noundef 9, ptr noundef null) #11
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr i8, ptr %1, i32 24
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %13, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #11, !srcloc !13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #11, !srcloc !14
  %18 = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 205, i32 noundef 9, ptr noundef null) #11
  br label %21

21:                                               ; preds = %20, %15, %11
  tail call void @cfg80211_put_bss(ptr noundef %5, ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sme_abandon_assoc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_tx_mlme_mgmt(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %6 = load ptr, ptr %5, align 8
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_tx_mlme_mgmt, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = tail call ptr @llvm.thread.pointer() #11
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !23
  %21 = tail call i32 @__traceiter_cfg80211_tx_mlme_mgmt(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  br label %22

22:                                               ; preds = %20, %9, %4
  %23 = icmp ult i32 %2, 2
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef null) #11
  br label %31

25:                                               ; preds = %22
  %26 = load i16, ptr %1, align 2
  %27 = and i16 %26, 252
  %28 = icmp eq i16 %27, 192
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call fastcc void @cfg80211_process_deauth(ptr noundef %6, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3)
  br label %31

30:                                               ; preds = %25
  tail call fastcc void @cfg80211_process_disassoc(ptr noundef %6, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3)
  br label %31

31:                                               ; preds = %30, %29, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_michael_mic_failure(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

12:                                               ; preds = %6
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_michael_mic_failure, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = tail call ptr @llvm.thread.pointer() #11
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  %27 = tail call i32 @__traceiter_cfg80211_michael_mic_failure(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  br label %28

28:                                               ; preds = %26, %15, %12
  %29 = getelementptr i8, ptr %9, i32 -544
  tail call void @nl80211_michael_mic_failure(ptr noundef %29, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_michael_mic_failure(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_mlme_auth(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12, i32 noundef %13) local_unnamed_addr #0 {
  %15 = alloca %struct.cfg80211_auth_request, align 4
  %16 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %17 = load ptr, ptr %16, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #11
  %18 = getelementptr inbounds %struct.cfg80211_auth_request, ptr %15, i32 0, i32 1
  %19 = getelementptr inbounds i8, ptr %15, i32 20
  store i32 0, ptr %19, align 4
  store ptr %7, ptr %18, align 4
  %20 = getelementptr inbounds %struct.cfg80211_auth_request, ptr %15, i32 0, i32 2
  store i32 %8, ptr %20, align 4
  %21 = getelementptr inbounds %struct.cfg80211_auth_request, ptr %15, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  %22 = getelementptr inbounds %struct.cfg80211_auth_request, ptr %15, i32 0, i32 4
  store ptr %9, ptr %22, align 4
  %23 = getelementptr inbounds %struct.cfg80211_auth_request, ptr %15, i32 0, i32 5
  %24 = trunc i32 %10 to i8
  store i8 %24, ptr %23, align 4
  %25 = getelementptr inbounds %struct.cfg80211_auth_request, ptr %15, i32 0, i32 6
  %26 = trunc i32 %11 to i8
  store i8 %26, ptr %25, align 1
  %27 = getelementptr inbounds %struct.cfg80211_auth_request, ptr %15, i32 0, i32 7
  store ptr %12, ptr %27, align 4
  %28 = getelementptr inbounds %struct.cfg80211_auth_request, ptr %15, i32 0, i32 8
  store i32 %13, ptr %28, align 4
  %29 = icmp eq i32 %3, 1
  br i1 %29, label %30, label %36

30:                                               ; preds = %14
  %31 = icmp eq ptr %9, null
  %32 = icmp eq i32 %10, 0
  %33 = or i1 %31, %32
  %34 = icmp ugt i32 %11, 3
  %35 = or i1 %34, %33
  br i1 %35, label %95, label %36

36:                                               ; preds = %30, %14
  %37 = getelementptr inbounds %struct.wireless_dev, ptr %17, i32 0, i32 25
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %38, i32 0, i32 9, i32 11
  %42 = load i32, ptr %4, align 4
  %43 = load i32, ptr %41, align 4
  %44 = xor i32 %43, %42
  %45 = getelementptr i8, ptr %4, i32 4
  %46 = load i16, ptr %45, align 2
  %47 = getelementptr %struct.cfg80211_internal_bss, ptr %38, i32 0, i32 9, i32 11, i32 4
  %48 = load i16, ptr %47, align 2
  %49 = xor i16 %48, %46
  %50 = zext i16 %49 to i32
  %51 = or i32 %44, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %95, label %53

53:                                               ; preds = %40, %36
  %54 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %55 = tail call ptr @cfg80211_get_bss(ptr noundef %54, ptr noundef %2, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef 0, i32 noundef 2) #11
  store ptr %55, ptr %15, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %95, label %57

57:                                               ; preds = %53
  %58 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_auth, i32 0, i32 1), align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = tail call ptr @llvm.thread.pointer() #11
  %62 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %63 = load i32, ptr %62, align 8
  %64 = lshr i32 %63, 5
  %65 = getelementptr i32, ptr @__cpu_online_mask, i32 %64
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %63, 31
  %68 = shl nuw i32 1, %67
  %69 = and i32 %68, %66
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %60
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  %72 = call i32 @__traceiter_rdev_auth(ptr noundef null, ptr noundef %54, ptr noundef %1, ptr noundef nonnull %15) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  br label %73

73:                                               ; preds = %71, %60, %57
  %74 = load ptr, ptr %0, align 32
  %75 = getelementptr inbounds %struct.cfg80211_ops, ptr %74, i32 0, i32 39
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 %76(ptr noundef %54, ptr noundef %1, ptr noundef nonnull %15) #11
  %78 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %73
  %81 = tail call ptr @llvm.thread.pointer() #11
  %82 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %83 = load i32, ptr %82, align 8
  %84 = lshr i32 %83, 5
  %85 = getelementptr i32, ptr @__cpu_online_mask, i32 %84
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %83, 31
  %88 = shl nuw i32 1, %87
  %89 = and i32 %88, %86
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %80
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %92 = call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %54, i32 noundef %77) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  br label %93

93:                                               ; preds = %91, %80, %73
  %94 = load ptr, ptr %15, align 4
  call void @cfg80211_put_bss(ptr noundef %54, ptr noundef %94) #11
  br label %95

95:                                               ; preds = %93, %53, %40, %30
  %96 = phi i32 [ %77, %93 ], [ -22, %30 ], [ -114, %40 ], [ -2, %53 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #11
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_get_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_oper_and_ht_capa(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %133, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1
  %6 = load i8, ptr %0, align 1
  %7 = and i8 %6, %5
  store i8 %7, ptr %0, align 1
  %8 = getelementptr i8, ptr %1, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr i8, ptr %0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, %9
  store i8 %12, ptr %10, align 1
  %13 = getelementptr i8, ptr %1, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr i8, ptr %0, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, %14
  store i8 %17, ptr %15, align 1
  %18 = getelementptr i8, ptr %1, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr i8, ptr %0, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = and i8 %21, %19
  store i8 %22, ptr %20, align 1
  %23 = getelementptr i8, ptr %1, i32 4
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr i8, ptr %0, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = and i8 %26, %24
  store i8 %27, ptr %25, align 1
  %28 = getelementptr i8, ptr %1, i32 5
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr i8, ptr %0, i32 5
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, %29
  store i8 %32, ptr %30, align 1
  %33 = getelementptr i8, ptr %1, i32 6
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr i8, ptr %0, i32 6
  %36 = load i8, ptr %35, align 1
  %37 = and i8 %36, %34
  store i8 %37, ptr %35, align 1
  %38 = getelementptr i8, ptr %1, i32 7
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr i8, ptr %0, i32 7
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, %39
  store i8 %42, ptr %40, align 1
  %43 = getelementptr i8, ptr %1, i32 8
  %44 = load i8, ptr %43, align 1
  %45 = getelementptr i8, ptr %0, i32 8
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, %44
  store i8 %47, ptr %45, align 1
  %48 = getelementptr i8, ptr %1, i32 9
  %49 = load i8, ptr %48, align 1
  %50 = getelementptr i8, ptr %0, i32 9
  %51 = load i8, ptr %50, align 1
  %52 = and i8 %51, %49
  store i8 %52, ptr %50, align 1
  %53 = getelementptr i8, ptr %1, i32 10
  %54 = load i8, ptr %53, align 1
  %55 = getelementptr i8, ptr %0, i32 10
  %56 = load i8, ptr %55, align 1
  %57 = and i8 %56, %54
  store i8 %57, ptr %55, align 1
  %58 = getelementptr i8, ptr %1, i32 11
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr i8, ptr %0, i32 11
  %61 = load i8, ptr %60, align 1
  %62 = and i8 %61, %59
  store i8 %62, ptr %60, align 1
  %63 = getelementptr i8, ptr %1, i32 12
  %64 = load i8, ptr %63, align 1
  %65 = getelementptr i8, ptr %0, i32 12
  %66 = load i8, ptr %65, align 1
  %67 = and i8 %66, %64
  store i8 %67, ptr %65, align 1
  %68 = getelementptr i8, ptr %1, i32 13
  %69 = load i8, ptr %68, align 1
  %70 = getelementptr i8, ptr %0, i32 13
  %71 = load i8, ptr %70, align 1
  %72 = and i8 %71, %69
  store i8 %72, ptr %70, align 1
  %73 = getelementptr i8, ptr %1, i32 14
  %74 = load i8, ptr %73, align 1
  %75 = getelementptr i8, ptr %0, i32 14
  %76 = load i8, ptr %75, align 1
  %77 = and i8 %76, %74
  store i8 %77, ptr %75, align 1
  %78 = getelementptr i8, ptr %1, i32 15
  %79 = load i8, ptr %78, align 1
  %80 = getelementptr i8, ptr %0, i32 15
  %81 = load i8, ptr %80, align 1
  %82 = and i8 %81, %79
  store i8 %82, ptr %80, align 1
  %83 = getelementptr i8, ptr %1, i32 16
  %84 = load i8, ptr %83, align 1
  %85 = getelementptr i8, ptr %0, i32 16
  %86 = load i8, ptr %85, align 1
  %87 = and i8 %86, %84
  store i8 %87, ptr %85, align 1
  %88 = getelementptr i8, ptr %1, i32 17
  %89 = load i8, ptr %88, align 1
  %90 = getelementptr i8, ptr %0, i32 17
  %91 = load i8, ptr %90, align 1
  %92 = and i8 %91, %89
  store i8 %92, ptr %90, align 1
  %93 = getelementptr i8, ptr %1, i32 18
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i32 18
  %96 = load i8, ptr %95, align 1
  %97 = and i8 %96, %94
  store i8 %97, ptr %95, align 1
  %98 = getelementptr i8, ptr %1, i32 19
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i32 19
  %101 = load i8, ptr %100, align 1
  %102 = and i8 %101, %99
  store i8 %102, ptr %100, align 1
  %103 = getelementptr i8, ptr %1, i32 20
  %104 = load i8, ptr %103, align 1
  %105 = getelementptr i8, ptr %0, i32 20
  %106 = load i8, ptr %105, align 1
  %107 = and i8 %106, %104
  store i8 %107, ptr %105, align 1
  %108 = getelementptr i8, ptr %1, i32 21
  %109 = load i8, ptr %108, align 1
  %110 = getelementptr i8, ptr %0, i32 21
  %111 = load i8, ptr %110, align 1
  %112 = and i8 %111, %109
  store i8 %112, ptr %110, align 1
  %113 = getelementptr i8, ptr %1, i32 22
  %114 = load i8, ptr %113, align 1
  %115 = getelementptr i8, ptr %0, i32 22
  %116 = load i8, ptr %115, align 1
  %117 = and i8 %116, %114
  store i8 %117, ptr %115, align 1
  %118 = getelementptr i8, ptr %1, i32 23
  %119 = load i8, ptr %118, align 1
  %120 = getelementptr i8, ptr %0, i32 23
  %121 = load i8, ptr %120, align 1
  %122 = and i8 %121, %119
  store i8 %122, ptr %120, align 1
  %123 = getelementptr i8, ptr %1, i32 24
  %124 = load i8, ptr %123, align 1
  %125 = getelementptr i8, ptr %0, i32 24
  %126 = load i8, ptr %125, align 1
  %127 = and i8 %126, %124
  store i8 %127, ptr %125, align 1
  %128 = getelementptr i8, ptr %1, i32 25
  %129 = load i8, ptr %128, align 1
  %130 = getelementptr i8, ptr %0, i32 25
  %131 = load i8, ptr %130, align 1
  %132 = and i8 %131, %129
  store i8 %132, ptr %130, align 1
  br label %134

133:                                              ; preds = %2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(26) %0, i8 0, i32 26, i1 false)
  br label %134

134:                                              ; preds = %133, %4
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_oper_and_vht_capa(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %63, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1
  %6 = load i8, ptr %0, align 1
  %7 = and i8 %6, %5
  store i8 %7, ptr %0, align 1
  %8 = getelementptr i8, ptr %1, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr i8, ptr %0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, %9
  store i8 %12, ptr %10, align 1
  %13 = getelementptr i8, ptr %1, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr i8, ptr %0, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, %14
  store i8 %17, ptr %15, align 1
  %18 = getelementptr i8, ptr %1, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr i8, ptr %0, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = and i8 %21, %19
  store i8 %22, ptr %20, align 1
  %23 = getelementptr i8, ptr %1, i32 4
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr i8, ptr %0, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = and i8 %26, %24
  store i8 %27, ptr %25, align 1
  %28 = getelementptr i8, ptr %1, i32 5
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr i8, ptr %0, i32 5
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, %29
  store i8 %32, ptr %30, align 1
  %33 = getelementptr i8, ptr %1, i32 6
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr i8, ptr %0, i32 6
  %36 = load i8, ptr %35, align 1
  %37 = and i8 %36, %34
  store i8 %37, ptr %35, align 1
  %38 = getelementptr i8, ptr %1, i32 7
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr i8, ptr %0, i32 7
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, %39
  store i8 %42, ptr %40, align 1
  %43 = getelementptr i8, ptr %1, i32 8
  %44 = load i8, ptr %43, align 1
  %45 = getelementptr i8, ptr %0, i32 8
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, %44
  store i8 %47, ptr %45, align 1
  %48 = getelementptr i8, ptr %1, i32 9
  %49 = load i8, ptr %48, align 1
  %50 = getelementptr i8, ptr %0, i32 9
  %51 = load i8, ptr %50, align 1
  %52 = and i8 %51, %49
  store i8 %52, ptr %50, align 1
  %53 = getelementptr i8, ptr %1, i32 10
  %54 = load i8, ptr %53, align 1
  %55 = getelementptr i8, ptr %0, i32 10
  %56 = load i8, ptr %55, align 1
  %57 = and i8 %56, %54
  store i8 %57, ptr %55, align 1
  %58 = getelementptr i8, ptr %1, i32 11
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr i8, ptr %0, i32 11
  %61 = load i8, ptr %60, align 1
  %62 = and i8 %61, %59
  store i8 %62, ptr %60, align 1
  br label %64

63:                                               ; preds = %2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(12) %0, i8 0, i32 12, i1 false)
  br label %64

64:                                               ; preds = %63, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_mlme_assoc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.wireless_dev, ptr %9, i32 0, i32 25
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %6, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %154, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %11, i32 0, i32 9, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %15, align 4
  %21 = xor i32 %20, %19
  %22 = getelementptr %struct.cfg80211_internal_bss, ptr %11, i32 0, i32 9, i32 11, i32 4
  %23 = load i16, ptr %22, align 2
  %24 = getelementptr i8, ptr %15, i32 4
  %25 = load i16, ptr %24, align 2
  %26 = xor i16 %25, %23
  %27 = zext i16 %26 to i32
  %28 = or i32 %21, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %154

30:                                               ; preds = %17, %7
  %31 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %6, i32 0, i32 8
  %32 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %33 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 59
  %34 = load ptr, ptr %33, align 8
  tail call void @cfg80211_oper_and_ht_capa(ptr noundef %31, ptr noundef %34)
  %35 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %6, i32 0, i32 10
  %36 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 60
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %98, label %39

39:                                               ; preds = %30
  %40 = load i8, ptr %37, align 1
  %41 = load i8, ptr %35, align 1
  %42 = and i8 %41, %40
  store i8 %42, ptr %35, align 1
  %43 = getelementptr i8, ptr %37, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = getelementptr i8, ptr %35, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, %44
  store i8 %47, ptr %45, align 1
  %48 = getelementptr i8, ptr %37, i32 2
  %49 = load i8, ptr %48, align 1
  %50 = getelementptr i8, ptr %35, i32 2
  %51 = load i8, ptr %50, align 1
  %52 = and i8 %51, %49
  store i8 %52, ptr %50, align 1
  %53 = getelementptr i8, ptr %37, i32 3
  %54 = load i8, ptr %53, align 1
  %55 = getelementptr i8, ptr %35, i32 3
  %56 = load i8, ptr %55, align 1
  %57 = and i8 %56, %54
  store i8 %57, ptr %55, align 1
  %58 = getelementptr i8, ptr %37, i32 4
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr %struct.cfg80211_assoc_request, ptr %6, i32 0, i32 10, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = and i8 %61, %59
  store i8 %62, ptr %60, align 1
  %63 = getelementptr i8, ptr %37, i32 5
  %64 = load i8, ptr %63, align 1
  %65 = getelementptr i8, ptr %35, i32 5
  %66 = load i8, ptr %65, align 1
  %67 = and i8 %66, %64
  store i8 %67, ptr %65, align 1
  %68 = getelementptr i8, ptr %37, i32 6
  %69 = load i8, ptr %68, align 1
  %70 = getelementptr %struct.cfg80211_assoc_request, ptr %6, i32 0, i32 10, i32 1, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = and i8 %71, %69
  store i8 %72, ptr %70, align 1
  %73 = getelementptr i8, ptr %37, i32 7
  %74 = load i8, ptr %73, align 1
  %75 = getelementptr i8, ptr %35, i32 7
  %76 = load i8, ptr %75, align 1
  %77 = and i8 %76, %74
  store i8 %77, ptr %75, align 1
  %78 = getelementptr i8, ptr %37, i32 8
  %79 = load i8, ptr %78, align 1
  %80 = getelementptr %struct.cfg80211_assoc_request, ptr %6, i32 0, i32 10, i32 1, i32 2
  %81 = load i8, ptr %80, align 1
  %82 = and i8 %81, %79
  store i8 %82, ptr %80, align 1
  %83 = getelementptr i8, ptr %37, i32 9
  %84 = load i8, ptr %83, align 1
  %85 = getelementptr i8, ptr %35, i32 9
  %86 = load i8, ptr %85, align 1
  %87 = and i8 %86, %84
  store i8 %87, ptr %85, align 1
  %88 = getelementptr i8, ptr %37, i32 10
  %89 = load i8, ptr %88, align 1
  %90 = getelementptr %struct.cfg80211_assoc_request, ptr %6, i32 0, i32 10, i32 1, i32 3
  %91 = load i8, ptr %90, align 1
  %92 = and i8 %91, %89
  store i8 %92, ptr %90, align 1
  %93 = getelementptr i8, ptr %37, i32 11
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %35, i32 11
  %96 = load i8, ptr %95, align 1
  %97 = and i8 %96, %94
  store i8 %97, ptr %95, align 1
  br label %99

98:                                               ; preds = %30
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(12) %35, i8 0, i32 12, i1 false) #11
  br label %99

99:                                               ; preds = %98, %39
  %100 = tail call ptr @cfg80211_get_bss(ptr noundef %32, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 0, i32 noundef 2) #11
  store ptr %100, ptr %6, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %154, label %102

102:                                              ; preds = %99
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !31
  %103 = load ptr, ptr %6, align 4
  %104 = getelementptr inbounds %struct.cfg80211_bss, ptr %103, i32 0, i32 2
  %105 = load volatile ptr, ptr %104, align 4
  %106 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_assoc, i32 0, i32 1), align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %102
  %109 = tail call ptr @llvm.thread.pointer() #11
  %110 = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 2
  %111 = load i32, ptr %110, align 8
  %112 = lshr i32 %111, 5
  %113 = getelementptr i32, ptr @__cpu_online_mask, i32 %112
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %111, 31
  %116 = shl nuw i32 1, %115
  %117 = and i32 %116, %114
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %108
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !32
  %120 = tail call i32 @__traceiter_rdev_assoc(ptr noundef null, ptr noundef %32, ptr noundef %1, ptr noundef %6, ptr noundef %105) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !33
  br label %121

121:                                              ; preds = %119, %108, %102
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  %122 = load ptr, ptr %0, align 32
  %123 = getelementptr inbounds %struct.cfg80211_ops, ptr %122, i32 0, i32 40
  %124 = load ptr, ptr %123, align 4
  %125 = tail call i32 %124(ptr noundef %32, ptr noundef %1, ptr noundef %6) #11
  %126 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %121
  %129 = tail call ptr @llvm.thread.pointer() #11
  %130 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 2
  %131 = load i32, ptr %130, align 8
  %132 = lshr i32 %131, 5
  %133 = getelementptr i32, ptr @__cpu_online_mask, i32 %132
  %134 = load volatile i32, ptr %133, align 4
  %135 = and i32 %131, 31
  %136 = shl nuw i32 1, %135
  %137 = and i32 %136, %134
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %128
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %140 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %32, i32 noundef %125) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  br label %141

141:                                              ; preds = %139, %128, %121
  %142 = icmp eq i32 %125, 0
  %143 = load ptr, ptr %6, align 4
  br i1 %142, label %144, label %153

144:                                              ; preds = %141
  %145 = getelementptr i8, ptr %143, i32 -24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %145) #11, !srcloc !13
  %146 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %145, ptr %145, i32 1, ptr elementtype(i32) %145) #11, !srcloc !35
  %147 = getelementptr i8, ptr %143, i32 24
  %148 = load ptr, ptr %147, align 8
  %149 = icmp eq ptr %148, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %144
  %151 = getelementptr i8, ptr %148, i32 -24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %151) #11, !srcloc !13
  %152 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %151, ptr %151, i32 1, ptr elementtype(i32) %151) #11, !srcloc !35
  br label %154

153:                                              ; preds = %141
  tail call void @cfg80211_put_bss(ptr noundef %32, ptr noundef %143) #11
  br label %154

154:                                              ; preds = %153, %150, %144, %99, %17, %13
  %155 = phi i32 [ -114, %17 ], [ -114, %13 ], [ -2, %99 ], [ %125, %153 ], [ 0, %144 ], [ 0, %150 ]
  ret i32 %155
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_mlme_deauth(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i16 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca %struct.cfg80211_deauth_request, align 4
  %9 = zext i1 %6 to i8
  %10 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  %12 = getelementptr inbounds i8, ptr %8, i32 12
  store i32 0, ptr %12, align 4, !annotation !36
  store ptr %2, ptr %8, align 4
  %13 = getelementptr inbounds %struct.cfg80211_deauth_request, ptr %8, i32 0, i32 1
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cfg80211_deauth_request, ptr %8, i32 0, i32 2
  store i32 %4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.cfg80211_deauth_request, ptr %8, i32 0, i32 3
  store i16 %5, ptr %15, align 4
  %16 = getelementptr inbounds %struct.cfg80211_deauth_request, ptr %8, i32 0, i32 4
  store i8 %9, ptr %16, align 2
  br i1 %6, label %21, label %17

17:                                               ; preds = %7
  %18 = load i32, ptr %2, align 4
  %19 = getelementptr i8, ptr %2, i32 4
  %20 = load i16, ptr %19, align 2
  br label %38

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.wireless_dev, ptr %11, i32 0, i32 25
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %103, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %23, i32 0, i32 9, i32 11
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %2, align 4
  %29 = xor i32 %28, %27
  %30 = getelementptr %struct.cfg80211_internal_bss, ptr %23, i32 0, i32 9, i32 11, i32 4
  %31 = load i16, ptr %30, align 2
  %32 = getelementptr i8, ptr %2, i32 4
  %33 = load i16, ptr %32, align 2
  %34 = xor i16 %33, %31
  %35 = zext i16 %34 to i32
  %36 = or i32 %29, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %103

38:                                               ; preds = %25, %17
  %39 = phi i16 [ %20, %17 ], [ %33, %25 ]
  %40 = phi i32 [ %18, %17 ], [ %28, %25 ]
  %41 = getelementptr inbounds %struct.wireless_dev, ptr %11, i32 0, i32 22
  %42 = load i32, ptr %41, align 4
  %43 = xor i32 %40, %42
  %44 = getelementptr %struct.wireless_dev, ptr %11, i32 0, i32 22, i32 4
  %45 = load i16, ptr %44, align 2
  %46 = xor i16 %39, %45
  %47 = zext i16 %46 to i32
  %48 = or i32 %43, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.wireless_dev, ptr %11, i32 0, i32 25
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %52, i32 0, i32 9, i32 11
  %56 = load i32, ptr %55, align 4
  %57 = xor i32 %56, %40
  %58 = getelementptr %struct.cfg80211_internal_bss, ptr %52, i32 0, i32 9, i32 11, i32 4
  %59 = load i16, ptr %58, align 2
  %60 = xor i16 %59, %39
  %61 = zext i16 %60 to i32
  %62 = or i32 %57, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54, %38
  %65 = getelementptr inbounds %struct.wireless_dev, ptr %11, i32 0, i32 20
  store i32 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %64, %54, %50
  %67 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %68 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_deauth, i32 0, i32 1), align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = tail call ptr @llvm.thread.pointer() #11
  %72 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %73 = load i32, ptr %72, align 8
  %74 = lshr i32 %73, 5
  %75 = getelementptr i32, ptr @__cpu_online_mask, i32 %74
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %73, 31
  %78 = shl nuw i32 1, %77
  %79 = and i32 %78, %76
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %70
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !37
  %82 = call i32 @__traceiter_rdev_deauth(ptr noundef null, ptr noundef %67, ptr noundef %1, ptr noundef nonnull %8) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !38
  br label %83

83:                                               ; preds = %81, %70, %66
  %84 = load ptr, ptr %0, align 32
  %85 = getelementptr inbounds %struct.cfg80211_ops, ptr %84, i32 0, i32 41
  %86 = load ptr, ptr %85, align 4
  %87 = call i32 %86(ptr noundef %67, ptr noundef %1, ptr noundef nonnull %8) #11
  %88 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %83
  %91 = tail call ptr @llvm.thread.pointer() #11
  %92 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %93 = load i32, ptr %92, align 8
  %94 = lshr i32 %93, 5
  %95 = getelementptr i32, ptr @__cpu_online_mask, i32 %94
  %96 = load volatile i32, ptr %95, align 4
  %97 = and i32 %93, 31
  %98 = shl nuw i32 1, %97
  %99 = and i32 %98, %96
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %90
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %102 = call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %67, i32 noundef %87) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  br label %103

103:                                              ; preds = %101, %90, %83, %25, %21
  %104 = phi i32 [ 0, %25 ], [ 0, %21 ], [ %87, %83 ], [ %87, %90 ], [ %87, %101 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_mlme_disassoc(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, i16 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca %struct.cfg80211_disassoc_request, align 4
  %9 = zext i1 %6 to i8
  %10 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  %12 = getelementptr inbounds %struct.cfg80211_disassoc_request, ptr %8, i32 0, i32 1
  %13 = getelementptr inbounds i8, ptr %8, i32 12
  store i32 0, ptr %13, align 4
  store ptr %3, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cfg80211_disassoc_request, ptr %8, i32 0, i32 2
  store i32 %4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.cfg80211_disassoc_request, ptr %8, i32 0, i32 3
  store i16 %5, ptr %15, align 4
  %16 = getelementptr inbounds %struct.cfg80211_disassoc_request, ptr %8, i32 0, i32 4
  store i8 %9, ptr %16, align 2
  %17 = getelementptr inbounds %struct.wireless_dev, ptr %11, i32 0, i32 25
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %77, label %20

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %18, i32 0, i32 9, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %2, align 4
  %24 = xor i32 %23, %22
  %25 = getelementptr %struct.cfg80211_internal_bss, ptr %18, i32 0, i32 9, i32 11, i32 4
  %26 = load i16, ptr %25, align 2
  %27 = getelementptr i8, ptr %2, i32 4
  %28 = load i16, ptr %27, align 2
  %29 = xor i16 %28, %26
  %30 = zext i16 %29 to i32
  %31 = or i32 %24, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %18, i32 0, i32 9
  store ptr %34, ptr %8, align 4
  %35 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_disassoc, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = tail call ptr @llvm.thread.pointer() #11
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 5
  %43 = getelementptr i32, ptr @__cpu_online_mask, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %41, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !39
  %50 = call i32 @__traceiter_rdev_disassoc(ptr noundef null, ptr noundef %35, ptr noundef %1, ptr noundef nonnull %8) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !40
  br label %51

51:                                               ; preds = %49, %38, %33
  %52 = load ptr, ptr %0, align 32
  %53 = getelementptr inbounds %struct.cfg80211_ops, ptr %52, i32 0, i32 42
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 %54(ptr noundef %35, ptr noundef %1, ptr noundef nonnull %8) #11
  %56 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = tail call ptr @llvm.thread.pointer() #11
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = lshr i32 %61, 5
  %63 = getelementptr i32, ptr @__cpu_online_mask, i32 %62
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %61, 31
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %58
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %70 = call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %35, i32 noundef %55) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  br label %71

71:                                               ; preds = %69, %58, %51
  %72 = icmp eq i32 %55, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %71
  %74 = load ptr, ptr %17, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76, !prof !18

76:                                               ; preds = %73
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 408, i32 noundef 9, ptr noundef null) #11
  br label %77

77:                                               ; preds = %76, %73, %71, %20, %7
  %78 = phi i32 [ -107, %7 ], [ -107, %20 ], [ %55, %71 ], [ 0, %76 ], [ 0, %73 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_mlme_down(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  %6 = load ptr, ptr %0, align 32
  %7 = getelementptr inbounds %struct.cfg80211_ops, ptr %6, i32 0, i32 41
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 25
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 9, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef align 4 dereferenceable(6) %15, i32 6, i1 false)
  %16 = call i32 @cfg80211_mlme_deauth(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0, i16 noundef zeroext 3, i1 noundef zeroext false)
  br label %17

17:                                               ; preds = %14, %10, %2
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_mgmt_registrations_update_wk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 44
  tail call void @mutex_lock(ptr noundef %2) #11
  %3 = getelementptr i8, ptr %0, i32 796
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %11, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %9, %6 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -8
  tail call fastcc void @cfg80211_mgmt_registrations_update(ptr noundef %8)
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %1
  tail call void @mutex_unlock(ptr noundef %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cfg80211_mgmt_registrations_update(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.mgmt_frame_regs, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %3, i32 -544
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false)
  %8 = getelementptr i8, ptr %3, i32 -28
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #11
  %9 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 6
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #11
  br label %106

14:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !31
  %15 = getelementptr i8, ptr %3, i32 752
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %66, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.mgmt_frame_regs, ptr %2, i32 0, i32 2
  %20 = getelementptr inbounds %struct.mgmt_frame_regs, ptr %2, i32 0, i32 1
  %21 = getelementptr inbounds %struct.mgmt_frame_regs, ptr %2, i32 0, i32 3
  br label %29

22:                                               ; preds = %61, %29
  %23 = phi i32 [ %30, %29 ], [ %62, %61 ]
  %24 = phi i32 [ %31, %29 ], [ %63, %61 ]
  %25 = phi i32 [ %32, %29 ], [ %57, %61 ]
  %26 = phi i32 [ %33, %29 ], [ %56, %61 ]
  %27 = load volatile ptr, ptr %34, align 4
  %28 = icmp eq ptr %27, %15
  br i1 %28, label %66, label %29

29:                                               ; preds = %22, %18
  %30 = phi i32 [ 0, %18 ], [ %23, %22 ]
  %31 = phi i32 [ 0, %18 ], [ %24, %22 ]
  %32 = phi i32 [ 0, %18 ], [ %25, %22 ]
  %33 = phi i32 [ 0, %18 ], [ %26, %22 ]
  %34 = phi ptr [ %16, %18 ], [ %27, %22 ]
  %35 = getelementptr i8, ptr %34, i32 16
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %22, label %38

38:                                               ; preds = %29
  %39 = getelementptr i8, ptr %34, i32 -8
  %40 = icmp eq ptr %39, %0
  br label %41

41:                                               ; preds = %61, %38
  %42 = phi i32 [ %30, %38 ], [ %62, %61 ]
  %43 = phi i32 [ %31, %38 ], [ %63, %61 ]
  %44 = phi i32 [ %32, %38 ], [ %57, %61 ]
  %45 = phi i32 [ %33, %38 ], [ %56, %61 ]
  %46 = phi ptr [ %36, %38 ], [ %64, %61 ]
  %47 = getelementptr inbounds %struct.cfg80211_mgmt_registration, ptr %46, i32 0, i32 4
  %48 = load i16, ptr %47, align 4
  %49 = lshr i16 %48, 4
  %50 = zext i16 %49 to i32
  %51 = shl nuw i32 1, %50
  %52 = getelementptr inbounds %struct.cfg80211_mgmt_registration, ptr %46, i32 0, i32 5
  %53 = load i8, ptr %52, align 2, !range !41
  %54 = icmp eq i8 %53, 0
  %55 = select i1 %54, i32 0, i32 %51
  %56 = or i32 %51, %45
  store i32 %56, ptr %2, align 4
  %57 = or i32 %44, %55
  store i32 %57, ptr %19, align 4
  br i1 %40, label %58, label %61

58:                                               ; preds = %41
  %59 = or i32 %43, %51
  store i32 %59, ptr %20, align 4
  %60 = or i32 %42, %55
  store i32 %60, ptr %21, align 4
  br label %61

61:                                               ; preds = %58, %41
  %62 = phi i32 [ %60, %58 ], [ %42, %41 ]
  %63 = phi i32 [ %59, %58 ], [ %43, %41 ]
  %64 = load ptr, ptr %46, align 4
  %65 = icmp eq ptr %64, %35
  br i1 %65, label %22, label %41

66:                                               ; preds = %22, %14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  %67 = load i8, ptr %9, align 4
  %68 = and i8 %67, -2
  store i8 %68, ptr %9, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #11
  %69 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_update_mgmt_frame_registrations, i32 0, i32 1), align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = tail call ptr @llvm.thread.pointer() #11
  %73 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 5
  %76 = getelementptr i32, ptr @__cpu_online_mask, i32 %75
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %74, 31
  %79 = shl nuw i32 1, %78
  %80 = and i32 %79, %77
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %71
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !42
  %83 = call i32 @__traceiter_rdev_update_mgmt_frame_registrations(ptr noundef null, ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %2) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !43
  br label %84

84:                                               ; preds = %82, %71, %66
  %85 = load ptr, ptr %7, align 32
  %86 = getelementptr inbounds %struct.cfg80211_ops, ptr %85, i32 0, i32 66
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  call void %87(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %2) #11
  br label %90

90:                                               ; preds = %89, %84
  %91 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_void, i32 0, i32 1), align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %90
  %94 = tail call ptr @llvm.thread.pointer() #11
  %95 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 2
  %96 = load i32, ptr %95, align 8
  %97 = lshr i32 %96, 5
  %98 = getelementptr i32, ptr @__cpu_online_mask, i32 %97
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %96, 31
  %101 = shl nuw i32 1, %100
  %102 = and i32 %101, %99
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %93
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !44
  %105 = call i32 @__traceiter_rdev_return_void(ptr noundef null, ptr noundef nonnull %3) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !45
  br label %106

106:                                              ; preds = %104, %93, %90, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_mlme_register_mgmt(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef readonly %3, i32 noundef %4, i1 noundef zeroext %5, ptr noundef writeonly %6) local_unnamed_addr #0 {
  %8 = zext i1 %5 to i8
  %9 = load ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %101, label %16

16:                                               ; preds = %12
  %17 = zext i16 %2 to i32
  %18 = and i32 %17, 12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @cfg80211_mlme_register_mgmt.__msg) #11
  %21 = icmp eq ptr %6, null
  br i1 %21, label %101, label %22

22:                                               ; preds = %20
  store ptr @cfg80211_mlme_register_mgmt.__msg, ptr %6, align 4
  br label %101

23:                                               ; preds = %16
  %24 = and i32 %17, 65283
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @cfg80211_mlme_register_mgmt.__msg.1) #11
  %27 = icmp eq ptr %6, null
  br i1 %27, label %101, label %28

28:                                               ; preds = %26
  store ptr @cfg80211_mlme_register_mgmt.__msg.1, ptr %6, align 4
  br label %101

29:                                               ; preds = %23
  %30 = and i32 %17, 240
  %31 = lshr exact i32 %30, 4
  %32 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr %struct.ieee80211_txrx_stypes, ptr %14, i32 %33, i32 1
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = shl nuw nsw i32 1, %31
  %38 = and i32 %37, %36
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @cfg80211_mlme_register_mgmt.__msg.2) #11
  %41 = icmp eq ptr %6, null
  br i1 %41, label %101, label %42

42:                                               ; preds = %40
  store ptr @cfg80211_mlme_register_mgmt.__msg.2, ptr %6, align 4
  br label %101

43:                                               ; preds = %29
  %44 = icmp eq i32 %33, 2
  %45 = icmp eq i32 %30, 176
  %46 = and i1 %45, %44
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = icmp ne ptr %3, null
  %49 = icmp sgt i32 %4, 1
  %50 = and i1 %48, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @cfg80211_mlme_register_mgmt.__msg.3) #11
  %52 = icmp eq ptr %6, null
  br i1 %52, label %101, label %53

53:                                               ; preds = %51
  store ptr @cfg80211_mlme_register_mgmt.__msg.3, ptr %6, align 4
  br label %101

54:                                               ; preds = %47, %43
  %55 = add i32 %4, 24
  %56 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %55, i32 noundef 3520) #12
  %57 = icmp eq ptr %56, null
  br i1 %57, label %101, label %58

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %9, i32 -28
  tail call void @_raw_spin_lock_bh(ptr noundef %59) #11
  %60 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 5
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %86, label %63

63:                                               ; preds = %82, %58
  %64 = phi ptr [ %83, %82 ], [ %61, %58 ]
  %65 = getelementptr inbounds %struct.cfg80211_mgmt_registration, ptr %64, i32 0, i32 4
  %66 = load i16, ptr %65, align 4
  %67 = icmp eq i16 %66, %2
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.cfg80211_mgmt_registration, ptr %64, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 @llvm.smin.i32(i32 %70, i32 %4)
  %72 = getelementptr inbounds %struct.cfg80211_mgmt_registration, ptr %64, i32 0, i32 6
  %73 = tail call i32 @bcmp(ptr %72, ptr %3, i32 %71)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.cfg80211_mgmt_registration, ptr %64, i32 0, i32 5
  %77 = load i8, ptr %76, align 2, !range !41
  %78 = icmp eq i8 %77, %8
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @cfg80211_mlme_register_mgmt.__msg.4) #11
  %80 = icmp eq ptr %6, null
  br i1 %80, label %100, label %81

81:                                               ; preds = %79
  store ptr @cfg80211_mlme_register_mgmt.__msg.4, ptr %6, align 4
  br label %100

82:                                               ; preds = %68, %63
  %83 = load ptr, ptr %64, align 4
  %84 = icmp eq ptr %83, %60
  br i1 %84, label %86, label %63

85:                                               ; preds = %75
  store i8 %8, ptr %76, align 2
  tail call void @kfree(ptr noundef nonnull %56) #11
  br label %96

86:                                               ; preds = %82, %58
  %87 = getelementptr inbounds %struct.cfg80211_mgmt_registration, ptr %56, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %87, ptr align 1 %3, i32 %4, i1 false)
  %88 = getelementptr inbounds %struct.cfg80211_mgmt_registration, ptr %56, i32 0, i32 3
  store i32 %4, ptr %88, align 16
  %89 = getelementptr inbounds %struct.cfg80211_mgmt_registration, ptr %56, i32 0, i32 2
  store i32 %1, ptr %89, align 4
  %90 = getelementptr inbounds %struct.cfg80211_mgmt_registration, ptr %56, i32 0, i32 4
  store i16 %2, ptr %90, align 4
  %91 = getelementptr inbounds %struct.cfg80211_mgmt_registration, ptr %56, i32 0, i32 1
  store ptr %0, ptr %91, align 8
  %92 = getelementptr inbounds %struct.cfg80211_mgmt_registration, ptr %56, i32 0, i32 5
  store i8 %8, ptr %92, align 2
  %93 = load ptr, ptr %60, align 4
  %94 = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  store ptr %56, ptr %94, align 4
  store ptr %93, ptr %56, align 64
  %95 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %60, ptr %95, align 4
  store volatile ptr %56, ptr %60, align 4
  br label %96

96:                                               ; preds = %86, %85
  %97 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 6
  %98 = load i8, ptr %97, align 4
  %99 = or i8 %98, 1
  store i8 %99, ptr %97, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %59) #11
  tail call fastcc void @cfg80211_mgmt_registrations_update(ptr noundef %0)
  br label %101

100:                                              ; preds = %81, %79
  tail call void @kfree(ptr noundef nonnull %56) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %59) #11
  br label %101

101:                                              ; preds = %100, %96, %54, %53, %51, %42, %40, %28, %26, %22, %20, %12
  %102 = phi i32 [ -114, %100 ], [ 0, %96 ], [ -95, %12 ], [ -22, %22 ], [ -22, %20 ], [ -22, %28 ], [ -22, %26 ], [ -22, %42 ], [ -22, %40 ], [ -22, %53 ], [ -22, %51 ], [ -12, %54 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_mlme_unregister_socket(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %3, i32 -544
  %8 = getelementptr i8, ptr %3, i32 -28
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #11
  %9 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %31, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 6
  %14 = getelementptr i8, ptr %3, i32 -44
  br label %15

15:                                               ; preds = %29, %12
  %16 = phi ptr [ %10, %12 ], [ %17, %29 ]
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.cfg80211_mgmt_registration, ptr %16, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %17, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  tail call void @kfree(ptr noundef %16) #11
  %25 = load i8, ptr %13, align 4
  %26 = or i8 %25, 1
  store i8 %26, ptr %13, align 4
  %27 = load ptr, ptr @system_wq, align 4
  %28 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %27, ptr noundef %14) #11
  br label %29

29:                                               ; preds = %21, %15
  %30 = icmp eq ptr %17, %9
  br i1 %30, label %31, label %15

31:                                               ; preds = %29, %6
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #11
  %32 = icmp eq i32 %1, 0
  br i1 %32, label %72, label %33

33:                                               ; preds = %31
  %34 = getelementptr i8, ptr %3, i32 -188
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %37, label %72

37:                                               ; preds = %33
  store i32 0, ptr %34, align 4
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_crit_proto_stop, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = tail call ptr @llvm.thread.pointer() #11
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !46
  %52 = tail call i32 @__traceiter_rdev_crit_proto_stop(ptr noundef null, ptr noundef nonnull %3, ptr noundef %0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !47
  br label %53

53:                                               ; preds = %51, %40, %37
  %54 = load ptr, ptr %7, align 32
  %55 = getelementptr inbounds %struct.cfg80211_ops, ptr %54, i32 0, i32 84
  %56 = load ptr, ptr %55, align 4
  tail call void %56(ptr noundef nonnull %3, ptr noundef %0) #11
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_void, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = tail call ptr @llvm.thread.pointer() #11
  %61 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 5
  %64 = getelementptr i32, ptr @__cpu_online_mask, i32 %63
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %62, 31
  %67 = shl nuw i32 1, %66
  %68 = and i32 %67, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %59
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !44
  %71 = tail call i32 @__traceiter_rdev_return_void(ptr noundef null, ptr noundef nonnull %3) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !45
  br label %72

72:                                               ; preds = %70, %59, %53, %33, %31
  %73 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 33
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, %1
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 0, ptr %73, align 4
  br label %77

77:                                               ; preds = %76, %72
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_mlme_purge_registrations(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %2, i32 -28
  tail call void @_raw_spin_lock_bh(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %17, label %10

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %12, %10 ], [ %8, %5 ]
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %12, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  tail call void @kfree(ptr noundef %11) #11
  %16 = icmp eq ptr %12, %7
  br i1 %16, label %17, label %10

17:                                               ; preds = %10, %5
  %18 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 6
  %19 = load i8, ptr %18, align 4
  %20 = or i8 %19, 1
  store i8 %20, ptr %18, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %6) #11
  tail call fastcc void @cfg80211_mgmt_registrations_update(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_mlme_mgmt_tx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %197, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 32
  %11 = getelementptr inbounds %struct.cfg80211_ops, ptr %10, i32 0, i32 60
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %197, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %2, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, 25
  br i1 %17, label %197, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %2, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = load i16, ptr %20, align 2
  %22 = and i16 %21, 12
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %197

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.ieee80211_txrx_stypes, ptr %7, i32 %26
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = lshr i16 %21, 4
  %31 = and i16 %30, 15
  %32 = zext i16 %31 to i32
  %33 = shl nuw nsw i32 1, %32
  %34 = and i32 %33, %29
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %197, label %36

36:                                               ; preds = %24
  %37 = and i16 %21, 252
  %38 = icmp eq i16 %37, 208
  br i1 %38, label %39, label %116

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %20, i32 0, i32 6
  %41 = load i8, ptr %40, align 2
  %42 = icmp eq i8 %41, 4
  br i1 %42, label %116, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %44) #11
  %45 = load i32, ptr %25, align 4
  switch i32 %45, label %100 [
    i32 1, label %46
    i32 2, label %46
    i32 8, label %46
    i32 3, label %77
    i32 9, label %77
    i32 4, label %77
    i32 7, label %102
  ]

46:                                               ; preds = %43, %43, %43
  %47 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 25
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %100, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %48, i32 0, i32 9, i32 11
  %52 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %20, i32 0, i32 4
  %53 = load i32, ptr %51, align 4
  %54 = load i32, ptr %52, align 4
  %55 = xor i32 %54, %53
  %56 = getelementptr %struct.cfg80211_internal_bss, ptr %48, i32 0, i32 9, i32 11, i32 4
  %57 = load i16, ptr %56, align 2
  %58 = getelementptr %struct.ieee80211_mgmt, ptr %20, i32 0, i32 4, i32 4
  %59 = load i16, ptr %58, align 2
  %60 = xor i16 %59, %57
  %61 = zext i16 %60 to i32
  %62 = or i32 %55, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %100

64:                                               ; preds = %50
  %65 = icmp eq i32 %45, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  tail call void @mutex_unlock(ptr noundef %44) #11
  br label %116

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %20, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = xor i32 %69, %53
  %71 = getelementptr %struct.ieee80211_mgmt, ptr %20, i32 0, i32 2, i32 4
  %72 = load i16, ptr %71, align 2
  %73 = xor i16 %72, %57
  %74 = zext i16 %73 to i32
  %75 = or i32 %70, %74
  %76 = icmp eq i32 %75, 0
  tail call void @mutex_unlock(ptr noundef %44) #11
  br i1 %76, label %116, label %197

77:                                               ; preds = %43, %43, %43
  %78 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %20, i32 0, i32 4
  %79 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 72
  %84 = load ptr, ptr %83, align 32
  br label %87

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 12
  br label %87

87:                                               ; preds = %85, %82
  %88 = phi ptr [ %84, %82 ], [ %86, %85 ]
  %89 = load i32, ptr %78, align 4
  %90 = load i32, ptr %88, align 4
  %91 = xor i32 %90, %89
  %92 = getelementptr %struct.ieee80211_mgmt, ptr %20, i32 0, i32 4, i32 4
  %93 = load i16, ptr %92, align 2
  %94 = getelementptr i8, ptr %88, i32 4
  %95 = load i16, ptr %94, align 2
  %96 = xor i16 %95, %93
  %97 = zext i16 %96 to i32
  %98 = or i32 %91, %97
  %99 = icmp eq i32 %98, 0
  tail call void @mutex_unlock(ptr noundef %44) #11
  br i1 %99, label %116, label %197

100:                                              ; preds = %50, %46, %43
  %101 = phi i32 [ -95, %43 ], [ -107, %50 ], [ -107, %46 ]
  tail call void @mutex_unlock(ptr noundef %44) #11
  br label %197

102:                                              ; preds = %43
  %103 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %20, i32 0, i32 3
  %104 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %20, i32 0, i32 4
  %105 = load i32, ptr %103, align 4
  %106 = load i32, ptr %104, align 4
  %107 = xor i32 %106, %105
  %108 = getelementptr %struct.ieee80211_mgmt, ptr %20, i32 0, i32 3, i32 4
  %109 = load i16, ptr %108, align 2
  %110 = getelementptr %struct.ieee80211_mgmt, ptr %20, i32 0, i32 4, i32 4
  %111 = load i16, ptr %110, align 2
  %112 = xor i16 %111, %109
  %113 = zext i16 %112 to i32
  %114 = or i32 %107, %113
  %115 = icmp eq i32 %114, 0
  tail call void @mutex_unlock(ptr noundef %44) #11
  br i1 %115, label %116, label %197

116:                                              ; preds = %102, %87, %67, %66, %39, %36
  %117 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %20, i32 0, i32 3
  %118 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.net_device, ptr %119, i32 0, i32 72
  %123 = load ptr, ptr %122, align 32
  br label %126

124:                                              ; preds = %116
  %125 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 12
  br label %126

126:                                              ; preds = %124, %121
  %127 = phi ptr [ %123, %121 ], [ %125, %124 ]
  %128 = load i32, ptr %117, align 4
  %129 = load i32, ptr %127, align 4
  %130 = xor i32 %129, %128
  %131 = getelementptr %struct.ieee80211_mgmt, ptr %20, i32 0, i32 3, i32 4
  %132 = load i16, ptr %131, align 2
  %133 = getelementptr i8, ptr %127, i32 4
  %134 = load i16, ptr %133, align 2
  %135 = xor i16 %134, %132
  %136 = zext i16 %135 to i32
  %137 = or i32 %130, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %159, label %139

139:                                              ; preds = %126
  %140 = load i16, ptr %20, align 2
  %141 = and i16 %140, 252
  %142 = icmp eq i16 %141, 208
  br i1 %142, label %143, label %197

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %20, i32 0, i32 6
  %145 = load i8, ptr %144, align 2
  %146 = icmp eq i8 %145, 4
  br i1 %146, label %147, label %197

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 25
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  %151 = getelementptr %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 14, i32 1
  %152 = load i8, ptr %151, align 1
  br i1 %150, label %153, label %156

153:                                              ; preds = %147
  %154 = and i8 %152, 4
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %197, label %159

156:                                              ; preds = %147
  %157 = and i8 %152, 8
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %197, label %159

159:                                              ; preds = %156, %153, %126
  %160 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %161 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_mgmt_tx, i32 0, i32 1), align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %159
  %164 = tail call ptr @llvm.thread.pointer() #11
  %165 = getelementptr inbounds %struct.thread_info, ptr %164, i32 0, i32 2
  %166 = load i32, ptr %165, align 8
  %167 = lshr i32 %166, 5
  %168 = getelementptr i32, ptr @__cpu_online_mask, i32 %167
  %169 = load volatile i32, ptr %168, align 4
  %170 = and i32 %166, 31
  %171 = shl nuw i32 1, %170
  %172 = and i32 %171, %169
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %163
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !48
  %175 = tail call i32 @__traceiter_rdev_mgmt_tx(ptr noundef null, ptr noundef %160, ptr noundef %1, ptr noundef %2) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !49
  br label %176

176:                                              ; preds = %174, %163, %159
  %177 = load ptr, ptr %0, align 32
  %178 = getelementptr inbounds %struct.cfg80211_ops, ptr %177, i32 0, i32 60
  %179 = load ptr, ptr %178, align 4
  %180 = tail call i32 %179(ptr noundef %160, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  %181 = load i64, ptr %3, align 8
  %182 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int_cookie, i32 0, i32 1), align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %176
  %185 = tail call ptr @llvm.thread.pointer() #11
  %186 = getelementptr inbounds %struct.thread_info, ptr %185, i32 0, i32 2
  %187 = load i32, ptr %186, align 8
  %188 = lshr i32 %187, 5
  %189 = getelementptr i32, ptr @__cpu_online_mask, i32 %188
  %190 = load volatile i32, ptr %189, align 4
  %191 = and i32 %187, 31
  %192 = shl nuw i32 1, %191
  %193 = and i32 %192, %190
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %184
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !50
  %196 = tail call i32 @__traceiter_rdev_return_int_cookie(ptr noundef null, ptr noundef %160, i32 noundef %180, i64 noundef %181) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !51
  br label %197

197:                                              ; preds = %195, %184, %176, %156, %153, %143, %139, %102, %100, %87, %67, %24, %18, %14, %9, %4
  %198 = phi i32 [ -22, %102 ], [ -95, %4 ], [ -95, %9 ], [ -22, %14 ], [ -22, %18 ], [ -22, %24 ], [ -22, %143 ], [ -22, %139 ], [ -22, %153 ], [ -22, %156 ], [ %101, %100 ], [ -107, %67 ], [ -22, %87 ], [ %180, %176 ], [ %180, %184 ], [ %180, %195 ]
  ret i32 %198
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %7, i32 -544
  %12 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load i16, ptr %3, align 2
  %17 = and i16 %16, 252
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_rx_mgmt, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %10
  %21 = tail call ptr @llvm.thread.pointer() #11
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !52
  %32 = tail call i32 @__traceiter_cfg80211_rx_mgmt(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !53
  %33 = load i16, ptr %3, align 2
  br label %34

34:                                               ; preds = %31, %20, %10
  %35 = phi i16 [ %16, %10 ], [ %16, %20 ], [ %33, %31 ]
  %36 = lshr i16 %35, 4
  %37 = and i16 %36, 15
  %38 = getelementptr %struct.ieee80211_txrx_stypes, ptr %13, i32 %15, i32 1
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = zext i16 %37 to i32
  %42 = shl nuw nsw i32 1, %41
  %43 = and i32 %42, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %34
  %46 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_return_bool, i32 0, i32 1), align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %107

48:                                               ; preds = %45
  %49 = tail call ptr @llvm.thread.pointer() #11
  %50 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = lshr i32 %51, 5
  %53 = getelementptr i32, ptr @__cpu_online_mask, i32 %52
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %51, 31
  %56 = shl nuw i32 1, %55
  %57 = and i32 %56, %54
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %107, label %59

59:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !54
  %60 = tail call i32 @__traceiter_cfg80211_return_bool(ptr noundef null, i1 noundef zeroext false) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !55
  br label %107

61:                                               ; preds = %34
  %62 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %35) #13
  %63 = getelementptr i8, ptr %3, i32 %62
  %64 = sub i32 %4, %62
  %65 = getelementptr i8, ptr %7, i32 -28
  tail call void @_raw_spin_lock_bh(ptr noundef %65) #11
  %66 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %66
  br i1 %68, label %90, label %69

69:                                               ; preds = %87, %61
  %70 = phi ptr [ %88, %87 ], [ %67, %61 ]
  %71 = getelementptr inbounds %struct.cfg80211_mgmt_registration, ptr %70, i32 0, i32 4
  %72 = load i16, ptr %71, align 4
  %73 = icmp eq i16 %72, %17
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.cfg80211_mgmt_registration, ptr %70, i32 0, i32 3
  %76 = load i32, ptr %75, align 4
  %77 = icmp sgt i32 %76, %64
  br i1 %77, label %87, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.cfg80211_mgmt_registration, ptr %70, i32 0, i32 6
  %80 = tail call i32 @bcmp(ptr %79, ptr %63, i32 %76)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.cfg80211_mgmt_registration, ptr %70, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = tail call i32 @nl80211_send_mgmt(ptr noundef %11, ptr noundef %0, i32 noundef %84, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 2592) #11
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82, %78, %74, %69
  %88 = load ptr, ptr %70, align 4
  %89 = icmp eq ptr %88, %66
  br i1 %89, label %90, label %69

90:                                               ; preds = %87, %82, %61
  %91 = phi i1 [ false, %61 ], [ true, %82 ], [ false, %87 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %65) #11
  %92 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_return_bool, i32 0, i32 1), align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = tail call ptr @llvm.thread.pointer() #11
  %96 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %97 = load i32, ptr %96, align 8
  %98 = lshr i32 %97, 5
  %99 = getelementptr i32, ptr @__cpu_online_mask, i32 %98
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %97, 31
  %102 = shl nuw i32 1, %101
  %103 = and i32 %102, %100
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %94
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !54
  %106 = tail call i32 @__traceiter_cfg80211_return_bool(ptr noundef null, i1 noundef zeroext %91) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !55
  br label %107

107:                                              ; preds = %105, %94, %90, %59, %48, %45
  %108 = phi i1 [ false, %45 ], [ false, %48 ], [ false, %59 ], [ %91, %90 ], [ %91, %94 ], [ %91, %105 ]
  ret i1 %108
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nl80211_send_mgmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_sched_dfs_chan_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 31
  %3 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %2) #11
  %4 = load ptr, ptr @cfg80211_wq, align 4
  %5 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %2, i32 noundef 0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_dfs_channels_update_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.cfg80211_chan_def, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false), !annotation !36
  %3 = getelementptr i8, ptr %0, i32 -220
  %4 = getelementptr i8, ptr %0, i32 324
  tail call void @rtnl_lock() #11
  %5 = getelementptr i8, ptr %0, i32 556
  br label %6

6:                                                ; preds = %62, %1
  %7 = phi i1 [ false, %1 ], [ %64, %62 ]
  %8 = phi i32 [ 0, %1 ], [ %65, %62 ]
  %9 = phi i32 [ 0, %1 ], [ %63, %62 ]
  %10 = getelementptr [6 x ptr], ptr %5, i32 0, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %62, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %11, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %56, %13
  %18 = phi i1 [ %58, %56 ], [ %7, %13 ]
  %19 = phi i32 [ %59, %56 ], [ 0, %13 ]
  %20 = phi i32 [ %57, %56 ], [ %9, %13 ]
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr %struct.ieee80211_channel, ptr %21, i32 %19
  %23 = getelementptr %struct.ieee80211_channel, ptr %21, i32 %19, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %56, label %27

27:                                               ; preds = %17
  %28 = getelementptr %struct.ieee80211_channel, ptr %21, i32 %19, i32 12
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, -1
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %32, label %56

32:                                               ; preds = %27
  %33 = icmp eq i32 %29, 1
  br i1 %33, label %38, label %34

34:                                               ; preds = %32
  %35 = call zeroext i1 @regulatory_pre_cac_allowed(ptr noundef %4) #11
  br i1 %35, label %56, label %36

36:                                               ; preds = %34
  %37 = call zeroext i1 @cfg80211_any_wiphy_oper_chan(ptr noundef %4, ptr noundef %22) #11
  br i1 %37, label %56, label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ 1800000, %32 ], [ 2000, %36 ]
  %40 = phi i32 [ 3, %32 ], [ 4, %36 ]
  %41 = getelementptr %struct.ieee80211_channel, ptr %21, i32 %19, i32 13
  %42 = load i32, ptr %41, align 4
  %43 = call i32 @__msecs_to_jiffies(i32 noundef %39) #11
  %44 = add i32 %43, %42
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = sub i32 %45, %44
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  store i32 0, ptr %28, align 4
  %49 = load volatile i32, ptr @jiffies, align 64
  store i32 %49, ptr %41, align 4
  call void @cfg80211_chandef_create(ptr noundef nonnull %2, ptr noundef %22, i32 noundef 0) #11
  call void @nl80211_radar_notify(ptr noundef %3, ptr noundef nonnull %2, i32 noundef %40, ptr noundef null, i32 noundef 2592) #11
  %50 = load i32, ptr %28, align 4
  call void @regulatory_propagate_dfs_state(ptr noundef %4, ptr noundef nonnull %2, i32 noundef %50, i32 noundef %40) #11
  br label %56

51:                                               ; preds = %38
  %52 = load volatile i32, ptr @jiffies, align 64
  %53 = sub i32 %44, %52
  %54 = call i32 @llvm.umin.i32(i32 %20, i32 %53)
  %55 = select i1 %18, i32 %54, i32 %53
  br label %56

56:                                               ; preds = %51, %48, %36, %34, %27, %17
  %57 = phi i32 [ %20, %48 ], [ %20, %34 ], [ %20, %36 ], [ %20, %17 ], [ %20, %27 ], [ %55, %51 ]
  %58 = phi i1 [ %18, %48 ], [ %18, %34 ], [ %18, %36 ], [ %18, %17 ], [ %18, %27 ], [ true, %51 ]
  %59 = add nuw nsw i32 %19, 1
  %60 = load i32, ptr %14, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %17, label %62

62:                                               ; preds = %56, %13, %6
  %63 = phi i32 [ %9, %6 ], [ %9, %13 ], [ %57, %56 ]
  %64 = phi i1 [ %7, %6 ], [ %7, %13 ], [ %58, %56 ]
  %65 = add nuw nsw i32 %8, 1
  %66 = icmp eq i32 %65, 6
  br i1 %66, label %67, label %6

67:                                               ; preds = %62
  call void @rtnl_unlock() #11
  br i1 %64, label %68, label %71

68:                                               ; preds = %67
  %69 = load ptr, ptr @cfg80211_wq, align 4
  %70 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %69, ptr noundef %0, i32 noundef %63) #11
  br label %71

71:                                               ; preds = %68, %67
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regulatory_pre_cac_allowed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_any_wiphy_oper_chan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_radar_notify(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulatory_propagate_dfs_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__cfg80211_radar_event(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

7:                                                ; preds = %4
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_radar_event, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = tail call ptr @llvm.thread.pointer() #11
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !56
  %22 = tail call i32 @__traceiter_cfg80211_radar_event(ptr noundef null, ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !57
  br label %23

23:                                               ; preds = %21, %10, %7
  tail call void @cfg80211_set_dfs_state(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1) #11
  br i1 %2, label %24, label %28

24:                                               ; preds = %23
  %25 = load ptr, ptr @cfg80211_wq, align 4
  %26 = getelementptr i8, ptr %0, i32 -204
  %27 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %25, ptr noundef %26) #11
  br label %28

28:                                               ; preds = %24, %23
  %29 = getelementptr i8, ptr %0, i32 -544
  %30 = getelementptr i8, ptr %0, i32 -324
  %31 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %30) #11
  %32 = load ptr, ptr @cfg80211_wq, align 4
  %33 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %32, ptr noundef %30, i32 noundef 0) #11
  tail call void @nl80211_radar_notify(ptr noundef %29, ptr noundef %1, i32 noundef 0, ptr noundef null, i32 noundef %3) #11
  %34 = getelementptr i8, ptr %0, i32 -132
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %34, ptr noundef align 4 dereferenceable(28) %1, i32 28, i1 false)
  %35 = load ptr, ptr @cfg80211_wq, align 4
  %36 = getelementptr i8, ptr %0, i32 -104
  %37 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %35, ptr noundef %36) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_set_dfs_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_cac_event(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %7, i32 -544
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_cac_event, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = tail call ptr @llvm.thread.pointer() #11
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !58
  %26 = tail call i32 @__traceiter_cfg80211_cac_event(ptr noundef null, ptr noundef %0, i32 noundef %2) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !59
  br label %27

27:                                               ; preds = %25, %14, %10
  %28 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 36
  %29 = load i8, ptr %28, align 1, !range !41
  %30 = icmp eq i8 %29, 0
  %31 = icmp ne i32 %2, 5
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 945, i32 noundef 9, ptr noundef null) #11
  br label %64

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 27
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39, !prof !8

38:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 948, i32 noundef 9, ptr noundef null) #11
  br label %64

39:                                               ; preds = %34
  switch i32 %2, label %61 [
    i32 1, label %40
    i32 2, label %62
    i32 5, label %60
  ]

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 37
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 38
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 @__msecs_to_jiffies(i32 noundef %44) #11
  %46 = load volatile i32, ptr @jiffies, align 64
  %47 = add i32 %45, %42
  %48 = sub i32 %46, %47
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51, !prof !8

50:                                               ; preds = %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 955, i32 noundef 9, ptr noundef null) #11
  br label %51

51:                                               ; preds = %50, %40
  tail call void @cfg80211_set_dfs_state(ptr noundef nonnull %7, ptr noundef %1, i32 noundef 2) #11
  %52 = getelementptr i8, ptr %7, i32 -88
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %52, ptr noundef align 4 dereferenceable(28) %1, i32 28, i1 false)
  %53 = load ptr, ptr @cfg80211_wq, align 4
  %54 = getelementptr i8, ptr %7, i32 -60
  %55 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %53, ptr noundef %54) #11
  %56 = getelementptr i8, ptr %7, i32 -324
  %57 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %56) #11
  %58 = load ptr, ptr @cfg80211_wq, align 4
  %59 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %58, ptr noundef %56, i32 noundef 0) #11
  br label %62

60:                                               ; preds = %39
  br label %62

61:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 969, i32 noundef 9, ptr noundef null) #11
  br label %64

62:                                               ; preds = %60, %51, %39
  %63 = phi i8 [ 1, %60 ], [ 0, %39 ], [ 0, %51 ]
  store i8 %63, ptr %28, align 1
  tail call void @nl80211_radar_notify(ptr noundef %11, ptr noundef %1, i32 noundef %2, ptr noundef %0, i32 noundef %3) #11
  br label %64

64:                                               ; preds = %62, %61, %38, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_background_cac_done_wk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -296
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = getelementptr i8, ptr %0, i32 248
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = getelementptr i8, ptr %0, i32 -32
  %6 = load ptr, ptr %5, align 8
  tail call fastcc void @__cfg80211_background_cac_event(ptr noundef %2, ptr noundef %6, ptr noundef %3, i32 noundef 1) #11
  tail call void @mutex_unlock(ptr noundef %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_background_cac_abort_wk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -340
  %3 = getelementptr i8, ptr %0, i32 -72
  %4 = getelementptr i8, ptr %0, i32 204
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = getelementptr i8, ptr %0, i32 -76
  %6 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %3) #11
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %0, i32 -44
  %12 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %11) #11
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load ptr, ptr %5, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.wireless_dev, ptr %14, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %18, %16 ], [ null, %13 ]
  tail call void @nl80211_radar_notify(ptr noundef %2, ptr noundef %3, i32 noundef 2, ptr noundef %20, i32 noundef 3264) #11
  br label %21

21:                                               ; preds = %19, %10, %7, %1
  tail call void @mutex_unlock(ptr noundef %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_background_cac_abort(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfg80211_wq, align 4
  %6 = getelementptr i8, ptr %0, i32 -204
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %6) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_start_background_radar_detection(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %5 = getelementptr %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 14, i32 7
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %86, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 32
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  %13 = icmp eq ptr %11, %1
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %86

15:                                               ; preds = %9
  br i1 %13, label %16, label %21

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 34
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %86

21:                                               ; preds = %16, %15
  %22 = load ptr, ptr %0, align 32
  %23 = getelementptr inbounds %struct.cfg80211_ops, ptr %22, i32 0, i32 114
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %86, label %26

26:                                               ; preds = %21
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_set_radar_background, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = tail call ptr @llvm.thread.pointer() #11
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !60
  %41 = tail call i32 @__traceiter_rdev_set_radar_background(ptr noundef null, ptr noundef %4, ptr noundef %2) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !61
  %42 = load ptr, ptr %0, align 32
  %43 = getelementptr inbounds %struct.cfg80211_ops, ptr %42, i32 0, i32 114
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %40, %29, %26
  %46 = phi ptr [ %24, %26 ], [ %24, %29 ], [ %44, %40 ]
  %47 = tail call i32 %46(ptr noundef %4, ptr noundef %2) #11
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = tail call ptr @llvm.thread.pointer() #11
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %50
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %62 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %4, i32 noundef %47) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  br label %63

63:                                               ; preds = %61, %50, %45
  %64 = icmp eq i32 %47, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %63
  %66 = tail call i32 @cfg80211_chandef_dfs_cac_time(ptr noundef %4, ptr noundef %2) #11
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 60000, i32 %66
  %69 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 33
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %69, ptr noundef align 4 dereferenceable(28) %2, i32 28, i1 false)
  store ptr %1, ptr %10, align 8
  %70 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %2) #11
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load ptr, ptr %10, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %71
  %75 = icmp eq ptr %1, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  br label %79

79:                                               ; preds = %76, %74
  %80 = phi ptr [ %78, %76 ], [ null, %74 ]
  tail call void @nl80211_radar_notify(ptr noundef %0, ptr noundef %2, i32 noundef 5, ptr noundef %80, i32 noundef 3264) #11
  br label %81

81:                                               ; preds = %79, %71, %65
  %82 = load ptr, ptr @cfg80211_wq, align 4
  %83 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 34
  %84 = tail call i32 @__msecs_to_jiffies(i32 noundef %68) #11
  %85 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %82, ptr noundef %83, i32 noundef %84) #11
  br label %86

86:                                               ; preds = %81, %63, %21, %16, %9, %3
  %87 = phi i32 [ 0, %81 ], [ -95, %3 ], [ -16, %9 ], [ -16, %16 ], [ %47, %63 ], [ -95, %21 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_chandef_dfs_cac_time(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__cfg80211_background_cac_event(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %6 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %2) #11
  br i1 %6, label %7, label %34

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 32
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %7
  switch i32 %3, label %34 [
    i32 1, label %12
    i32 2, label %21
    i32 5, label %26
  ]

12:                                               ; preds = %11
  tail call void @cfg80211_set_dfs_state(ptr noundef %5, ptr noundef %2, i32 noundef 2) #11
  %13 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 43
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %13, ptr noundef align 4 dereferenceable(28) %2, i32 28, i1 false)
  %14 = load ptr, ptr @cfg80211_wq, align 4
  %15 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 44
  %16 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %14, ptr noundef %15) #11
  %17 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 31
  %18 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %17) #11
  %19 = load ptr, ptr @cfg80211_wq, align 4
  %20 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %17, i32 noundef 0) #11
  br label %24

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 34
  %23 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %22) #11
  br i1 %23, label %24, label %34

24:                                               ; preds = %21, %12
  %25 = load ptr, ptr %8, align 8
  br label %26

26:                                               ; preds = %24, %11
  %27 = phi ptr [ %1, %11 ], [ %25, %24 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.wireless_dev, ptr %27, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi ptr [ %31, %29 ], [ null, %26 ]
  tail call void @nl80211_radar_notify(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef %33, i32 noundef 3264) #11
  br label %34

34:                                               ; preds = %32, %21, %11, %7, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_stop_background_radar_detection(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %2, i32 -544
  %7 = getelementptr i8, ptr %2, i32 -280
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %69

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 32
  %12 = getelementptr inbounds %struct.cfg80211_ops, ptr %11, i32 0, i32 114
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %52, label %15

15:                                               ; preds = %10
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_set_radar_background, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = tail call ptr @llvm.thread.pointer() #11
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 5
  %23 = getelementptr i32, ptr @__cpu_online_mask, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %21, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !60
  %30 = tail call i32 @__traceiter_rdev_set_radar_background(ptr noundef null, ptr noundef nonnull %2, ptr noundef null) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !61
  %31 = load ptr, ptr %6, align 32
  %32 = getelementptr inbounds %struct.cfg80211_ops, ptr %31, i32 0, i32 114
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %29, %18, %15
  %35 = phi ptr [ %13, %15 ], [ %13, %18 ], [ %33, %29 ]
  %36 = tail call i32 %35(ptr noundef nonnull %2, ptr noundef null) #11
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = tail call ptr @llvm.thread.pointer() #11
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 5
  %44 = getelementptr i32, ptr @__cpu_online_mask, i32 %43
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %42, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %51 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef nonnull %2, i32 noundef %36) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  br label %52

52:                                               ; preds = %50, %39, %34, %10
  store ptr null, ptr %7, align 8
  %53 = getelementptr i8, ptr %2, i32 -276
  %54 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %53) #11
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load ptr, ptr %7, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %2, i32 -248
  %60 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %59) #11
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load ptr, ptr %7, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.wireless_dev, ptr %62, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi ptr [ %66, %64 ], [ null, %61 ]
  tail call void @nl80211_radar_notify(ptr noundef %6, ptr noundef %53, i32 noundef 2, ptr noundef %68, i32 noundef 3264) #11
  br label %69

69:                                               ; preds = %67, %58, %55, %52, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_send_rx_assoc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_rx_mlme_mgmt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_rx_auth(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sme_rx_auth(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_deauth(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cfg80211_disconnected(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sme_deauth(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_disassoc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sme_disassoc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_send_auth_timeout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_send_assoc_timeout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_tx_mlme_mgmt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_michael_mic_failure(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_auth(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_assoc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_deauth(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_disassoc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_update_mgmt_frame_registrations(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_void(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_crit_proto_stop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_mgmt_tx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_int_cookie(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_rx_mgmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_return_bool(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_radar_event(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_cac_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_set_radar_background(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone willreturn }

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
!9 = !{i64 2155903804, i64 2155904288, i64 2155903841, i64 2155903897, i64 2155903931, i64 2155903955, i64 2155903996, i64 2155904017, i64 2155904045, i64 2155904079}
!10 = !{i64 2157943893}
!11 = !{i64 2157944071}
!12 = !{i64 2148041669}
!13 = !{i64 438831, i64 2147928802, i64 2147928828, i64 2147928875, i64 2147928897, i64 2147928925, i64 2147928945}
!14 = !{i64 2147944055, i64 2147944087, i64 2147944116, i64 2147944150, i64 2147944181, i64 2147944204}
!15 = !{i64 2148041872}
!16 = !{i64 2157975864}
!17 = !{i64 2157976050}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2158003556}
!20 = !{i64 2158003742}
!21 = !{i64 2158017476}
!22 = !{i64 2158017664}
!23 = !{i64 2157989872}
!24 = !{i64 2157990080}
!25 = !{i64 2158036639}
!26 = !{i64 2158036877}
!27 = !{i64 2156848037}
!28 = !{i64 2156848203}
!29 = !{i64 2156150692}
!30 = !{i64 2156150854}
!31 = !{i64 2149072720}
!32 = !{i64 2156861919}
!33 = !{i64 2156862105}
!34 = !{i64 2149072937}
!35 = !{i64 2147941014, i64 2147941040, i64 2147941069, i64 2147941103, i64 2147941134, i64 2147941157}
!36 = !{!"auto-init"}
!37 = !{i64 2156875234}
!38 = !{i64 2156875404}
!39 = !{i64 2156892742}
!40 = !{i64 2156892916}
!41 = !{i8 0, i8 2}
!42 = !{i64 2157128655}
!43 = !{i64 2157128871}
!44 = !{i64 2156192397}
!45 = !{i64 2156192551}
!46 = !{i64 2157590268}
!47 = !{i64 2157590442}
!48 = !{i64 2157367970}
!49 = !{i64 2157368144}
!50 = !{i64 2157339558}
!51 = !{i64 2157339750}
!52 = !{i64 2158125377}
!53 = !{i64 2158125559}
!54 = !{i64 2157898389}
!55 = !{i64 2157898547}
!56 = !{i64 2158266667}
!57 = !{i64 2158266865}
!58 = !{i64 2158280203}
!59 = !{i64 2158280373}
!60 = !{i64 2158750317}
!61 = !{i64 2158750507}
