; ModuleID = '/llk/IR/net/wireless/scan.c_pt.bc'
source_filename = "../net/wireless/scan.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_is_element_inherited:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_is_element_inherited\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_is_element_inherited:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_scan_done:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_scan_done\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_scan_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_sched_scan_results:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_sched_scan_results\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_sched_scan_results:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_sched_scan_stopped_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_sched_scan_stopped_locked\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_sched_scan_stopped_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_sched_scan_stopped:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_sched_scan_stopped\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_sched_scan_stopped:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_bss_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_bss_flush\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_bss_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_find_elem_match:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_find_elem_match\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_find_elem_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_find_vendor_elem:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_find_vendor_elem\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_find_vendor_elem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_get_bss:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_get_bss\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_get_bss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_get_ies_channel_number:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_get_ies_channel_number\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_get_ies_channel_number:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_merge_profile:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_merge_profile\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_merge_profile:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_inform_bss_data:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_inform_bss_data\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_inform_bss_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_inform_bss_frame_data:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_inform_bss_frame_data\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_inform_bss_frame_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_ref_bss:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_ref_bss\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_ref_bss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_put_bss:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_put_bss\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_put_bss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_unlink_bss:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_unlink_bss\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_unlink_bss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_bss_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_bss_iter\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_bss_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.94 }
%union.anon.94 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.element = type { i8, i8, [0 x i8] }
%struct.cfg80211_registered_device = type { ptr, %struct.list_head, %struct.rfkill_ops, %struct.work_struct, [2 x i8], ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.rb_root, i32, i32, ptr, ptr, ptr, %struct.list_head, i64, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, %struct.delayed_work, %struct.work_struct, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.work_struct, %struct.spinlock, [24 x i8], %struct.wiphy }
%struct.rfkill_ops = type { ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rb_root = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.120, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.120 = type { i64, i64, i8 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.118 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.118 = type { ptr, i32 }
%struct.cfg80211_internal_bss = type { %struct.list_head, %struct.list_head, %struct.rb_node, i64, i32, i32, %struct.atomic_t, i64, [6 x i8], %struct.cfg80211_bss }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.cfg80211_bss_ies = type { i64, %struct.callback_head, i32, i8, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_neighbor_ap_info = type { i8, i8, i8, i8 }
%struct.cfg80211_colocated_ap = type { %struct.list_head, [6 x i8], [32 x i8], i32, i32, i32, i8 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_scan_6ghz_params = type { i32, i32, [6 x i8], i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.ref_tracker_dir = type {}
%union.anon.121 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.cfg80211_sched_scan_request = type { i64, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, %struct.cfg80211_bss_select_adjust, ptr, ptr, i32, i8, %struct.callback_head, i32, i8, %struct.list_head, [0 x ptr] }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_he_6ghz_oper = type { i8, i8, i8, i8, i8 }
%struct.cfg80211_non_tx_bss = type { ptr, i8, i8 }
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.125 }
%union.anon.125 = type { %struct.anon.131, [16 x i8] }
%struct.anon.131 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_ext = type { i16, i16, %union.anon.159 }
%union.anon.159 = type { %struct.anon.161 }
%struct.anon.161 = type <{ [6 x i8], i32, i8, [3 x i8], [0 x i8] }>

@__param_str_bss_entries_limit = internal constant [18 x i8] c"bss_entries_limit\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@bss_entries_limit = internal global i32 1000, align 4
@__param_bss_entries_limit = internal constant %struct.kernel_param { ptr @__param_str_bss_entries_limit, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.94 { ptr @bss_entries_limit } }, section "__param", align 4
@__UNIQUE_ID_bss_entries_limittype698 = internal constant [31 x i8] c"parmtype=bss_entries_limit:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bss_entries_limit699 = internal constant [85 x i8] c"parm=bss_entries_limit:limit to number of scan BSS entries (per wiphy, default 1000)\00", section ".modinfo", align 1
@__kstrtab_cfg80211_is_element_inherited = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_is_element_inherited = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_is_element_inherited = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_is_element_inherited to i32), ptr @__kstrtab_cfg80211_is_element_inherited, ptr @__kstrtabns_cfg80211_is_element_inherited }, section "___ksymtab+cfg80211_is_element_inherited", align 4
@.str = private unnamed_addr constant [20 x i8] c"net/wireless/scan.c\00", align 1
@cfg80211_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_cfg80211_scan_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_scan_done = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_scan_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_scan_done to i32), ptr @__kstrtab_cfg80211_scan_done, ptr @__kstrtabns_cfg80211_scan_done }, section "___ksymtab+cfg80211_scan_done", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_cfg80211_sched_scan_results = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_sched_scan_results = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_sched_scan_results = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_sched_scan_results to i32), ptr @__kstrtab_cfg80211_sched_scan_results, ptr @__kstrtabns_cfg80211_sched_scan_results }, section "___ksymtab+cfg80211_sched_scan_results", align 4
@__kstrtab_cfg80211_sched_scan_stopped_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_sched_scan_stopped_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_sched_scan_stopped_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_sched_scan_stopped_locked to i32), ptr @__kstrtab_cfg80211_sched_scan_stopped_locked, ptr @__kstrtabns_cfg80211_sched_scan_stopped_locked }, section "___ksymtab+cfg80211_sched_scan_stopped_locked", align 4
@__kstrtab_cfg80211_sched_scan_stopped = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_sched_scan_stopped = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_sched_scan_stopped = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_sched_scan_stopped to i32), ptr @__kstrtab_cfg80211_sched_scan_stopped, ptr @__kstrtabns_cfg80211_sched_scan_stopped }, section "___ksymtab+cfg80211_sched_scan_stopped", align 4
@__kstrtab_cfg80211_bss_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_bss_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_bss_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_bss_flush to i32), ptr @__kstrtab_cfg80211_bss_flush, ptr @__kstrtabns_cfg80211_bss_flush }, section "___ksymtab+cfg80211_bss_flush", align 4
@__kstrtab_cfg80211_find_elem_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_find_elem_match = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_find_elem_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_find_elem_match to i32), ptr @__kstrtab_cfg80211_find_elem_match, ptr @__kstrtabns_cfg80211_find_elem_match }, section "___ksymtab+cfg80211_find_elem_match", align 4
@__kstrtab_cfg80211_find_vendor_elem = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_find_vendor_elem = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_find_vendor_elem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_find_vendor_elem to i32), ptr @__kstrtab_cfg80211_find_vendor_elem, ptr @__kstrtabns_cfg80211_find_vendor_elem }, section "___ksymtab+cfg80211_find_vendor_elem", align 4
@__kstrtab_cfg80211_get_bss = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_get_bss = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_get_bss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_get_bss to i32), ptr @__kstrtab_cfg80211_get_bss, ptr @__kstrtabns_cfg80211_get_bss }, section "___ksymtab+cfg80211_get_bss", align 4
@__kstrtab_cfg80211_get_ies_channel_number = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_get_ies_channel_number = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_get_ies_channel_number = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_get_ies_channel_number to i32), ptr @__kstrtab_cfg80211_get_ies_channel_number, ptr @__kstrtabns_cfg80211_get_ies_channel_number }, section "___ksymtab+cfg80211_get_ies_channel_number", align 4
@__kstrtab_cfg80211_merge_profile = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_merge_profile = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_merge_profile = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_merge_profile to i32), ptr @__kstrtab_cfg80211_merge_profile, ptr @__kstrtabns_cfg80211_merge_profile }, section "___ksymtab+cfg80211_merge_profile", align 4
@__kstrtab_cfg80211_inform_bss_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_inform_bss_data = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_inform_bss_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_inform_bss_data to i32), ptr @__kstrtab_cfg80211_inform_bss_data, ptr @__kstrtabns_cfg80211_inform_bss_data }, section "___ksymtab+cfg80211_inform_bss_data", align 4
@__kstrtab_cfg80211_inform_bss_frame_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_inform_bss_frame_data = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_inform_bss_frame_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_inform_bss_frame_data to i32), ptr @__kstrtab_cfg80211_inform_bss_frame_data, ptr @__kstrtabns_cfg80211_inform_bss_frame_data }, section "___ksymtab+cfg80211_inform_bss_frame_data", align 4
@__kstrtab_cfg80211_ref_bss = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_ref_bss = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_ref_bss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_ref_bss to i32), ptr @__kstrtab_cfg80211_ref_bss, ptr @__kstrtabns_cfg80211_ref_bss }, section "___ksymtab+cfg80211_ref_bss", align 4
@__kstrtab_cfg80211_put_bss = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_put_bss = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_put_bss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_put_bss to i32), ptr @__kstrtab_cfg80211_put_bss, ptr @__kstrtabns_cfg80211_put_bss }, section "___ksymtab+cfg80211_put_bss", align 4
@__kstrtab_cfg80211_unlink_bss = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_unlink_bss = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_unlink_bss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_unlink_bss to i32), ptr @__kstrtab_cfg80211_unlink_bss, ptr @__kstrtabns_cfg80211_unlink_bss }, section "___ksymtab+cfg80211_unlink_bss", align 4
@__kstrtab_cfg80211_bss_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_bss_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_bss_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_bss_iter to i32), ptr @__kstrtab_cfg80211_bss_iter, ptr @__kstrtabns_cfg80211_bss_iter }, section "___ksymtab+cfg80211_bss_iter", align 4
@__tracepoint_rdev_scan = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_rdev_return_int = external dso_local global %struct.tracepoint, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"include/net/cfg80211.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_cfg80211_scan_done = external dso_local global %struct.tracepoint, align 4
@__tracepoint_cfg80211_sched_scan_results = external dso_local global %struct.tracepoint, align 4
@__tracepoint_cfg80211_sched_scan_stopped = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_sched_scan_stop = external dso_local global %struct.tracepoint, align 4
@__tracepoint_cfg80211_get_bss = external dso_local global %struct.tracepoint, align 4
@__tracepoint_cfg80211_return_bss = external dso_local global %struct.tracepoint, align 4
@cfg80211_combine_bsses.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cfg80211_combine_bsses.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cfg80211_combine_bsses.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"rdev bss entries[%d]/list[len:%d] corruption\0A\00", align 1
@__tracepoint_cfg80211_inform_bss_frame = external dso_local global %struct.tracepoint, align 4
@__cfg80211_unlink_bss.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"rdev bss entries[%d]/list[empty:%d] corruption\0A\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_bss_entries_limit699, ptr @__UNIQUE_ID_bss_entries_limittype698, ptr @__ksymtab_cfg80211_bss_flush, ptr @__ksymtab_cfg80211_bss_iter, ptr @__ksymtab_cfg80211_find_elem_match, ptr @__ksymtab_cfg80211_find_vendor_elem, ptr @__ksymtab_cfg80211_get_bss, ptr @__ksymtab_cfg80211_get_ies_channel_number, ptr @__ksymtab_cfg80211_inform_bss_data, ptr @__ksymtab_cfg80211_inform_bss_frame_data, ptr @__ksymtab_cfg80211_is_element_inherited, ptr @__ksymtab_cfg80211_merge_profile, ptr @__ksymtab_cfg80211_put_bss, ptr @__ksymtab_cfg80211_ref_bss, ptr @__ksymtab_cfg80211_scan_done, ptr @__ksymtab_cfg80211_sched_scan_results, ptr @__ksymtab_cfg80211_sched_scan_stopped, ptr @__ksymtab_cfg80211_sched_scan_stopped_locked, ptr @__ksymtab_cfg80211_unlink_bss, ptr @__param_bss_entries_limit], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @cfg80211_is_element_inherited(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = load i8, ptr %0, align 1
  %4 = icmp eq i8 %3, 71
  br i1 %4, label %52, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.element, ptr %1, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp ult i8 %9, 2
  br i1 %11, label %52, label %12

12:                                               ; preds = %7
  %13 = getelementptr %struct.element, ptr %1, i32 1, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %15, 3
  %17 = icmp ugt i32 %16, %10
  br i1 %17, label %52, label %18

18:                                               ; preds = %12
  %19 = add nuw nsw i32 %15, 2
  %20 = getelementptr %struct.element, ptr %1, i32 0, i32 2, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = add nuw nsw i32 %16, %22
  %24 = icmp ugt i32 %23, %10
  br i1 %24, label %52, label %25

25:                                               ; preds = %18
  %26 = icmp eq i8 %3, -1
  br i1 %26, label %27, label %33

27:                                               ; preds = %25
  %28 = icmp eq i8 %21, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %27
  %30 = getelementptr %struct.element, ptr %1, i32 0, i32 2, i32 %16
  %31 = getelementptr inbounds %struct.element, ptr %0, i32 0, i32 2
  %32 = load i8, ptr %31, align 1
  br label %37

33:                                               ; preds = %25
  %34 = icmp eq i8 %14, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %33
  %36 = getelementptr %struct.element, ptr %1, i32 2
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi i8 [ %21, %29 ], [ %14, %35 ]
  %39 = phi i8 [ %32, %29 ], [ %3, %35 ]
  %40 = phi ptr [ %30, %29 ], [ %36, %35 ]
  %41 = zext i8 %38 to i32
  br label %42

42:                                               ; preds = %42, %37
  %43 = phi i32 [ 0, %37 ], [ %47, %42 ]
  %44 = getelementptr i8, ptr %40, i32 %43
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, %39
  %47 = add nuw nsw i32 %43, 1
  %48 = icmp eq i32 %47, %41
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %50, label %42

50:                                               ; preds = %42
  %51 = xor i1 %46, true
  br label %52

52:                                               ; preds = %50, %33, %27, %18, %12, %7, %5, %2
  %53 = phi i1 [ false, %2 ], [ true, %7 ], [ true, %5 ], [ true, %12 ], [ true, %18 ], [ true, %27 ], [ true, %33 ], [ %51, %50 ]
  ret i1 %53
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_scan(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 11
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %3, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %62, label %49

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_scan, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #17
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %28 = tail call i32 @__traceiter_rdev_scan(ptr noundef null, ptr noundef %13, ptr noundef %3) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %29

29:                                               ; preds = %27, %16, %12
  %30 = load ptr, ptr %0, align 32
  %31 = getelementptr inbounds %struct.cfg80211_ops, ptr %30, i32 0, i32 37
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %13, ptr noundef %3) #17
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %132

36:                                               ; preds = %29
  %37 = tail call ptr @llvm.thread.pointer() #17
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 5
  %41 = getelementptr i32, ptr @__cpu_online_mask, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %39, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %132, label %47

47:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %48 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %13, i32 noundef %33) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %132

49:                                               ; preds = %49, %8
  %50 = phi i32 [ %58, %49 ], [ 0, %8 ]
  %51 = phi i32 [ %57, %49 ], [ 0, %8 ]
  %52 = getelementptr %struct.cfg80211_scan_request, ptr %3, i32 0, i32 22, i32 %50
  %53 = load ptr, ptr %52, align 4
  %54 = load i32, ptr %53, align 4
  %55 = icmp ne i32 %54, 3
  %56 = zext i1 %55 to i32
  %57 = add i32 %51, %56
  %58 = add nuw i32 %50, 1
  %59 = icmp eq i32 %58, %10
  br i1 %59, label %60, label %49

60:                                               ; preds = %49
  %61 = icmp eq i32 %57, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %60, %8
  %63 = tail call fastcc i32 @cfg80211_scan_6ghz(ptr noundef %0)
  br label %132

64:                                               ; preds = %60
  %65 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %57, i32 4) #17
  %66 = extractvalue { i32, i1 } %65, 1
  %67 = extractvalue { i32, i1 } %65, 0
  %68 = tail call i32 @llvm.uadd.sat.i32(i32 %67, i32 120) #17
  %69 = select i1 %66, i32 -1, i32 %68
  %70 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %69, i32 noundef 3520) #18
  %71 = icmp eq ptr %70, null
  br i1 %71, label %132, label %72

72:                                               ; preds = %64
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(120) %70, ptr noundef align 8 dereferenceable(120) %3, i32 120, i1 false)
  %73 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %70, i32 0, i32 2
  store i32 %57, ptr %73, align 8
  %74 = load i32, ptr %9, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %93, label %76

76:                                               ; preds = %88, %72
  %77 = phi i32 [ %89, %88 ], [ %74, %72 ]
  %78 = phi i32 [ %91, %88 ], [ 0, %72 ]
  %79 = phi i32 [ %90, %88 ], [ 0, %72 ]
  %80 = getelementptr %struct.cfg80211_scan_request, ptr %3, i32 0, i32 22, i32 %78
  %81 = load ptr, ptr %80, align 4
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 3
  br i1 %83, label %88, label %84

84:                                               ; preds = %76
  %85 = add i32 %79, 1
  %86 = getelementptr %struct.cfg80211_scan_request, ptr %70, i32 0, i32 22, i32 %79
  store ptr %81, ptr %86, align 4
  %87 = load i32, ptr %9, align 8
  br label %88

88:                                               ; preds = %84, %76
  %89 = phi i32 [ %87, %84 ], [ %77, %76 ]
  %90 = phi i32 [ %85, %84 ], [ %79, %76 ]
  %91 = add nuw i32 %78, 1
  %92 = icmp ult i32 %91, %89
  br i1 %92, label %76, label %93

93:                                               ; preds = %88, %72
  %94 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %3, i32 0, i32 19
  store i8 0, ptr %94, align 2
  %95 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 23
  store ptr %70, ptr %95, align 4
  %96 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %97 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_scan, i32 0, i32 1), align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %93
  %100 = tail call ptr @llvm.thread.pointer() #17
  %101 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %102 = load i32, ptr %101, align 8
  %103 = lshr i32 %102, 5
  %104 = getelementptr i32, ptr @__cpu_online_mask, i32 %103
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %102, 31
  %107 = shl nuw i32 1, %106
  %108 = and i32 %107, %105
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %99
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %111 = tail call i32 @__traceiter_rdev_scan(ptr noundef null, ptr noundef %96, ptr noundef nonnull %70) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %112

112:                                              ; preds = %110, %99, %93
  %113 = load ptr, ptr %0, align 32
  %114 = getelementptr inbounds %struct.cfg80211_ops, ptr %113, i32 0, i32 37
  %115 = load ptr, ptr %114, align 4
  %116 = tail call i32 %115(ptr noundef %96, ptr noundef nonnull %70) #17
  %117 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %112
  %120 = tail call ptr @llvm.thread.pointer() #17
  %121 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 2
  %122 = load i32, ptr %121, align 8
  %123 = lshr i32 %122, 5
  %124 = getelementptr i32, ptr @__cpu_online_mask, i32 %123
  %125 = load volatile i32, ptr %124, align 4
  %126 = and i32 %122, 31
  %127 = shl nuw i32 1, %126
  %128 = and i32 %127, %125
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %119
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %131 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %96, i32 noundef %116) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %132

132:                                              ; preds = %130, %119, %112, %64, %62, %47, %36, %29
  %133 = phi i32 [ %63, %62 ], [ -12, %64 ], [ %33, %29 ], [ %33, %36 ], [ %33, %47 ], [ %116, %112 ], [ %116, %119 ], [ %116, %130 ]
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cfg80211_scan_6ghz(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head, align 8
  %5 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store ptr %4, ptr %4, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %6, i32 0, i32 19
  store i8 1, ptr %8, align 2
  %9 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %10 = getelementptr %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 53, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %581, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %6, i32 0, i32 10
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = trunc i32 %17 to i8
  %19 = and i32 %17, 255
  %20 = icmp ugt i8 %18, 11
  br i1 %20, label %30, label %21, !prof !13

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %11, i32 0, i32 9
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = icmp eq i16 %23, 0
  br i1 %25, label %581, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %11, i32 0, i32 10
  %28 = load ptr, ptr %27, align 4
  %29 = shl nuw i32 1, %19
  br label %34

30:                                               ; preds = %13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 510, i32 noundef 9, ptr noundef null) #17
  br label %581

31:                                               ; preds = %34
  %32 = add nuw nsw i32 %35, 1
  %33 = icmp eq i32 %32, %24
  br i1 %33, label %581, label %34

34:                                               ; preds = %31, %26
  %35 = phi i32 [ 0, %26 ], [ %32, %31 ]
  %36 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %28, i32 %35
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  %39 = and i32 %29, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %31, label %41

41:                                               ; preds = %34
  %42 = icmp eq ptr %36, null
  br i1 %42, label %581, label %43

43:                                               ; preds = %41
  %44 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %28, i32 %35, i32 1
  %45 = load i8, ptr %44, align 2, !range !14
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %581, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %11, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %6, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 16384
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %257, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 17
  call void @_raw_spin_lock_bh(ptr noundef %55) #17
  %56 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 18
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %255, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  br label %61

61:                                               ; preds = %250, %59
  %62 = phi ptr [ %57, %59 ], [ %253, %250 ]
  %63 = phi i32 [ 0, %59 ], [ %252, %250 ]
  %64 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %62, i32 0, i32 9, i32 2
  %65 = load volatile ptr, ptr %64, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store ptr %2, ptr %2, align 8
  store ptr %2, ptr %60, align 4
  %66 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %65, i32 0, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = getelementptr i8, ptr %66, i32 %68
  %70 = ptrtoint ptr %69 to i32
  %71 = icmp sgt i32 %68, 1
  br i1 %71, label %72, label %250

72:                                               ; preds = %83, %61
  %73 = phi i32 [ %87, %83 ], [ %68, %61 ]
  %74 = phi ptr [ %85, %83 ], [ %66, %61 ]
  %75 = getelementptr inbounds %struct.element, ptr %74, i32 0, i32 1
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add nuw nsw i32 %77, 2
  %79 = icmp ult i32 %73, %78
  br i1 %79, label %250, label %80

80:                                               ; preds = %72
  %81 = load i8, ptr %74, align 1
  %82 = icmp eq i8 %81, -55
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.element, ptr %74, i32 0, i32 2
  %85 = getelementptr i8, ptr %84, i32 %77
  %86 = ptrtoint ptr %85 to i32
  %87 = sub i32 %70, %86
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %72, label %250

89:                                               ; preds = %80
  %90 = icmp eq ptr %74, null
  br i1 %90, label %250, label %91

91:                                               ; preds = %89
  %92 = zext i8 %76 to i32
  %93 = getelementptr inbounds %struct.element, ptr %74, i32 0, i32 2
  %94 = getelementptr i8, ptr %93, i32 %92
  br label %95

95:                                               ; preds = %106, %91
  %96 = phi i32 [ %110, %106 ], [ %68, %91 ]
  %97 = phi ptr [ %108, %106 ], [ %66, %91 ]
  %98 = getelementptr inbounds %struct.element, ptr %97, i32 0, i32 1
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = add nuw nsw i32 %100, 2
  %102 = icmp ult i32 %96, %101
  br i1 %102, label %250, label %103

103:                                              ; preds = %95
  %104 = load i8, ptr %97, align 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.element, ptr %97, i32 0, i32 2
  %108 = getelementptr i8, ptr %107, i32 %100
  %109 = ptrtoint ptr %108 to i32
  %110 = sub i32 %70, %109
  %111 = icmp sgt i32 %110, 1
  br i1 %111, label %95, label %250

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.element, ptr %97, i32 0, i32 1
  %114 = icmp eq ptr %97, null
  %115 = icmp ugt i8 %99, 32
  %116 = select i1 %114, i1 true, i1 %115
  br i1 %116, label %250, label %117

117:                                              ; preds = %112
  %118 = zext i8 %99 to i32
  %119 = getelementptr inbounds %struct.element, ptr %97, i32 0, i32 2
  %120 = call i32 @crc32_le(i32 noundef -1, ptr noundef %119, i32 noundef %118) #19
  %121 = xor i32 %120, -1
  %122 = getelementptr %struct.element, ptr %74, i32 3
  %123 = icmp ugt ptr %122, %94
  br i1 %123, label %229, label %124

124:                                              ; preds = %117
  %125 = ptrtoint ptr %94 to i32
  br label %126

126:                                              ; preds = %224, %124
  %127 = phi ptr [ %122, %124 ], [ %227, %224 ]
  %128 = phi i32 [ 0, %124 ], [ %226, %224 ]
  %129 = phi ptr [ %93, %124 ], [ %225, %224 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !annotation !15
  %130 = load i8, ptr %129, align 1
  %131 = getelementptr inbounds %struct.ieee80211_neighbor_ap_info, ptr %129, i32 0, i32 1
  %132 = load i8, ptr %131, align 1
  %133 = getelementptr inbounds %struct.ieee80211_neighbor_ap_info, ptr %129, i32 0, i32 2
  %134 = load i8, ptr %133, align 1
  %135 = call zeroext i1 @ieee80211_operating_class_to_band(i8 noundef zeroext %134, ptr noundef nonnull %3) #17
  br i1 %135, label %136, label %223

136:                                              ; preds = %126
  %137 = lshr i8 %130, 4
  %138 = add nuw nsw i8 %137, 1
  %139 = getelementptr inbounds %struct.ieee80211_neighbor_ap_info, ptr %129, i32 0, i32 3
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i32
  %142 = load i32, ptr %3, align 4
  %143 = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %141, i32 noundef %142) #17
  %144 = udiv i32 %143, 1000
  %145 = ptrtoint ptr %127 to i32
  %146 = sub i32 %125, %145
  %147 = zext i8 %138 to i32
  %148 = zext i8 %132 to i32
  %149 = mul nuw nsw i32 %147, %148
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %223, label %151

151:                                              ; preds = %136
  %152 = load i32, ptr %3, align 4
  %153 = icmp eq i32 %152, 3
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = icmp ne i8 %132, 9
  %156 = icmp ult i8 %132, 13
  %157 = and i1 %155, %156
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = icmp eq i8 %132, 13
  %160 = icmp eq i8 %132, 9
  br label %163

161:                                              ; preds = %154, %151
  %162 = getelementptr i8, ptr %127, i32 %149
  br label %224

163:                                              ; preds = %218, %158
  %164 = phi i8 [ 0, %158 ], [ %221, %218 ]
  %165 = phi i32 [ %128, %158 ], [ %219, %218 ]
  %166 = phi ptr [ %127, %158 ], [ %220, %218 ]
  %167 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %168 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %167, i32 noundef 2848, i32 noundef 96) #20
  %169 = icmp eq ptr %168, null
  br i1 %169, label %224, label %170

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %168, i32 0, i32 5
  store i32 %144, ptr %171, align 8
  %172 = getelementptr i8, ptr %166, i32 1
  %173 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %168, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %173, ptr noundef align 1 dereferenceable(6) %172, i32 6, i1 false) #17
  %174 = getelementptr i8, ptr %166, i32 7
  br i1 %159, label %178, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %168, i32 0, i32 6
  %177 = load i8, ptr %176, align 4
  br label %185

178:                                              ; preds = %170
  %179 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %168, i32 0, i32 4
  %180 = load i32, ptr %174, align 1
  store i32 %180, ptr %179, align 4
  %181 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %168, i32 0, i32 6
  %182 = load i8, ptr %181, align 4
  %183 = or i8 %182, 64
  store i8 %183, ptr %181, align 4
  %184 = getelementptr i8, ptr %166, i32 11
  br label %185

185:                                              ; preds = %178, %175
  %186 = phi i8 [ %183, %178 ], [ %177, %175 ]
  %187 = phi ptr [ %184, %178 ], [ %174, %175 ]
  %188 = load i8, ptr %187, align 1
  %189 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %168, i32 0, i32 6
  %190 = shl i8 %188, 1
  %191 = and i8 %186, -64
  %192 = lshr i8 %188, 5
  %193 = and i8 %192, 1
  %194 = and i8 %190, 32
  %195 = and i8 %190, 30
  %196 = or i8 %193, %191
  %197 = or i8 %196, %195
  %198 = or i8 %197, %194
  store i8 %198, ptr %189, align 4
  %199 = and i8 %188, 64
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %217, label %201

201:                                              ; preds = %185
  %202 = and i8 %188, 2
  %203 = icmp eq i8 %202, 0
  %204 = select i1 %160, i1 %203, i1 false
  %205 = select i1 %204, i1 true, i1 %203
  br i1 %205, label %213, label %206

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %168, i32 0, i32 4
  store i32 %121, ptr %207, align 4
  %208 = or i8 %198, 64
  store i8 %208, ptr %189, align 4
  %209 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %168, i32 0, i32 2
  %210 = load i8, ptr %113, align 1
  %211 = zext i8 %210 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %209, ptr align 1 %119, i32 %211, i1 false) #17
  %212 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %168, i32 0, i32 3
  store i32 %211, ptr %212, align 8
  br label %213

213:                                              ; preds = %206, %201
  %214 = add i32 %165, 1
  %215 = load ptr, ptr %60, align 4
  store ptr %168, ptr %60, align 4
  store ptr %2, ptr %168, align 8
  %216 = getelementptr inbounds %struct.list_head, ptr %168, i32 0, i32 1
  store ptr %215, ptr %216, align 4
  store volatile ptr %168, ptr %215, align 4
  br label %218

217:                                              ; preds = %185
  call void @kfree(ptr noundef nonnull %168) #17
  br label %218

218:                                              ; preds = %217, %213
  %219 = phi i32 [ %165, %217 ], [ %214, %213 ]
  %220 = getelementptr i8, ptr %166, i32 %148
  %221 = add nuw nsw i8 %164, 1
  %222 = icmp ult i8 %164, %137
  br i1 %222, label %163, label %224

223:                                              ; preds = %136, %126
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  br label %229

224:                                              ; preds = %218, %163, %161
  %225 = phi ptr [ %162, %161 ], [ %166, %163 ], [ %220, %218 ]
  %226 = phi i32 [ %128, %161 ], [ %165, %163 ], [ %219, %218 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  %227 = getelementptr i8, ptr %225, i32 4
  %228 = icmp ugt ptr %227, %94
  br i1 %228, label %229, label %126

229:                                              ; preds = %224, %223, %117
  %230 = phi i32 [ %128, %223 ], [ 0, %117 ], [ %226, %224 ]
  %231 = phi ptr [ %127, %223 ], [ %93, %117 ], [ %225, %224 ]
  %232 = icmp eq ptr %231, %94
  br i1 %232, label %243, label %233

233:                                              ; preds = %229
  %234 = load ptr, ptr %2, align 8
  %235 = icmp eq ptr %234, %2
  br i1 %235, label %250, label %236

236:                                              ; preds = %236, %233
  %237 = phi ptr [ %238, %236 ], [ %234, %233 ]
  %238 = load ptr, ptr %237, align 4
  %239 = getelementptr inbounds %struct.list_head, ptr %237, i32 0, i32 1
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr inbounds %struct.list_head, ptr %238, i32 0, i32 1
  store ptr %240, ptr %241, align 4
  store volatile ptr %238, ptr %240, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %237, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %239, align 4
  call void @kfree(ptr noundef %237) #17
  %242 = icmp eq ptr %238, %2
  br i1 %242, label %250, label %236

243:                                              ; preds = %229
  %244 = load volatile ptr, ptr %2, align 8
  %245 = icmp eq ptr %244, %2
  br i1 %245, label %250, label %246

246:                                              ; preds = %243
  %247 = load ptr, ptr %7, align 4
  %248 = load ptr, ptr %60, align 4
  %249 = getelementptr inbounds %struct.list_head, ptr %244, i32 0, i32 1
  store ptr %247, ptr %249, align 4
  store ptr %244, ptr %247, align 4
  store ptr %4, ptr %248, align 4
  store ptr %248, ptr %7, align 4
  br label %250

250:                                              ; preds = %246, %243, %236, %233, %112, %106, %95, %89, %83, %72, %61
  %251 = phi i32 [ 0, %89 ], [ 0, %233 ], [ %230, %243 ], [ %230, %246 ], [ 0, %61 ], [ -22, %112 ], [ 0, %236 ], [ -22, %106 ], [ -22, %95 ], [ 0, %83 ], [ 0, %72 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  %252 = add i32 %251, %63
  %253 = load ptr, ptr %62, align 4
  %254 = icmp eq ptr %253, %56
  br i1 %254, label %255, label %61

255:                                              ; preds = %250, %54
  %256 = phi i32 [ 0, %54 ], [ %252, %250 ]
  call void @_raw_spin_unlock_bh(ptr noundef %55) #17
  br label %257

257:                                              ; preds = %255, %47
  %258 = phi i32 [ %256, %255 ], [ 0, %47 ]
  %259 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %6, i32 0, i32 1
  %260 = mul i32 %258, 20
  %261 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %49, i32 4) #17
  %262 = extractvalue { i32, i1 } %261, 1
  %263 = extractvalue { i32, i1 } %261, 0
  %264 = call i32 @llvm.uadd.sat.i32(i32 %263, i32 120) #17
  %265 = select i1 %262, i32 -1, i32 %264
  %266 = add i32 %260, %265
  %267 = load i32, ptr %259, align 4
  %268 = mul i32 %267, 33
  %269 = add i32 %266, %268
  %270 = call noalias align 64 ptr @__kmalloc(i32 noundef %269, i32 noundef 3520) #18
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %282

272:                                              ; preds = %257
  %273 = load ptr, ptr %4, align 8
  %274 = icmp eq ptr %273, %4
  br i1 %274, label %581, label %275

275:                                              ; preds = %275, %272
  %276 = phi ptr [ %277, %275 ], [ %273, %272 ]
  %277 = load ptr, ptr %276, align 4
  %278 = getelementptr inbounds %struct.list_head, ptr %276, i32 0, i32 1
  %279 = load ptr, ptr %278, align 4
  %280 = getelementptr inbounds %struct.list_head, ptr %277, i32 0, i32 1
  store ptr %279, ptr %280, align 4
  store volatile ptr %277, ptr %279, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %276, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %278, align 4
  call void @kfree(ptr noundef %276) #17
  %281 = icmp eq ptr %277, %4
  br i1 %281, label %581, label %275

282:                                              ; preds = %257
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(120) %270, ptr noundef align 8 dereferenceable(120) %6, i32 120, i1 false)
  %283 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %270, i32 0, i32 2
  store i32 0, ptr %283, align 8
  %284 = getelementptr %struct.cfg80211_scan_request, ptr %270, i32 0, i32 22, i32 %49
  %285 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %270, i32 0, i32 21
  store ptr %284, ptr %285, align 16
  %286 = icmp eq i32 %258, 0
  br i1 %286, label %329, label %287

287:                                              ; preds = %282
  %288 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %270, i32 0, i32 1
  %289 = load i32, ptr %288, align 4
  %290 = icmp eq i32 %289, 1
  br i1 %290, label %291, label %329

291:                                              ; preds = %287
  %292 = load ptr, ptr %270, align 64
  %293 = getelementptr %struct.cfg80211_ssid, ptr %292, i32 0, i32 1
  %294 = load i8, ptr %293, align 1
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %329, label %296

296:                                              ; preds = %291
  %297 = load ptr, ptr %4, align 8
  %298 = icmp eq ptr %297, %4
  br i1 %298, label %329, label %299

299:                                              ; preds = %296
  %300 = zext i8 %294 to i32
  br label %301

301:                                              ; preds = %326, %299
  %302 = phi ptr [ %297, %299 ], [ %327, %326 ]
  %303 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %302, i32 0, i32 6
  %304 = load i8, ptr %303, align 4
  %305 = and i8 %304, 32
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %326, label %307

307:                                              ; preds = %301
  %308 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %302, i32 0, i32 4
  %309 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %302, i32 0, i32 3
  %310 = load i32, ptr %309, align 4
  %311 = icmp ne i32 %310, 0
  %312 = icmp eq i32 %310, %300
  %313 = select i1 %311, i1 %312, i1 false
  br i1 %313, label %314, label %318

314:                                              ; preds = %307
  %315 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %302, i32 0, i32 2
  %316 = call i32 @bcmp(ptr %292, ptr %315, i32 %310) #17
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %329, label %326

318:                                              ; preds = %307
  %319 = and i8 %304, 64
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %326, label %321

321:                                              ; preds = %318
  %322 = call i32 @crc32_le(i32 noundef -1, ptr noundef %292, i32 noundef %300) #19
  %323 = xor i32 %322, -1
  %324 = load i32, ptr %308, align 4
  %325 = icmp eq i32 %324, %323
  br i1 %325, label %329, label %326

326:                                              ; preds = %321, %318, %314, %301
  %327 = load ptr, ptr %302, align 4
  %328 = icmp eq ptr %327, %4
  br i1 %328, label %329, label %301

329:                                              ; preds = %326, %321, %314, %296, %291, %287, %282
  %330 = phi i1 [ true, %291 ], [ true, %287 ], [ true, %282 ], [ true, %296 ], [ false, %321 ], [ false, %314 ], [ true, %326 ]
  %331 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %6, i32 0, i32 2
  %332 = load i32, ptr %331, align 8
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %374, label %334

334:                                              ; preds = %369, %329
  %335 = phi i32 [ %371, %369 ], [ 0, %329 ]
  %336 = phi i8 [ %370, %369 ], [ 0, %329 ]
  %337 = getelementptr %struct.cfg80211_scan_request, ptr %6, i32 0, i32 22, i32 %335
  %338 = load ptr, ptr %337, align 4
  %339 = load i32, ptr %338, align 4
  %340 = icmp eq i32 %339, 3
  br i1 %340, label %341, label %369

341:                                              ; preds = %334
  br i1 %330, label %342, label %349

342:                                              ; preds = %341
  %343 = getelementptr inbounds %struct.ieee80211_channel, ptr %338, i32 0, i32 1
  %344 = load i32, ptr %343, align 4
  %345 = mul i32 %344, 1000
  %346 = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %345) #17
  %347 = and i32 %346, -2147483633
  %348 = icmp eq i32 %347, 5
  br i1 %348, label %353, label %349

349:                                              ; preds = %342, %341
  %350 = load i32, ptr %50, align 4
  %351 = and i32 %350, 16384
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %369

353:                                              ; preds = %349, %342
  %354 = load ptr, ptr %337, align 4
  %355 = load i32, ptr %283, align 8
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %365, label %357

357:                                              ; preds = %362, %353
  %358 = phi i32 [ %363, %362 ], [ 0, %353 ]
  %359 = getelementptr %struct.cfg80211_scan_request, ptr %270, i32 0, i32 22, i32 %358
  %360 = load ptr, ptr %359, align 4
  %361 = icmp eq ptr %360, %354
  br i1 %361, label %369, label %362

362:                                              ; preds = %357
  %363 = add nuw i32 %358, 1
  %364 = icmp eq i32 %363, %355
  br i1 %364, label %365, label %357

365:                                              ; preds = %362, %353
  %366 = getelementptr %struct.cfg80211_scan_request, ptr %270, i32 0, i32 22, i32 %355
  store ptr %354, ptr %366, align 4
  %367 = load i32, ptr %283, align 8
  %368 = add i32 %367, 1
  store i32 %368, ptr %283, align 8
  br label %369

369:                                              ; preds = %365, %357, %349, %334
  %370 = add i8 %336, 1
  %371 = zext i8 %370 to i32
  %372 = load i32, ptr %331, align 8
  %373 = icmp ugt i32 %372, %371
  br i1 %373, label %334, label %374

374:                                              ; preds = %369, %329
  %375 = load i32, ptr %50, align 4
  %376 = and i32 %375, 16384
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %513, label %378

378:                                              ; preds = %374
  %379 = load ptr, ptr %4, align 8
  %380 = icmp eq ptr %379, %4
  br i1 %380, label %513, label %381

381:                                              ; preds = %378
  %382 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %270, i32 0, i32 20
  %383 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %270, i32 0, i32 1
  br label %384

384:                                              ; preds = %510, %381
  %385 = phi ptr [ %379, %381 ], [ %511, %510 ]
  %386 = load ptr, ptr %285, align 16
  %387 = load i32, ptr %382, align 4
  %388 = getelementptr %struct.cfg80211_scan_6ghz_params, ptr %386, i32 %387
  %389 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %385, i32 0, i32 5
  %390 = load i32, ptr %389, align 4
  %391 = mul i32 %390, 1000
  %392 = call ptr @ieee80211_get_channel_khz(ptr noundef %9, i32 noundef %391) #17
  %393 = icmp eq ptr %392, null
  br i1 %393, label %510, label %394

394:                                              ; preds = %384
  %395 = getelementptr inbounds %struct.ieee80211_channel, ptr %392, i32 0, i32 4
  %396 = load i32, ptr %395, align 4
  %397 = and i32 %396, 1
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %510

399:                                              ; preds = %394
  %400 = load i32, ptr %331, align 8
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %510, label %402

402:                                              ; preds = %402, %399
  %403 = phi i32 [ %411, %402 ], [ 0, %399 ]
  %404 = phi i8 [ %410, %402 ], [ 0, %399 ]
  %405 = phi i1 [ %409, %402 ], [ false, %399 ]
  %406 = getelementptr %struct.cfg80211_scan_request, ptr %6, i32 0, i32 22, i32 %403
  %407 = load ptr, ptr %406, align 4
  %408 = icmp eq ptr %407, %392
  %409 = select i1 %408, i1 true, i1 %405
  %410 = add i8 %404, 1
  %411 = zext i8 %410 to i32
  %412 = icmp ugt i32 %400, %411
  br i1 %412, label %402, label %413

413:                                              ; preds = %402
  br i1 %409, label %414, label %510

414:                                              ; preds = %413
  %415 = load i32, ptr %383, align 4
  %416 = icmp sgt i32 %415, 0
  br i1 %416, label %417, label %460

417:                                              ; preds = %414
  %418 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %385, i32 0, i32 2
  %419 = load ptr, ptr %270, align 64
  %420 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %385, i32 0, i32 6
  %421 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %385, i32 0, i32 4
  %422 = getelementptr %struct.cfg80211_ssid, ptr %419, i32 0, i32 1
  %423 = load i8, ptr %422, align 1
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %460, label %425

425:                                              ; preds = %417
  %426 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %385, i32 0, i32 3
  %427 = load i32, ptr %426, align 4
  %428 = icmp ne i32 %427, 0
  br label %434

429:                                              ; preds = %454
  %430 = getelementptr %struct.cfg80211_ssid, ptr %419, i32 %455
  %431 = getelementptr %struct.cfg80211_ssid, ptr %419, i32 %455, i32 1
  %432 = load i8, ptr %431, align 1
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %458, label %434

434:                                              ; preds = %429, %425
  %435 = phi i8 [ %423, %425 ], [ %432, %429 ]
  %436 = phi ptr [ %419, %425 ], [ %430, %429 ]
  %437 = phi i32 [ 0, %425 ], [ %455, %429 ]
  %438 = phi i1 [ true, %425 ], [ %456, %429 ]
  %439 = zext i8 %435 to i32
  %440 = icmp eq i32 %427, %439
  %441 = select i1 %428, i1 %440, i1 false
  br i1 %441, label %442, label %445

442:                                              ; preds = %434
  %443 = call i32 @bcmp(ptr %436, ptr %418, i32 %427) #17
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %458, label %454

445:                                              ; preds = %434
  %446 = load i8, ptr %420, align 4
  %447 = and i8 %446, 64
  %448 = icmp eq i8 %447, 0
  br i1 %448, label %454, label %449

449:                                              ; preds = %445
  %450 = call i32 @crc32_le(i32 noundef -1, ptr noundef %436, i32 noundef %439) #19
  %451 = xor i32 %450, -1
  %452 = load i32, ptr %421, align 4
  %453 = icmp eq i32 %452, %451
  br i1 %453, label %458, label %454

454:                                              ; preds = %449, %445, %442
  %455 = add nuw nsw i32 %437, 1
  %456 = icmp slt i32 %455, %415
  %457 = icmp eq i32 %455, %415
  br i1 %457, label %458, label %429

458:                                              ; preds = %454, %449, %442, %429
  %459 = phi i1 [ %456, %429 ], [ %438, %442 ], [ %438, %449 ], [ %456, %454 ]
  br i1 %459, label %460, label %510

460:                                              ; preds = %458, %417, %414
  %461 = load i32, ptr %283, align 8
  %462 = load ptr, ptr %285, align 16
  %463 = load i32, ptr %382, align 4
  %464 = icmp eq i32 %461, 0
  br i1 %464, label %475, label %465

465:                                              ; preds = %472, %460
  %466 = phi i32 [ %473, %472 ], [ 0, %460 ]
  %467 = getelementptr %struct.cfg80211_scan_request, ptr %270, i32 0, i32 22, i32 %466
  %468 = load ptr, ptr %467, align 4
  %469 = icmp eq ptr %468, %392
  br i1 %469, label %470, label %472

470:                                              ; preds = %465
  %471 = getelementptr %struct.cfg80211_scan_6ghz_params, ptr %462, i32 %463, i32 1
  store i32 %466, ptr %471, align 4
  br label %482

472:                                              ; preds = %465
  %473 = add nuw i32 %466, 1
  %474 = icmp eq i32 %473, %461
  br i1 %474, label %475, label %465

475:                                              ; preds = %472, %460
  %476 = getelementptr %struct.cfg80211_scan_request, ptr %270, i32 0, i32 22, i32 %461
  store ptr %392, ptr %476, align 4
  %477 = load ptr, ptr %285, align 16
  %478 = load i32, ptr %382, align 4
  %479 = getelementptr %struct.cfg80211_scan_6ghz_params, ptr %477, i32 %478, i32 1
  store i32 %461, ptr %479, align 4
  %480 = load i32, ptr %283, align 8
  %481 = add i32 %480, 1
  store i32 %481, ptr %283, align 8
  br label %482

482:                                              ; preds = %475, %470
  %483 = getelementptr %struct.cfg80211_scan_6ghz_params, ptr %386, i32 %387, i32 2
  %484 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %385, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %483, ptr noundef align 4 dereferenceable(6) %484, i32 6, i1 false)
  %485 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %385, i32 0, i32 4
  %486 = load i32, ptr %485, align 4
  store i32 %486, ptr %388, align 4
  %487 = getelementptr inbounds %struct.cfg80211_colocated_ap, ptr %385, i32 0, i32 6
  %488 = load i8, ptr %487, align 4
  %489 = getelementptr %struct.cfg80211_scan_6ghz_params, ptr %386, i32 %387, i32 4
  %490 = lshr i8 %488, 6
  %491 = and i8 %490, 1
  store i8 %491, ptr %489, align 1
  %492 = load i8, ptr %487, align 4
  %493 = and i8 %492, 1
  %494 = getelementptr %struct.cfg80211_scan_6ghz_params, ptr %386, i32 %387, i32 3
  store i8 %493, ptr %494, align 2
  %495 = load i32, ptr %392, align 4
  %496 = icmp eq i32 %495, 3
  br i1 %496, label %497, label %507

497:                                              ; preds = %482
  %498 = getelementptr inbounds %struct.ieee80211_channel, ptr %392, i32 0, i32 1
  %499 = load i32, ptr %498, align 4
  %500 = mul i32 %499, 1000
  %501 = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %500) #17
  %502 = and i32 %501, -2147483633
  %503 = icmp ne i32 %502, 5
  %504 = or i1 %330, %503
  br i1 %504, label %507, label %505

505:                                              ; preds = %497
  %506 = getelementptr %struct.cfg80211_scan_6ghz_params, ptr %386, i32 %387, i32 5
  store i8 1, ptr %506, align 4
  br label %507

507:                                              ; preds = %505, %497, %482
  %508 = load i32, ptr %382, align 4
  %509 = add i32 %508, 1
  store i32 %509, ptr %382, align 4
  br label %510

510:                                              ; preds = %507, %458, %413, %399, %394, %384
  %511 = load ptr, ptr %385, align 4
  %512 = icmp eq ptr %511, %4
  br i1 %512, label %513, label %384

513:                                              ; preds = %510, %378, %374
  %514 = load ptr, ptr %4, align 8
  %515 = icmp eq ptr %514, %4
  br i1 %515, label %523, label %516

516:                                              ; preds = %516, %513
  %517 = phi ptr [ %518, %516 ], [ %514, %513 ]
  %518 = load ptr, ptr %517, align 4
  %519 = getelementptr inbounds %struct.list_head, ptr %517, i32 0, i32 1
  %520 = load ptr, ptr %519, align 4
  %521 = getelementptr inbounds %struct.list_head, ptr %518, i32 0, i32 1
  store ptr %520, ptr %521, align 4
  store volatile ptr %518, ptr %520, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %517, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %519, align 4
  call void @kfree(ptr noundef %517) #17
  %522 = icmp eq ptr %518, %4
  br i1 %522, label %523, label %516

523:                                              ; preds = %516, %513
  %524 = load i32, ptr %283, align 8
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %580, label %526

526:                                              ; preds = %523
  %527 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 23
  %528 = load ptr, ptr %527, align 4
  store ptr %270, ptr %527, align 4
  %529 = load i32, ptr %283, align 8
  %530 = getelementptr %struct.cfg80211_scan_request, ptr %270, i32 0, i32 22, i32 %529
  store ptr %530, ptr %270, align 64
  %531 = load i32, ptr %259, align 4
  %532 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %270, i32 0, i32 1
  store i32 %531, ptr %532, align 4
  %533 = load ptr, ptr %6, align 8
  %534 = mul i32 %531, 33
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %530, ptr align 1 %533, i32 %534, i1 false)
  %535 = icmp eq ptr %528, null
  br i1 %535, label %540, label %536

536:                                              ; preds = %526
  %537 = load ptr, ptr %527, align 4
  %538 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %537, i32 0, i32 16
  %539 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %528, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %538, ptr noundef align 8 dereferenceable(16) %539, i32 16, i1 false)
  br label %540

540:                                              ; preds = %536, %526
  %541 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_scan, i32 0, i32 1), align 4
  %542 = icmp sgt i32 %541, 0
  br i1 %542, label %543, label %556

543:                                              ; preds = %540
  %544 = tail call ptr @llvm.thread.pointer() #17
  %545 = getelementptr inbounds %struct.thread_info, ptr %544, i32 0, i32 2
  %546 = load i32, ptr %545, align 8
  %547 = lshr i32 %546, 5
  %548 = getelementptr i32, ptr @__cpu_online_mask, i32 %547
  %549 = load volatile i32, ptr %548, align 4
  %550 = and i32 %546, 31
  %551 = shl nuw i32 1, %550
  %552 = and i32 %551, %549
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %556, label %554

554:                                              ; preds = %543
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %555 = call i32 @__traceiter_rdev_scan(ptr noundef null, ptr noundef %9, ptr noundef nonnull %270) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  br label %556

556:                                              ; preds = %554, %543, %540
  %557 = load ptr, ptr %0, align 32
  %558 = getelementptr inbounds %struct.cfg80211_ops, ptr %557, i32 0, i32 37
  %559 = load ptr, ptr %558, align 4
  %560 = call i32 %559(ptr noundef %9, ptr noundef nonnull %270) #17
  %561 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %562 = icmp sgt i32 %561, 0
  br i1 %562, label %563, label %576

563:                                              ; preds = %556
  %564 = tail call ptr @llvm.thread.pointer() #17
  %565 = getelementptr inbounds %struct.thread_info, ptr %564, i32 0, i32 2
  %566 = load i32, ptr %565, align 8
  %567 = lshr i32 %566, 5
  %568 = getelementptr i32, ptr @__cpu_online_mask, i32 %567
  %569 = load volatile i32, ptr %568, align 4
  %570 = and i32 %566, 31
  %571 = shl nuw i32 1, %570
  %572 = and i32 %571, %569
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %576, label %574

574:                                              ; preds = %563
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %575 = call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %9, i32 noundef %560) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %576

576:                                              ; preds = %574, %563, %556
  %577 = icmp eq i32 %560, 0
  br i1 %577, label %579, label %578

578:                                              ; preds = %576
  store ptr %528, ptr %527, align 4
  call void @kfree(ptr noundef nonnull %270) #17
  br label %581

579:                                              ; preds = %576
  call void @kfree(ptr noundef %528) #17
  br label %581

580:                                              ; preds = %523
  call void @kfree(ptr noundef nonnull %270) #17
  br label %581

581:                                              ; preds = %580, %579, %578, %275, %272, %43, %41, %31, %30, %21, %1
  %582 = phi i32 [ -22, %580 ], [ -95, %1 ], [ -95, %43 ], [ -95, %41 ], [ 0, %579 ], [ %560, %578 ], [ -12, %272 ], [ -95, %30 ], [ -95, %21 ], [ -12, %275 ], [ -95, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret i32 %582
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @___cfg80211_scan_done(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 24
  %4 = load ptr, ptr %3, align 16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @nl80211_send_scan_msg(ptr noundef %0, ptr noundef nonnull %4) #17
  store ptr null, ptr %3, align 16
  br label %117

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 22
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %117, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %9, i32 0, i32 10
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 23
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr %9, ptr %15
  %18 = getelementptr inbounds %struct.wireless_dev, ptr %13, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 6
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %51, label %30

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.wireless_dev, ptr %13, i32 0, i32 9
  %28 = load i8, ptr %27, align 1, !range !14
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %26, %21
  %31 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 11
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %9, i32 0, i32 19
  %37 = load i8, ptr %36, align 2, !range !14
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %17, i32 0, i32 16, i32 2
  %41 = load i8, ptr %40, align 2, !range !14
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = tail call fastcc i32 @cfg80211_scan_6ghz(ptr noundef %0)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %117, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %18, align 4
  br label %48

48:                                               ; preds = %46, %39, %35, %30
  %49 = phi ptr [ %47, %46 ], [ %19, %39 ], [ %19, %35 ], [ %19, %30 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48, %21
  %52 = phi ptr [ %49, %48 ], [ %19, %21 ]
  tail call void @cfg80211_sme_scan_done(ptr noundef nonnull %52) #17
  br label %53

53:                                               ; preds = %51, %48, %26
  %54 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %17, i32 0, i32 16, i32 2
  %55 = load i8, ptr %54, align 2, !range !14
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %95

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %17, i32 0, i32 8
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %95, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %63) #17
  %64 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %17, i32 0, i32 15
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 18
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %66
  br i1 %68, label %92, label %69

69:                                               ; preds = %84, %62
  %70 = phi ptr [ %72, %84 ], [ %67, %62 ]
  %71 = phi i1 [ %85, %84 ], [ false, %62 ]
  %72 = load ptr, ptr %70, align 8
  %73 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %70, i32 0, i32 6
  %74 = load volatile i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %70, i32 0, i32 4
  %78 = load i32, ptr %77, align 8
  %79 = sub i32 %78, %65
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = tail call fastcc zeroext i1 @__cfg80211_unlink_bss(ptr noundef %0, ptr noundef %70) #17
  %83 = select i1 %82, i1 true, i1 %71
  br label %84

84:                                               ; preds = %81, %76, %69
  %85 = phi i1 [ %71, %69 ], [ %71, %76 ], [ %83, %81 ]
  %86 = icmp eq ptr %72, %66
  br i1 %86, label %87, label %69

87:                                               ; preds = %84
  br i1 %85, label %88, label %92

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 20
  %90 = load i32, ptr %89, align 32
  %91 = add i32 %90, 1
  store i32 %91, ptr %89, align 32
  br label %92

92:                                               ; preds = %88, %87, %62
  tail call void @_raw_spin_unlock_bh(ptr noundef %63) #17
  %93 = load i8, ptr %54, align 2, !range !14
  %94 = icmp ne i8 %93, 0
  br label %95

95:                                               ; preds = %92, %57, %53
  %96 = phi i1 [ %94, %92 ], [ false, %57 ], [ true, %53 ]
  %97 = tail call ptr @nl80211_build_scan_msg(ptr noundef %0, ptr noundef %13, i1 noundef zeroext %96) #17
  %98 = load ptr, ptr %18, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %112, label %100

100:                                              ; preds = %95
  %101 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !16
  %102 = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 99
  %103 = load ptr, ptr %102, align 8
  %104 = ptrtoint ptr %103 to i32
  %105 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %106 = inttoptr i32 %105 to ptr
  %107 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %106) #15, !srcloc !17
  %108 = add i32 %107, %104
  %109 = inttoptr i32 %108 to ptr
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, -1
  store i32 %111, ptr %109, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %101) #17, !srcloc !18
  br label %112

112:                                              ; preds = %100, %95
  %113 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %113) #17
  store ptr null, ptr %14, align 4
  %114 = load ptr, ptr %8, align 8
  tail call void @kfree(ptr noundef %114) #17
  store ptr null, ptr %8, align 8
  br i1 %1, label %116, label %115

115:                                              ; preds = %112
  store ptr %97, ptr %3, align 16
  br label %117

116:                                              ; preds = %112
  tail call void @nl80211_send_scan_msg(ptr noundef %0, ptr noundef %97) #17
  br label %117

117:                                              ; preds = %116, %115, %43, %7, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_scan_msg(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sme_scan_done(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nl80211_build_scan_msg(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__cfg80211_scan_done(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 -168
  %3 = getelementptr i8, ptr %0, i32 376
  tail call void @mutex_lock(ptr noundef %3) #17
  tail call void @___cfg80211_scan_done(ptr noundef %2, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef %3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_scan_done(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [6 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3)
  %4 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %0, i32 0, i32 16
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %0, i32 0, i32 16, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(6) %3, ptr noundef align 8 dereferenceable(6) %6, i32 6, i1 false)
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_scan_done, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = tail call ptr @llvm.thread.pointer() #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !19
  %21 = tail call i32 @__traceiter_cfg80211_scan_done(ptr noundef null, ptr noundef %0, ptr noundef %1) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  br label %22

22:                                               ; preds = %20, %9, %2
  %23 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %0, i32 0, i32 14
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !13

26:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #17, !srcloc !21
  unreachable

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %24, i32 -408
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %24, i32 -404
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %36, label %35, !prof !22

35:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1012, i32 noundef 9, ptr noundef null) #17
  br label %36

36:                                               ; preds = %35, %31, %27
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %4, ptr noundef align 8 dereferenceable(16) %1, i32 16, i1 false)
  %37 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %0, i32 0, i32 19
  %38 = load i8, ptr %37, align 2, !range !14
  %39 = icmp ne i8 %38, 0
  %40 = icmp ne i64 %5, 0
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i64 %5, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %6, ptr noundef nonnull align 8 dereferenceable(6) %3, i32 6, i1 false)
  br label %43

43:                                               ; preds = %42, %36
  %44 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %0, i32 0, i32 17
  store i8 1, ptr %44, align 8
  %45 = load ptr, ptr %23, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48, !prof !13

47:                                               ; preds = %43
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #17, !srcloc !21
  unreachable

48:                                               ; preds = %43
  %49 = load ptr, ptr @cfg80211_wq, align 4
  %50 = getelementptr i8, ptr %45, i32 -376
  %51 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %49, ptr noundef %50) #17
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_add_sched_scan_req(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %1, i32 0, i32 26
  %4 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 4
  store ptr %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %1, i32 0, i32 26, i32 1
  store ptr %4, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !23
  store volatile ptr %3, ptr %4, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %3, ptr %7, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @cfg80211_sched_scan_req_possible(ptr noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %26, label %6

6:                                                ; preds = %14, %2
  %7 = phi ptr [ %16, %14 ], [ %4, %2 ]
  %8 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %7, i32 -116
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %10, %6
  %15 = add i32 %8, 1
  %16 = load ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, %3
  br i1 %17, label %18, label %6

18:                                               ; preds = %14
  %19 = icmp eq i32 %15, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  br i1 %1, label %21, label %27

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 19
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %15, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %18, %2
  br label %27

27:                                               ; preds = %26, %21, %20, %10
  %28 = phi i32 [ 0, %26 ], [ -115, %20 ], [ -28, %21 ], [ -115, %10 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_sched_scan_results_wk(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 -396
  %3 = getelementptr i8, ptr %0, i32 148
  tail call void @mutex_lock(ptr noundef %3) #17
  %4 = getelementptr i8, ptr %0, i32 -248
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %55, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -284
  %9 = getelementptr i8, ptr %0, i32 -280
  %10 = getelementptr i8, ptr %0, i32 -268
  br label %11

11:                                               ; preds = %53, %7
  %12 = phi ptr [ %5, %7 ], [ %14, %53 ]
  %13 = getelementptr i8, ptr %12, i32 -116
  %14 = load ptr, ptr %12, align 4
  %15 = getelementptr i8, ptr %12, i32 -20
  %16 = load i8, ptr %15, align 8, !range !14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %53, label %18

18:                                               ; preds = %11
  store i8 0, ptr %15, align 8
  %19 = getelementptr i8, ptr %12, i32 -84
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %18
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #17
  %24 = getelementptr i8, ptr %12, i32 -24
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %9, align 4
  %27 = icmp eq ptr %26, %9
  br i1 %27, label %50, label %28

28:                                               ; preds = %43, %23
  %29 = phi ptr [ %31, %43 ], [ %26, %23 ]
  %30 = phi i1 [ %44, %43 ], [ false, %23 ]
  %31 = load ptr, ptr %29, align 8
  %32 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %29, i32 0, i32 6
  %33 = load volatile i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %29, i32 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = sub i32 %37, %25
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = tail call fastcc zeroext i1 @__cfg80211_unlink_bss(ptr noundef %2, ptr noundef %29) #17
  %42 = select i1 %41, i1 true, i1 %30
  br label %43

43:                                               ; preds = %40, %35, %28
  %44 = phi i1 [ %30, %28 ], [ %30, %35 ], [ %42, %40 ]
  %45 = icmp eq ptr %31, %9
  br i1 %45, label %46, label %28

46:                                               ; preds = %43
  br i1 %44, label %47, label %50

47:                                               ; preds = %46
  %48 = load i32, ptr %10, align 32
  %49 = add i32 %48, 1
  store i32 %49, ptr %10, align 32
  br label %50

50:                                               ; preds = %47, %46, %23
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #17
  %51 = load volatile i32, ptr @jiffies, align 64
  store i32 %51, ptr %24, align 4
  br label %52

52:                                               ; preds = %50, %18
  tail call void @nl80211_send_sched_scan(ptr noundef %13, i32 noundef 77) #17
  br label %53

53:                                               ; preds = %52, %11
  %54 = icmp eq ptr %14, %4
  br i1 %54, label %55, label %11

55:                                               ; preds = %53, %1
  tail call void @mutex_unlock(ptr noundef %3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_sched_scan(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_sched_scan_results(ptr noundef %0, i64 noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !13

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #17, !srcloc !21
  unreachable

5:                                                ; preds = %2
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_sched_scan_results, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = tail call ptr @llvm.thread.pointer() #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !24
  %20 = tail call i32 @__traceiter_cfg80211_sched_scan_results(ptr noundef null, ptr noundef nonnull %0, i64 noundef %1) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  br label %21

21:                                               ; preds = %19, %8, %5
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !26
  %22 = getelementptr i8, ptr %0, i32 -396
  br label %23

23:                                               ; preds = %27, %21
  %24 = phi ptr [ %22, %21 ], [ %25, %27 ]
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %22
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %25, i32 -116
  %29 = load i64, ptr %28, align 8
  %30 = icmp eq i64 %29, %1
  br i1 %30, label %31, label %23

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %25, i32 -116
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = getelementptr i8, ptr %25, i32 -20
  store i8 1, ptr %35, align 8
  %36 = load ptr, ptr @cfg80211_wq, align 4
  %37 = getelementptr i8, ptr %0, i32 -148
  %38 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %36, ptr noundef %37) #17
  br label %39

39:                                               ; preds = %34, %31, %23
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_sched_scan_stopped_locked(ptr noundef %0, i64 noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !13

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #17, !srcloc !21
  unreachable

5:                                                ; preds = %2
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_sched_scan_stopped, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = tail call ptr @llvm.thread.pointer() #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !28
  %20 = tail call i32 @__traceiter_cfg80211_sched_scan_stopped(ptr noundef null, ptr noundef nonnull %0, i64 noundef %1) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !29
  br label %21

21:                                               ; preds = %19, %8, %5
  %22 = getelementptr i8, ptr %0, i32 -396
  br label %23

23:                                               ; preds = %27, %21
  %24 = phi ptr [ %22, %21 ], [ %25, %27 ]
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %22
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %25, i32 -116
  %29 = load i64, ptr %28, align 8
  %30 = icmp eq i64 %29, %1
  br i1 %30, label %31, label %23

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %25, i32 -116
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  tail call void @nl80211_send_sched_scan(ptr noundef nonnull %32, i32 noundef 78) #17
  %35 = getelementptr i8, ptr %25, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %25, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store volatile ptr %37, ptr %36, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %35, align 4
  %39 = getelementptr i8, ptr %25, i32 -16
  tail call void @kvfree_call_rcu(ptr noundef %39, ptr noundef nonnull inttoptr (i32 100 to ptr)) #17
  br label %40

40:                                               ; preds = %34, %31, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cfg80211_stop_sched_scan(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 25
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %4
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 -116
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, %1
  br i1 %12, label %13, label %5

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %7, i32 -116
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @cfg80211_stop_sched_scan_req(ptr noundef %0, ptr noundef nonnull %14, i1 noundef zeroext %2)
  br label %18

18:                                               ; preds = %16, %13, %5
  %19 = phi i32 [ %17, %16 ], [ -2, %13 ], [ -2, %5 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_sched_scan_stopped(ptr noundef %0, i64 noundef %1) #2 {
  tail call void @mutex_lock(ptr noundef %0) #17
  tail call void @cfg80211_sched_scan_stopped_locked(ptr noundef %0, i64 noundef %1)
  tail call void @mutex_unlock(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_stop_sched_scan_req(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
  br i1 %2, label %46, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %1, i32 0, i32 20
  %6 = load ptr, ptr %5, align 8
  %7 = load i64, ptr %1, align 8
  %8 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_sched_scan_stop, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %4
  %12 = tail call ptr @llvm.thread.pointer() #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %23 = tail call i32 @__traceiter_rdev_sched_scan_stop(ptr noundef null, ptr noundef %8, ptr noundef %6, i64 noundef %7) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  br label %24

24:                                               ; preds = %22, %11, %4
  %25 = load ptr, ptr %0, align 32
  %26 = getelementptr inbounds %struct.cfg80211_ops, ptr %25, i32 0, i32 70
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %8, ptr noundef %6, i64 noundef %7) #17
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = tail call ptr @llvm.thread.pointer() #17
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = lshr i32 %34, 5
  %36 = getelementptr i32, ptr @__cpu_online_mask, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %34, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, %37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %31
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %43 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %8, i32 noundef %28) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %44

44:                                               ; preds = %42, %31, %24
  %45 = icmp eq i32 %28, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %44, %3
  tail call void @nl80211_send_sched_scan(ptr noundef %1, i32 noundef 78) #17
  %47 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %1, i32 0, i32 26
  %48 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %1, i32 0, i32 26, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %47, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store volatile ptr %50, ptr %49, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %48, align 4
  %52 = icmp eq ptr %1, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %1, i32 0, i32 23
  tail call void @kvfree_call_rcu(ptr noundef %54, ptr noundef nonnull inttoptr (i32 100 to ptr)) #17
  br label %55

55:                                               ; preds = %53, %46, %44
  %56 = phi i32 [ %28, %44 ], [ 0, %46 ], [ 0, %53 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_bss_age(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = mul i32 %1, 1000
  %4 = tail call i32 @__msecs_to_jiffies(i32 noundef %3) #17
  %5 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #17
  %6 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %16, label %9

9:                                                ; preds = %9, %2
  %10 = phi ptr [ %14, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = sub i32 %12, %4
  store i32 %13, ptr %11, align 8
  %14 = load ptr, ptr %10, align 4
  %15 = icmp eq ptr %14, %6
  br i1 %15, label %16, label %9

16:                                               ; preds = %9, %2
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_bss_expire(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 18
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %31, label %6

6:                                                ; preds = %1
  %7 = sub i32 3000, %2
  br label %8

8:                                                ; preds = %23, %6
  %9 = phi ptr [ %11, %23 ], [ %4, %6 ]
  %10 = phi i1 [ %24, %23 ], [ false, %6 ]
  %11 = load ptr, ptr %9, align 8
  %12 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %9, i32 0, i32 6
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %9, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %7, %17
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = tail call fastcc zeroext i1 @__cfg80211_unlink_bss(ptr noundef %0, ptr noundef %9) #17
  %22 = select i1 %21, i1 true, i1 %10
  br label %23

23:                                               ; preds = %20, %15, %8
  %24 = phi i1 [ %10, %8 ], [ %10, %15 ], [ %22, %20 ]
  %25 = icmp eq ptr %11, %3
  br i1 %25, label %26, label %8

26:                                               ; preds = %23
  br i1 %24, label %27, label %31

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 20
  %29 = load i32, ptr %28, align 32
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 32
  br label %31

31:                                               ; preds = %27, %26, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_bss_flush(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !13

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #17, !srcloc !21
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -544
  %6 = getelementptr i8, ptr %0, i32 -432
  tail call void @_raw_spin_lock_bh(ptr noundef %6) #17
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = getelementptr i8, ptr %0, i32 -428
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %34, label %11

11:                                               ; preds = %26, %4
  %12 = phi ptr [ %14, %26 ], [ %9, %4 ]
  %13 = phi i1 [ %27, %26 ], [ false, %4 ]
  %14 = load ptr, ptr %12, align 8
  %15 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 6
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = sub i32 %20, %7
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = tail call fastcc zeroext i1 @__cfg80211_unlink_bss(ptr noundef %5, ptr noundef %12) #17
  %25 = select i1 %24, i1 true, i1 %13
  br label %26

26:                                               ; preds = %23, %18, %11
  %27 = phi i1 [ %13, %11 ], [ %13, %18 ], [ %25, %23 ]
  %28 = icmp eq ptr %14, %8
  br i1 %28, label %29, label %11

29:                                               ; preds = %26
  br i1 %27, label %30, label %34

30:                                               ; preds = %29
  %31 = getelementptr i8, ptr %0, i32 -416
  %32 = load i32, ptr %31, align 32
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 32
  br label %34

34:                                               ; preds = %30, %29, %4
  tail call void @_raw_spin_unlock_bh(ptr noundef %6) #17
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) #6 {
  %7 = getelementptr i8, ptr %1, i32 %2
  %8 = ptrtoint ptr %7 to i32
  %9 = icmp sgt i32 %2, 1
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = add i32 %5, %4
  br label %12

12:                                               ; preds = %30, %10
  %13 = phi i32 [ %2, %10 ], [ %34, %30 ]
  %14 = phi ptr [ %1, %10 ], [ %32, %30 ]
  %15 = getelementptr inbounds %struct.element, ptr %14, i32 0, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = add nuw nsw i32 %17, 2
  %19 = icmp ult i32 %13, %18
  br i1 %19, label %36, label %20

20:                                               ; preds = %12
  %21 = load i8, ptr %14, align 1
  %22 = icmp ne i8 %21, %0
  %23 = icmp ugt i32 %11, %17
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.element, ptr %14, i32 0, i32 2
  %27 = getelementptr i8, ptr %26, i32 %5
  %28 = tail call i32 @bcmp(ptr %27, ptr %3, i32 %4)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25, %20
  %31 = getelementptr inbounds %struct.element, ptr %14, i32 0, i32 2
  %32 = getelementptr i8, ptr %31, i32 %17
  %33 = ptrtoint ptr %32 to i32
  %34 = sub i32 %8, %33
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %12, label %36

36:                                               ; preds = %30, %25, %12, %6
  %37 = phi ptr [ null, %6 ], [ null, %12 ], [ null, %30 ], [ %14, %25 ]
  ret ptr %37
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cfg80211_find_vendor_elem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  %6 = lshr i32 %0, 16
  %7 = trunc i32 %6 to i8
  store i8 %7, ptr %5, align 4
  %8 = getelementptr inbounds i8, ptr %5, i32 1
  %9 = lshr i32 %0, 8
  %10 = trunc i32 %9 to i8
  store i8 %10, ptr %8, align 1
  %11 = getelementptr inbounds i8, ptr %5, i32 2
  %12 = trunc i32 %0 to i8
  store i8 %12, ptr %11, align 2
  %13 = getelementptr inbounds i8, ptr %5, i32 3
  %14 = trunc i32 %1 to i8
  store i8 %14, ptr %13, align 1
  %15 = icmp slt i32 %1, 0
  %16 = select i1 %15, i32 3, i32 4
  %17 = icmp sgt i32 %1, 255
  br i1 %17, label %18, label %19, !prof !13

18:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1245, i32 noundef 9, ptr noundef null) #17
  br label %51

19:                                               ; preds = %4
  %20 = getelementptr i8, ptr %2, i32 %3
  %21 = ptrtoint ptr %20 to i32
  %22 = icmp sgt i32 %3, 1
  br i1 %22, label %23, label %51

23:                                               ; preds = %40, %19
  %24 = phi i32 [ %44, %40 ], [ %3, %19 ]
  %25 = phi ptr [ %42, %40 ], [ %2, %19 ]
  %26 = getelementptr inbounds %struct.element, ptr %25, i32 0, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = add nuw nsw i32 %28, 2
  %30 = icmp ult i32 %24, %29
  br i1 %30, label %51, label %31

31:                                               ; preds = %23
  %32 = load i8, ptr %25, align 1
  %33 = icmp ne i8 %32, -35
  %34 = icmp ugt i32 %16, %28
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.element, ptr %25, i32 0, i32 2
  %38 = call i32 @bcmp(ptr noundef dereferenceable(3) %37, ptr noundef nonnull dereferenceable(3) %5, i32 %16) #17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36, %31
  %41 = getelementptr inbounds %struct.element, ptr %25, i32 0, i32 2
  %42 = getelementptr i8, ptr %41, i32 %28
  %43 = ptrtoint ptr %42 to i32
  %44 = sub i32 %21, %43
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %23, label %51

46:                                               ; preds = %36
  %47 = icmp eq ptr %25, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %46
  %49 = icmp ult i8 %27, 4
  %50 = select i1 %49, ptr null, ptr %25
  br label %51

51:                                               ; preds = %48, %46, %40, %23, %19, %18
  %52 = phi ptr [ null, %18 ], [ null, %46 ], [ %50, %48 ], [ null, %19 ], [ null, %23 ], [ null, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret ptr %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cfg80211_get_bss(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #2 {
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %10, !prof !13

9:                                                ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #17, !srcloc !21
  unreachable

10:                                               ; preds = %7
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_get_bss, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = tail call ptr @llvm.thread.pointer() #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !32
  %26 = tail call i32 @__traceiter_cfg80211_get_bss(ptr noundef null, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %27

27:                                               ; preds = %25, %14, %10
  %28 = getelementptr i8, ptr %0, i32 -432
  tail call void @_raw_spin_lock_bh(ptr noundef %28) #17
  %29 = getelementptr i8, ptr %0, i32 -428
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %43, label %32

32:                                               ; preds = %27
  %33 = icmp eq i32 %5, 4
  %34 = icmp ne i32 %6, 0
  %35 = icmp eq i32 %6, 1
  %36 = icmp eq ptr %1, null
  %37 = sub i32 3000, %11
  %38 = icmp eq ptr %2, null
  %39 = getelementptr i8, ptr %2, i32 4
  %40 = icmp eq ptr %3, null
  %41 = icmp ult i32 %5, 3
  %42 = sub i32 3, %5
  br label %44

43:                                               ; preds = %160, %27
  tail call void @_raw_spin_unlock_bh(ptr noundef %28) #17
  br label %181

44:                                               ; preds = %160, %32
  %45 = phi ptr [ %30, %32 ], [ %161, %160 ]
  %46 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %45, i32 0, i32 9
  %47 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %45, i32 0, i32 9, i32 10
  %48 = load i16, ptr %47, align 2
  %49 = load ptr, ptr %46, align 8
  br i1 %33, label %62, label %50

50:                                               ; preds = %44
  %51 = load i32, ptr %49, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br i1 %41, label %57, label %160

54:                                               ; preds = %50
  switch i32 %5, label %160 [
    i32 0, label %57
    i32 2, label %55
    i32 3, label %56
  ]

55:                                               ; preds = %54
  br label %57

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56, %55, %54, %53
  %58 = phi i32 [ 0, %56 ], [ 2, %55 ], [ 1, %54 ], [ %42, %53 ]
  %59 = and i16 %48, 3
  %60 = zext i16 %59 to i32
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %160

62:                                               ; preds = %57, %44
  %63 = and i16 %48, 16
  %64 = icmp ne i16 %63, 0
  %65 = select i1 %34, i1 true, i1 %64
  %66 = select i1 %35, i1 %64, i1 false
  %67 = xor i1 %66, true
  %68 = select i1 %65, i1 %67, i1 false
  %69 = icmp eq ptr %49, %1
  %70 = or i1 %36, %69
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %160

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %45, i32 0, i32 9, i32 11
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %160

77:                                               ; preds = %72
  %78 = getelementptr %struct.cfg80211_internal_bss, ptr %45, i32 0, i32 9, i32 11, i32 4
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = or i32 %74, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %160, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %45, i32 0, i32 4
  %85 = load i32, ptr %84, align 8
  %86 = add i32 %37, %85
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %45, i32 0, i32 6
  %90 = load volatile i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %160, label %92

92:                                               ; preds = %88, %83
  br i1 %38, label %101, label %93

93:                                               ; preds = %92
  %94 = load i32, ptr %2, align 4
  %95 = xor i32 %94, %74
  %96 = load i16, ptr %39, align 2
  %97 = xor i16 %96, %79
  %98 = zext i16 %97 to i32
  %99 = or i32 %95, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %160

101:                                              ; preds = %93, %92
  br i1 %40, label %139, label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %45, i32 0, i32 9, i32 2
  %104 = load volatile ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %160, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %104, i32 0, i32 4
  %108 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %104, i32 0, i32 2
  %109 = load i32, ptr %108, align 8
  %110 = getelementptr i8, ptr %107, i32 %109
  %111 = ptrtoint ptr %110 to i32
  %112 = icmp sgt i32 %109, 1
  br i1 %112, label %113, label %160

113:                                              ; preds = %124, %106
  %114 = phi i32 [ %128, %124 ], [ %109, %106 ]
  %115 = phi ptr [ %126, %124 ], [ %107, %106 ]
  %116 = getelementptr inbounds %struct.element, ptr %115, i32 0, i32 1
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = add nuw nsw i32 %118, 2
  %120 = icmp ult i32 %114, %119
  br i1 %120, label %160, label %121

121:                                              ; preds = %113
  %122 = load i8, ptr %115, align 1
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.element, ptr %115, i32 0, i32 2
  %126 = getelementptr i8, ptr %125, i32 %118
  %127 = ptrtoint ptr %126 to i32
  %128 = sub i32 %111, %127
  %129 = icmp sgt i32 %128, 1
  br i1 %129, label %113, label %160

130:                                              ; preds = %121
  %131 = zext i8 %117 to i32
  %132 = icmp ne ptr %115, null
  %133 = icmp eq i32 %131, %4
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %135, label %160

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.element, ptr %115, i32 0, i32 2
  %137 = tail call i32 @bcmp(ptr %136, ptr nonnull %3, i32 %4) #17
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %160

139:                                              ; preds = %135, %101
  %140 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %45, i32 0, i32 5
  %141 = load i32, ptr %140, align 4
  %142 = add i32 %141, 1
  store i32 %142, ptr %140, align 4
  %143 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %45, i32 0, i32 9, i32 5
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %139
  %147 = getelementptr i8, ptr %144, i32 -72
  %148 = getelementptr i8, ptr %144, i32 -28
  %149 = load i32, ptr %148, align 4
  %150 = add i32 %149, 1
  store i32 %150, ptr %148, align 4
  br label %151

151:                                              ; preds = %146, %139
  %152 = phi ptr [ %147, %146 ], [ %45, %139 ]
  %153 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %152, i32 0, i32 9, i32 6
  %154 = load ptr, ptr %153, align 8
  %155 = icmp eq ptr %154, null
  br i1 %155, label %163, label %156

156:                                              ; preds = %151
  %157 = getelementptr i8, ptr %154, i32 -28
  %158 = load i32, ptr %157, align 4
  %159 = add i32 %158, 1
  store i32 %159, ptr %157, align 4
  br label %163

160:                                              ; preds = %135, %130, %124, %113, %106, %102, %93, %88, %77, %72, %62, %57, %54, %53
  %161 = load ptr, ptr %45, align 4
  %162 = icmp eq ptr %161, %29
  br i1 %162, label %43, label %44

163:                                              ; preds = %156, %151
  tail call void @_raw_spin_unlock_bh(ptr noundef %28) #17
  %164 = icmp eq ptr %45, null
  br i1 %164, label %181, label %165

165:                                              ; preds = %163
  %166 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_return_bss, i32 0, i32 1), align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %165
  %169 = tail call ptr @llvm.thread.pointer() #17
  %170 = getelementptr inbounds %struct.thread_info, ptr %169, i32 0, i32 2
  %171 = load i32, ptr %170, align 8
  %172 = lshr i32 %171, 5
  %173 = getelementptr i32, ptr @__cpu_online_mask, i32 %172
  %174 = load volatile i32, ptr %173, align 4
  %175 = and i32 %171, 31
  %176 = shl nuw i32 1, %175
  %177 = and i32 %176, %174
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %168
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !34
  %180 = tail call i32 @__traceiter_cfg80211_return_bss(ptr noundef null, ptr noundef %46) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !35
  br label %181

181:                                              ; preds = %179, %168, %165, %163, %43
  %182 = phi ptr [ null, %163 ], [ null, %43 ], [ %46, %165 ], [ %46, %168 ], [ %46, %179 ]
  ret ptr %182
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cfg80211_bss_update(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !13

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1693, i32 noundef 9, ptr noundef null) #17
  br label %454

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 4
  store i32 %3, ptr %10, align 8
  %11 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %11) #17
  %12 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 2
  %13 = load volatile ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !13

15:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1700, i32 noundef 9, ptr noundef null) #17
  tail call void @_raw_spin_unlock_bh(ptr noundef %11) #17
  br label %454

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %25, %16
  %21 = phi ptr [ %30, %25 ], [ %18, %16 ]
  %22 = getelementptr i8, ptr %21, i32 56
  %23 = tail call fastcc i32 @cmp_bss(ptr noundef %5, ptr noundef %22, i32 noundef 0) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = icmp slt i32 %23, 0
  %27 = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 2
  %28 = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 1
  %29 = select i1 %26, ptr %27, ptr %28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %20

32:                                               ; preds = %20
  %33 = getelementptr i8, ptr %21, i32 -16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call fastcc zeroext i1 @cfg80211_update_known_bss(ptr noundef nonnull %33, ptr noundef %1, i1 noundef zeroext %2)
  br i1 %36, label %427, label %453

37:                                               ; preds = %32, %25, %16
  %38 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 17
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 136
  %41 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %40, i32 noundef 2848) #18
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 3
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %45, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %48, ptr noundef nonnull inttoptr (i32 8 to ptr)) #17
  br label %49

49:                                               ; preds = %47, %43
  %50 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 4
  %51 = load volatile ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %453, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %51, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %54, ptr noundef nonnull inttoptr (i32 8 to ptr)) #17
  br label %453

55:                                               ; preds = %37
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(136) %41, ptr noundef align 8 dereferenceable(136) %1, i32 136, i1 false)
  %56 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 5
  store i32 1, ptr %56, align 4
  %57 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 1
  store volatile ptr %57, ptr %57, align 8
  %58 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 1, i32 1
  store ptr %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 9, i32 7
  store volatile ptr %59, ptr %59, align 4
  %60 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 9, i32 7, i32 1
  store ptr %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 4
  %62 = load volatile ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %113, label %64

64:                                               ; preds = %55
  %65 = load ptr, ptr %17, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %299, label %67

67:                                               ; preds = %72, %64
  %68 = phi ptr [ %77, %72 ], [ %65, %64 ]
  %69 = getelementptr i8, ptr %68, i32 56
  %70 = tail call fastcc i32 @cmp_bss(ptr noundef %5, ptr noundef %69, i32 noundef 1) #17
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %67
  %73 = icmp slt i32 %70, 0
  %74 = getelementptr inbounds %struct.rb_node, ptr %68, i32 0, i32 2
  %75 = getelementptr inbounds %struct.rb_node, ptr %68, i32 0, i32 1
  %76 = select i1 %73, ptr %74, ptr %75
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %67

79:                                               ; preds = %67
  %80 = getelementptr i8, ptr %68, i32 -16
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %100

82:                                               ; preds = %79, %72
  %83 = load ptr, ptr %17, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %299, label %85

85:                                               ; preds = %90, %82
  %86 = phi ptr [ %95, %90 ], [ %83, %82 ]
  %87 = getelementptr i8, ptr %86, i32 56
  %88 = tail call fastcc i32 @cmp_bss(ptr noundef %5, ptr noundef %87, i32 noundef 2) #17
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %85
  %91 = icmp slt i32 %88, 0
  %92 = getelementptr inbounds %struct.rb_node, ptr %86, i32 0, i32 2
  %93 = getelementptr inbounds %struct.rb_node, ptr %86, i32 0, i32 1
  %94 = select i1 %91, ptr %92, ptr %93
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %299, label %85

97:                                               ; preds = %85
  %98 = getelementptr i8, ptr %86, i32 -16
  %99 = icmp eq ptr %98, null
  br i1 %99, label %299, label %100

100:                                              ; preds = %97, %79
  %101 = phi ptr [ %98, %97 ], [ %80, %79 ]
  %102 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 9, i32 5
  store ptr %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %101, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  store ptr %57, ptr %106, align 4
  store ptr %105, ptr %57, align 8
  store ptr %104, ptr %58, align 4
  store volatile ptr %57, ptr %104, align 4
  %107 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %101, i32 0, i32 5
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %107, align 4
  %110 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %101, i32 0, i32 9, i32 3
  %111 = load ptr, ptr %110, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %112 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 9, i32 3
  store volatile ptr %111, ptr %112, align 4
  br label %299

113:                                              ; preds = %55
  %114 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 9
  %115 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 9, i32 3
  %116 = load volatile ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %272, label %118, !prof !13

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %116, i32 0, i32 4
  %120 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %116, i32 0, i32 2
  %121 = load i32, ptr %120, align 8
  %122 = getelementptr i8, ptr %119, i32 %121
  %123 = ptrtoint ptr %122 to i32
  %124 = icmp sgt i32 %121, 1
  br i1 %124, label %125, label %299

125:                                              ; preds = %136, %118
  %126 = phi i32 [ %140, %136 ], [ %121, %118 ]
  %127 = phi ptr [ %138, %136 ], [ %119, %118 ]
  %128 = getelementptr %struct.element, ptr %127, i32 0, i32 1
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = add nuw nsw i32 %130, 2
  %132 = icmp ult i32 %126, %131
  br i1 %132, label %299, label %133

133:                                              ; preds = %125
  %134 = load i8, ptr %127, align 1
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.element, ptr %127, i32 0, i32 2
  %138 = getelementptr i8, ptr %137, i32 %130
  %139 = ptrtoint ptr %138 to i32
  %140 = sub i32 %123, %139
  %141 = icmp sgt i32 %140, 1
  br i1 %141, label %125, label %299

142:                                              ; preds = %133
  %143 = zext i8 %129 to i32
  %144 = icmp eq ptr %127, null
  br i1 %144, label %299, label %145

145:                                              ; preds = %142
  %146 = icmp eq i8 %129, 0
  br i1 %146, label %158, label %147

147:                                              ; preds = %147, %145
  %148 = phi i32 [ %154, %147 ], [ 0, %145 ]
  %149 = phi i8 [ %153, %147 ], [ 0, %145 ]
  %150 = add nuw nsw i32 %148, 2
  %151 = getelementptr i8, ptr %127, i32 %150
  %152 = load i8, ptr %151, align 1
  %153 = or i8 %152, %149
  %154 = add nuw nsw i32 %148, 1
  %155 = icmp eq i32 %154, %143
  br i1 %155, label %156, label %147

156:                                              ; preds = %147
  %157 = icmp eq i8 %153, 0
  br i1 %157, label %158, label %299

158:                                              ; preds = %156, %145
  %159 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 18
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, %159
  br i1 %161, label %263, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 9, i32 11
  %164 = getelementptr %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 9, i32 11, i32 4
  %165 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 9, i32 1
  br label %166

166:                                              ; preds = %260, %162
  %167 = phi ptr [ %160, %162 ], [ %261, %260 ]
  %168 = phi i32 [ 0, %162 ], [ %169, %260 ]
  %169 = add i32 %168, 1
  %170 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %167, i32 0, i32 9, i32 11
  %171 = load i32, ptr %170, align 4
  %172 = load i32, ptr %163, align 4
  %173 = xor i32 %172, %171
  %174 = getelementptr %struct.cfg80211_internal_bss, ptr %167, i32 0, i32 9, i32 11, i32 4
  %175 = load i16, ptr %174, align 2
  %176 = load i16, ptr %164, align 8
  %177 = xor i16 %176, %175
  %178 = zext i16 %177 to i32
  %179 = or i32 %173, %178
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %260

181:                                              ; preds = %166
  %182 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %167, i32 0, i32 9
  %183 = load ptr, ptr %182, align 8
  %184 = load ptr, ptr %114, align 8
  %185 = icmp eq ptr %183, %184
  br i1 %185, label %186, label %260

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %167, i32 0, i32 9, i32 1
  %188 = load i32, ptr %187, align 4
  %189 = load i32, ptr %165, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %260

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %167, i32 0, i32 9, i32 3
  %193 = load volatile ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %260

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %167, i32 0, i32 9, i32 2
  %197 = load volatile ptr, ptr %196, align 8
  %198 = icmp eq ptr %197, null
  br i1 %198, label %260, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %197, i32 0, i32 4
  %201 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %197, i32 0, i32 2
  %202 = load i32, ptr %201, align 8
  %203 = getelementptr i8, ptr %200, i32 %202
  %204 = ptrtoint ptr %203 to i32
  %205 = icmp sgt i32 %202, 1
  br i1 %205, label %206, label %260

206:                                              ; preds = %217, %199
  %207 = phi i32 [ %221, %217 ], [ %202, %199 ]
  %208 = phi ptr [ %219, %217 ], [ %200, %199 ]
  %209 = getelementptr %struct.element, ptr %208, i32 0, i32 1
  %210 = load i8, ptr %209, align 1
  %211 = zext i8 %210 to i32
  %212 = add nuw nsw i32 %211, 2
  %213 = icmp ult i32 %207, %212
  br i1 %213, label %260, label %214

214:                                              ; preds = %206
  %215 = load i8, ptr %208, align 1
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.element, ptr %208, i32 0, i32 2
  %219 = getelementptr i8, ptr %218, i32 %211
  %220 = ptrtoint ptr %219 to i32
  %221 = sub i32 %204, %220
  %222 = icmp sgt i32 %221, 1
  br i1 %222, label %206, label %260

223:                                              ; preds = %214
  %224 = icmp ne ptr %208, null
  %225 = icmp eq i8 %210, %129
  %226 = select i1 %146, i1 true, i1 %225
  %227 = select i1 %224, i1 %226, i1 false
  br i1 %227, label %228, label %260

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %167, i32 0, i32 9, i32 5
  %230 = load ptr, ptr %229, align 4
  %231 = icmp ne ptr %230, null
  %232 = load i1, ptr @cfg80211_combine_bsses.__already_done, align 1
  %233 = xor i1 %232, true
  %234 = select i1 %231, i1 %233, i1 false
  br i1 %234, label %235, label %236, !prof !13

235:                                              ; preds = %228
  store i1 true, ptr @cfg80211_combine_bsses.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1573, i32 noundef 9, ptr noundef null) #17
  br label %236

236:                                              ; preds = %235, %228
  br i1 %231, label %260, label %237

237:                                              ; preds = %236
  %238 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %167, i32 0, i32 1
  %239 = load volatile ptr, ptr %238, align 4
  %240 = icmp ne ptr %239, %238
  %241 = load i1, ptr @cfg80211_combine_bsses.__already_done.3, align 1
  %242 = xor i1 %241, true
  %243 = select i1 %240, i1 %242, i1 false
  br i1 %243, label %244, label %245, !prof !13

244:                                              ; preds = %237
  store i1 true, ptr @cfg80211_combine_bsses.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1575, i32 noundef 9, ptr noundef null) #17
  br label %245

245:                                              ; preds = %244, %237
  br i1 %240, label %246, label %251

246:                                              ; preds = %245
  %247 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %167, i32 0, i32 1, i32 1
  %248 = load ptr, ptr %247, align 4
  %249 = load ptr, ptr %238, align 4
  %250 = getelementptr inbounds %struct.list_head, ptr %249, i32 0, i32 1
  store ptr %248, ptr %250, align 4
  store volatile ptr %249, ptr %248, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %238, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %247, align 4
  br label %251

251:                                              ; preds = %246, %245
  %252 = load ptr, ptr %57, align 8
  %253 = getelementptr inbounds %struct.list_head, ptr %252, i32 0, i32 1
  store ptr %238, ptr %253, align 4
  store ptr %252, ptr %238, align 4
  %254 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %167, i32 0, i32 1, i32 1
  store ptr %57, ptr %254, align 4
  store volatile ptr %238, ptr %57, align 8
  store ptr %114, ptr %229, align 4
  %255 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %167, i32 0, i32 5
  %256 = load i32, ptr %255, align 4
  %257 = load i32, ptr %56, align 4
  %258 = add i32 %257, %256
  store i32 %258, ptr %56, align 4
  %259 = load ptr, ptr %115, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !37
  store volatile ptr %259, ptr %192, align 4
  br label %260

260:                                              ; preds = %251, %236, %223, %217, %206, %199, %195, %191, %186, %181, %166
  %261 = load ptr, ptr %167, align 4
  %262 = icmp eq ptr %261, %159
  br i1 %262, label %263, label %166

263:                                              ; preds = %260, %158
  %264 = phi i32 [ 0, %158 ], [ %169, %260 ]
  %265 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 21
  %266 = load i32, ptr %265, align 4
  %267 = icmp ne i32 %264, %266
  %268 = load i1, ptr @cfg80211_combine_bsses.__already_done.4, align 1
  %269 = xor i1 %268, true
  %270 = select i1 %267, i1 %269, i1 false
  br i1 %270, label %271, label %299, !prof !13

271:                                              ; preds = %263
  store i1 true, ptr @cfg80211_combine_bsses.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1587, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %266, i32 noundef %264) #17
  br label %299

272:                                              ; preds = %113
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1530, i32 noundef 9, ptr noundef null) #17
  %273 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 9, i32 5
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, null
  br i1 %275, label %283, label %276

276:                                              ; preds = %272
  %277 = getelementptr i8, ptr %274, i32 -28
  %278 = load i32, ptr %277, align 4
  %279 = add i32 %278, -1
  store i32 %279, ptr %277, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %276
  %282 = getelementptr i8, ptr %274, i32 -72
  tail call fastcc void @bss_free(ptr noundef %282) #17
  br label %283

283:                                              ; preds = %281, %276, %272
  %284 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 9, i32 6
  %285 = load ptr, ptr %284, align 32
  %286 = icmp eq ptr %285, null
  br i1 %286, label %294, label %287

287:                                              ; preds = %283
  %288 = getelementptr i8, ptr %285, i32 -28
  %289 = load i32, ptr %288, align 4
  %290 = add i32 %289, -1
  store i32 %290, ptr %288, align 4
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %287
  %293 = getelementptr i8, ptr %285, i32 -72
  tail call fastcc void @bss_free(ptr noundef %293) #17
  br label %294

294:                                              ; preds = %292, %287, %283
  %295 = load i32, ptr %56, align 4
  %296 = add i32 %295, -1
  store i32 %296, ptr %56, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %453

298:                                              ; preds = %294
  tail call fastcc void @bss_free(ptr noundef nonnull %41) #17
  br label %453

299:                                              ; preds = %271, %263, %156, %142, %136, %125, %118, %100, %97, %90, %82, %64
  %300 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 21
  %301 = load i32, ptr %300, align 4
  %302 = load i32, ptr @bss_entries_limit, align 4
  %303 = icmp ult i32 %301, %302
  br i1 %303, label %368, label %304

304:                                              ; preds = %299
  %305 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 18
  %306 = load ptr, ptr %305, align 4
  %307 = icmp eq ptr %306, %305
  br i1 %307, label %340, label %308

308:                                              ; preds = %332, %304
  %309 = phi ptr [ %334, %332 ], [ %306, %304 ]
  %310 = phi ptr [ %333, %332 ], [ null, %304 ]
  %311 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %309, i32 0, i32 6
  %312 = load volatile i32, ptr %311, align 4
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %332

314:                                              ; preds = %308
  %315 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %309, i32 0, i32 1
  %316 = load volatile ptr, ptr %315, align 4
  %317 = icmp eq ptr %316, %315
  br i1 %317, label %322, label %318

318:                                              ; preds = %314
  %319 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %309, i32 0, i32 9, i32 5
  %320 = load ptr, ptr %319, align 4
  %321 = icmp eq ptr %320, null
  br i1 %321, label %332, label %322

322:                                              ; preds = %318, %314
  %323 = icmp eq ptr %310, null
  br i1 %323, label %331, label %324

324:                                              ; preds = %322
  %325 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %310, i32 0, i32 4
  %326 = load i32, ptr %325, align 8
  %327 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %309, i32 0, i32 4
  %328 = load i32, ptr %327, align 8
  %329 = sub i32 %326, %328
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %332, label %331

331:                                              ; preds = %324, %322
  br label %332

332:                                              ; preds = %331, %324, %318, %308
  %333 = phi ptr [ %310, %308 ], [ %310, %324 ], [ %309, %331 ], [ %310, %318 ]
  %334 = load ptr, ptr %309, align 4
  %335 = icmp eq ptr %334, %305
  br i1 %335, label %336, label %308

336:                                              ; preds = %332
  %337 = icmp eq ptr %333, null
  br i1 %337, label %340, label %338, !prof !13

338:                                              ; preds = %336
  %339 = tail call fastcc zeroext i1 @__cfg80211_unlink_bss(ptr noundef %0, ptr noundef nonnull %333) #17
  br i1 %339, label %368, label %340, !prof !22

340:                                              ; preds = %338, %336, %304
  %341 = phi i32 [ 477, %304 ], [ 477, %336 ], [ 487, %338 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %341, i32 noundef 9, ptr noundef null) #17
  %342 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 9, i32 5
  %343 = load ptr, ptr %342, align 4
  %344 = icmp eq ptr %343, null
  br i1 %344, label %352, label %345

345:                                              ; preds = %340
  %346 = getelementptr i8, ptr %343, i32 -28
  %347 = load i32, ptr %346, align 4
  %348 = add i32 %347, -1
  store i32 %348, ptr %346, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %345
  %351 = getelementptr i8, ptr %343, i32 -72
  tail call fastcc void @bss_free(ptr noundef %351) #17
  br label %352

352:                                              ; preds = %350, %345, %340
  %353 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 9, i32 6
  %354 = load ptr, ptr %353, align 32
  %355 = icmp eq ptr %354, null
  br i1 %355, label %363, label %356

356:                                              ; preds = %352
  %357 = getelementptr i8, ptr %354, i32 -28
  %358 = load i32, ptr %357, align 4
  %359 = add i32 %358, -1
  store i32 %359, ptr %357, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %356
  %362 = getelementptr i8, ptr %354, i32 -72
  tail call fastcc void @bss_free(ptr noundef %362) #17
  br label %363

363:                                              ; preds = %361, %356, %352
  %364 = load i32, ptr %56, align 4
  %365 = add i32 %364, -1
  store i32 %365, ptr %56, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %453

367:                                              ; preds = %363
  tail call fastcc void @bss_free(ptr noundef nonnull %41) #17
  br label %453

368:                                              ; preds = %338, %299
  %369 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 6
  %370 = load ptr, ptr %369, align 8
  %371 = icmp eq ptr %370, null
  br i1 %371, label %393, label %372

372:                                              ; preds = %368
  %373 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 9, i32 6
  store ptr %370, ptr %373, align 32
  %374 = getelementptr i8, ptr %370, i32 -28
  %375 = load i32, ptr %374, align 4
  %376 = add i32 %375, 1
  store i32 %376, ptr %374, align 4
  %377 = getelementptr i8, ptr %370, i32 20
  %378 = load ptr, ptr %377, align 4
  %379 = icmp eq ptr %378, null
  br i1 %379, label %384, label %380

380:                                              ; preds = %372
  %381 = getelementptr i8, ptr %378, i32 -28
  %382 = load i32, ptr %381, align 4
  %383 = add i32 %382, 1
  store i32 %383, ptr %381, align 4
  br label %384

384:                                              ; preds = %380, %372
  %385 = phi ptr [ %378, %380 ], [ %370, %372 ]
  %386 = getelementptr i8, ptr %385, i32 24
  %387 = load ptr, ptr %386, align 8
  %388 = icmp eq ptr %387, null
  br i1 %388, label %393, label %389

389:                                              ; preds = %384
  %390 = getelementptr i8, ptr %387, i32 -28
  %391 = load i32, ptr %390, align 4
  %392 = add i32 %391, 1
  store i32 %392, ptr %390, align 4
  br label %393

393:                                              ; preds = %389, %384, %368
  %394 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 18
  %395 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 18, i32 1
  %396 = load ptr, ptr %395, align 4
  store ptr %41, ptr %395, align 4
  store ptr %394, ptr %41, align 64
  %397 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %396, ptr %397, align 4
  store volatile ptr %41, ptr %396, align 4
  %398 = load i32, ptr %300, align 4
  %399 = add i32 %398, 1
  store i32 %399, ptr %300, align 4
  %400 = load ptr, ptr %17, align 4
  %401 = icmp eq ptr %400, null
  br i1 %401, label %421, label %402

402:                                              ; preds = %393
  %403 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 9
  br label %404

404:                                              ; preds = %411, %402
  %405 = phi ptr [ %400, %402 ], [ %417, %411 ]
  %406 = phi ptr [ %17, %402 ], [ %416, %411 ]
  %407 = getelementptr i8, ptr %405, i32 56
  %408 = tail call fastcc i32 @cmp_bss(ptr noundef %403, ptr noundef %407, i32 noundef 0) #17
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %411, !prof !13

410:                                              ; preds = %404
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1480, i32 noundef 9, ptr noundef null) #17
  br label %427

411:                                              ; preds = %404
  %412 = icmp slt i32 %408, 0
  %413 = load ptr, ptr %406, align 4
  %414 = getelementptr inbounds %struct.rb_node, ptr %413, i32 0, i32 2
  %415 = getelementptr inbounds %struct.rb_node, ptr %413, i32 0, i32 1
  %416 = select i1 %412, ptr %414, ptr %415
  %417 = load ptr, ptr %416, align 4
  %418 = icmp eq ptr %417, null
  br i1 %418, label %419, label %404

419:                                              ; preds = %411
  %420 = ptrtoint ptr %405 to i32
  br label %421

421:                                              ; preds = %419, %393
  %422 = phi i32 [ %420, %419 ], [ 0, %393 ]
  %423 = phi ptr [ %416, %419 ], [ %17, %393 ]
  %424 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 2
  store i32 %422, ptr %424, align 16
  %425 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 2, i32 1
  store ptr null, ptr %425, align 4
  %426 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %41, i32 0, i32 2, i32 2
  store ptr null, ptr %426, align 8
  store ptr %424, ptr %423, align 4
  tail call void @rb_insert_color(ptr noundef %424, ptr noundef %17) #17
  br label %427

427:                                              ; preds = %421, %410, %35
  %428 = phi ptr [ %33, %35 ], [ %41, %410 ], [ %41, %421 ]
  %429 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 20
  %430 = load i32, ptr %429, align 32
  %431 = add i32 %430, 1
  store i32 %431, ptr %429, align 32
  %432 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %428, i32 0, i32 5
  %433 = load i32, ptr %432, align 4
  %434 = add i32 %433, 1
  store i32 %434, ptr %432, align 4
  %435 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %428, i32 0, i32 9, i32 5
  %436 = load ptr, ptr %435, align 4
  %437 = icmp eq ptr %436, null
  br i1 %437, label %443, label %438

438:                                              ; preds = %427
  %439 = getelementptr i8, ptr %436, i32 -72
  %440 = getelementptr i8, ptr %436, i32 -28
  %441 = load i32, ptr %440, align 4
  %442 = add i32 %441, 1
  store i32 %442, ptr %440, align 4
  br label %443

443:                                              ; preds = %438, %427
  %444 = phi ptr [ %439, %438 ], [ %428, %427 ]
  %445 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %444, i32 0, i32 9, i32 6
  %446 = load ptr, ptr %445, align 8
  %447 = icmp eq ptr %446, null
  br i1 %447, label %452, label %448

448:                                              ; preds = %443
  %449 = getelementptr i8, ptr %446, i32 -28
  %450 = load i32, ptr %449, align 4
  %451 = add i32 %450, 1
  store i32 %451, ptr %449, align 4
  br label %452

452:                                              ; preds = %448, %443
  tail call void @_raw_spin_unlock_bh(ptr noundef %11) #17
  br label %454

453:                                              ; preds = %367, %363, %298, %294, %53, %49, %35
  tail call void @_raw_spin_unlock_bh(ptr noundef %11) #17
  br label %454

454:                                              ; preds = %453, %452, %15, %8
  %455 = phi ptr [ null, %8 ], [ null, %15 ], [ %428, %452 ], [ null, %453 ]
  ret ptr %455
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cfg80211_update_known_bss(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 4
  %5 = load volatile ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 9, i32 4
  %9 = load volatile ptr, ptr %8, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !38
  store volatile ptr %5, ptr %8, align 8
  %10 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !39
  %11 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 9, i32 2
  store volatile ptr %10, ptr %11, align 8
  %12 = icmp eq ptr %9, null
  br i1 %12, label %57, label %54

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 3
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %57, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 9, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 1
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load volatile ptr, ptr %14, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %96, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %26, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %29, ptr noundef nonnull inttoptr (i32 8 to ptr)) #17
  br label %96

30:                                               ; preds = %21, %17
  %31 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 9, i32 3
  %32 = load volatile ptr, ptr %31, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !40
  store volatile ptr %15, ptr %31, align 4
  %33 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 9, i32 2
  %34 = load volatile ptr, ptr %33, align 8
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !41
  store volatile ptr %37, ptr %33, align 8
  br label %38

38:                                               ; preds = %36, %30
  %39 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %52, label %42

42:                                               ; preds = %48, %38
  %43 = phi ptr [ %50, %48 ], [ %40, %38 ]
  %44 = getelementptr i8, ptr %43, i32 76
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %32
  br i1 %46, label %48, label %47, !prof !22

47:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1654, i32 noundef 9, ptr noundef null) #17
  br label %48

48:                                               ; preds = %47, %42
  %49 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !42
  store volatile ptr %49, ptr %44, align 4
  %50 = load ptr, ptr %43, align 8
  %51 = icmp eq ptr %50, %39
  br i1 %51, label %52, label %42

52:                                               ; preds = %48, %38
  %53 = icmp eq ptr %32, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %52, %7
  %55 = phi ptr [ %9, %7 ], [ %32, %52 ]
  %56 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %55, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %56, ptr noundef nonnull inttoptr (i32 8 to ptr)) #17
  br label %57

57:                                               ; preds = %54, %52, %13, %7
  %58 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 9
  %59 = load i16, ptr %58, align 8
  %60 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 9, i32 9
  store i16 %59, ptr %60, align 8
  br i1 %2, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 8
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 9, i32 8
  store i32 %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 10
  %67 = load i16, ptr %66, align 2
  %68 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 9, i32 10
  store i16 %67, ptr %68, align 2
  %69 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 4
  %70 = load i32, ptr %69, align 8
  %71 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 4
  store i32 %70, ptr %71, align 8
  %72 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 3
  %73 = load i64, ptr %72, align 8
  %74 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 3
  store i64 %73, ptr %74, align 8
  %75 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 7
  %76 = load i64, ptr %75, align 8
  %77 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 7
  store i64 %76, ptr %77, align 8
  %78 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 12
  %79 = load i8, ptr %78, align 2
  %80 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 9, i32 12
  store i8 %79, ptr %80, align 2
  %81 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 9, i32 13
  %82 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 13
  %83 = load i32, ptr %82, align 1
  store i32 %83, ptr %81, align 1
  %84 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 8
  %85 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 8
  %86 = load i32, ptr %85, align 4
  store i32 %86, ptr %84, align 4
  %87 = getelementptr %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 8, i32 4
  %88 = load i16, ptr %87, align 2
  %89 = getelementptr %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 8, i32 4
  store i16 %88, ptr %89, align 2
  %90 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 15
  %91 = load i8, ptr %90, align 8
  %92 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 9, i32 15
  store i8 %91, ptr %92, align 8
  %93 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 14
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 9, i32 14
  store i8 %94, ptr %95, align 1
  br label %96

96:                                               ; preds = %65, %28, %25
  %97 = phi i1 [ true, %65 ], [ false, %25 ], [ false, %28 ]
  ret i1 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @cfg80211_get_ies_channel_number(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  switch i32 %2, label %95 [
    i32 3, label %5
    i32 4, label %68
  ]

5:                                                ; preds = %4
  %6 = getelementptr i8, ptr %0, i32 %1
  %7 = ptrtoint ptr %6 to i32
  %8 = icmp sgt i32 %1, 1
  br i1 %8, label %9, label %150

9:                                                ; preds = %26, %5
  %10 = phi i32 [ %30, %26 ], [ %1, %5 ]
  %11 = phi ptr [ %28, %26 ], [ %0, %5 ]
  %12 = getelementptr inbounds %struct.element, ptr %11, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = add nuw nsw i32 %14, 2
  %16 = icmp ult i32 %10, %15
  br i1 %16, label %150, label %17

17:                                               ; preds = %9
  %18 = load i8, ptr %11, align 1
  %19 = icmp ne i8 %18, -1
  %20 = icmp eq i8 %13, 0
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.element, ptr %11, i32 0, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 36
  br i1 %25, label %32, label %26

26:                                               ; preds = %22, %17
  %27 = getelementptr inbounds %struct.element, ptr %11, i32 0, i32 2
  %28 = getelementptr i8, ptr %27, i32 %14
  %29 = ptrtoint ptr %28 to i32
  %30 = sub i32 %7, %29
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %9, label %150

32:                                               ; preds = %22
  %33 = icmp ne ptr %11, null
  %34 = icmp ugt i8 %13, 5
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %150

36:                                               ; preds = %32
  %37 = getelementptr %struct.element, ptr %11, i32 1, i32 1
  %38 = icmp eq ptr %37, null
  br i1 %38, label %150, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %37, align 1
  %41 = and i32 %40, 16384
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i8 6, i8 9
  %44 = lshr i32 %40, 15
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 1
  %47 = add nuw nsw i8 %43, %46
  %48 = and i32 %40, 131072
  %49 = icmp eq i32 %48, 0
  %50 = add nuw nsw i8 %47, 5
  %51 = select i1 %49, i8 %47, i8 %50
  %52 = icmp ule i8 %13, %51
  %53 = or i1 %52, %49
  br i1 %53, label %150, label %54

54:                                               ; preds = %39
  %55 = getelementptr %struct.element, ptr %11, i32 4, i32 1
  %56 = select i1 %42, i32 0, i32 3
  %57 = getelementptr i8, ptr %55, i32 %56
  %58 = and i32 %44, 1
  %59 = getelementptr i8, ptr %57, i32 %58
  %60 = icmp eq ptr %59, null
  br i1 %60, label %150, label %61

61:                                               ; preds = %54
  %62 = icmp eq i32 %3, 1
  br i1 %62, label %63, label %146

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.ieee80211_he_6ghz_oper, ptr %59, i32 0, i32 1
  %65 = load i8, ptr %64, align 1
  %66 = and i8 %65, 4
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %150, label %146

68:                                               ; preds = %4
  %69 = getelementptr i8, ptr %0, i32 %1
  %70 = ptrtoint ptr %69 to i32
  %71 = icmp sgt i32 %1, 1
  br i1 %71, label %72, label %150

72:                                               ; preds = %83, %68
  %73 = phi i32 [ %87, %83 ], [ %1, %68 ]
  %74 = phi ptr [ %85, %83 ], [ %0, %68 ]
  %75 = getelementptr inbounds %struct.element, ptr %74, i32 0, i32 1
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add nuw nsw i32 %77, 2
  %79 = icmp ult i32 %73, %78
  br i1 %79, label %150, label %80

80:                                               ; preds = %72
  %81 = load i8, ptr %74, align 1
  %82 = icmp eq i8 %81, -24
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.element, ptr %74, i32 0, i32 2
  %85 = getelementptr i8, ptr %84, i32 %77
  %86 = ptrtoint ptr %85 to i32
  %87 = sub i32 %70, %86
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %72, label %150

89:                                               ; preds = %80
  %90 = icmp ne ptr %74, null
  %91 = icmp ugt i8 %76, 5
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %93, label %150

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.element, ptr %74, i32 2
  br label %146

95:                                               ; preds = %4
  %96 = getelementptr i8, ptr %0, i32 %1
  %97 = ptrtoint ptr %96 to i32
  %98 = icmp sgt i32 %1, 1
  br i1 %98, label %99, label %150

99:                                               ; preds = %110, %95
  %100 = phi i32 [ %114, %110 ], [ %1, %95 ]
  %101 = phi ptr [ %112, %110 ], [ %0, %95 ]
  %102 = getelementptr inbounds %struct.element, ptr %101, i32 0, i32 1
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = add nuw nsw i32 %104, 2
  %106 = icmp ult i32 %100, %105
  br i1 %106, label %120, label %107

107:                                              ; preds = %99
  %108 = load i8, ptr %101, align 1
  %109 = icmp eq i8 %108, 3
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.element, ptr %101, i32 0, i32 2
  %112 = getelementptr i8, ptr %111, i32 %104
  %113 = ptrtoint ptr %112 to i32
  %114 = sub i32 %97, %113
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %99, label %120

116:                                              ; preds = %107
  %117 = icmp ne ptr %101, null
  %118 = icmp eq i8 %103, 1
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %121, label %120

120:                                              ; preds = %116, %110, %99
  br label %123

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.element, ptr %101, i32 0, i32 2
  br label %146

123:                                              ; preds = %134, %120
  %124 = phi i32 [ %138, %134 ], [ %1, %120 ]
  %125 = phi ptr [ %136, %134 ], [ %0, %120 ]
  %126 = getelementptr inbounds %struct.element, ptr %125, i32 0, i32 1
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  %129 = add nuw nsw i32 %128, 2
  %130 = icmp ult i32 %124, %129
  br i1 %130, label %150, label %131

131:                                              ; preds = %123
  %132 = load i8, ptr %125, align 1
  %133 = icmp eq i8 %132, 61
  br i1 %133, label %140, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.element, ptr %125, i32 0, i32 2
  %136 = getelementptr i8, ptr %135, i32 %128
  %137 = ptrtoint ptr %136 to i32
  %138 = sub i32 %97, %137
  %139 = icmp sgt i32 %138, 1
  br i1 %139, label %123, label %150

140:                                              ; preds = %131
  %141 = icmp ne ptr %125, null
  %142 = icmp ugt i8 %127, 21
  %143 = select i1 %141, i1 %142, i1 false
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.element, ptr %125, i32 0, i32 2
  br label %146

146:                                              ; preds = %144, %121, %93, %63, %61
  %147 = phi ptr [ %145, %144 ], [ %122, %121 ], [ %94, %93 ], [ %59, %63 ], [ %59, %61 ]
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i32
  br label %150

150:                                              ; preds = %146, %140, %134, %123, %95, %89, %83, %72, %68, %63, %54, %39, %36, %32, %26, %9, %5
  %151 = phi i32 [ -1, %54 ], [ -1, %89 ], [ -1, %140 ], [ -1, %36 ], [ -1, %63 ], [ -1, %39 ], [ -1, %32 ], [ -1, %5 ], [ -1, %68 ], [ -1, %95 ], [ %149, %146 ], [ -1, %134 ], [ -1, %123 ], [ -1, %26 ], [ -1, %9 ], [ -1, %83 ], [ -1, %72 ]
  ret i32 %151
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_merge_profile(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5) #8 {
  %7 = getelementptr inbounds %struct.element, ptr %3, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp ugt i32 %9, %5
  br i1 %10, label %93, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.element, ptr %3, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %4, ptr align 1 %12, i32 %9, i1 false)
  %13 = getelementptr inbounds %struct.element, ptr %2, i32 0, i32 2
  %14 = getelementptr inbounds %struct.element, ptr %2, i32 0, i32 1
  %15 = ptrtoint ptr %0 to i32
  %16 = load i8, ptr %14, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %13, i32 %17
  %19 = ptrtoint ptr %18 to i32
  %20 = sub i32 %15, %19
  %21 = add i32 %20, %1
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %93

23:                                               ; preds = %11
  %24 = getelementptr i8, ptr %18, i32 %21
  br label %25

25:                                               ; preds = %80, %23
  %26 = phi ptr [ %91, %80 ], [ %24, %23 ]
  %27 = phi i32 [ %90, %80 ], [ %21, %23 ]
  %28 = phi ptr [ %87, %80 ], [ %18, %23 ]
  %29 = phi i32 [ %84, %80 ], [ %9, %23 ]
  %30 = ptrtoint ptr %26 to i32
  br label %31

31:                                               ; preds = %42, %25
  %32 = phi i32 [ %46, %42 ], [ %27, %25 ]
  %33 = phi ptr [ %44, %42 ], [ %28, %25 ]
  %34 = getelementptr inbounds %struct.element, ptr %33, i32 0, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add nuw nsw i32 %36, 2
  %38 = icmp ult i32 %32, %37
  br i1 %38, label %93, label %39

39:                                               ; preds = %31
  %40 = load i8, ptr %33, align 1
  %41 = icmp eq i8 %40, 71
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.element, ptr %33, i32 0, i32 2
  %44 = getelementptr i8, ptr %43, i32 %36
  %45 = ptrtoint ptr %44 to i32
  %46 = sub i32 %30, %45
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %31, label %93

48:                                               ; preds = %39
  %49 = load i8, ptr %7, align 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr i8, ptr %12, i32 %50
  %52 = getelementptr i8, ptr %28, i32 -1
  %53 = icmp ult ptr %51, %52
  %54 = icmp eq ptr %33, null
  %55 = select i1 %53, i1 true, i1 %54
  %56 = icmp ult i8 %35, 4
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %93, label %58

58:                                               ; preds = %48
  %59 = zext i8 %35 to i32
  %60 = getelementptr inbounds %struct.element, ptr %33, i32 0, i32 2
  %61 = getelementptr i8, ptr %60, i32 %59
  %62 = getelementptr %struct.element, ptr %33, i32 2, i32 1
  %63 = getelementptr %struct.element, ptr %33, i32 2
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = getelementptr i8, ptr %62, i32 %65
  %67 = icmp ult ptr %61, %66
  br i1 %67, label %93, label %68

68:                                               ; preds = %58
  %69 = getelementptr %struct.element, ptr %33, i32 1, i32 1
  %70 = load i8, ptr %69, align 1
  %71 = icmp ne i8 %70, 0
  %72 = icmp ult i8 %64, 2
  %73 = select i1 %71, i1 true, i1 %72
  br i1 %73, label %93, label %74

74:                                               ; preds = %68
  %75 = load i8, ptr %62, align 1
  %76 = icmp eq i8 %75, 83
  %77 = add i32 %29, %65
  %78 = icmp ugt i32 %77, %5
  %79 = select i1 %76, i1 true, i1 %78
  br i1 %79, label %93, label %80

80:                                               ; preds = %74
  %81 = getelementptr i8, ptr %4, i32 %29
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %81, ptr align 1 %62, i32 %65, i1 false)
  %82 = load i8, ptr %63, align 1
  %83 = zext i8 %82 to i32
  %84 = add i32 %29, %83
  %85 = load i8, ptr %14, align 1
  %86 = zext i8 %85 to i32
  %87 = getelementptr i8, ptr %13, i32 %86
  %88 = ptrtoint ptr %87 to i32
  %89 = sub i32 %15, %88
  %90 = add i32 %89, %1
  %91 = getelementptr i8, ptr %87, i32 %90
  %92 = icmp sgt i32 %90, 1
  br i1 %92, label %25, label %93

93:                                               ; preds = %80, %74, %68, %58, %48, %42, %31, %11, %6
  %94 = phi i32 [ 0, %6 ], [ %9, %11 ], [ %29, %42 ], [ %29, %31 ], [ %29, %48 ], [ %29, %58 ], [ %29, %68 ], [ %84, %80 ], [ %29, %74 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cfg80211_inform_bss_data(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4, i16 noundef zeroext %5, i16 noundef zeroext %6, ptr noundef %7, i32 noundef %8, i32 noundef %9) #2 {
  %11 = alloca %struct.cfg80211_non_tx_bss, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #17
  store i64 0, ptr %11, align 8, !annotation !15
  %12 = tail call fastcc ptr @cfg80211_inform_single_bss_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i16 noundef zeroext %5, i16 noundef zeroext %6, ptr noundef %7, i32 noundef %8, ptr noundef null, i32 noundef %9)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store ptr %12, ptr %11, align 8
  call fastcc void @cfg80211_parse_mbssid_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i16 noundef zeroext %6, ptr noundef %7, i32 noundef %8, ptr noundef nonnull %11, i32 noundef %9)
  br label %15

15:                                               ; preds = %14, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #17
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @cfg80211_inform_single_bss_data(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4, i16 noundef zeroext %5, i16 noundef zeroext %6, ptr noundef %7, i32 noundef %8, ptr noundef readonly %9, i32 noundef %10) unnamed_addr #2 {
  %12 = alloca %struct.cfg80211_internal_bss, align 8
  %13 = icmp eq ptr %0, null
  br i1 %13, label %14, label %15, !prof !13

14:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #17, !srcloc !21
  unreachable

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %0, i32 -544
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %12) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %12, i8 0, i32 136, i1 false)
  %17 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 16
  %18 = load i32, ptr %17, align 16
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %1, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = icmp ugt i32 %22, 100
  br i1 %23, label %24, label %25, !prof !13

24:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1939, i32 noundef 9, ptr noundef null) #17
  br label %231

25:                                               ; preds = %20, %15
  %26 = load ptr, ptr %1, align 8
  %27 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %1, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %26, align 4
  %30 = tail call i32 @cfg80211_get_ies_channel_number(ptr noundef %7, i32 noundef %8, i32 noundef %29, i32 noundef %2) #17
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %60, label %32

32:                                               ; preds = %25
  %33 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %30, i32 noundef %29) #17
  %34 = load i32, ptr %26, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ieee80211_channel, ptr %26, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %33, %38
  br i1 %39, label %60, label %40

40:                                               ; preds = %36
  %41 = sub i32 %33, %38
  %42 = tail call i32 @llvm.abs.i32(i32 %41, i1 false) #17
  %43 = icmp sgt i32 %42, 80
  br i1 %43, label %60, label %44

44:                                               ; preds = %40, %32
  %45 = tail call ptr @ieee80211_get_channel_khz(ptr noundef nonnull %0, i32 noundef %33) #17
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, ptr %26, align 4
  %49 = icmp eq i32 %48, 0
  %50 = icmp eq ptr %26, null
  %51 = or i1 %50, %49
  br i1 %51, label %231, label %62

52:                                               ; preds = %44
  %53 = add i32 %28, -1
  %54 = icmp ult i32 %53, 2
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.ieee80211_channel, ptr %45, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %231

60:                                               ; preds = %52, %40, %36, %25
  %61 = icmp eq ptr %26, null
  br i1 %61, label %231, label %62

62:                                               ; preds = %60, %55, %47
  %63 = phi ptr [ %26, %60 ], [ %45, %55 ], [ %26, %47 ]
  %64 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 9
  %65 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 9, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %65, ptr noundef align 1 dereferenceable(6) %3, i32 6, i1 false)
  store ptr %63, ptr %64, align 8
  %66 = load i32, ptr %27, align 4
  %67 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 9, i32 1
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %1, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 9, i32 8
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 9, i32 9
  store i16 %6, ptr %71, align 8
  %72 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 9, i32 10
  store i16 %5, ptr %72, align 2
  %73 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %1, i32 0, i32 3
  %74 = load i64, ptr %73, align 8
  %75 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 3
  store i64 %74, ptr %75, align 8
  %76 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %1, i32 0, i32 4
  %77 = load i64, ptr %76, align 8
  %78 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 7
  store i64 %77, ptr %78, align 8
  %79 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 8
  %80 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %1, i32 0, i32 5
  %81 = load i32, ptr %80, align 4
  store i32 %81, ptr %79, align 8
  %82 = getelementptr %struct.cfg80211_inform_bss, ptr %1, i32 0, i32 5, i32 4
  %83 = load i16, ptr %82, align 2
  %84 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 8, i32 4
  store i16 %83, ptr %84, align 4
  %85 = icmp eq ptr %9, null
  br i1 %85, label %97, label %86

86:                                               ; preds = %62
  %87 = load ptr, ptr %9, align 4
  %88 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 9, i32 6
  store ptr %87, ptr %88, align 8
  %89 = getelementptr i8, ptr %87, i32 -32
  %90 = load i32, ptr %89, align 8
  %91 = getelementptr inbounds %struct.cfg80211_non_tx_bss, ptr %9, i32 0, i32 2
  %92 = load i8, ptr %91, align 1
  %93 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 9, i32 14
  store i8 %92, ptr %93, align 1
  %94 = getelementptr inbounds %struct.cfg80211_non_tx_bss, ptr %9, i32 0, i32 1
  %95 = load i8, ptr %94, align 4
  %96 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 9, i32 15
  store i8 %95, ptr %96, align 8
  br label %99

97:                                               ; preds = %62
  %98 = load volatile i32, ptr @jiffies, align 64
  br label %99

99:                                               ; preds = %97, %86
  %100 = phi i32 [ %90, %86 ], [ %98, %97 ]
  %101 = or i32 %10, 256
  %102 = add i32 %8, 24
  %103 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %102, i32 noundef %101) #18
  %104 = icmp eq ptr %103, null
  br i1 %104, label %231, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %103, i32 0, i32 2
  store i32 %8, ptr %106, align 16
  store i64 %4, ptr %103, align 64
  %107 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %103, i32 0, i32 3
  store i8 0, ptr %107, align 4
  %108 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %103, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %108, ptr align 1 %7, i32 %8, i1 false)
  switch i32 %2, label %114 [
    i32 1, label %109
    i32 0, label %110
    i32 2, label %112
  ]

109:                                              ; preds = %105
  store i8 1, ptr %107, align 4
  br label %110

110:                                              ; preds = %109, %105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !43
  %111 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 9, i32 3
  store volatile ptr %103, ptr %111, align 4
  br label %114

112:                                              ; preds = %105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !44
  %113 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 9, i32 4
  store volatile ptr %103, ptr %113, align 8
  br label %114

114:                                              ; preds = %112, %110, %105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !45
  %115 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 9, i32 2
  store volatile ptr %103, ptr %115, align 8
  %116 = load ptr, ptr %1, align 8
  %117 = icmp eq ptr %116, %63
  %118 = call ptr @cfg80211_bss_update(ptr noundef %16, ptr noundef nonnull %12, i1 noundef zeroext %117, i32 noundef %100)
  %119 = icmp eq ptr %118, null
  br i1 %119, label %231, label %120

120:                                              ; preds = %114
  %121 = load i32, ptr %63, align 4
  %122 = icmp eq i32 %121, 2
  %123 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %118, i32 0, i32 9, i32 10
  %124 = load i16, ptr %123, align 2
  br i1 %122, label %125, label %128

125:                                              ; preds = %120
  %126 = and i16 %124, 2
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %133, label %131

128:                                              ; preds = %120
  %129 = and i16 %124, 1
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %128, %125
  %132 = call i32 @regulatory_hint_found_beacon(ptr noundef nonnull %0, ptr noundef nonnull %63, i32 noundef %10) #17
  br label %133

133:                                              ; preds = %131, %128, %125
  br i1 %85, label %214, label %134

134:                                              ; preds = %133
  %135 = load ptr, ptr %9, align 4
  %136 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %118, i32 0, i32 9
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !26
  %137 = call ptr @ieee80211_bss_get_elem(ptr noundef %136, i8 noundef zeroext 0) #17
  %138 = icmp eq ptr %137, null
  br i1 %138, label %208, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.cfg80211_bss, ptr %135, i32 0, i32 7
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, %140
  br i1 %142, label %203, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %118, i32 0, i32 9, i32 11
  %145 = getelementptr inbounds %struct.element, ptr %137, i32 0, i32 2
  %146 = getelementptr inbounds %struct.element, ptr %137, i32 0, i32 1
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = getelementptr %struct.cfg80211_internal_bss, ptr %118, i32 0, i32 9, i32 11, i32 4
  %150 = load i32, ptr %144, align 4
  %151 = load i16, ptr %149, align 2
  br label %152

152:                                              ; preds = %199, %143
  %153 = phi ptr [ %141, %143 ], [ %200, %199 ]
  %154 = getelementptr i8, ptr %153, i32 16
  %155 = load i32, ptr %154, align 4
  %156 = xor i32 %150, %155
  %157 = getelementptr i8, ptr %153, i32 20
  %158 = load i16, ptr %157, align 2
  %159 = xor i16 %151, %158
  %160 = zext i16 %159 to i32
  %161 = or i32 %156, %160
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %199

163:                                              ; preds = %152
  %164 = getelementptr i8, ptr %153, i32 -20
  %165 = load volatile ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %199, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %165, i32 0, i32 4
  %169 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %165, i32 0, i32 2
  %170 = load i32, ptr %169, align 8
  %171 = getelementptr i8, ptr %168, i32 %170
  %172 = ptrtoint ptr %171 to i32
  %173 = icmp sgt i32 %170, 1
  br i1 %173, label %174, label %199

174:                                              ; preds = %185, %167
  %175 = phi i32 [ %189, %185 ], [ %170, %167 ]
  %176 = phi ptr [ %187, %185 ], [ %168, %167 ]
  %177 = getelementptr inbounds %struct.element, ptr %176, i32 0, i32 1
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = add nuw nsw i32 %179, 2
  %181 = icmp ult i32 %175, %180
  br i1 %181, label %199, label %182

182:                                              ; preds = %174
  %183 = load i8, ptr %176, align 1
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.element, ptr %176, i32 0, i32 2
  %187 = getelementptr i8, ptr %186, i32 %179
  %188 = ptrtoint ptr %187 to i32
  %189 = sub i32 %172, %188
  %190 = icmp sgt i32 %189, 1
  br i1 %190, label %174, label %199

191:                                              ; preds = %182
  %192 = icmp ne ptr %176, null
  %193 = icmp eq i8 %178, %147
  %194 = select i1 %192, i1 %193, i1 false
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.element, ptr %176, i32 0, i32 2
  %197 = call i32 @bcmp(ptr %196, ptr nonnull %145, i32 %148) #17
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %195, %191, %185, %174, %167, %163, %152
  %200 = load ptr, ptr %153, align 4
  %201 = icmp eq ptr %200, %140
  br i1 %201, label %203, label %152

202:                                              ; preds = %195
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  br label %214

203:                                              ; preds = %199, %139
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  %204 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %118, i32 0, i32 9, i32 7
  %205 = getelementptr inbounds %struct.cfg80211_bss, ptr %135, i32 0, i32 7, i32 1
  %206 = load ptr, ptr %205, align 4
  store ptr %204, ptr %205, align 4
  store ptr %140, ptr %204, align 4
  %207 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %118, i32 0, i32 9, i32 7, i32 1
  store ptr %206, ptr %207, align 4
  store volatile ptr %204, ptr %206, align 4
  br label %214

208:                                              ; preds = %134
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  %209 = call fastcc zeroext i1 @__cfg80211_unlink_bss(ptr noundef %16, ptr noundef nonnull %118)
  br i1 %209, label %210, label %214

210:                                              ; preds = %208
  %211 = getelementptr i8, ptr %0, i32 -416
  %212 = load i32, ptr %211, align 32
  %213 = add i32 %212, 1
  store i32 %213, ptr %211, align 32
  br label %214

214:                                              ; preds = %210, %208, %203, %202, %133
  %215 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %118, i32 0, i32 9
  %216 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_return_bss, i32 0, i32 1), align 4
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %214
  %219 = tail call ptr @llvm.thread.pointer() #17
  %220 = getelementptr inbounds %struct.thread_info, ptr %219, i32 0, i32 2
  %221 = load i32, ptr %220, align 8
  %222 = lshr i32 %221, 5
  %223 = getelementptr i32, ptr @__cpu_online_mask, i32 %222
  %224 = load volatile i32, ptr %223, align 4
  %225 = and i32 %221, 31
  %226 = shl nuw i32 1, %225
  %227 = and i32 %226, %224
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %218
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !34
  %230 = call i32 @__traceiter_cfg80211_return_bss(ptr noundef null, ptr noundef %215) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !35
  br label %231

231:                                              ; preds = %229, %218, %214, %114, %99, %60, %55, %47, %24
  %232 = phi ptr [ null, %24 ], [ null, %60 ], [ null, %99 ], [ null, %114 ], [ %215, %214 ], [ %215, %218 ], [ %215, %229 ], [ null, %55 ], [ null, %47 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %12) #17
  ret ptr %232
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cfg80211_parse_mbssid_data(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4, i16 noundef zeroext %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9) unnamed_addr #2 {
  %11 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %11, i8 0, i32 6, i1 false), !annotation !15
  %12 = icmp eq ptr %8, null
  br i1 %12, label %604, label %13

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %6, i32 %7
  %15 = ptrtoint ptr %14 to i32
  %16 = icmp sgt i32 %7, 1
  br i1 %16, label %17, label %604

17:                                               ; preds = %28, %13
  %18 = phi i32 [ %32, %28 ], [ %7, %13 ]
  %19 = phi ptr [ %30, %28 ], [ %6, %13 ]
  %20 = getelementptr inbounds %struct.element, ptr %19, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = add nuw nsw i32 %22, 2
  %24 = icmp ult i32 %18, %23
  br i1 %24, label %604, label %25

25:                                               ; preds = %17
  %26 = load i8, ptr %19, align 1
  %27 = icmp eq i8 %26, 71
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.element, ptr %19, i32 0, i32 2
  %30 = getelementptr i8, ptr %29, i32 %22
  %31 = ptrtoint ptr %30 to i32
  %32 = sub i32 %15, %31
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %17, label %604

34:                                               ; preds = %25
  %35 = icmp eq ptr %19, null
  br i1 %35, label %604, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 76
  %38 = load i8, ptr %37, align 8
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %604, label %41

41:                                               ; preds = %36
  %42 = and i8 %38, 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %61, %41
  %45 = phi i32 [ %65, %61 ], [ %7, %41 ]
  %46 = phi ptr [ %63, %61 ], [ %6, %41 ]
  %47 = getelementptr inbounds %struct.element, ptr %46, i32 0, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = add nuw nsw i32 %49, 2
  %51 = icmp ult i32 %45, %50
  br i1 %51, label %604, label %52

52:                                               ; preds = %44
  %53 = load i8, ptr %46, align 1
  %54 = icmp ne i8 %53, -1
  %55 = icmp eq i8 %48, 0
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.element, ptr %46, i32 0, i32 2
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 35
  br i1 %60, label %67, label %61

61:                                               ; preds = %57, %52
  %62 = getelementptr inbounds %struct.element, ptr %46, i32 0, i32 2
  %63 = getelementptr i8, ptr %62, i32 %49
  %64 = ptrtoint ptr %63 to i32
  %65 = sub i32 %15, %64
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %44, label %604

67:                                               ; preds = %57
  %68 = icmp eq ptr %46, null
  br i1 %68, label %604, label %69

69:                                               ; preds = %67, %41
  %70 = and i32 %9, 17
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72, !prof !22

72:                                               ; preds = %69
  %73 = and i32 %9, 1
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i32 1, i32 2
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i32 [ 0, %69 ], [ %75, %72 ]
  %78 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %77, i32 12
  %79 = load ptr, ptr %78, align 4
  %80 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %79, i32 noundef %9, i32 noundef 2304) #20
  %81 = icmp eq ptr %80, null
  br i1 %81, label %604, label %82

82:                                               ; preds = %76
  %83 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef %9) #18
  %84 = icmp eq ptr %83, null
  br i1 %84, label %603, label %85

85:                                               ; preds = %82
  %86 = ptrtoint ptr %80 to i32
  %87 = ptrtoint ptr %6 to i32
  %88 = getelementptr inbounds %struct.cfg80211_non_tx_bss, ptr %8, i32 0, i32 2
  %89 = getelementptr inbounds %struct.cfg80211_non_tx_bss, ptr %8, i32 0, i32 1
  %90 = getelementptr i8, ptr %3, i32 1
  %91 = getelementptr i8, ptr %3, i32 2
  %92 = getelementptr i8, ptr %3, i32 3
  %93 = getelementptr i8, ptr %3, i32 4
  %94 = getelementptr i8, ptr %3, i32 5
  %95 = getelementptr inbounds i8, ptr %11, i32 5
  %96 = getelementptr inbounds i8, ptr %11, i32 4
  %97 = getelementptr inbounds i8, ptr %11, i32 3
  %98 = getelementptr inbounds i8, ptr %11, i32 2
  %99 = getelementptr inbounds i8, ptr %11, i32 1
  %100 = getelementptr i8, ptr %83, i32 2
  br label %101

101:                                              ; preds = %596, %85
  %102 = phi i32 [ %7, %85 ], [ %601, %596 ]
  %103 = phi ptr [ %6, %85 ], [ %599, %596 ]
  %104 = getelementptr inbounds %struct.element, ptr %103, i32 0, i32 1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = add nuw nsw i32 %106, 2
  %108 = icmp ult i32 %102, %107
  br i1 %108, label %603, label %109

109:                                              ; preds = %101
  %110 = load i8, ptr %103, align 1
  %111 = icmp ne i8 %110, 71
  %112 = icmp ult i8 %105, 4
  %113 = select i1 %111, i1 true, i1 %112
  br i1 %113, label %596, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.element, ptr %103, i32 0, i32 2
  %116 = getelementptr %struct.element, ptr %103, i32 1, i32 1
  %117 = add nsw i32 %106, -1
  br label %118

118:                                              ; preds = %580, %114
  %119 = phi i8 [ %585, %580 ], [ %105, %114 ]
  %120 = phi i32 [ %591, %580 ], [ %117, %114 ]
  %121 = phi ptr [ %584, %580 ], [ %116, %114 ]
  %122 = getelementptr inbounds %struct.element, ptr %121, i32 0, i32 1
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = add nuw nsw i32 %124, 2
  %126 = icmp ult i32 %120, %125
  br i1 %126, label %593, label %127

127:                                              ; preds = %118
  %128 = load i8, ptr %121, align 1
  %129 = icmp ne i8 %128, 0
  %130 = icmp ult i8 %123, 4
  %131 = select i1 %129, i1 true, i1 %130
  br i1 %131, label %580, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.element, ptr %121, i32 0, i32 2
  %134 = load i8, ptr %133, align 1
  %135 = icmp eq i8 %134, 83
  br i1 %135, label %136, label %580

136:                                              ; preds = %132
  %137 = getelementptr %struct.element, ptr %121, i32 1, i32 1
  %138 = load i8, ptr %137, align 1
  %139 = icmp eq i8 %138, 2
  br i1 %139, label %140, label %580

140:                                              ; preds = %136
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %83, i8 0, i32 %7, i1 false)
  %141 = load i8, ptr %122, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp ugt i32 %142, %7
  br i1 %143, label %580, label %144

144:                                              ; preds = %140
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %83, ptr align 1 %133, i32 %142, i1 false) #17
  %145 = zext i8 %119 to i32
  %146 = getelementptr i8, ptr %115, i32 %145
  %147 = ptrtoint ptr %146 to i32
  %148 = sub i32 %87, %147
  %149 = add i32 %148, %7
  %150 = icmp sgt i32 %149, 1
  br i1 %150, label %151, label %210

151:                                              ; preds = %144
  %152 = getelementptr i8, ptr %146, i32 %149
  %153 = ptrtoint ptr %152 to i32
  %154 = getelementptr i8, ptr %146, i32 -1
  br label %155

155:                                              ; preds = %205, %151
  %156 = phi i32 [ %209, %205 ], [ %142, %151 ]
  br label %157

157:                                              ; preds = %168, %155
  %158 = phi i32 [ %172, %168 ], [ %149, %155 ]
  %159 = phi ptr [ %170, %168 ], [ %146, %155 ]
  %160 = getelementptr inbounds %struct.element, ptr %159, i32 0, i32 1
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i32
  %163 = add nuw nsw i32 %162, 2
  %164 = icmp ult i32 %158, %163
  br i1 %164, label %210, label %165

165:                                              ; preds = %157
  %166 = load i8, ptr %159, align 1
  %167 = icmp eq i8 %166, 71
  br i1 %167, label %174, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.element, ptr %159, i32 0, i32 2
  %170 = getelementptr i8, ptr %169, i32 %162
  %171 = ptrtoint ptr %170 to i32
  %172 = sub i32 %153, %171
  %173 = icmp sgt i32 %172, 1
  br i1 %173, label %157, label %210

174:                                              ; preds = %165
  %175 = load i8, ptr %122, align 1
  %176 = zext i8 %175 to i32
  %177 = getelementptr i8, ptr %133, i32 %176
  %178 = icmp ult ptr %177, %154
  %179 = icmp eq ptr %159, null
  %180 = select i1 %178, i1 true, i1 %179
  %181 = icmp ult i8 %161, 4
  %182 = select i1 %180, i1 true, i1 %181
  br i1 %182, label %210, label %183

183:                                              ; preds = %174
  %184 = zext i8 %161 to i32
  %185 = getelementptr inbounds %struct.element, ptr %159, i32 0, i32 2
  %186 = getelementptr i8, ptr %185, i32 %184
  %187 = getelementptr %struct.element, ptr %159, i32 2, i32 1
  %188 = getelementptr %struct.element, ptr %159, i32 2
  %189 = load i8, ptr %188, align 1
  %190 = zext i8 %189 to i32
  %191 = getelementptr i8, ptr %187, i32 %190
  %192 = icmp ult ptr %186, %191
  br i1 %192, label %210, label %193

193:                                              ; preds = %183
  %194 = getelementptr %struct.element, ptr %159, i32 1, i32 1
  %195 = load i8, ptr %194, align 1
  %196 = icmp ne i8 %195, 0
  %197 = icmp ult i8 %189, 2
  %198 = select i1 %196, i1 true, i1 %197
  br i1 %198, label %210, label %199

199:                                              ; preds = %193
  %200 = load i8, ptr %187, align 1
  %201 = icmp eq i8 %200, 83
  %202 = add i32 %156, %190
  %203 = icmp ugt i32 %202, %7
  %204 = select i1 %201, i1 true, i1 %203
  br i1 %204, label %210, label %205

205:                                              ; preds = %199
  %206 = getelementptr i8, ptr %83, i32 %156
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %206, ptr align 1 %187, i32 %190, i1 false) #17
  %207 = load i8, ptr %188, align 1
  %208 = zext i8 %207 to i32
  %209 = add i32 %156, %208
  br label %155

210:                                              ; preds = %199, %193, %183, %174, %168, %157, %144
  %211 = phi i32 [ %142, %144 ], [ %156, %168 ], [ %156, %157 ], [ %156, %199 ], [ %156, %193 ], [ %156, %183 ], [ %156, %174 ]
  %212 = and i32 %211, 255
  %213 = getelementptr i8, ptr %83, i32 %212
  %214 = ptrtoint ptr %213 to i32
  %215 = icmp ugt i32 %212, 1
  br i1 %215, label %216, label %580

216:                                              ; preds = %227, %210
  %217 = phi i32 [ %231, %227 ], [ %212, %210 ]
  %218 = phi ptr [ %229, %227 ], [ %83, %210 ]
  %219 = getelementptr %struct.element, ptr %218, i32 0, i32 1
  %220 = load i8, ptr %219, align 1
  %221 = zext i8 %220 to i32
  %222 = add nuw nsw i32 %221, 2
  %223 = icmp ult i32 %217, %222
  br i1 %223, label %580, label %224

224:                                              ; preds = %216
  %225 = load i8, ptr %218, align 1
  %226 = icmp eq i8 %225, 85
  br i1 %226, label %233, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.element, ptr %218, i32 0, i32 2
  %229 = getelementptr i8, ptr %228, i32 %221
  %230 = ptrtoint ptr %229 to i32
  %231 = sub i32 %214, %230
  %232 = icmp sgt i32 %231, 1
  br i1 %232, label %216, label %580

233:                                              ; preds = %224
  %234 = icmp eq ptr %218, null
  %235 = icmp eq i8 %220, 0
  %236 = select i1 %234, i1 true, i1 %235
  br i1 %236, label %580, label %237

237:                                              ; preds = %233
  %238 = getelementptr i8, ptr %218, i32 2
  %239 = load i8, ptr %238, align 1
  %240 = add i8 %239, -47
  %241 = icmp ult i8 %240, -46
  br i1 %241, label %580, label %242

242:                                              ; preds = %237
  %243 = zext i8 %239 to i64
  store i8 %239, ptr %88, align 1
  %244 = load i8, ptr %115, align 1
  store i8 %244, ptr %89, align 4
  %245 = load i8, ptr %3, align 1
  %246 = zext i8 %245 to i64
  %247 = load i8, ptr %90, align 1
  %248 = zext i8 %247 to i64
  %249 = shl nuw nsw i64 %246, 16
  %250 = shl nuw nsw i64 %248, 8
  %251 = or i64 %250, %249
  %252 = load i8, ptr %91, align 1
  %253 = zext i8 %252 to i64
  %254 = or i64 %251, %253
  %255 = load i8, ptr %92, align 1
  %256 = zext i8 %255 to i64
  %257 = load i8, ptr %93, align 1
  %258 = zext i8 %257 to i64
  %259 = shl nuw nsw i64 %254, 24
  %260 = shl nuw nsw i64 %256, 16
  %261 = shl nuw nsw i64 %258, 8
  %262 = or i64 %261, %260
  %263 = or i64 %262, %259
  %264 = load i8, ptr %94, align 1
  %265 = zext i8 %264 to i64
  %266 = or i64 %263, %265
  %267 = zext i8 %244 to i32
  %268 = sub nsw i32 64, %267
  %269 = zext i32 %268 to i64
  %270 = lshr i64 -1, %269
  %271 = xor i64 %270, -1
  %272 = and i64 %266, %271
  %273 = and i64 %266, %270
  %274 = add i64 %273, %243
  %275 = and i64 %274, %270
  %276 = or i64 %275, %272
  %277 = trunc i64 %276 to i8
  store i8 %277, ptr %95, align 1
  %278 = lshr i64 %276, 8
  %279 = trunc i64 %278 to i8
  store i8 %279, ptr %96, align 1
  %280 = lshr i64 %276, 16
  %281 = trunc i64 %280 to i8
  store i8 %281, ptr %97, align 1
  %282 = lshr i64 %276, 24
  %283 = trunc i64 %282 to i8
  store i8 %283, ptr %98, align 1
  %284 = lshr i64 %276, 32
  %285 = trunc i64 %284 to i8
  store i8 %285, ptr %99, align 1
  %286 = lshr i64 %276, 40
  %287 = trunc i64 %286 to i8
  store i8 %287, ptr %11, align 1
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2304) %80, i8 0, i32 2304, i1 false)
  %288 = tail call ptr @kmemdup(ptr noundef nonnull %83, i32 noundef %212, i32 noundef %9) #17
  %289 = icmp eq ptr %288, null
  br i1 %289, label %580, label %290

290:                                              ; preds = %242
  %291 = getelementptr i8, ptr %288, i32 %212
  %292 = ptrtoint ptr %291 to i32
  br label %293

293:                                              ; preds = %304, %290
  %294 = phi i32 [ %308, %304 ], [ %212, %290 ]
  %295 = phi ptr [ %306, %304 ], [ %288, %290 ]
  %296 = getelementptr %struct.element, ptr %295, i32 0, i32 1
  %297 = load i8, ptr %296, align 1
  %298 = zext i8 %297 to i32
  %299 = add nuw nsw i32 %298, 2
  %300 = icmp ult i32 %294, %299
  br i1 %300, label %318, label %301

301:                                              ; preds = %293
  %302 = load i8, ptr %295, align 1
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %310, label %304

304:                                              ; preds = %301
  %305 = getelementptr inbounds %struct.element, ptr %295, i32 0, i32 2
  %306 = getelementptr i8, ptr %305, i32 %298
  %307 = ptrtoint ptr %306 to i32
  %308 = sub i32 %292, %307
  %309 = icmp sgt i32 %308, 1
  br i1 %309, label %293, label %318

310:                                              ; preds = %301
  %311 = icmp eq ptr %295, null
  br i1 %311, label %318, label %312

312:                                              ; preds = %310
  %313 = getelementptr %struct.element, ptr %295, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 %80, ptr noundef nonnull align 1 %295, i32 %299, i1 false) #17
  %314 = load i8, ptr %313, align 1
  %315 = zext i8 %314 to i32
  %316 = add nuw nsw i32 %315, 2
  %317 = getelementptr i8, ptr %80, i32 %316
  br label %318

318:                                              ; preds = %312, %310, %304, %293
  %319 = phi ptr [ %317, %312 ], [ %80, %310 ], [ %80, %293 ], [ %80, %304 ]
  br label %320

320:                                              ; preds = %337, %318
  %321 = phi i32 [ %341, %337 ], [ %212, %318 ]
  %322 = phi ptr [ %339, %337 ], [ %288, %318 ]
  %323 = getelementptr inbounds %struct.element, ptr %322, i32 0, i32 1
  %324 = load i8, ptr %323, align 1
  %325 = zext i8 %324 to i32
  %326 = add nuw nsw i32 %325, 2
  %327 = icmp ult i32 %321, %326
  br i1 %327, label %343, label %328

328:                                              ; preds = %320
  %329 = load i8, ptr %322, align 1
  %330 = icmp ne i8 %329, -1
  %331 = icmp eq i8 %324, 0
  %332 = select i1 %330, i1 true, i1 %331
  br i1 %332, label %337, label %333

333:                                              ; preds = %328
  %334 = getelementptr inbounds %struct.element, ptr %322, i32 0, i32 2
  %335 = load i8, ptr %334, align 1
  %336 = icmp eq i8 %335, 56
  br i1 %336, label %343, label %337

337:                                              ; preds = %333, %328
  %338 = getelementptr inbounds %struct.element, ptr %322, i32 0, i32 2
  %339 = getelementptr i8, ptr %338, i32 %325
  %340 = ptrtoint ptr %339 to i32
  %341 = sub i32 %292, %340
  %342 = icmp sgt i32 %341, 1
  br i1 %342, label %320, label %343

343:                                              ; preds = %337, %333, %320
  %344 = phi ptr [ null, %337 ], [ %322, %333 ], [ null, %320 ]
  br label %345

345:                                              ; preds = %356, %343
  %346 = phi i32 [ %360, %356 ], [ %7, %343 ]
  %347 = phi ptr [ %358, %356 ], [ %6, %343 ]
  %348 = getelementptr %struct.element, ptr %347, i32 0, i32 1
  %349 = load i8, ptr %348, align 1
  %350 = zext i8 %349 to i32
  %351 = add nuw nsw i32 %350, 2
  %352 = icmp ult i32 %346, %351
  br i1 %352, label %368, label %353

353:                                              ; preds = %345
  %354 = load i8, ptr %347, align 1
  %355 = icmp eq i8 %354, 0
  br i1 %355, label %362, label %356

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.element, ptr %347, i32 0, i32 2
  %358 = getelementptr i8, ptr %357, i32 %350
  %359 = ptrtoint ptr %358 to i32
  %360 = sub i32 %15, %359
  %361 = icmp sgt i32 %360, 1
  br i1 %361, label %345, label %368

362:                                              ; preds = %353
  %363 = icmp eq ptr %347, null
  br i1 %363, label %368, label %364

364:                                              ; preds = %362
  %365 = zext i8 %349 to i32
  %366 = getelementptr i8, ptr %347, i32 2
  %367 = getelementptr i8, ptr %366, i32 %365
  br label %368

368:                                              ; preds = %364, %362, %356, %345
  %369 = phi ptr [ %367, %364 ], [ %6, %362 ], [ %6, %345 ], [ %6, %356 ]
  %370 = icmp eq ptr %344, null
  %371 = getelementptr inbounds %struct.element, ptr %344, i32 0, i32 1
  %372 = getelementptr %struct.element, ptr %344, i32 1, i32 1
  %373 = getelementptr %struct.element, ptr %344, i32 2
  br label %374

374:                                              ; preds = %521, %368
  %375 = phi ptr [ %514, %521 ], [ %319, %368 ]
  %376 = phi ptr [ %523, %521 ], [ %369, %368 ]
  br label %377

377:                                              ; preds = %387, %374
  %378 = phi ptr [ %379, %387 ], [ %376, %374 ]
  %379 = getelementptr i8, ptr %378, i32 1
  %380 = load i8, ptr %379, align 1
  %381 = zext i8 %380 to i32
  %382 = getelementptr i8, ptr %378, i32 2
  %383 = getelementptr i8, ptr %382, i32 %381
  %384 = ptrtoint ptr %383 to i32
  %385 = sub i32 %384, %87
  %386 = icmp ugt i32 %385, %7
  br i1 %386, label %524, label %387

387:                                              ; preds = %377
  %388 = load i8, ptr %378, align 1
  switch i8 %388, label %415 [
    i8 0, label %377
    i8 -1, label %389
  ]

389:                                              ; preds = %387
  %390 = zext i8 %380 to i32
  %391 = load i8, ptr %382, align 1
  br label %392

392:                                              ; preds = %409, %389
  %393 = phi i32 [ %413, %409 ], [ %212, %389 ]
  %394 = phi ptr [ %411, %409 ], [ %288, %389 ]
  %395 = getelementptr %struct.element, ptr %394, i32 0, i32 1
  %396 = load i8, ptr %395, align 1
  %397 = zext i8 %396 to i32
  %398 = add nuw nsw i32 %397, 2
  %399 = icmp ult i32 %393, %398
  br i1 %399, label %441, label %400

400:                                              ; preds = %392
  %401 = load i8, ptr %394, align 1
  %402 = icmp ne i8 %401, -1
  %403 = icmp eq i8 %396, 0
  %404 = select i1 %402, i1 true, i1 %403
  br i1 %404, label %409, label %405

405:                                              ; preds = %400
  %406 = getelementptr inbounds %struct.element, ptr %394, i32 0, i32 2
  %407 = load i8, ptr %406, align 1
  %408 = icmp eq i8 %407, %391
  br i1 %408, label %437, label %409

409:                                              ; preds = %405, %400
  %410 = getelementptr inbounds %struct.element, ptr %394, i32 0, i32 2
  %411 = getelementptr i8, ptr %410, i32 %397
  %412 = ptrtoint ptr %411 to i32
  %413 = sub i32 %292, %412
  %414 = icmp sgt i32 %413, 1
  br i1 %414, label %392, label %441

415:                                              ; preds = %387
  %416 = zext i8 %380 to i32
  br label %417

417:                                              ; preds = %428, %415
  %418 = phi i32 [ %432, %428 ], [ %212, %415 ]
  %419 = phi ptr [ %430, %428 ], [ %288, %415 ]
  %420 = getelementptr %struct.element, ptr %419, i32 0, i32 1
  %421 = load i8, ptr %420, align 1
  %422 = zext i8 %421 to i32
  %423 = add nuw nsw i32 %422, 2
  %424 = icmp ult i32 %418, %423
  br i1 %424, label %439, label %425

425:                                              ; preds = %417
  %426 = load i8, ptr %419, align 1
  %427 = icmp eq i8 %426, %388
  br i1 %427, label %434, label %428

428:                                              ; preds = %425
  %429 = getelementptr inbounds %struct.element, ptr %419, i32 0, i32 2
  %430 = getelementptr i8, ptr %429, i32 %422
  %431 = ptrtoint ptr %430 to i32
  %432 = sub i32 %292, %431
  %433 = icmp sgt i32 %432, 1
  br i1 %433, label %417, label %439

434:                                              ; preds = %425
  %435 = getelementptr %struct.element, ptr %419, i32 0, i32 1
  %436 = icmp eq ptr %419, null
  br i1 %436, label %439, label %488

437:                                              ; preds = %405
  %438 = icmp eq ptr %394, null
  br i1 %438, label %441, label %505

439:                                              ; preds = %434, %428, %417
  %440 = icmp eq i8 %388, 71
  br i1 %440, label %513, label %441

441:                                              ; preds = %439, %437, %409, %392
  %442 = phi i32 [ %416, %439 ], [ %390, %437 ], [ %390, %392 ], [ %390, %409 ]
  %443 = phi i8 [ %388, %439 ], [ -1, %437 ], [ -1, %392 ], [ -1, %409 ]
  br i1 %370, label %482, label %444

444:                                              ; preds = %441
  %445 = load i8, ptr %371, align 1
  %446 = zext i8 %445 to i32
  %447 = icmp ult i8 %445, 2
  br i1 %447, label %482, label %448

448:                                              ; preds = %444
  %449 = load i8, ptr %372, align 1
  %450 = zext i8 %449 to i32
  %451 = add nuw nsw i32 %450, 3
  %452 = icmp ugt i32 %451, %446
  br i1 %452, label %482, label %453

453:                                              ; preds = %448
  %454 = add nuw nsw i32 %450, 2
  %455 = getelementptr %struct.element, ptr %344, i32 0, i32 2, i32 %454
  %456 = load i8, ptr %455, align 1
  %457 = zext i8 %456 to i32
  %458 = add nuw nsw i32 %451, %457
  %459 = icmp ugt i32 %458, %446
  br i1 %459, label %482, label %460

460:                                              ; preds = %453
  %461 = icmp eq i8 %443, -1
  br i1 %461, label %462, label %467

462:                                              ; preds = %460
  %463 = icmp eq i8 %456, 0
  br i1 %463, label %482, label %464

464:                                              ; preds = %462
  %465 = getelementptr %struct.element, ptr %344, i32 0, i32 2, i32 %451
  %466 = load i8, ptr %382, align 1
  br label %469

467:                                              ; preds = %460
  %468 = icmp eq i8 %449, 0
  br i1 %468, label %482, label %469

469:                                              ; preds = %467, %464
  %470 = phi i32 [ %450, %467 ], [ %457, %464 ]
  %471 = phi i8 [ %443, %467 ], [ %466, %464 ]
  %472 = phi ptr [ %373, %467 ], [ %465, %464 ]
  br label %473

473:                                              ; preds = %473, %469
  %474 = phi i32 [ 0, %469 ], [ %478, %473 ]
  %475 = getelementptr i8, ptr %472, i32 %474
  %476 = load i8, ptr %475, align 1
  %477 = icmp eq i8 %476, %471
  %478 = add nuw nsw i32 %474, 1
  %479 = icmp eq i32 %478, %470
  %480 = select i1 %477, i1 true, i1 %479
  br i1 %480, label %481, label %473

481:                                              ; preds = %473
  br i1 %477, label %513, label %482

482:                                              ; preds = %481, %467, %462, %453, %448, %444, %441
  %483 = add nuw nsw i32 %442, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %375, ptr noundef align 1 %378, i32 %483, i1 false) #17
  %484 = load i8, ptr %379, align 1
  %485 = zext i8 %484 to i32
  %486 = add nuw nsw i32 %485, 2
  %487 = getelementptr i8, ptr %375, i32 %486
  br label %513

488:                                              ; preds = %434
  %489 = icmp eq i8 %388, -35
  br i1 %489, label %490, label %505

490:                                              ; preds = %488
  %491 = getelementptr i8, ptr %419, i32 2
  %492 = tail call i32 @bcmp(ptr noundef dereferenceable(5) %382, ptr noundef dereferenceable(5) %491, i32 5) #17
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %494, label %499

494:                                              ; preds = %490
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %375, ptr noundef nonnull align 1 %419, i32 %423, i1 false) #17
  %495 = load i8, ptr %435, align 1
  %496 = zext i8 %495 to i32
  %497 = add nuw nsw i32 %496, 2
  %498 = getelementptr i8, ptr %375, i32 %497
  store i8 0, ptr %419, align 1
  br label %513

499:                                              ; preds = %490
  %500 = add nuw nsw i32 %416, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %375, ptr noundef align 1 %378, i32 %500, i1 false) #17
  %501 = load i8, ptr %379, align 1
  %502 = zext i8 %501 to i32
  %503 = add nuw nsw i32 %502, 2
  %504 = getelementptr i8, ptr %375, i32 %503
  br label %513

505:                                              ; preds = %488, %437
  %506 = phi i32 [ %423, %488 ], [ %398, %437 ]
  %507 = phi ptr [ %419, %488 ], [ %394, %437 ]
  %508 = getelementptr i8, ptr %507, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %375, ptr noundef nonnull align 1 %507, i32 %506, i1 false) #17
  %509 = load i8, ptr %508, align 1
  %510 = zext i8 %509 to i32
  %511 = add nuw nsw i32 %510, 2
  %512 = getelementptr i8, ptr %375, i32 %511
  store i8 0, ptr %507, align 1
  br label %513

513:                                              ; preds = %505, %499, %494, %482, %481, %439
  %514 = phi ptr [ %504, %499 ], [ %498, %494 ], [ %512, %505 ], [ %487, %482 ], [ %375, %481 ], [ %375, %439 ]
  %515 = load i8, ptr %379, align 1
  %516 = zext i8 %515 to i32
  %517 = getelementptr i8, ptr %382, i32 %516
  %518 = ptrtoint ptr %517 to i32
  %519 = sub i32 %518, %87
  %520 = icmp eq i32 %519, %7
  br i1 %520, label %524, label %521

521:                                              ; preds = %513
  %522 = add nuw nsw i32 %516, 2
  %523 = getelementptr i8, ptr %378, i32 %522
  br label %374

524:                                              ; preds = %513, %377
  %525 = phi ptr [ %375, %377 ], [ %514, %513 ]
  %526 = ptrtoint ptr %288 to i32
  %527 = getelementptr i8, ptr %288, i32 1
  %528 = load i8, ptr %527, align 1
  %529 = zext i8 %528 to i32
  %530 = getelementptr i8, ptr %288, i32 2
  %531 = getelementptr i8, ptr %530, i32 %529
  %532 = ptrtoint ptr %531 to i32
  %533 = sub i32 %532, %526
  %534 = icmp ugt i32 %533, %212
  br i1 %534, label %568, label %535

535:                                              ; preds = %557, %524
  %536 = phi i8 [ %561, %557 ], [ %528, %524 ]
  %537 = phi i32 [ %562, %557 ], [ %529, %524 ]
  %538 = phi ptr [ %560, %557 ], [ %527, %524 ]
  %539 = phi ptr [ %559, %557 ], [ %288, %524 ]
  %540 = phi ptr [ %550, %557 ], [ %525, %524 ]
  %541 = load i8, ptr %539, align 1
  switch i8 %541, label %542 [
    i8 83, label %548
    i8 0, label %548
  ]

542:                                              ; preds = %535
  %543 = add nuw nsw i32 %537, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %540, ptr noundef align 1 %539, i32 %543, i1 false) #17
  %544 = load i8, ptr %538, align 1
  %545 = zext i8 %544 to i32
  %546 = add nuw nsw i32 %545, 2
  %547 = getelementptr i8, ptr %540, i32 %546
  br label %548

548:                                              ; preds = %542, %535, %535
  %549 = phi i8 [ %536, %535 ], [ %544, %542 ], [ %536, %535 ]
  %550 = phi ptr [ %540, %535 ], [ %547, %542 ], [ %540, %535 ]
  %551 = zext i8 %549 to i32
  %552 = getelementptr i8, ptr %539, i32 2
  %553 = getelementptr i8, ptr %552, i32 %551
  %554 = ptrtoint ptr %553 to i32
  %555 = sub i32 %554, %526
  %556 = icmp eq i32 %555, %212
  br i1 %556, label %568, label %557

557:                                              ; preds = %548
  %558 = add nuw nsw i32 %551, 2
  %559 = getelementptr i8, ptr %539, i32 %558
  %560 = getelementptr i8, ptr %559, i32 1
  %561 = load i8, ptr %560, align 1
  %562 = zext i8 %561 to i32
  %563 = getelementptr i8, ptr %559, i32 2
  %564 = getelementptr i8, ptr %563, i32 %562
  %565 = ptrtoint ptr %564 to i32
  %566 = sub i32 %565, %526
  %567 = icmp ugt i32 %566, %212
  br i1 %567, label %568, label %535

568:                                              ; preds = %557, %548, %524
  %569 = phi ptr [ %525, %524 ], [ %550, %557 ], [ %550, %548 ]
  tail call void @kfree(ptr noundef nonnull %288) #17
  %570 = icmp eq ptr %569, %80
  br i1 %570, label %580, label %571

571:                                              ; preds = %568
  %572 = ptrtoint ptr %569 to i32
  %573 = sub i32 %572, %86
  %574 = load i16, ptr %100, align 2
  %575 = call fastcc ptr @cfg80211_inform_single_bss_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %11, i64 noundef %4, i16 noundef zeroext %574, i16 noundef zeroext %5, ptr noundef nonnull %80, i32 noundef %573, ptr noundef nonnull %8, i32 noundef %9)
  %576 = icmp eq ptr %575, null
  br i1 %576, label %577, label %579

577:                                              ; preds = %571
  %578 = load i8, ptr %104, align 1
  br label %593

579:                                              ; preds = %571
  tail call void @cfg80211_put_bss(ptr noundef %0, ptr noundef nonnull %575)
  br label %580

580:                                              ; preds = %579, %568, %242, %237, %233, %227, %216, %210, %140, %136, %132, %127
  %581 = getelementptr inbounds %struct.element, ptr %121, i32 0, i32 2
  %582 = load i8, ptr %122, align 1
  %583 = zext i8 %582 to i32
  %584 = getelementptr i8, ptr %581, i32 %583
  %585 = load i8, ptr %104, align 1
  %586 = zext i8 %585 to i32
  %587 = add nsw i32 %586, -1
  %588 = getelementptr i8, ptr %116, i32 %587
  %589 = ptrtoint ptr %588 to i32
  %590 = ptrtoint ptr %584 to i32
  %591 = sub i32 %589, %590
  %592 = icmp sgt i32 %591, 1
  br i1 %592, label %118, label %593

593:                                              ; preds = %580, %577, %118
  %594 = phi i8 [ %578, %577 ], [ %585, %580 ], [ %119, %118 ]
  %595 = zext i8 %594 to i32
  br label %596

596:                                              ; preds = %593, %109
  %597 = phi i32 [ %595, %593 ], [ %106, %109 ]
  %598 = getelementptr inbounds %struct.element, ptr %103, i32 0, i32 2
  %599 = getelementptr i8, ptr %598, i32 %597
  %600 = ptrtoint ptr %599 to i32
  %601 = sub i32 %15, %600
  %602 = icmp sgt i32 %601, 1
  br i1 %602, label %101, label %603

603:                                              ; preds = %596, %101, %82
  tail call void @kfree(ptr noundef nonnull %80) #17
  tail call void @kfree(ptr noundef %83) #17
  br label %604

604:                                              ; preds = %603, %76, %67, %61, %44, %36, %34, %28, %17, %13, %10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cfg80211_inform_bss_frame_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca %struct.cfg80211_internal_bss, align 8
  %7 = alloca %struct.cfg80211_non_tx_bss, align 8
  %8 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 1, i32 2
  %9 = add i32 %3, -36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  store i64 0, ptr %7, align 8, !annotation !15
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %6, i8 0, i32 136, i1 false) #17
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_inform_bss_frame, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %5
  %13 = tail call ptr @llvm.thread.pointer() #17
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !46
  %24 = tail call i32 @__traceiter_cfg80211_inform_bss_frame(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !47
  br label %25

25:                                               ; preds = %23, %12, %5
  %26 = icmp eq ptr %2, null
  br i1 %26, label %237, label %27, !prof !13

27:                                               ; preds = %25
  %28 = icmp eq ptr %0, null
  br i1 %28, label %237, label %29, !prof !13

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 16
  %31 = load i32, ptr %30, align 16
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %1, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = icmp ugt i32 %35, 100
  br i1 %36, label %237, label %37, !prof !13

37:                                               ; preds = %33, %29
  %38 = load i16, ptr %2, align 2
  %39 = and i16 %38, 252
  %40 = icmp eq i16 %39, 28
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = and i16 %38, 508
  %43 = icmp eq i16 %42, 284
  %44 = select i1 %43, i32 18, i32 4
  %45 = icmp ugt i32 %44, %3
  br i1 %45, label %237, label %48, !prof !13

46:                                               ; preds = %37
  %47 = icmp ult i32 %3, 36
  br i1 %47, label %237, label %55, !prof !13

48:                                               ; preds = %41
  %49 = sub i32 %3, %44
  %50 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6
  br i1 %43, label %51, label %53

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.ieee80211_ext, ptr %2, i32 1
  br label %58

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ieee80211_ext, ptr %2, i32 0, i32 2, i32 0, i32 3
  br label %58

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6
  %57 = icmp eq i16 %39, 128
  br i1 %57, label %66, label %58

58:                                               ; preds = %55, %53, %51
  %59 = phi ptr [ %8, %55 ], [ %54, %53 ], [ %52, %51 ]
  %60 = phi ptr [ null, %55 ], [ %2, %53 ], [ %2, %51 ]
  %61 = phi i32 [ %9, %55 ], [ %49, %53 ], [ %49, %51 ]
  %62 = phi ptr [ %56, %55 ], [ %50, %53 ], [ %50, %51 ]
  %63 = xor i1 %40, true
  %64 = icmp eq i16 %39, 80
  %65 = select i1 %64, i32 2, i32 0
  br label %66

66:                                               ; preds = %58, %55
  %67 = phi ptr [ %8, %55 ], [ %59, %58 ]
  %68 = phi ptr [ null, %55 ], [ %60, %58 ]
  %69 = phi i32 [ %9, %55 ], [ %61, %58 ]
  %70 = phi ptr [ %56, %55 ], [ %62, %58 ]
  %71 = phi i1 [ true, %55 ], [ %63, %58 ]
  %72 = phi i32 [ 1, %55 ], [ %65, %58 ]
  %73 = load ptr, ptr %1, align 8
  %74 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %1, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr %73, align 4
  %77 = tail call i32 @cfg80211_get_ies_channel_number(ptr noundef %67, i32 noundef %69, i32 noundef %76, i32 noundef %72) #17
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %107, label %79

79:                                               ; preds = %66
  %80 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %77, i32 noundef %76) #17
  %81 = load i32, ptr %73, align 4
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.ieee80211_channel, ptr %73, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %80, %85
  br i1 %86, label %107, label %87

87:                                               ; preds = %83
  %88 = sub i32 %80, %85
  %89 = tail call i32 @llvm.abs.i32(i32 %88, i1 false) #17
  %90 = icmp sgt i32 %89, 80
  br i1 %90, label %107, label %91

91:                                               ; preds = %87, %79
  %92 = tail call ptr @ieee80211_get_channel_khz(ptr noundef nonnull %0, i32 noundef %80) #17
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32, ptr %73, align 4
  %96 = icmp eq i32 %95, 0
  %97 = icmp eq ptr %73, null
  %98 = or i1 %97, %96
  br i1 %98, label %239, label %109

99:                                               ; preds = %91
  %100 = add i32 %75, -1
  %101 = icmp ult i32 %100, 2
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.ieee80211_channel, ptr %92, i32 0, i32 4
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %239

107:                                              ; preds = %99, %87, %83, %66
  %108 = icmp eq ptr %73, null
  br i1 %108, label %239, label %109

109:                                              ; preds = %107, %102, %94
  %110 = phi ptr [ %73, %107 ], [ %92, %102 ], [ %73, %94 ]
  br i1 %71, label %140, label %111

111:                                              ; preds = %109
  %112 = getelementptr i8, ptr %67, i32 %69
  %113 = ptrtoint ptr %112 to i32
  %114 = icmp sgt i32 %69, 1
  br i1 %114, label %115, label %239

115:                                              ; preds = %126, %111
  %116 = phi i32 [ %130, %126 ], [ %69, %111 ]
  %117 = phi ptr [ %128, %126 ], [ %67, %111 ]
  %118 = getelementptr inbounds %struct.element, ptr %117, i32 0, i32 1
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  %121 = add nuw nsw i32 %120, 2
  %122 = icmp ult i32 %116, %121
  br i1 %122, label %239, label %123

123:                                              ; preds = %115
  %124 = load i8, ptr %117, align 1
  %125 = icmp eq i8 %124, -43
  br i1 %125, label %132, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.element, ptr %117, i32 0, i32 2
  %128 = getelementptr i8, ptr %127, i32 %120
  %129 = ptrtoint ptr %128 to i32
  %130 = sub i32 %113, %129
  %131 = icmp sgt i32 %130, 1
  br i1 %131, label %115, label %239

132:                                              ; preds = %123
  %133 = icmp eq ptr %117, null
  %134 = icmp ult i8 %119, 8
  %135 = select i1 %133, i1 true, i1 %134
  br i1 %135, label %239, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.element, ptr %117, i32 0, i32 2
  %138 = getelementptr inbounds %struct.ieee80211_ext, ptr %68, i32 0, i32 2
  %139 = getelementptr inbounds %struct.element, ptr %117, i32 2
  br label %144

140:                                              ; preds = %109
  %141 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 4
  %142 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 0, i32 2, i32 4
  %143 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 1
  br label %144

144:                                              ; preds = %140, %136
  %145 = phi ptr [ %137, %136 ], [ %143, %140 ]
  %146 = phi ptr [ %139, %136 ], [ %142, %140 ]
  %147 = phi ptr [ %138, %136 ], [ %141, %140 ]
  %148 = load i16, ptr %146, align 1
  %149 = load i16, ptr %145, align 1
  %150 = or i32 %4, 256
  %151 = add i32 %69, 24
  %152 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %151, i32 noundef %150) #18
  %153 = icmp eq ptr %152, null
  br i1 %153, label %239, label %154

154:                                              ; preds = %144
  %155 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %152, i32 0, i32 2
  store i32 %69, ptr %155, align 16
  %156 = load i64, ptr %70, align 2
  store i64 %156, ptr %152, align 64
  %157 = load i16, ptr %2, align 2
  %158 = and i16 %157, 252
  %159 = icmp eq i16 %158, 128
  %160 = icmp eq i16 %158, 28
  %161 = or i1 %159, %160
  %162 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %152, i32 0, i32 3
  %163 = zext i1 %161 to i8
  store i8 %163, ptr %162, align 4
  %164 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %152, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %164, ptr align 1 %67, i32 %69, i1 false) #17
  %165 = load i16, ptr %2, align 2
  %166 = and i16 %165, 252
  %167 = icmp eq i16 %166, 80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17
  br i1 %167, label %168, label %170

168:                                              ; preds = %154
  %169 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %6, i32 0, i32 9, i32 4
  store volatile ptr %152, ptr %169, align 8
  br label %172

170:                                              ; preds = %154
  %171 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %6, i32 0, i32 9, i32 3
  store volatile ptr %152, ptr %171, align 4
  br label %172

172:                                              ; preds = %170, %168
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !48
  %173 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %6, i32 0, i32 9
  %174 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %6, i32 0, i32 9, i32 2
  store volatile ptr %152, ptr %174, align 8
  %175 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %6, i32 0, i32 9, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %175, ptr noundef align 1 dereferenceable(6) %147, i32 6, i1 false) #17
  %176 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %6, i32 0, i32 9, i32 9
  store i16 %148, ptr %176, align 8
  %177 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %6, i32 0, i32 9, i32 10
  store i16 %149, ptr %177, align 2
  store ptr %110, ptr %173, align 8
  %178 = load i32, ptr %74, align 4
  %179 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %6, i32 0, i32 9, i32 1
  store i32 %178, ptr %179, align 4
  %180 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %1, i32 0, i32 2
  %181 = load i32, ptr %180, align 8
  %182 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %6, i32 0, i32 9, i32 8
  store i32 %181, ptr %182, align 4
  %183 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %1, i32 0, i32 3
  %184 = load i64, ptr %183, align 8
  %185 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %6, i32 0, i32 3
  store i64 %184, ptr %185, align 8
  %186 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %1, i32 0, i32 4
  %187 = load i64, ptr %186, align 8
  %188 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %6, i32 0, i32 7
  store i64 %187, ptr %188, align 8
  %189 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %1, i32 0, i32 6
  %190 = load i8, ptr %189, align 2
  %191 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %6, i32 0, i32 9, i32 12
  store i8 %190, ptr %191, align 2
  %192 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %6, i32 0, i32 9, i32 13
  %193 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %1, i32 0, i32 7
  %194 = load i32, ptr %193, align 1
  store i32 %194, ptr %192, align 1
  %195 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %6, i32 0, i32 8
  %196 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %1, i32 0, i32 5
  %197 = load i32, ptr %196, align 4
  store i32 %197, ptr %195, align 8
  %198 = getelementptr %struct.cfg80211_inform_bss, ptr %1, i32 0, i32 5, i32 4
  %199 = load i16, ptr %198, align 2
  %200 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %6, i32 0, i32 8, i32 4
  store i16 %199, ptr %200, align 4
  %201 = load ptr, ptr %1, align 8
  %202 = icmp eq ptr %201, %110
  %203 = getelementptr i8, ptr %0, i32 -544
  %204 = load volatile i32, ptr @jiffies, align 64
  %205 = call ptr @cfg80211_bss_update(ptr noundef %203, ptr noundef nonnull %6, i1 noundef zeroext %202, i32 noundef %204) #17
  %206 = icmp eq ptr %205, null
  br i1 %206, label %239, label %207

207:                                              ; preds = %172
  %208 = load i32, ptr %110, align 4
  %209 = icmp eq i32 %208, 2
  %210 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %205, i32 0, i32 9, i32 10
  %211 = load i16, ptr %210, align 2
  br i1 %209, label %212, label %215

212:                                              ; preds = %207
  %213 = and i16 %211, 2
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %220, label %218

215:                                              ; preds = %207
  %216 = and i16 %211, 1
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %215, %212
  %219 = call i32 @regulatory_hint_found_beacon(ptr noundef nonnull %0, ptr noundef nonnull %110, i32 noundef %4) #17
  br label %220

220:                                              ; preds = %218, %215, %212
  %221 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %205, i32 0, i32 9
  %222 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_return_bss, i32 0, i32 1), align 4
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %240

224:                                              ; preds = %220
  %225 = tail call ptr @llvm.thread.pointer() #17
  %226 = getelementptr inbounds %struct.thread_info, ptr %225, i32 0, i32 2
  %227 = load i32, ptr %226, align 8
  %228 = lshr i32 %227, 5
  %229 = getelementptr i32, ptr @__cpu_online_mask, i32 %228
  %230 = load volatile i32, ptr %229, align 4
  %231 = and i32 %227, 31
  %232 = shl nuw i32 1, %231
  %233 = and i32 %232, %230
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %224
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !34
  %236 = call i32 @__traceiter_cfg80211_return_bss(ptr noundef null, ptr noundef %221) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !35
  br label %240

237:                                              ; preds = %46, %41, %33, %27, %25
  %238 = phi i32 [ 2373, %25 ], [ 2376, %27 ], [ 2380, %33 ], [ 2391, %46 ], [ 2391, %41 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %238, i32 noundef 9, ptr noundef null) #17
  br label %239

239:                                              ; preds = %237, %172, %144, %132, %126, %115, %111, %107, %102, %94
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #17
  br label %428

240:                                              ; preds = %235, %224, %220
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #17
  %241 = icmp eq ptr %221, null
  br i1 %241, label %428, label %242

242:                                              ; preds = %240
  %243 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 76
  %244 = load i8, ptr %243, align 8
  %245 = and i8 %244, 1
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %428, label %247

247:                                              ; preds = %242
  %248 = getelementptr i8, ptr %8, i32 %9
  %249 = ptrtoint ptr %248 to i32
  %250 = icmp sgt i32 %9, 1
  br i1 %250, label %251, label %428

251:                                              ; preds = %262, %247
  %252 = phi i32 [ %266, %262 ], [ %9, %247 ]
  %253 = phi ptr [ %264, %262 ], [ %8, %247 ]
  %254 = getelementptr inbounds %struct.element, ptr %253, i32 0, i32 1
  %255 = load i8, ptr %254, align 1
  %256 = zext i8 %255 to i32
  %257 = add nuw nsw i32 %256, 2
  %258 = icmp ult i32 %252, %257
  br i1 %258, label %428, label %259

259:                                              ; preds = %251
  %260 = load i8, ptr %253, align 1
  %261 = icmp eq i8 %260, 71
  br i1 %261, label %268, label %262

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.element, ptr %253, i32 0, i32 2
  %264 = getelementptr i8, ptr %263, i32 %256
  %265 = ptrtoint ptr %264 to i32
  %266 = sub i32 %249, %265
  %267 = icmp sgt i32 %266, 1
  br i1 %267, label %251, label %428

268:                                              ; preds = %259
  %269 = icmp eq ptr %253, null
  br i1 %269, label %428, label %270

270:                                              ; preds = %268
  %271 = and i8 %244, 2
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %298, label %273

273:                                              ; preds = %290, %270
  %274 = phi i32 [ %294, %290 ], [ %9, %270 ]
  %275 = phi ptr [ %292, %290 ], [ %8, %270 ]
  %276 = getelementptr inbounds %struct.element, ptr %275, i32 0, i32 1
  %277 = load i8, ptr %276, align 1
  %278 = zext i8 %277 to i32
  %279 = add nuw nsw i32 %278, 2
  %280 = icmp ult i32 %274, %279
  br i1 %280, label %428, label %281

281:                                              ; preds = %273
  %282 = load i8, ptr %275, align 1
  %283 = icmp ne i8 %282, -1
  %284 = icmp eq i8 %277, 0
  %285 = select i1 %283, i1 true, i1 %284
  br i1 %285, label %290, label %286

286:                                              ; preds = %281
  %287 = getelementptr inbounds %struct.element, ptr %275, i32 0, i32 2
  %288 = load i8, ptr %287, align 1
  %289 = icmp eq i8 %288, 35
  br i1 %289, label %296, label %290

290:                                              ; preds = %286, %281
  %291 = getelementptr inbounds %struct.element, ptr %275, i32 0, i32 2
  %292 = getelementptr i8, ptr %291, i32 %278
  %293 = ptrtoint ptr %292 to i32
  %294 = sub i32 %249, %293
  %295 = icmp sgt i32 %294, 1
  br i1 %295, label %273, label %428

296:                                              ; preds = %286
  %297 = icmp eq ptr %275, null
  br i1 %297, label %428, label %298

298:                                              ; preds = %296, %270
  store ptr %221, ptr %7, align 8
  %299 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6
  %300 = load i16, ptr %2, align 2
  %301 = and i16 %300, 252
  %302 = icmp eq i16 %301, 128
  %303 = select i1 %302, i32 1, i32 2
  %304 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 4
  %305 = load i64, ptr %299, align 2
  %306 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 0, i32 2, i32 4
  %307 = load i16, ptr %306, align 2
  call fastcc void @cfg80211_parse_mbssid_data(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %303, ptr noundef %304, i64 noundef %305, i16 noundef zeroext %307, ptr noundef %8, i32 noundef %9, ptr noundef nonnull %7, i32 noundef %4) #17
  %308 = getelementptr i8, ptr %0, i32 -432
  call void @_raw_spin_lock_bh(ptr noundef %308) #17
  %309 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %205, i32 0, i32 9, i32 2
  %310 = load volatile ptr, ptr %309, align 4
  %311 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %205, i32 0, i32 9, i32 7
  %312 = load ptr, ptr %311, align 4
  %313 = icmp eq ptr %312, %311
  br i1 %313, label %427, label %314

314:                                              ; preds = %424, %298
  %315 = phi ptr [ %425, %424 ], [ %312, %298 ]
  %316 = getelementptr i8, ptr %315, i32 -28
  %317 = getelementptr i8, ptr %315, i32 -20
  %318 = load volatile ptr, ptr %317, align 4
  %319 = load i64, ptr %318, align 8
  %320 = load i64, ptr %310, align 8
  %321 = icmp ult i64 %319, %320
  br i1 %321, label %322, label %424

322:                                              ; preds = %333, %314
  %323 = phi i32 [ %337, %333 ], [ %9, %314 ]
  %324 = phi ptr [ %335, %333 ], [ %8, %314 ]
  %325 = getelementptr %struct.element, ptr %324, i32 0, i32 1
  %326 = load i8, ptr %325, align 1
  %327 = zext i8 %326 to i32
  %328 = add nuw nsw i32 %327, 2
  %329 = icmp ult i32 %323, %328
  br i1 %329, label %424, label %330

330:                                              ; preds = %322
  %331 = load i8, ptr %324, align 1
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %339, label %333

333:                                              ; preds = %330
  %334 = getelementptr inbounds %struct.element, ptr %324, i32 0, i32 2
  %335 = getelementptr i8, ptr %334, i32 %327
  %336 = ptrtoint ptr %335 to i32
  %337 = sub i32 %249, %336
  %338 = icmp sgt i32 %337, 1
  br i1 %338, label %322, label %424

339:                                              ; preds = %330
  %340 = getelementptr %struct.element, ptr %324, i32 0, i32 1
  %341 = zext i8 %326 to i32
  %342 = icmp eq ptr %324, null
  br i1 %342, label %424, label %343

343:                                              ; preds = %354, %339
  %344 = phi i32 [ %358, %354 ], [ %9, %339 ]
  %345 = phi ptr [ %356, %354 ], [ %8, %339 ]
  %346 = getelementptr %struct.element, ptr %345, i32 0, i32 1
  %347 = load i8, ptr %346, align 1
  %348 = zext i8 %347 to i32
  %349 = add nuw nsw i32 %348, 2
  %350 = icmp ult i32 %344, %349
  br i1 %350, label %424, label %351

351:                                              ; preds = %343
  %352 = load i8, ptr %345, align 1
  %353 = icmp eq i8 %352, 71
  br i1 %353, label %360, label %354

354:                                              ; preds = %351
  %355 = getelementptr inbounds %struct.element, ptr %345, i32 0, i32 2
  %356 = getelementptr i8, ptr %355, i32 %348
  %357 = ptrtoint ptr %356 to i32
  %358 = sub i32 %249, %357
  %359 = icmp sgt i32 %358, 1
  br i1 %359, label %343, label %424

360:                                              ; preds = %351
  %361 = getelementptr %struct.element, ptr %345, i32 0, i32 1
  %362 = zext i8 %347 to i32
  %363 = icmp eq ptr %345, null
  %364 = icmp ult ptr %345, %324
  %365 = select i1 %363, i1 true, i1 %364
  br i1 %365, label %424, label %366

366:                                              ; preds = %360
  %367 = call ptr @ieee80211_bss_get_elem(ptr noundef %316, i8 noundef zeroext 0) #17
  %368 = icmp eq ptr %367, null
  br i1 %368, label %424, label %369

369:                                              ; preds = %366
  %370 = getelementptr inbounds %struct.element, ptr %367, i32 0, i32 1
  %371 = load i8, ptr %370, align 1
  %372 = zext i8 %371 to i32
  %373 = add nuw nsw i32 %341, %362
  %374 = sub i32 %9, %373
  %375 = add i32 %374, %372
  %376 = call noalias align 64 ptr @__kmalloc(i32 noundef %375, i32 noundef 2848) #18
  %377 = icmp eq ptr %376, null
  br i1 %377, label %424, label %378

378:                                              ; preds = %369
  %379 = add i32 %375, 24
  %380 = call noalias align 64 ptr @__kmalloc(i32 noundef %379, i32 noundef 2848) #18
  %381 = icmp eq ptr %380, null
  br i1 %381, label %423, label %382

382:                                              ; preds = %378
  %383 = load i8, ptr %370, align 1
  %384 = add i8 %383, 2
  %385 = zext i8 %384 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %376, ptr nonnull align 1 %367, i32 %385, i1 false) #17
  %386 = getelementptr i8, ptr %376, i32 %385
  %387 = load i8, ptr %340, align 1
  %388 = add i8 %387, 2
  %389 = zext i8 %388 to i32
  %390 = getelementptr i8, ptr %324, i32 %389
  %391 = ptrtoint ptr %345 to i32
  %392 = ptrtoint ptr %390 to i32
  %393 = sub i32 %391, %392
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %386, ptr align 1 %390, i32 %393, i1 false) #17
  %394 = getelementptr i8, ptr %386, i32 %393
  %395 = load i8, ptr %361, align 1
  %396 = add i8 %395, 2
  %397 = zext i8 %396 to i32
  %398 = getelementptr i8, ptr %345, i32 %397
  %399 = ptrtoint ptr %398 to i32
  %400 = sub i32 %249, %399
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %394, ptr align 1 %398, i32 %400, i1 false) #17
  %401 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %380, i32 0, i32 2
  store i32 %375, ptr %401, align 16
  %402 = load i64, ptr %299, align 2
  store i64 %402, ptr %380, align 64
  %403 = load i16, ptr %2, align 2
  %404 = and i16 %403, 252
  %405 = icmp eq i16 %404, 128
  %406 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %380, i32 0, i32 3
  %407 = zext i1 %405 to i8
  store i8 %407, ptr %406, align 4
  %408 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %380, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %408, ptr nonnull align 64 %376, i32 %375, i1 false) #17
  %409 = load i16, ptr %2, align 2
  %410 = and i16 %409, 252
  %411 = icmp eq i16 %410, 80
  br i1 %411, label %412, label %416

412:                                              ; preds = %382
  %413 = getelementptr i8, ptr %315, i32 -12
  %414 = load volatile ptr, ptr %413, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !49
  store volatile ptr %380, ptr %413, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !50
  store volatile ptr %380, ptr %317, align 4
  %415 = icmp eq ptr %414, null
  br i1 %415, label %423, label %420

416:                                              ; preds = %382
  %417 = getelementptr i8, ptr %315, i32 -16
  %418 = load volatile ptr, ptr %417, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !51
  store volatile ptr %380, ptr %417, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !52
  store volatile ptr %380, ptr %317, align 4
  %419 = icmp eq ptr %418, null
  br i1 %419, label %423, label %420

420:                                              ; preds = %416, %412
  %421 = phi ptr [ %414, %412 ], [ %418, %416 ]
  %422 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %421, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %422, ptr noundef nonnull inttoptr (i32 8 to ptr)) #17
  br label %423

423:                                              ; preds = %420, %416, %412, %378
  call void @kfree(ptr noundef nonnull %376) #17
  br label %424

424:                                              ; preds = %423, %369, %366, %360, %354, %343, %339, %333, %322, %314
  %425 = load ptr, ptr %315, align 4
  %426 = icmp eq ptr %425, %311
  br i1 %426, label %427, label %314

427:                                              ; preds = %424, %298
  call void @_raw_spin_unlock_bh(ptr noundef %308) #17
  br label %428

428:                                              ; preds = %427, %296, %290, %273, %268, %262, %251, %247, %242, %240, %239
  %429 = phi ptr [ null, %239 ], [ %221, %296 ], [ null, %240 ], [ %221, %242 ], [ %221, %268 ], [ %221, %427 ], [ %221, %247 ], [ %221, %290 ], [ %221, %273 ], [ %221, %262 ], [ %221, %251 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  ret ptr %429
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_ref_bss(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !13

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #17, !srcloc !21
  unreachable

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %5
  %8 = getelementptr i8, ptr %0, i32 -432
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #17
  %9 = getelementptr i8, ptr %1, i32 -28
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 4
  %12 = getelementptr i8, ptr %1, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %13, i32 -28
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  br label %19

19:                                               ; preds = %15, %7
  %20 = phi ptr [ %13, %15 ], [ %1, %7 ]
  %21 = getelementptr i8, ptr %20, i32 24
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %22, i32 -28
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %24, %19
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #17
  br label %29

29:                                               ; preds = %28, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_put_bss(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !13

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #17, !srcloc !21
  unreachable

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %5
  %8 = getelementptr i8, ptr %1, i32 -72
  %9 = getelementptr i8, ptr %0, i32 -432
  tail call void @_raw_spin_lock_bh(ptr noundef %9) #17
  %10 = getelementptr i8, ptr %1, i32 20
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %11, i32 -28
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  store i32 %16, ptr %14, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %11, i32 -72
  tail call fastcc void @bss_free(ptr noundef %19) #17
  br label %20

20:                                               ; preds = %18, %13, %7
  %21 = getelementptr i8, ptr %1, i32 24
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %22, i32 -28
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  store i32 %27, ptr %25, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %22, i32 -72
  tail call fastcc void @bss_free(ptr noundef %30) #17
  br label %31

31:                                               ; preds = %29, %24, %20
  %32 = getelementptr i8, ptr %1, i32 -28
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  store i32 %34, ptr %32, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  tail call fastcc void @bss_free(ptr noundef %8) #17
  br label %37

37:                                               ; preds = %36, %31
  tail call void @_raw_spin_unlock_bh(ptr noundef %9) #17
  br label %38

38:                                               ; preds = %37, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_unlink_bss(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !13

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #17, !srcloc !21
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 -544
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %9, !prof !13

8:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2573, i32 noundef 9, ptr noundef null) #17
  br label %39

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %1, i32 -72
  %11 = getelementptr i8, ptr %0, i32 -432
  tail call void @_raw_spin_lock_bh(ptr noundef %11) #17
  %12 = load volatile ptr, ptr %10, align 4
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %38, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 -28
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %32, label %19

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %0, i32 -416
  br label %21

21:                                               ; preds = %29, %19
  %22 = phi ptr [ %16, %19 ], [ %23, %29 ]
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %22, i32 -100
  %25 = tail call fastcc zeroext i1 @__cfg80211_unlink_bss(ptr noundef %6, ptr noundef %24)
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, ptr %20, align 32
  %28 = add i32 %27, 1
  store i32 %28, ptr %20, align 32
  br label %29

29:                                               ; preds = %26, %21
  %30 = getelementptr i8, ptr %23, i32 -28
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %32, label %21

32:                                               ; preds = %29, %14
  %33 = tail call fastcc zeroext i1 @__cfg80211_unlink_bss(ptr noundef %6, ptr noundef %10)
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = getelementptr i8, ptr %0, i32 -416
  %36 = load i32, ptr %35, align 32
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 32
  br label %38

38:                                               ; preds = %34, %32, %9
  tail call void @_raw_spin_unlock_bh(ptr noundef %11) #17
  br label %39

39:                                               ; preds = %38, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__cfg80211_unlink_bss(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 1
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %69, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %4, ptr %12, align 4
  store volatile ptr %3, ptr %3, align 4
  store ptr %3, ptr %11, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %1, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store volatile ptr %1, ptr %1, align 4
  store ptr %1, ptr %15, align 4
  %19 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 7
  %20 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 7, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store volatile ptr %19, ptr %19, align 4
  store ptr %19, ptr %20, align 4
  %24 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 2
  %25 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 19
  tail call void @rb_erase(ptr noundef %24, ptr noundef %25) #17
  %26 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 21
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -1
  store i32 %28, ptr %26, align 4
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 18
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  %33 = xor i1 %29, %32
  %34 = load i1, ptr @__cfg80211_unlink_bss.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %41, !prof !13

37:                                               ; preds = %14
  store i1 true, ptr @__cfg80211_unlink_bss.__already_done, align 1
  %38 = load volatile ptr, ptr %30, align 4
  %39 = icmp eq ptr %38, %30
  %40 = zext i1 %39 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 216, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %28, i32 noundef %40) #17
  br label %41

41:                                               ; preds = %37, %14
  %42 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = getelementptr i8, ptr %43, i32 -28
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, -1
  store i32 %48, ptr %46, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = getelementptr i8, ptr %43, i32 -72
  tail call fastcc void @bss_free(ptr noundef %51) #17
  br label %52

52:                                               ; preds = %50, %45, %41
  %53 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 9, i32 6
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = getelementptr i8, ptr %54, i32 -28
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, -1
  store i32 %59, ptr %57, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = getelementptr i8, ptr %54, i32 -72
  tail call fastcc void @bss_free(ptr noundef %62) #17
  br label %63

63:                                               ; preds = %61, %56, %52
  %64 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %1, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, -1
  store i32 %66, ptr %64, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  tail call fastcc void @bss_free(ptr noundef %1) #17
  br label %69

69:                                               ; preds = %68, %63, %6
  %70 = phi i1 [ false, %6 ], [ true, %63 ], [ true, %68 ]
  ret i1 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_bss_iter(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #2 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !13

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #17, !srcloc !21
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i32 -432
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #17
  %9 = getelementptr i8, ptr %0, i32 -428
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq ptr %1, null
  br label %14

14:                                               ; preds = %22, %12
  %15 = phi ptr [ %10, %12 ], [ %23, %22 ]
  br i1 %13, label %20, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %15, i32 0, i32 9
  %18 = load ptr, ptr %17, align 8
  %19 = tail call zeroext i1 @cfg80211_is_sub_chan(ptr noundef nonnull %1, ptr noundef %18) #17
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %14
  %21 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %15, i32 0, i32 9
  tail call void %2(ptr noundef nonnull %0, ptr noundef %21, ptr noundef %3) #17
  br label %22

22:                                               ; preds = %20, %16
  %23 = load ptr, ptr %15, align 4
  %24 = icmp eq ptr %23, %9
  br i1 %24, label %25, label %14

25:                                               ; preds = %22, %7
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_is_sub_chan(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_update_assoc_bss_entry(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !13

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #17, !srcloc !21
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %3, i32 -544
  %8 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %3, i32 -432
  tail call void @_raw_spin_lock_bh(ptr noundef %10) #17
  %11 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %9, i32 0, i32 9
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %162, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %9, i32 0, i32 9, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  %18 = getelementptr i8, ptr %16, i32 -72
  %19 = select i1 %17, ptr %9, ptr %18
  %20 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %19, i32 0, i32 9
  store ptr %1, ptr %20, align 8
  %21 = getelementptr i8, ptr %3, i32 -428
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %95, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 19
  br label %26

26:                                               ; preds = %57, %24
  %27 = phi ptr [ %22, %24 ], [ %58, %57 ]
  %28 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %27, i32 0, i32 9, i32 10
  %30 = load i16, ptr %29, align 2
  %31 = load i32, ptr %25, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %49, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %28, align 8
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = icmp ult i32 %31, 3
  br i1 %38, label %42, label %57

39:                                               ; preds = %33
  switch i32 %31, label %57 [
    i32 0, label %44
    i32 2, label %40
    i32 3, label %41
  ]

40:                                               ; preds = %39
  br label %44

41:                                               ; preds = %39
  br label %44

42:                                               ; preds = %37
  %43 = sub i32 3, %31
  br label %44

44:                                               ; preds = %42, %41, %40, %39
  %45 = phi i32 [ 0, %41 ], [ 2, %40 ], [ 1, %39 ], [ %43, %42 ]
  %46 = and i16 %30, 3
  %47 = zext i16 %46 to i32
  %48 = icmp eq i32 %45, %47
  br label %49

49:                                               ; preds = %44, %26
  %50 = phi i1 [ %48, %44 ], [ true, %26 ]
  %51 = xor i1 %50, true
  %52 = icmp eq ptr %27, %19
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = tail call fastcc i32 @cmp_bss(ptr noundef %28, ptr noundef %20, i32 noundef 0)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54, %49, %39, %37
  %58 = load ptr, ptr %27, align 4
  %59 = icmp eq ptr %58, %21
  br i1 %59, label %95, label %26

60:                                               ; preds = %54
  %61 = icmp eq ptr %27, null
  br i1 %61, label %95, label %62

62:                                               ; preds = %60
  %63 = tail call fastcc zeroext i1 @cfg80211_update_known_bss(ptr noundef %19, ptr noundef nonnull %27, i1 noundef zeroext false)
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %27, i32 0, i32 9, i32 4
  store ptr null, ptr %65, align 8
  %66 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %27, i32 0, i32 9, i32 3
  store ptr null, ptr %66, align 4
  br label %67

67:                                               ; preds = %64, %62
  %68 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %27, i32 0, i32 9, i32 7
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %83, label %71

71:                                               ; preds = %67
  %72 = getelementptr i8, ptr %3, i32 -416
  br label %73

73:                                               ; preds = %81, %71
  %74 = phi ptr [ %69, %71 ], [ %75, %81 ]
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %74, i32 -100
  %77 = tail call fastcc zeroext i1 @__cfg80211_unlink_bss(ptr noundef %7, ptr noundef %76)
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, ptr %72, align 32
  %80 = add i32 %79, 1
  store i32 %80, ptr %72, align 32
  br label %81

81:                                               ; preds = %78, %73
  %82 = icmp eq ptr %75, %68
  br i1 %82, label %83, label %73

83:                                               ; preds = %81, %67
  %84 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %27, i32 0, i32 6
  %85 = load volatile i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87, !prof !22

87:                                               ; preds = %83
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2678, i32 noundef 9, ptr noundef null) #17
  br label %88

88:                                               ; preds = %87, %83
  %89 = tail call fastcc zeroext i1 @__cfg80211_unlink_bss(ptr noundef %7, ptr noundef nonnull %27)
  br i1 %89, label %91, label %90, !prof !22

90:                                               ; preds = %88
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2679, i32 noundef 9, ptr noundef null) #17
  br label %95

91:                                               ; preds = %88
  %92 = getelementptr i8, ptr %3, i32 -416
  %93 = load i32, ptr %92, align 32
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 32
  br label %95

95:                                               ; preds = %91, %90, %60, %57, %14
  %96 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %19, i32 0, i32 2
  %97 = getelementptr i8, ptr %3, i32 -420
  tail call void @rb_erase(ptr noundef %96, ptr noundef %97) #17
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %117, label %100

100:                                              ; preds = %107, %95
  %101 = phi ptr [ %113, %107 ], [ %98, %95 ]
  %102 = phi ptr [ %112, %107 ], [ %97, %95 ]
  %103 = getelementptr i8, ptr %101, i32 56
  %104 = tail call fastcc i32 @cmp_bss(ptr noundef %20, ptr noundef %103, i32 noundef 0) #17
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107, !prof !13

106:                                              ; preds = %100
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1480, i32 noundef 9, ptr noundef null) #17
  br label %122

107:                                              ; preds = %100
  %108 = icmp slt i32 %104, 0
  %109 = load ptr, ptr %102, align 4
  %110 = getelementptr inbounds %struct.rb_node, ptr %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.rb_node, ptr %109, i32 0, i32 1
  %112 = select i1 %108, ptr %110, ptr %111
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %100

115:                                              ; preds = %107
  %116 = ptrtoint ptr %101 to i32
  br label %117

117:                                              ; preds = %115, %95
  %118 = phi i32 [ %116, %115 ], [ 0, %95 ]
  %119 = phi ptr [ %112, %115 ], [ %97, %95 ]
  store i32 %118, ptr %96, align 4
  %120 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %19, i32 0, i32 2, i32 1
  store ptr null, ptr %120, align 4
  %121 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %19, i32 0, i32 2, i32 2
  store ptr null, ptr %121, align 4
  store ptr %96, ptr %119, align 4
  tail call void @rb_insert_color(ptr noundef %96, ptr noundef %97) #17
  br label %122

122:                                              ; preds = %117, %106
  %123 = getelementptr i8, ptr %3, i32 -416
  %124 = load i32, ptr %123, align 32
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 32
  %126 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %19, i32 0, i32 9, i32 7
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, %126
  br i1 %128, label %162, label %129

129:                                              ; preds = %158, %122
  %130 = phi ptr [ %132, %158 ], [ %127, %122 ]
  %131 = getelementptr i8, ptr %130, i32 -28
  %132 = load ptr, ptr %130, align 4
  store ptr %1, ptr %131, align 8
  %133 = getelementptr i8, ptr %130, i32 -84
  tail call void @rb_erase(ptr noundef %133, ptr noundef %97) #17
  %134 = load ptr, ptr %97, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %153, label %136

136:                                              ; preds = %143, %129
  %137 = phi ptr [ %149, %143 ], [ %134, %129 ]
  %138 = phi ptr [ %148, %143 ], [ %97, %129 ]
  %139 = getelementptr i8, ptr %137, i32 56
  %140 = tail call fastcc i32 @cmp_bss(ptr noundef %131, ptr noundef %139, i32 noundef 0) #17
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143, !prof !13

142:                                              ; preds = %136
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1480, i32 noundef 9, ptr noundef null) #17
  br label %158

143:                                              ; preds = %136
  %144 = icmp slt i32 %140, 0
  %145 = load ptr, ptr %138, align 4
  %146 = getelementptr inbounds %struct.rb_node, ptr %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.rb_node, ptr %145, i32 0, i32 1
  %148 = select i1 %144, ptr %146, ptr %147
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %136

151:                                              ; preds = %143
  %152 = ptrtoint ptr %137 to i32
  br label %153

153:                                              ; preds = %151, %129
  %154 = phi i32 [ %152, %151 ], [ 0, %129 ]
  %155 = phi ptr [ %148, %151 ], [ %97, %129 ]
  store i32 %154, ptr %133, align 4
  %156 = getelementptr i8, ptr %130, i32 -80
  store ptr null, ptr %156, align 4
  %157 = getelementptr i8, ptr %130, i32 -76
  store ptr null, ptr %157, align 4
  store ptr %133, ptr %155, align 4
  tail call void @rb_insert_color(ptr noundef %133, ptr noundef %97) #17
  br label %158

158:                                              ; preds = %153, %142
  %159 = load i32, ptr %123, align 32
  %160 = add i32 %159, 1
  store i32 %160, ptr %123, align 32
  %161 = icmp eq ptr %132, %126
  br i1 %161, label %162, label %129

162:                                              ; preds = %158, %122, %6
  tail call void @_raw_spin_unlock_bh(ptr noundef %10) #17
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cmp_bss(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 {
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ieee80211_channel, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ieee80211_channel, ptr %4, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %9, %11
  br label %262

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.cfg80211_bss, ptr %0, i32 0, i32 2
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %262, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 2
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %262, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cfg80211_bss, ptr %0, i32 0, i32 10
  %23 = load i16, ptr %22, align 2
  %24 = and i16 %23, 3
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %15, i32 0, i32 4
  %28 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %15, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr i8, ptr %27, i32 %29
  %31 = ptrtoint ptr %30 to i32
  %32 = icmp sgt i32 %29, 1
  br i1 %32, label %33, label %50

33:                                               ; preds = %44, %26
  %34 = phi i32 [ %48, %44 ], [ %29, %26 ]
  %35 = phi ptr [ %46, %44 ], [ %27, %26 ]
  %36 = getelementptr inbounds %struct.element, ptr %35, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = add nuw nsw i32 %38, 2
  %40 = icmp ult i32 %34, %39
  br i1 %40, label %50, label %41

41:                                               ; preds = %33
  %42 = load i8, ptr %35, align 1
  %43 = icmp eq i8 %42, 114
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.element, ptr %35, i32 0, i32 2
  %46 = getelementptr i8, ptr %45, i32 %38
  %47 = ptrtoint ptr %46 to i32
  %48 = sub i32 %31, %47
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %33, label %50

50:                                               ; preds = %44, %41, %33, %26, %21
  %51 = phi ptr [ null, %21 ], [ null, %26 ], [ null, %44 ], [ null, %33 ], [ %35, %41 ]
  %52 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 10
  %53 = load i16, ptr %52, align 2
  %54 = and i16 %53, 3
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %158

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %19, i32 0, i32 4
  %58 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %19, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = getelementptr i8, ptr %57, i32 %59
  %61 = ptrtoint ptr %60 to i32
  %62 = icmp sgt i32 %59, 1
  br i1 %62, label %63, label %158

63:                                               ; preds = %74, %56
  %64 = phi i32 [ %78, %74 ], [ %59, %56 ]
  %65 = phi ptr [ %76, %74 ], [ %57, %56 ]
  %66 = getelementptr %struct.element, ptr %65, i32 0, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = add nuw nsw i32 %68, 2
  %70 = icmp ult i32 %64, %69
  br i1 %70, label %158, label %71

71:                                               ; preds = %63
  %72 = load i8, ptr %65, align 1
  %73 = icmp eq i8 %72, 114
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.element, ptr %65, i32 0, i32 2
  %76 = getelementptr i8, ptr %75, i32 %68
  %77 = ptrtoint ptr %76 to i32
  %78 = sub i32 %61, %77
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %63, label %158

80:                                               ; preds = %71
  %81 = zext i8 %67 to i32
  %82 = icmp ne ptr %51, null
  %83 = icmp ne ptr %65, null
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %85, label %158

85:                                               ; preds = %80
  %86 = getelementptr i8, ptr %51, i32 1
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i8 %67, %87
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr i8, ptr %51, i32 2
  %92 = getelementptr i8, ptr %65, i32 2
  %93 = tail call i32 @memcmp(ptr noundef %91, ptr noundef %92, i32 noundef %88)
  br label %96

94:                                               ; preds = %85
  %95 = sub nsw i32 %81, %88
  br label %96

96:                                               ; preds = %94, %90
  %97 = phi i32 [ %93, %90 ], [ %95, %94 ]
  %98 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %15, i32 0, i32 4
  %99 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %15, i32 0, i32 2
  %100 = load i32, ptr %99, align 8
  %101 = getelementptr i8, ptr %98, i32 %100
  %102 = ptrtoint ptr %101 to i32
  %103 = icmp sgt i32 %100, 1
  br i1 %103, label %104, label %121

104:                                              ; preds = %115, %96
  %105 = phi i32 [ %119, %115 ], [ %100, %96 ]
  %106 = phi ptr [ %117, %115 ], [ %98, %96 ]
  %107 = getelementptr inbounds %struct.element, ptr %106, i32 0, i32 1
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = add nuw nsw i32 %109, 2
  %111 = icmp ult i32 %105, %110
  br i1 %111, label %121, label %112

112:                                              ; preds = %104
  %113 = load i8, ptr %106, align 1
  %114 = icmp eq i8 %113, 113
  br i1 %114, label %121, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.element, ptr %106, i32 0, i32 2
  %117 = getelementptr i8, ptr %116, i32 %109
  %118 = ptrtoint ptr %117 to i32
  %119 = sub i32 %102, %118
  %120 = icmp sgt i32 %119, 1
  br i1 %120, label %104, label %121

121:                                              ; preds = %115, %112, %104, %96
  %122 = phi ptr [ null, %96 ], [ null, %115 ], [ null, %104 ], [ %106, %112 ]
  br label %123

123:                                              ; preds = %134, %121
  %124 = phi i32 [ %138, %134 ], [ %59, %121 ]
  %125 = phi ptr [ %136, %134 ], [ %57, %121 ]
  %126 = getelementptr %struct.element, ptr %125, i32 0, i32 1
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  %129 = add nuw nsw i32 %128, 2
  %130 = icmp ult i32 %124, %129
  br i1 %130, label %158, label %131

131:                                              ; preds = %123
  %132 = load i8, ptr %125, align 1
  %133 = icmp eq i8 %132, 113
  br i1 %133, label %140, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.element, ptr %125, i32 0, i32 2
  %136 = getelementptr i8, ptr %135, i32 %128
  %137 = ptrtoint ptr %136 to i32
  %138 = sub i32 %61, %137
  %139 = icmp sgt i32 %138, 1
  br i1 %139, label %123, label %158

140:                                              ; preds = %131
  %141 = zext i8 %127 to i32
  %142 = icmp ne ptr %122, null
  %143 = icmp ne ptr %125, null
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %145, label %158

145:                                              ; preds = %140
  %146 = icmp eq i32 %97, 0
  br i1 %146, label %147, label %262

147:                                              ; preds = %145
  %148 = getelementptr i8, ptr %122, i32 1
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp eq i8 %127, %149
  br i1 %151, label %154, label %152

152:                                              ; preds = %147
  %153 = sub nsw i32 %141, %150
  br label %262

154:                                              ; preds = %147
  %155 = getelementptr i8, ptr %122, i32 2
  %156 = getelementptr i8, ptr %125, i32 2
  %157 = tail call i32 @memcmp(ptr noundef %155, ptr noundef %156, i32 noundef %150)
  br label %262

158:                                              ; preds = %140, %134, %123, %80, %74, %63, %56, %50
  %159 = getelementptr inbounds %struct.cfg80211_bss, ptr %0, i32 0, i32 11
  %160 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 11
  %161 = tail call i32 @memcmp(ptr noundef dereferenceable(6) %159, ptr noundef dereferenceable(6) %160, i32 noundef 6)
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %262

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %15, i32 0, i32 4
  %165 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %15, i32 0, i32 2
  %166 = load i32, ptr %165, align 8
  %167 = getelementptr i8, ptr %164, i32 %166
  %168 = ptrtoint ptr %167 to i32
  %169 = icmp sgt i32 %166, 1
  br i1 %169, label %170, label %187

170:                                              ; preds = %181, %163
  %171 = phi i32 [ %185, %181 ], [ %166, %163 ]
  %172 = phi ptr [ %183, %181 ], [ %164, %163 ]
  %173 = getelementptr inbounds %struct.element, ptr %172, i32 0, i32 1
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = add nuw nsw i32 %175, 2
  %177 = icmp ult i32 %171, %176
  br i1 %177, label %187, label %178

178:                                              ; preds = %170
  %179 = load i8, ptr %172, align 1
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.element, ptr %172, i32 0, i32 2
  %183 = getelementptr i8, ptr %182, i32 %175
  %184 = ptrtoint ptr %183 to i32
  %185 = sub i32 %168, %184
  %186 = icmp sgt i32 %185, 1
  br i1 %186, label %170, label %187

187:                                              ; preds = %181, %178, %170, %163
  %188 = phi ptr [ null, %163 ], [ null, %181 ], [ null, %170 ], [ %172, %178 ]
  %189 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %19, i32 0, i32 4
  %190 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %19, i32 0, i32 2
  %191 = load i32, ptr %190, align 8
  %192 = getelementptr i8, ptr %189, i32 %191
  %193 = ptrtoint ptr %192 to i32
  %194 = icmp sgt i32 %191, 1
  br i1 %194, label %195, label %212

195:                                              ; preds = %206, %187
  %196 = phi i32 [ %210, %206 ], [ %191, %187 ]
  %197 = phi ptr [ %208, %206 ], [ %189, %187 ]
  %198 = getelementptr inbounds %struct.element, ptr %197, i32 0, i32 1
  %199 = load i8, ptr %198, align 1
  %200 = zext i8 %199 to i32
  %201 = add nuw nsw i32 %200, 2
  %202 = icmp ult i32 %196, %201
  br i1 %202, label %212, label %203

203:                                              ; preds = %195
  %204 = load i8, ptr %197, align 1
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.element, ptr %197, i32 0, i32 2
  %208 = getelementptr i8, ptr %207, i32 %200
  %209 = ptrtoint ptr %208 to i32
  %210 = sub i32 %193, %209
  %211 = icmp sgt i32 %210, 1
  br i1 %211, label %195, label %212

212:                                              ; preds = %206, %195, %187
  %213 = icmp ne ptr %188, null
  %214 = zext i1 %213 to i32
  br label %262

215:                                              ; preds = %203
  %216 = icmp ne ptr %188, null
  %217 = icmp ne ptr %197, null
  %218 = select i1 %216, i1 true, i1 %217
  %219 = sext i1 %218 to i32
  %220 = select i1 %216, i1 %217, i1 false
  %221 = select i1 %216, i32 1, i32 %219
  br i1 %220, label %222, label %262

222:                                              ; preds = %215
  switch i32 %2, label %227 [
    i32 1, label %223
    i32 2, label %241
  ]

223:                                              ; preds = %222
  %224 = getelementptr i8, ptr %197, i32 1
  %225 = load i8, ptr %224, align 1
  %226 = zext i8 %225 to i32
  br label %262

227:                                              ; preds = %222
  %228 = getelementptr i8, ptr %188, i32 1
  %229 = load i8, ptr %228, align 1
  %230 = zext i8 %229 to i32
  %231 = getelementptr i8, ptr %197, i32 1
  %232 = load i8, ptr %231, align 1
  %233 = icmp eq i8 %232, %229
  br i1 %233, label %237, label %234

234:                                              ; preds = %227
  %235 = zext i8 %232 to i32
  %236 = sub nsw i32 %235, %230
  br label %262

237:                                              ; preds = %227
  %238 = getelementptr i8, ptr %188, i32 2
  %239 = getelementptr i8, ptr %197, i32 2
  %240 = tail call i32 @memcmp(ptr noundef %238, ptr noundef %239, i32 noundef %230)
  br label %262

241:                                              ; preds = %222
  %242 = getelementptr i8, ptr %188, i32 1
  %243 = load i8, ptr %242, align 1
  %244 = getelementptr i8, ptr %197, i32 1
  %245 = load i8, ptr %244, align 1
  %246 = icmp eq i8 %245, %243
  %247 = zext i8 %243 to i32
  br i1 %246, label %248, label %250

248:                                              ; preds = %241
  %249 = icmp eq i8 %243, 0
  br i1 %249, label %262, label %256

250:                                              ; preds = %241
  %251 = zext i8 %245 to i32
  %252 = sub nsw i32 %251, %247
  br label %262

253:                                              ; preds = %256
  %254 = add nuw nsw i32 %257, 1
  %255 = icmp eq i32 %254, %247
  br i1 %255, label %262, label %256

256:                                              ; preds = %253, %248
  %257 = phi i32 [ %254, %253 ], [ 0, %248 ]
  %258 = add nuw nsw i32 %257, 2
  %259 = getelementptr i8, ptr %197, i32 %258
  %260 = load i8, ptr %259, align 1
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %253, label %262

262:                                              ; preds = %256, %253, %250, %248, %237, %234, %223, %215, %212, %158, %154, %152, %145, %17, %13, %7
  %263 = phi i32 [ %12, %7 ], [ %236, %234 ], [ %240, %237 ], [ %252, %250 ], [ %226, %223 ], [ -1, %13 ], [ 1, %17 ], [ %161, %158 ], [ %221, %215 ], [ %97, %145 ], [ %157, %154 ], [ %153, %152 ], [ 0, %248 ], [ %214, %212 ], [ -1, %256 ], [ 0, %253 ]
  ret i32 %263
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_operating_class_to_band(i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_scan_done(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_sched_scan_results(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_sched_scan_stopped(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_sched_scan_stop(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_get_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_return_bss(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bss_free(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 6
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !22

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef null) #17
  br label %31

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 9, i32 3
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 9, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %8, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %15, ptr noundef nonnull inttoptr (i32 8 to ptr)) #17
  br label %16

16:                                               ; preds = %14, %10, %6
  %17 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 9, i32 4
  %18 = load volatile ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %18, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %21, ptr noundef nonnull inttoptr (i32 8 to ptr)) #17
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 1
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 1, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  store volatile ptr %24, ptr %28, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %22
  tail call void @kfree(ptr noundef %0) #17
  br label %31

31:                                               ; preds = %30, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_hint_found_beacon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_bss_get_elem(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_inform_bss_frame(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #14

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind readonly }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { nounwind allocsize(2) }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 2156329510}
!10 = !{i64 2156329668}
!11 = !{i64 2156316504}
!12 = !{i64 2156316666}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i8 0, i8 2}
!15 = !{!"auto-init"}
!16 = !{i64 390404, i64 390465}
!17 = !{i64 409104}
!18 = !{i64 393421}
!19 = !{i64 2158597508}
!20 = !{i64 2158597682}
!21 = !{i64 2156067259, i64 2156067743, i64 2156067296, i64 2156067352, i64 2156067386, i64 2156067410, i64 2156067451, i64 2156067472, i64 2156067500, i64 2156067534}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2150847711}
!24 = !{i64 2158628687}
!25 = !{i64 2158628871}
!26 = !{i64 2149407504}
!27 = !{i64 2149407721}
!28 = !{i64 2158610864}
!29 = !{i64 2158611048}
!30 = !{i64 2157367267}
!31 = !{i64 2157367453}
!32 = !{i64 2158644582}
!33 = !{i64 2158644838}
!34 = !{i64 2158672249}
!35 = !{i64 2158672405}
!36 = !{i64 2159254328}
!37 = !{i64 2159138251}
!38 = !{i64 2159155675}
!39 = !{i64 2159163629}
!40 = !{i64 2159189106}
!41 = !{i64 2159200501}
!42 = !{i64 2159220263}
!43 = !{i64 2159272529}
!44 = !{i64 2159280677}
!45 = !{i64 2159288332}
!46 = !{i64 2158658953}
!47 = !{i64 2158659159}
!48 = !{i64 2159374266}
!49 = !{i64 2159306231}
!50 = !{i64 2159314416}
!51 = !{i64 2159329729}
!52 = !{i64 2159341888}
