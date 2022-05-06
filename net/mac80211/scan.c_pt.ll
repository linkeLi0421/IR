; ModuleID = '/llk/IR/net/mac80211/scan.c_pt.bc'
source_filename = "../net/mac80211/scan.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_scan_completed:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_scan_completed\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_scan_completed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_sched_scan_results:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_sched_scan_results\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_sched_scan_results:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_sched_scan_stopped:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_sched_scan_stopped\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_sched_scan_stopped:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.126, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.126 = type { i32, i16 }
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.sk_buff_head = type { %union.anon.87, i32, %struct.spinlock }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { ptr, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.138, i32 }
%union.anon.138 = type { ptr }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.150, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%union.anon.150 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.128, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.128 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.129] }
%struct.anon.129 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.151 }
%union.anon.151 = type { %struct.anon.157, [16 x i8] }
%struct.anon.157 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_ext = type { i16, i16, %union.anon.184 }
%union.anon.184 = type { %struct.anon.186 }
%struct.anon.186 = type <{ [6 x i8], i32, i8, [3 x i8], [0 x i8] }>
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.ieee802_11_elems = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8 }
%struct.ieee80211_bss = type { i32, i32, i8, i8, [32 x i8], i32, ptr, i32, i8, i8, i8, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.125, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
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
%struct.anon.125 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_sched_scan_request = type { i64, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, %struct.cfg80211_bss_select_adjust, ptr, ptr, i32, i8, %struct.callback_head, i32, i8, %struct.list_head, [0 x ptr] }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.44, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.89, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.44 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ref_tracker_dir = type {}
%union.anon.89 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [16 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, %struct.netdevice_tracker, [48 x i8], [0 x i32] }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [12 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_scan_request = type { %struct.ieee80211_scan_ies, %struct.cfg80211_scan_request }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }

@__kstrtab_ieee80211_scan_completed = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_scan_completed = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_scan_completed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_scan_completed to i32), ptr @__kstrtab_ieee80211_scan_completed, ptr @__kstrtabns_ieee80211_scan_completed }, section "___ksymtab+ieee80211_scan_completed", align 4
@ieee80211_request_ibss_scan.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [20 x i8] c"net/mac80211/scan.c\00", align 1
@ieee80211_request_ibss_scan.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ieee80211_sched_scan_results = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_sched_scan_results = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_sched_scan_results = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_sched_scan_results to i32), ptr @__kstrtab_ieee80211_sched_scan_results, ptr @__kstrtabns_ieee80211_sched_scan_results }, section "___ksymtab+ieee80211_sched_scan_results", align 4
@__kstrtab_ieee80211_sched_scan_stopped = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_sched_scan_stopped = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_sched_scan_stopped = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_sched_scan_stopped to i32), ptr @__kstrtab_ieee80211_sched_scan_stopped, ptr @__kstrtabns_ieee80211_sched_scan_stopped }, section "___ksymtab+ieee80211_sched_scan_stopped", align 4
@ieee80211_have_rx_timestamp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"net/mac80211/ieee80211_i.h\00", align 1
@__tracepoint_api_scan_completed = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_drv_sw_scan_start = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@drv_hw_scan.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@__tracepoint_drv_hw_scan = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__tracepoint_drv_sw_scan_complete = external dso_local global %struct.tracepoint, align 4
@drv_cancel_hw_scan.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_cancel_hw_scan = external dso_local global %struct.tracepoint, align 4
@drv_sched_scan_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_sched_scan_start = external dso_local global %struct.tracepoint, align 4
@drv_sched_scan_stop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_sched_scan_stop = external dso_local global %struct.tracepoint, align 4
@__tracepoint_api_sched_scan_results = external dso_local global %struct.tracepoint, align 4
@__tracepoint_api_sched_scan_stopped = external dso_local global %struct.tracepoint, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_ieee80211_scan_completed, ptr @__ksymtab_ieee80211_sched_scan_results, ptr @__ksymtab_ieee80211_sched_scan_stopped], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_rx_bss_put(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %1, i32 -60
  tail call void @cfg80211_put_bss(ptr noundef %6, ptr noundef %7) #11
  br label %8

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_bss_info_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.cfg80211_inform_bss, align 8
  %7 = load i16, ptr %2, align 2
  %8 = and i16 %7, 252
  %9 = icmp eq i16 %8, 128
  %10 = icmp eq i16 %8, 28
  %11 = or i1 %9, %10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #11
  %12 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %6, i32 0, i32 3
  %13 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 1
  %14 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(40) %14, i8 0, i64 40, i1 false)
  %15 = load i64, ptr %13, align 8
  store i64 %15, ptr %12, align 8
  %16 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 256
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 13
  %27 = load i8, ptr %26, align 2
  %28 = sext i8 %27 to i32
  %29 = mul nsw i32 %28, 100
  br label %44

30:                                               ; preds = %20
  %31 = load volatile i32, ptr %21, align 4
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 13
  %36 = load i8, ptr %35, align 2
  %37 = sext i8 %36 to i16
  %38 = mul nsw i16 %37, 100
  %39 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 13
  %40 = load i8, ptr %39, align 8
  %41 = sext i8 %40 to i16
  %42 = sdiv i16 %38, %41
  %43 = sext i16 %42 to i32
  br label %44

44:                                               ; preds = %34, %25
  %45 = phi i32 [ %29, %25 ], [ %43, %34 ]
  %46 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %6, i32 0, i32 2
  store i32 %45, ptr %46, align 8
  br label %47

47:                                               ; preds = %44, %30, %5
  %48 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %6, i32 0, i32 1
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 7
  %50 = load i16, ptr %49, align 1
  %51 = lshr i16 %50, 2
  %52 = trunc i16 %51 to i3
  switch i3 %52, label %56 [
    i3 1, label %54
    i3 2, label %53
  ]

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %47
  %55 = phi i32 [ 1, %53 ], [ 2, %47 ]
  store i32 %55, ptr %48, align 4
  br label %56

56:                                               ; preds = %54, %47
  store ptr %4, ptr %6, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %57 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 85
  %58 = load volatile ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %92, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %58, i32 0, i32 58
  %62 = load i32, ptr %61, align 8
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %92

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %58, i32 0, i32 58, i32 1
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %58, i32 0, i32 58, i32 1, i32 10
  %67 = load i8, ptr %66, align 1, !range !9
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %92, label %69

69:                                               ; preds = %64
  %70 = load i32, ptr %16, align 8
  %71 = and i32 %70, 65664
  %72 = icmp eq i32 %71, 65664
  %73 = load i1, ptr @ieee80211_have_rx_timestamp.__already_done, align 1
  %74 = xor i1 %73, true
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %78, !prof !10

76:                                               ; preds = %69
  store i1 true, ptr @ieee80211_have_rx_timestamp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1763, i32 noundef 9, ptr noundef null) #11
  %77 = load i32, ptr %16, align 8
  br label %78

78:                                               ; preds = %76, %69
  %79 = phi i32 [ %77, %76 ], [ %70, %69 ]
  %80 = and i32 %79, 65668
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %78
  %83 = add i32 %3, 4
  %84 = tail call i64 @ieee80211_calculate_rx_timestamp(ptr noundef %0, ptr noundef %1, i32 noundef %83, i32 noundef 24) #11
  %85 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %6, i32 0, i32 4
  store i64 %84, ptr %85, align 8
  %86 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %6, i32 0, i32 5
  %87 = load ptr, ptr %65, align 8
  %88 = load i32, ptr %87, align 4
  store i32 %88, ptr %86, align 8
  %89 = getelementptr i8, ptr %87, i32 4
  %90 = load i16, ptr %89, align 2
  %91 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %6, i32 0, i32 5, i32 4
  store i16 %90, ptr %91, align 4
  br label %92

92:                                               ; preds = %82, %78, %64, %60, %56
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %93 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %94 = load ptr, ptr %93, align 8
  %95 = call ptr @cfg80211_inform_bss_frame_data(ptr noundef %94, ptr noundef nonnull %6, ptr noundef %2, i32 noundef %3, i32 noundef 2592) #11
  %96 = icmp eq ptr %95, null
  br i1 %96, label %134, label %97

97:                                               ; preds = %92
  %98 = load i16, ptr %2, align 2
  %99 = trunc i16 %98 to i8
  %100 = and i8 %99, -4
  switch i8 %100, label %105 [
    i8 80, label %101
    i8 28, label %103
  ]

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 1, i32 2
  br label %107

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.ieee80211_ext, ptr %2, i32 0, i32 2, i32 0, i32 3
  br label %107

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 1, i32 2
  br label %107

107:                                              ; preds = %105, %103, %101
  %108 = phi i32 [ 36, %101 ], [ 15, %103 ], [ 36, %105 ]
  %109 = phi ptr [ %102, %101 ], [ %104, %103 ], [ %106, %105 ]
  %110 = icmp ugt i32 %108, %3
  br i1 %110, label %134, label %111

111:                                              ; preds = %107
  %112 = sub i32 %3, %108
  %113 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 4
  %114 = getelementptr inbounds %struct.cfg80211_bss, ptr %95, i32 0, i32 11
  %115 = call ptr @ieee802_11_parse_elems_crc(ptr noundef %109, i32 noundef %112, i1 noundef zeroext false, i64 noundef 0, i32 noundef 0, ptr noundef %113, ptr noundef %114) #11
  %116 = icmp eq ptr %115, null
  br i1 %116, label %134, label %117

117:                                              ; preds = %111
  %118 = load ptr, ptr %95, align 4
  %119 = icmp eq ptr %118, %4
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i32, ptr %16, align 8
  %122 = or i32 %121, 256
  store i32 %122, ptr %16, align 8
  br label %123

123:                                              ; preds = %120, %117
  %124 = getelementptr inbounds %struct.cfg80211_bss, ptr %95, i32 0, i32 17
  call fastcc void @ieee80211_update_bss_from_elems(ptr noundef %0, ptr noundef %124, ptr noundef nonnull %115, ptr noundef %1, i1 noundef zeroext %11)
  %125 = getelementptr inbounds %struct.cfg80211_bss, ptr %95, i32 0, i32 7
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, %125
  br i1 %127, label %133, label %128

128:                                              ; preds = %128, %123
  %129 = phi ptr [ %131, %128 ], [ %126, %123 ]
  %130 = getelementptr i8, ptr %129, i32 32
  call fastcc void @ieee80211_update_bss_from_elems(ptr noundef %0, ptr noundef %130, ptr noundef nonnull %115, ptr noundef %1, i1 noundef zeroext %11)
  %131 = load ptr, ptr %129, align 4
  %132 = icmp eq ptr %131, %125
  br i1 %132, label %133, label %128

133:                                              ; preds = %128, %123
  call void @kfree(ptr noundef nonnull %115) #11
  br label %134

134:                                              ; preds = %133, %111, %107, %92
  %135 = phi ptr [ %124, %133 ], [ null, %92 ], [ null, %107 ], [ null, %111 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #11
  ret ptr %135
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ieee80211_calculate_rx_timestamp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_frame_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @ieee80211_update_bss_from_elems(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i1 noundef zeroext %4) unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  br i1 %4, label %8, label %14

8:                                                ; preds = %5
  store i32 %7, ptr %1, align 4
  %9 = getelementptr inbounds %struct.ieee802_11_elems, ptr %2, i32 0, i32 76
  %10 = load i8, ptr %9, align 2, !range !9
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 10
  %13 = load i8, ptr %12, align 2
  br i1 %11, label %25, label %21

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 1
  store i32 %7, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ieee802_11_elems, ptr %2, i32 0, i32 76
  %17 = load i8, ptr %16, align 2, !range !9
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 10
  %20 = load i8, ptr %19, align 2
  br i1 %18, label %27, label %23

21:                                               ; preds = %8
  %22 = or i8 %13, 1
  store i8 %22, ptr %12, align 2
  br label %29

23:                                               ; preds = %14
  %24 = or i8 %20, 2
  store i8 %24, ptr %19, align 2
  br label %29

25:                                               ; preds = %8
  %26 = and i8 %13, -2
  store i8 %26, ptr %12, align 2
  br label %29

27:                                               ; preds = %14
  %28 = and i8 %20, -3
  store i8 %28, ptr %19, align 2
  br label %29

29:                                               ; preds = %27, %25, %23, %21
  %30 = phi ptr [ %9, %25 ], [ %16, %27 ], [ %9, %21 ], [ %16, %23 ]
  %31 = getelementptr inbounds %struct.ieee802_11_elems, ptr %2, i32 0, i32 12
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %29
  %35 = load i8, ptr %30, align 2, !range !9
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 11
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, 8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37, %34
  %43 = load i8, ptr %32, align 1
  %44 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 9
  store i8 %43, ptr %44, align 1
  %45 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 8
  store i8 1, ptr %45, align 4
  %46 = load i8, ptr %30, align 2, !range !9
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 11
  %50 = load i8, ptr %49, align 1
  %51 = or i8 %50, 8
  store i8 %51, ptr %49, align 1
  br label %52

52:                                               ; preds = %48, %37, %29
  %53 = load i8, ptr %30, align 2
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52, %42
  %56 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 11
  %57 = load i8, ptr %56, align 1
  %58 = and i8 %57, 4
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %95

60:                                               ; preds = %55, %52
  %61 = getelementptr inbounds %struct.ieee802_11_elems, ptr %2, i32 0, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ieee802_11_elems, ptr %2, i32 0, i32 59
  %66 = load i8, ptr %65, align 2
  %67 = tail call i8 @llvm.umin.i8(i8 %66, i8 32)
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %69, ptr nonnull align 1 %62, i32 %68, i1 false)
  br label %70

70:                                               ; preds = %64, %60
  %71 = phi i32 [ %68, %64 ], [ 0, %60 ]
  %72 = getelementptr inbounds %struct.ieee802_11_elems, ptr %2, i32 0, i32 13
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %84, label %75

75:                                               ; preds = %70
  %76 = sub nuw nsw i32 32, %71
  %77 = getelementptr inbounds %struct.ieee802_11_elems, ptr %2, i32 0, i32 63
  %78 = load i8, ptr %77, align 2
  %79 = zext i8 %78 to i32
  %80 = tail call i32 @llvm.smin.i32(i32 %76, i32 %79)
  %81 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 4
  %82 = getelementptr i8, ptr %81, i32 %71
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %82, ptr nonnull align 1 %73, i32 %80, i1 false)
  %83 = add nuw nsw i32 %80, %71
  br label %84

84:                                               ; preds = %75, %70
  %85 = phi i32 [ %83, %75 ], [ %71, %70 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 5
  store i32 %85, ptr %88, align 4
  %89 = load i8, ptr %30, align 2, !range !9
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 11
  %93 = load i8, ptr %92, align 1
  %94 = or i8 %93, 4
  store i8 %94, ptr %92, align 1
  br label %95

95:                                               ; preds = %91, %84, %55
  %96 = load i8, ptr %30, align 2
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %95, %87
  %99 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 11
  %100 = load i8, ptr %99, align 1
  %101 = and i8 %100, 2
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %152

103:                                              ; preds = %98, %95
  %104 = getelementptr inbounds %struct.ieee802_11_elems, ptr %2, i32 0, i32 15
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.ieee802_11_elems, ptr %2, i32 0, i32 14
  %109 = load ptr, ptr %108, align 4
  %110 = icmp ne ptr %109, null
  br label %111

111:                                              ; preds = %107, %103
  %112 = phi i1 [ true, %103 ], [ %110, %107 ]
  %113 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 2
  %114 = zext i1 %112 to i8
  store i8 %114, ptr %113, align 4
  %115 = getelementptr inbounds %struct.ieee802_11_elems, ptr %2, i32 0, i32 14
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %126, label %118

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.ieee802_11_elems, ptr %2, i32 0, i32 64
  %120 = load i8, ptr %119, align 1
  %121 = icmp eq i8 %120, 7
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = getelementptr i8, ptr %116, i32 5
  %124 = load i8, ptr %123, align 1
  %125 = icmp eq i8 %124, 1
  br i1 %125, label %137, label %126

126:                                              ; preds = %122, %118, %111
  %127 = load ptr, ptr %104, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %142, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.ieee802_11_elems, ptr %2, i32 0, i32 65
  %131 = load i8, ptr %130, align 4
  %132 = icmp eq i8 %131, 24
  br i1 %132, label %133, label %142

133:                                              ; preds = %129
  %134 = getelementptr i8, ptr %127, i32 5
  %135 = load i8, ptr %134, align 1
  %136 = icmp eq i8 %135, 1
  br i1 %136, label %137, label %142

137:                                              ; preds = %133, %122
  %138 = phi ptr [ %116, %122 ], [ %127, %133 ]
  %139 = getelementptr i8, ptr %138, i32 6
  %140 = load i8, ptr %139, align 1
  %141 = icmp slt i8 %140, 0
  br label %142

142:                                              ; preds = %137, %133, %129, %126
  %143 = phi i1 [ %141, %137 ], [ false, %133 ], [ false, %129 ], [ false, %126 ]
  %144 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 3
  %145 = zext i1 %143 to i8
  store i8 %145, ptr %144, align 1
  %146 = load i8, ptr %30, align 2, !range !9
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 11
  %150 = load i8, ptr %149, align 1
  %151 = or i8 %150, 2
  store i8 %151, ptr %149, align 1
  br label %152

152:                                              ; preds = %148, %142, %98
  br i1 %4, label %153, label %174

153:                                              ; preds = %152
  %154 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %3, i32 0, i32 7
  %155 = load i16, ptr %154, align 1
  %156 = and i16 %155, 3
  %157 = add nsw i16 %156, -1
  %158 = icmp ult i16 %157, 2
  br i1 %158, label %174, label %159

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %161 = load ptr, ptr %160, align 8
  %162 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %3, i32 0, i32 11
  %163 = load i8, ptr %162, align 4
  %164 = zext i8 %163 to i32
  %165 = getelementptr %struct.wiphy, ptr %161, i32 0, i32 53, i32 %164
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %166, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %3, i32 0, i32 8
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i32
  %172 = getelementptr %struct.ieee80211_rate, ptr %168, i32 %171
  %173 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 6
  store ptr %172, ptr %173, align 4
  br label %174

174:                                              ; preds = %159, %153, %152
  %175 = getelementptr inbounds %struct.ieee802_11_elems, ptr %2, i32 0, i32 18
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = load i32, ptr %176, align 1
  br label %180

180:                                              ; preds = %178, %174
  %181 = phi i32 [ %179, %178 ], [ 0, %174 ]
  %182 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 7
  store i32 %181, ptr %182, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_scan_rx(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 252
  %8 = icmp eq i16 %7, 80
  %9 = trunc i16 %7 to i8
  switch i8 %9, label %75 [
    i8 -128, label %14
    i8 80, label %14
    i8 28, label %10
  ]

10:                                               ; preds = %2
  %11 = and i16 %6, 508
  %12 = icmp eq i16 %11, 284
  %13 = select i1 %12, i32 18, i32 4
  br label %14

14:                                               ; preds = %10, %2, %2
  %15 = phi i32 [ %13, %10 ], [ 36, %2 ], [ 36, %2 ]
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = icmp ult i32 %17, %15
  br i1 %18, label %75, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 85
  %21 = load volatile ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 79
  %23 = load volatile ptr, ptr %22, align 8
  %24 = icmp eq ptr %21, null
  %25 = icmp eq ptr %23, null
  %26 = select i1 %24, i1 %25, i1 false, !prof !12
  br i1 %26, label %75, label %27, !prof !12

27:                                               ; preds = %19
  br i1 %8, label %28, label %49

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 70
  %30 = load volatile ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 80
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %30, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %30, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi i32 [ %36, %34 ], [ 0, %28 ]
  %39 = icmp eq ptr %32, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %32, i32 0, i32 7
  %42 = load i32, ptr %41, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ %42, %40 ], [ 0, %37 ]
  %45 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %5, i32 0, i32 2
  %46 = tail call fastcc zeroext i1 @ieee80211_scan_accept_presp(ptr noundef %21, i32 noundef %38, ptr noundef %45)
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = tail call fastcc zeroext i1 @ieee80211_scan_accept_presp(ptr noundef %23, i32 noundef %44, ptr noundef %45)
  br i1 %48, label %49, label %75

49:                                               ; preds = %47, %43, %27
  %50 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %53 = load i16, ptr %52, align 4
  %54 = and i16 %53, 8191
  %55 = zext i16 %54 to i32
  %56 = mul nuw nsw i32 %55, 1000
  %57 = and i16 %53, 8192
  %58 = icmp eq i16 %57, 0
  %59 = select i1 %58, i32 0, i32 500
  %60 = add nuw nsw i32 %56, %59
  %61 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %51, i32 noundef %60) #11
  %62 = icmp eq ptr %61, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %49
  %64 = getelementptr inbounds %struct.ieee80211_channel, ptr %61, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32, ptr %16, align 8
  %70 = tail call ptr @ieee80211_bss_info_update(ptr noundef %0, ptr noundef %3, ptr noundef %5, i32 noundef %69, ptr noundef nonnull %61)
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %50, align 8
  %74 = getelementptr i8, ptr %70, i32 -60
  tail call void @cfg80211_put_bss(ptr noundef %73, ptr noundef %74) #11
  br label %75

75:                                               ; preds = %72, %68, %63, %49, %47, %19, %14, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_scan_accept_presp(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %3
  %6 = and i32 %1, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %5
  %9 = load i16, ptr %2, align 2
  %10 = getelementptr i8, ptr %2, i32 2
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %11, %9
  %13 = getelementptr i8, ptr %2, i32 4
  %14 = load i16, ptr %13, align 2
  %15 = and i16 %12, %14
  %16 = icmp ne i16 %15, -1
  %17 = and i32 %1, 8
  %18 = icmp eq i32 %17, 0
  %19 = and i1 %18, %16
  br i1 %19, label %26, label %38

20:                                               ; preds = %5
  %21 = and i32 %1, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %2, i32 4
  %25 = load i16, ptr %24, align 2
  br label %26

26:                                               ; preds = %23, %8
  %27 = phi i16 [ %25, %23 ], [ %14, %8 ]
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  %29 = load i32, ptr %2, align 4
  %30 = load i32, ptr %28, align 4
  %31 = xor i32 %30, %29
  %32 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2, i32 4
  %33 = load i16, ptr %32, align 2
  %34 = xor i16 %33, %27
  %35 = zext i16 %34 to i32
  %36 = or i32 %31, %35
  %37 = icmp eq i32 %36, 0
  br label %38

38:                                               ; preds = %26, %20, %8, %3
  %39 = phi i1 [ %37, %26 ], [ false, %3 ], [ true, %8 ], [ true, %20 ]
  ret i1 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_scan_completed(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cfg80211_scan_info, ptr %1, i32 0, i32 2
  %4 = load i8, ptr %3, align 2, !range !9
  %5 = icmp ne i8 %4, 0
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_scan_completed, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %20 = tail call i32 @__traceiter_api_scan_completed(ptr noundef null, ptr noundef %0, i1 noundef zeroext %5) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %21

21:                                               ; preds = %19, %8, %2
  %22 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 67
  tail call void @_set_bit(i32 noundef 3, ptr noundef %22) #11
  %23 = load i8, ptr %3, align 2, !range !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @_set_bit(i32 noundef 4, ptr noundef %22) #11
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 77
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %27, ptr noundef align 8 dereferenceable(16) %1, i32 16, i1 false)
  %28 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 84
  tail call void @ieee80211_queue_delayed_work(ptr noundef %0, ptr noundef %28, i32 noundef 0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_run_deferred_scan(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 70
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 67
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 85
  %11 = load ptr, ptr %10, align 4
  %12 = tail call fastcc zeroext i1 @ieee80211_can_scan(ptr noundef %0, ptr noundef %11)
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 84
  %15 = tail call i32 @round_jiffies_relative(i32 noundef 0) #11
  tail call void @ieee80211_queue_delayed_work(ptr noundef %0, ptr noundef %14, i32 noundef %15) #11
  br label %16

16:                                               ; preds = %13, %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_can_scan(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call zeroext i1 @ieee80211_is_radar_required(ptr noundef %4) #11
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = tail call zeroext i1 @regulatory_pre_cac_allowed(ptr noundef %8) #11
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %11) #11
  %12 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 62
  br label %13

13:                                               ; preds = %18, %10
  %14 = phi ptr [ %12, %10 ], [ %15, %18 ]
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, %12
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @mutex_unlock(ptr noundef %11) #11
  br label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %15, i32 0, i32 1, i32 36
  %20 = load i8, ptr %19, align 1, !range !9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %13, label %22

22:                                               ; preds = %18
  tail call void @mutex_unlock(ptr noundef %11) #11
  br label %37

23:                                               ; preds = %17, %2
  %24 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 103
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 9
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %27
  br label %37

37:                                               ; preds = %36, %31, %23, %22, %6
  %38 = phi i1 [ true, %36 ], [ false, %22 ], [ false, %23 ], [ false, %31 ], [ false, %6 ]
  ret i1 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_scan_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -4312
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -176
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = getelementptr i8, ptr %0, i32 -2910
  %6 = load i8, ptr %5, align 2, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %230

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -2912
  %10 = load i8, ptr %9, align 8, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %230

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 -2915
  %14 = load i8, ptr %13, align 1, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %230

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 44
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %0, i32 -112
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %0, i32 -156
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %21) #11
  %27 = icmp ne i32 %26, 0
  br label %230

28:                                               ; preds = %16
  %29 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %21) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %21) #11
  %33 = icmp ne i32 %32, 0
  br label %230

34:                                               ; preds = %28
  %35 = icmp ne ptr %18, null
  %36 = icmp ne ptr %20, null
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %232

38:                                               ; preds = %34
  %39 = load i32, ptr %21, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %18, i32 0, i32 9
  %43 = getelementptr i8, ptr %0, i32 -4
  %44 = getelementptr i8, ptr %0, i32 -3780
  %45 = getelementptr i8, ptr %0, i32 -8
  %46 = getelementptr i8, ptr %0, i32 -72
  %47 = getelementptr i8, ptr %0, i32 -104
  %48 = getelementptr i8, ptr %0, i32 -96
  %49 = getelementptr i8, ptr %0, i32 -80
  %50 = getelementptr i8, ptr %0, i32 -92
  %51 = getelementptr i8, ptr %0, i32 -100
  %52 = getelementptr i8, ptr %0, i32 48
  %53 = getelementptr i8, ptr %0, i32 52
  %54 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %20, i32 0, i32 2
  %55 = getelementptr i8, ptr %0, i32 -216
  %56 = getelementptr i8, ptr %0, i32 -232
  br label %61

57:                                               ; preds = %38
  store volatile ptr null, ptr %19, align 8
  store volatile ptr null, ptr %17, align 4
  %58 = tail call fastcc i32 @__ieee80211_start_scan(ptr noundef nonnull %18, ptr noundef nonnull %20)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %232, label %60

60:                                               ; preds = %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  store volatile ptr %20, ptr %19, align 8
  br label %230

61:                                               ; preds = %225, %41
  %62 = load volatile i32, ptr %42, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %230, label %65

65:                                               ; preds = %61
  %66 = load i32, ptr %43, align 4
  switch i32 %66, label %225 [
    i32 0, label %67
    i32 1, label %159
    i32 2, label %212
    i32 3, label %214
    i32 4, label %216
    i32 5, label %230
  ]

67:                                               ; preds = %65
  %68 = load i32, ptr %46, align 8
  %69 = load i32, ptr %54, align 8
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %230

71:                                               ; preds = %67
  tail call void @mutex_lock(ptr noundef %55) #11
  %72 = load ptr, ptr %56, align 8
  %73 = icmp eq ptr %72, %56
  br i1 %73, label %128, label %74

74:                                               ; preds = %124, %71
  %75 = phi ptr [ %126, %124 ], [ %72, %71 ]
  %76 = phi i1 [ %125, %124 ], [ false, %71 ]
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %75, i32 0, i32 9
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %124, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %75, i32 0, i32 58
  %83 = load i32, ptr %82, align 8
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %124

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %75, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %87 = load ptr, ptr %86, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %124, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %75, i32 0, i32 6
  %91 = load ptr, ptr %90, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %92 = getelementptr inbounds %struct.net_device, ptr %91, i32 0, i32 88
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  br label %124

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.net_device, ptr %91, i32 0, i32 87
  %98 = load ptr, ptr %97, align 64
  br label %103

99:                                               ; preds = %119
  %100 = add nuw i32 %105, 1
  %101 = icmp ult i32 %100, %93
  %102 = icmp eq i32 %100, %93
  br i1 %102, label %123, label %103

103:                                              ; preds = %99, %96
  %104 = phi i1 [ true, %96 ], [ %101, %99 ]
  %105 = phi i32 [ 0, %96 ], [ %100, %99 ]
  %106 = getelementptr %struct.netdev_queue, ptr %98, i32 %105, i32 2
  %107 = load volatile ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.Qdisc, ptr %107, i32 0, i32 2
  %109 = load i32, ptr %108, align 8
  %110 = and i32 %109, 32
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.Qdisc, ptr %107, i32 0, i32 19
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %114, 12
  br label %119

116:                                              ; preds = %103
  %117 = getelementptr inbounds %struct.Qdisc, ptr %107, i32 0, i32 16, i32 2
  %118 = load volatile i32, ptr %117, align 8
  br label %119

119:                                              ; preds = %116, %112
  %120 = phi i32 [ %115, %112 ], [ %118, %116 ]
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %99, label %122

122:                                              ; preds = %119
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  br i1 %104, label %128, label %124

123:                                              ; preds = %99
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  br label %124

124:                                              ; preds = %123, %122, %95, %85, %81, %74
  %125 = phi i1 [ true, %123 ], [ %76, %85 ], [ %76, %81 ], [ %76, %74 ], [ true, %122 ], [ true, %95 ]
  %126 = load ptr, ptr %75, align 8
  %127 = icmp eq ptr %126, %56
  br i1 %127, label %128, label %74

128:                                              ; preds = %124, %122, %71
  %129 = phi i1 [ true, %71 ], [ true, %124 ], [ false, %122 ]
  %130 = phi i1 [ false, %71 ], [ %125, %124 ], [ true, %122 ]
  tail call void @mutex_unlock(ptr noundef %55) #11
  %131 = load ptr, ptr %19, align 8
  %132 = load i32, ptr %46, align 8
  %133 = getelementptr %struct.cfg80211_scan_request, ptr %131, i32 0, i32 22, i32 %132
  %134 = load ptr, ptr %133, align 4
  %135 = load i32, ptr %45, align 8
  %136 = load volatile i32, ptr @jiffies, align 64
  %137 = xor i1 %130, true
  %138 = or i1 %129, %137
  br i1 %138, label %145, label %139

139:                                              ; preds = %128
  %140 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %131, i32 0, i32 8
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  %144 = select i1 %143, i32 3, i32 5
  br label %157

145:                                              ; preds = %128
  %146 = getelementptr inbounds %struct.ieee80211_channel, ptr %134, i32 0, i32 4
  %147 = load i32, ptr %146, align 4
  %148 = and i32 %147, 10
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %149, i32 -6, i32 -11
  %151 = add i32 %135, 12
  %152 = sub i32 %151, %136
  %153 = add i32 %152, %150
  %154 = icmp sgt i32 %153, -1
  %155 = select i1 %137, i1 true, i1 %154
  %156 = select i1 %155, i32 1, i32 3
  br label %157

157:                                              ; preds = %145, %139
  %158 = phi i32 [ %144, %139 ], [ %156, %145 ]
  store i32 %158, ptr %43, align 4
  store i32 0, ptr %2, align 4
  br label %225

159:                                              ; preds = %65
  %160 = load ptr, ptr %19, align 8
  %161 = load i32, ptr %46, align 8
  %162 = getelementptr %struct.cfg80211_scan_request, ptr %160, i32 0, i32 22, i32 %161
  %163 = load ptr, ptr %162, align 4
  store ptr %163, ptr %47, align 8
  %164 = getelementptr inbounds %struct.ieee80211_channel, ptr %163, i32 0, i32 1
  %165 = load i32, ptr %164, align 4
  store i32 %165, ptr %48, align 8
  %166 = getelementptr inbounds %struct.ieee80211_channel, ptr %163, i32 0, i32 2
  %167 = load i16, ptr %166, align 4
  store i16 %167, ptr %49, align 8
  store i32 0, ptr %50, align 4
  %168 = load i32, ptr %163, align 4
  %169 = icmp eq i32 %168, 4
  br i1 %169, label %170, label %172

170:                                              ; preds = %159
  %171 = tail call i32 @ieee80211_s1g_channel_width(ptr noundef %163) #11
  store i32 %171, ptr %51, align 4
  br label %190

172:                                              ; preds = %159
  %173 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %160, i32 0, i32 3
  %174 = load i32, ptr %173, align 4
  switch i32 %174, label %177 [
    i32 2, label %175
    i32 1, label %176
    i32 4, label %189
    i32 3, label %189
  ]

175:                                              ; preds = %172
  store i32 6, ptr %51, align 4
  br label %190

176:                                              ; preds = %172
  store i32 7, ptr %51, align 4
  br label %190

177:                                              ; preds = %172
  %178 = load i32, ptr %53, align 4
  %179 = icmp eq i32 %178, 7
  %180 = zext i1 %179 to i32
  %181 = icmp eq i32 %178, 6
  %182 = select i1 %181, i32 2, i32 %180
  %183 = load ptr, ptr %52, align 8
  %184 = icmp eq ptr %163, %183
  %185 = icmp eq i32 %182, %174
  %186 = select i1 %184, i1 %185, i1 false
  br i1 %186, label %187, label %188

187:                                              ; preds = %177
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %47, ptr noundef align 8 dereferenceable(28) %52, i32 28, i1 false) #11
  br label %190

188:                                              ; preds = %177
  store i32 0, ptr %51, align 4
  br label %190

189:                                              ; preds = %172, %172
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 970, i32 noundef 9, ptr noundef null) #11
  br label %190

190:                                              ; preds = %189, %188, %187, %176, %175, %170
  %191 = tail call i32 @ieee80211_hw_config(ptr noundef %3, i32 noundef 64) #11
  %192 = icmp eq i32 %191, 0
  %193 = load i32, ptr %46, align 8
  %194 = add i32 %193, 1
  store i32 %194, ptr %46, align 8
  br i1 %192, label %195, label %209

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.ieee80211_channel, ptr %163, i32 0, i32 4
  %197 = load i32, ptr %196, align 4
  %198 = and i32 %197, 10
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %160, i32 0, i32 1
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, 0
  %204 = select i1 %203, i32 11, i32 3
  %205 = select i1 %203, i32 0, i32 2
  br label %206

206:                                              ; preds = %200, %195
  %207 = phi i32 [ 11, %195 ], [ %204, %200 ]
  %208 = phi i32 [ 0, %195 ], [ %205, %200 ]
  store i32 %207, ptr %2, align 4
  br label %209

209:                                              ; preds = %206, %190
  %210 = phi i32 [ 0, %190 ], [ %207, %206 ]
  %211 = phi i32 [ 0, %190 ], [ %208, %206 ]
  store i32 %211, ptr %43, align 4
  br label %225

212:                                              ; preds = %65
  call fastcc void @ieee80211_scan_state_send_probe(ptr noundef %3, ptr noundef nonnull %2)
  %213 = load i32, ptr %2, align 4
  br label %225

214:                                              ; preds = %65
  store ptr null, ptr %47, align 8
  %215 = tail call i32 @ieee80211_hw_config(ptr noundef %3, i32 noundef 64) #11
  tail call void @ieee80211_offchannel_return(ptr noundef %3) #11
  store i32 20, ptr %2, align 4
  store i32 4, ptr %43, align 4
  br label %228

216:                                              ; preds = %65
  tail call void @ieee80211_offchannel_stop_vifs(ptr noundef %3) #11
  %217 = load ptr, ptr %44, align 4
  %218 = getelementptr inbounds %struct.ieee80211_ops, ptr %217, i32 0, i32 50
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %216
  tail call void @ieee80211_flush_queues(ptr noundef %3, ptr noundef null, i1 noundef zeroext false) #11
  br label %222

222:                                              ; preds = %221, %216
  %223 = phi i32 [ 0, %221 ], [ 10, %216 ]
  store i32 %223, ptr %2, align 4
  %224 = load volatile i32, ptr @jiffies, align 64
  store i32 %224, ptr %45, align 8
  store i32 1, ptr %43, align 4
  br label %225

225:                                              ; preds = %222, %212, %209, %157, %65
  %226 = phi i32 [ 0, %157 ], [ 0, %65 ], [ %223, %222 ], [ %213, %212 ], [ %210, %209 ]
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %61, label %228

228:                                              ; preds = %225, %214
  %229 = phi i32 [ 20, %214 ], [ %226, %225 ]
  tail call void @ieee80211_queue_delayed_work(ptr noundef %3, ptr noundef %0, i32 noundef %229) #11
  br label %232

230:                                              ; preds = %67, %65, %61, %60, %31, %25, %12, %8, %1
  %231 = phi i1 [ %27, %25 ], [ %33, %31 ], [ true, %12 ], [ true, %60 ], [ true, %1 ], [ true, %8 ], [ true, %65 ], [ false, %67 ], [ true, %61 ]
  tail call fastcc void @__ieee80211_scan_completed(ptr noundef %3, i1 noundef zeroext %231)
  br label %232

232:                                              ; preds = %230, %228, %57, %34
  tail call void @mutex_unlock(ptr noundef %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ieee80211_start_scan(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_ops, ptr %7, i32 0, i32 21
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ne ptr %9, null
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 70
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %302

14:                                               ; preds = %2
  %15 = tail call zeroext i1 @ieee80211_is_radar_required(ptr noundef %5) #11
  br i1 %15, label %16, label %33

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = tail call zeroext i1 @regulatory_pre_cac_allowed(ptr noundef %18) #11
  br i1 %19, label %20, label %302

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %21) #11
  %22 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 62
  br label %23

23:                                               ; preds = %28, %20
  %24 = phi ptr [ %22, %20 ], [ %25, %28 ]
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, %22
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void @mutex_unlock(ptr noundef %21) #11
  br label %33

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %25, i32 0, i32 1, i32 36
  %30 = load i8, ptr %29, align 1, !range !9
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %23, label %32

32:                                               ; preds = %28
  tail call void @mutex_unlock(ptr noundef %21) #11
  br label %302

33:                                               ; preds = %27, %14
  %34 = tail call fastcc zeroext i1 @ieee80211_can_scan(ptr noundef %5, ptr noundef %0)
  br i1 %34, label %35, label %76

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 75
  %37 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 5
  %38 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 76
  %39 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 4
  %40 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 2
  %41 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 71
  %42 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 1
  %43 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 8
  %44 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 6
  %45 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 7
  %46 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 73
  %47 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 20
  %48 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 21
  %49 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 19
  %50 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 85
  %51 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 81
  %52 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 11
  %53 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 12
  %54 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 12, i32 1
  %55 = getelementptr %struct.ieee80211_local, ptr %5, i32 0, i32 81, i32 1
  %56 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 11, i32 1
  %57 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 12, i32 2
  %58 = getelementptr %struct.ieee80211_local, ptr %5, i32 0, i32 81, i32 2
  %59 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 11, i32 2
  %60 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 12, i32 3
  %61 = getelementptr %struct.ieee80211_local, ptr %5, i32 0, i32 81, i32 3
  %62 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 11, i32 3
  %63 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 12, i32 4
  %64 = getelementptr %struct.ieee80211_local, ptr %5, i32 0, i32 81, i32 4
  %65 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 11, i32 4
  %66 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 12, i32 5
  %67 = getelementptr %struct.ieee80211_local, ptr %5, i32 0, i32 81, i32 5
  %68 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 11, i32 5
  %69 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  %70 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 22
  %71 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 86
  %72 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 67
  %73 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 26
  %74 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %75 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 3
  br label %78

76:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  store volatile ptr %1, ptr %11, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  %77 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 85
  store volatile ptr %0, ptr %77, align 4
  br label %302

78:                                               ; preds = %299, %35
  %79 = phi i1 [ false, %299 ], [ %10, %35 ]
  br i1 %79, label %80, label %151

80:                                               ; preds = %78
  %81 = load i32, ptr %36, align 4
  %82 = load i32, ptr %37, align 4
  %83 = add i32 %82, %81
  store i32 %83, ptr %38, align 8
  %84 = load volatile i32, ptr %39, align 4
  %85 = and i32 %84, 268435456
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %111, label %87

87:                                               ; preds = %80
  %88 = load i32, ptr %40, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %108, label %90

90:                                               ; preds = %90, %87
  %91 = phi i8 [ %105, %90 ], [ 0, %87 ]
  %92 = phi i32 [ %103, %90 ], [ 0, %87 ]
  %93 = phi i32 [ %106, %90 ], [ 0, %87 ]
  %94 = zext i8 %91 to i32
  %95 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 22, i32 %93
  %96 = load ptr, ptr %95, align 4
  %97 = load i32, ptr %96, align 4
  %98 = shl nuw i32 1, %97
  %99 = and i32 %98, %94
  %100 = icmp eq i32 %99, 0
  %101 = trunc i32 %98 to i8
  %102 = zext i1 %100 to i32
  %103 = add i32 %92, %102
  %104 = select i1 %100, i8 %101, i8 0
  %105 = or i8 %104, %91
  %106 = add nuw i32 %93, 1
  %107 = icmp eq i32 %106, %88
  br i1 %107, label %108, label %90

108:                                              ; preds = %90, %87
  %109 = phi i32 [ 0, %87 ], [ %103, %90 ]
  %110 = mul i32 %109, %83
  store i32 %110, ptr %38, align 8
  br label %111

111:                                              ; preds = %108, %80
  %112 = phi i32 [ %110, %108 ], [ %83, %80 ]
  %113 = load i32, ptr %40, align 8
  %114 = shl i32 %113, 2
  %115 = add i32 %114, 176
  %116 = add i32 %115, %112
  %117 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %116, i32 noundef 3264) #12
  store ptr %117, ptr %41, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %302, label %119

119:                                              ; preds = %111
  %120 = load ptr, ptr %1, align 8
  %121 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %117, i32 0, i32 1
  store ptr %120, ptr %121, align 8
  %122 = load i32, ptr %42, align 4
  %123 = load ptr, ptr %41, align 4
  %124 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %123, i32 0, i32 1, i32 1
  store i32 %122, ptr %124, align 4
  %125 = load ptr, ptr %41, align 4
  %126 = getelementptr i8, ptr %125, i32 176
  %127 = load i32, ptr %40, align 8
  %128 = shl i32 %127, 2
  %129 = getelementptr i8, ptr %126, i32 %128
  %130 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %125, i32 0, i32 1, i32 4
  store ptr %129, ptr %130, align 8
  %131 = load i32, ptr %43, align 4
  %132 = load ptr, ptr %41, align 4
  %133 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %132, i32 0, i32 1, i32 8
  store i32 %131, ptr %133, align 4
  %134 = load ptr, ptr %41, align 4
  %135 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %134, i32 0, i32 1, i32 13
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %135, i8 -1, i32 6, i1 false) #11
  %136 = load i16, ptr %44, align 8
  %137 = load ptr, ptr %41, align 4
  %138 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %137, i32 0, i32 1, i32 6
  store i16 %136, ptr %138, align 8
  %139 = load i8, ptr %45, align 2, !range !9
  %140 = load ptr, ptr %41, align 4
  %141 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %140, i32 0, i32 1, i32 7
  store i8 %139, ptr %141, align 2
  store i32 0, ptr %46, align 4
  %142 = load i32, ptr %47, align 4
  %143 = load ptr, ptr %41, align 4
  %144 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %143, i32 0, i32 1, i32 20
  store i32 %142, ptr %144, align 4
  %145 = load ptr, ptr %48, align 8
  %146 = load ptr, ptr %41, align 4
  %147 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %146, i32 0, i32 1, i32 21
  store ptr %145, ptr %147, align 8
  %148 = load i8, ptr %49, align 2, !range !9
  %149 = load ptr, ptr %41, align 4
  %150 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %149, i32 0, i32 1, i32 19
  store i8 %148, ptr %150, align 2
  br label %151

151:                                              ; preds = %119, %78
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  store volatile ptr %1, ptr %11, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  store volatile ptr %0, ptr %50, align 4
  %152 = load i32, ptr %43, align 4
  %153 = and i32 %152, 8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %204, label %155

155:                                              ; preds = %151
  tail call void @get_random_bytes(ptr noundef %51, i32 noundef 6) #11
  %156 = load i8, ptr %53, align 1
  %157 = xor i8 %156, -1
  %158 = load i8, ptr %51, align 1
  %159 = and i8 %158, %157
  store i8 %159, ptr %51, align 1
  %160 = load i8, ptr %52, align 1
  %161 = load i8, ptr %53, align 1
  %162 = and i8 %161, %160
  %163 = or i8 %162, %159
  store i8 %163, ptr %51, align 1
  %164 = load i8, ptr %54, align 1
  %165 = xor i8 %164, -1
  %166 = load i8, ptr %55, align 1
  %167 = and i8 %166, %165
  store i8 %167, ptr %55, align 1
  %168 = load i8, ptr %56, align 1
  %169 = load i8, ptr %54, align 1
  %170 = and i8 %169, %168
  %171 = or i8 %170, %167
  store i8 %171, ptr %55, align 1
  %172 = load i8, ptr %57, align 1
  %173 = xor i8 %172, -1
  %174 = load i8, ptr %58, align 1
  %175 = and i8 %174, %173
  store i8 %175, ptr %58, align 1
  %176 = load i8, ptr %59, align 1
  %177 = load i8, ptr %57, align 1
  %178 = and i8 %177, %176
  %179 = or i8 %178, %175
  store i8 %179, ptr %58, align 1
  %180 = load i8, ptr %60, align 1
  %181 = xor i8 %180, -1
  %182 = load i8, ptr %61, align 1
  %183 = and i8 %182, %181
  store i8 %183, ptr %61, align 1
  %184 = load i8, ptr %62, align 1
  %185 = load i8, ptr %60, align 1
  %186 = and i8 %185, %184
  %187 = or i8 %186, %183
  store i8 %187, ptr %61, align 1
  %188 = load i8, ptr %63, align 1
  %189 = xor i8 %188, -1
  %190 = load i8, ptr %64, align 1
  %191 = and i8 %190, %189
  store i8 %191, ptr %64, align 1
  %192 = load i8, ptr %65, align 1
  %193 = load i8, ptr %63, align 1
  %194 = and i8 %193, %192
  %195 = or i8 %194, %191
  store i8 %195, ptr %64, align 1
  %196 = load i8, ptr %66, align 1
  %197 = xor i8 %196, -1
  %198 = load i8, ptr %67, align 1
  %199 = and i8 %198, %197
  store i8 %199, ptr %67, align 1
  %200 = load i8, ptr %68, align 1
  %201 = load i8, ptr %66, align 1
  %202 = and i8 %201, %200
  %203 = or i8 %202, %199
  store i8 %203, ptr %67, align 1
  br label %205

204:                                              ; preds = %151
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %51, ptr noundef align 8 dereferenceable(6) %69, i32 6, i1 false)
  br label %205

205:                                              ; preds = %204, %155
  br i1 %79, label %206, label %210

206:                                              ; preds = %205
  %207 = load i32, ptr %72, align 4
  %208 = or i32 %207, 2
  store i32 %208, ptr %72, align 4
  tail call void @ieee80211_recalc_idle(ptr noundef %5) #11
  %209 = tail call fastcc zeroext i1 @ieee80211_prep_hw_scan(ptr noundef %0)
  br i1 %209, label %284, label %283, !prof !12

210:                                              ; preds = %205
  %211 = load i32, ptr %40, align 8
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %233

213:                                              ; preds = %210
  %214 = load ptr, ptr %70, align 4
  %215 = load ptr, ptr %71, align 8
  %216 = icmp eq ptr %214, %215
  br i1 %216, label %217, label %233

217:                                              ; preds = %213
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %218 = load i32, ptr %72, align 4
  %219 = or i32 %218, 4
  store i32 %219, ptr %72, align 4
  tail call void @ieee80211_recalc_idle(ptr noundef %5) #11
  tail call fastcc void @drv_sw_scan_start(ptr noundef %5, ptr noundef %0, ptr noundef %51)
  tail call void @ieee80211_configure_filter(ptr noundef %5) #11
  %220 = tail call i32 @ieee80211_hw_config(ptr noundef %5, i32 noundef 0) #11
  %221 = load ptr, ptr %70, align 4
  %222 = getelementptr inbounds %struct.ieee80211_channel, ptr %221, i32 0, i32 4
  %223 = load i32, ptr %222, align 4
  %224 = and i32 %223, 10
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %217
  %227 = load i32, ptr %42, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %226
  call fastcc void @ieee80211_scan_state_send_probe(ptr noundef %5, ptr noundef nonnull %3)
  br label %230

230:                                              ; preds = %229, %226, %217
  %231 = phi i32 [ 3, %229 ], [ 11, %226 ], [ 11, %217 ]
  %232 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 84
  tail call void @ieee80211_queue_delayed_work(ptr noundef %5, ptr noundef %232, i32 noundef %231) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %302

233:                                              ; preds = %213, %210
  %234 = load i32, ptr %72, align 4
  %235 = or i32 %234, 1
  store i32 %235, ptr %72, align 4
  tail call void @ieee80211_recalc_idle(ptr noundef %5) #11
  %236 = load i8, ptr %73, align 1, !range !9
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %238, label %288

238:                                              ; preds = %233
  %239 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sw_scan_start, i32 0, i32 1), align 4
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %254

241:                                              ; preds = %238
  %242 = tail call ptr @llvm.thread.pointer() #11
  %243 = getelementptr inbounds %struct.thread_info, ptr %242, i32 0, i32 2
  %244 = load i32, ptr %243, align 8
  %245 = lshr i32 %244, 5
  %246 = getelementptr i32, ptr @__cpu_online_mask, i32 %245
  %247 = load volatile i32, ptr %246, align 4
  %248 = and i32 %244, 31
  %249 = shl nuw i32 1, %248
  %250 = and i32 %249, %247
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %241
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %253 = tail call i32 @__traceiter_drv_sw_scan_start(ptr noundef null, ptr noundef %5, ptr noundef %0, ptr noundef %51) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  br label %254

254:                                              ; preds = %252, %241, %238
  %255 = load ptr, ptr %6, align 4
  %256 = getelementptr inbounds %struct.ieee80211_ops, ptr %255, i32 0, i32 25
  %257 = load ptr, ptr %256, align 4
  %258 = icmp eq ptr %257, null
  br i1 %258, label %260, label %259

259:                                              ; preds = %254
  tail call void %257(ptr noundef %5, ptr noundef %74, ptr noundef %51) #11
  br label %260

260:                                              ; preds = %259, %254
  %261 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %263, label %276

263:                                              ; preds = %260
  %264 = tail call ptr @llvm.thread.pointer() #11
  %265 = getelementptr inbounds %struct.thread_info, ptr %264, i32 0, i32 2
  %266 = load i32, ptr %265, align 8
  %267 = lshr i32 %266, 5
  %268 = getelementptr i32, ptr @__cpu_online_mask, i32 %267
  %269 = load volatile i32, ptr %268, align 4
  %270 = and i32 %266, 31
  %271 = shl nuw i32 1, %270
  %272 = and i32 %271, %269
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %276, label %274

274:                                              ; preds = %263
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %275 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %5) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !23
  br label %276

276:                                              ; preds = %274, %263, %260
  %277 = load volatile i32, ptr @jiffies, align 64
  %278 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 82
  store i32 %277, ptr %278, align 8
  %279 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 83
  store i32 0, ptr %279, align 4
  %280 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 74
  store i32 0, ptr %280, align 8
  tail call void @ieee80211_offchannel_stop_vifs(ptr noundef %5) #11
  tail call void @ieee80211_flush_queues(ptr noundef %5, ptr noundef null, i1 noundef zeroext false) #11
  tail call void @ieee80211_configure_filter(ptr noundef %5) #11
  %281 = tail call i32 @ieee80211_hw_config(ptr noundef %5, i32 noundef 0) #11
  %282 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 84
  tail call void @ieee80211_queue_delayed_work(ptr noundef %5, ptr noundef %282, i32 noundef 0) #11
  br label %302

283:                                              ; preds = %206
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 807, i32 noundef 9, ptr noundef null) #11
  br label %284

284:                                              ; preds = %283, %206
  %285 = load ptr, ptr %41, align 4
  %286 = tail call fastcc i32 @drv_hw_scan(ptr noundef %5, ptr noundef %0, ptr noundef %285)
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %302, label %288

288:                                              ; preds = %284, %233
  %289 = phi i32 [ %286, %284 ], [ -95, %233 ]
  %290 = load ptr, ptr %41, align 4
  tail call void @kfree(ptr noundef %290) #11
  store ptr null, ptr %41, align 4
  store i32 0, ptr %72, align 4
  tail call void @ieee80211_recalc_idle(ptr noundef %5) #11
  store ptr null, ptr %11, align 8
  store volatile ptr null, ptr %50, align 4
  %291 = icmp eq i32 %289, 1
  %292 = select i1 %79, i1 %291, i1 false
  br i1 %292, label %293, label %302

293:                                              ; preds = %288
  %294 = load i32, ptr %74, align 8
  %295 = load i8, ptr %75, align 2, !range !9
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %298, label %297

297:                                              ; preds = %293
  switch i32 %294, label %298 [
    i32 2, label %299
    i32 3, label %302
  ]

298:                                              ; preds = %297, %293
  br label %299

299:                                              ; preds = %298, %297
  %300 = phi i32 [ %294, %298 ], [ 8, %297 ]
  %301 = icmp eq i32 %300, 9
  br i1 %301, label %302, label %78

302:                                              ; preds = %299, %297, %288, %284, %276, %230, %111, %76, %32, %16, %2
  %303 = phi i32 [ 0, %230 ], [ 0, %76 ], [ -16, %2 ], [ -16, %32 ], [ -16, %16 ], [ 0, %276 ], [ -95, %297 ], [ 0, %284 ], [ -12, %111 ], [ %289, %288 ], [ -95, %299 ]
  ret i32 %303
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_scan_state_send_probe(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 7
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 70
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %5, i32 0, i32 18
  %7 = load i8, ptr %6, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i32 8192, i32 134225920
  %10 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %5, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 11
  %13 = and i32 %12, 2
  %14 = lshr i32 %11, 9
  %15 = and i32 %14, 4
  %16 = or i32 %15, %13
  %17 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 85
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %5, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %66

22:                                               ; preds = %2
  %23 = load ptr, ptr %3, align 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 81
  %26 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %5, i32 0, i32 13
  %27 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %5, i32 0, i32 4
  %28 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %5, i32 0, i32 5
  %29 = getelementptr %struct.cfg80211_scan_request, ptr %5, i32 0, i32 9, i32 %24
  %30 = icmp eq i32 %15, 0
  br label %31

31:                                               ; preds = %64, %22
  %32 = phi ptr [ %23, %22 ], [ %65, %64 ]
  %33 = phi i32 [ 0, %22 ], [ %61, %64 ]
  %34 = load ptr, ptr %5, align 8
  %35 = getelementptr %struct.cfg80211_ssid, ptr %34, i32 %33
  %36 = getelementptr %struct.cfg80211_ssid, ptr %34, i32 %33, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = load ptr, ptr %27, align 8
  %40 = load i32, ptr %28, align 4
  %41 = load i32, ptr %29, align 4
  %42 = tail call ptr @ieee80211_build_probe_req(ptr noundef %18, ptr noundef %25, ptr noundef %26, i32 noundef %41, ptr noundef %32, ptr noundef %35, i32 noundef %38, ptr noundef %39, i32 noundef %40, i32 noundef %16) #11
  %43 = icmp eq ptr %42, null
  br i1 %43, label %60, label %44

44:                                               ; preds = %31
  br i1 %30, label %55, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 17
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @get_random_u32() #11
  %49 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 3, i32 32
  %50 = load i32, ptr %49, align 8
  %51 = or i32 %50, 128
  store i32 %51, ptr %49, align 8
  %52 = trunc i32 %48 to i16
  %53 = shl i16 %52, 4
  %54 = getelementptr inbounds %struct.ieee80211_hdr, ptr %47, i32 0, i32 5
  store i16 %53, ptr %54, align 2
  br label %55

55:                                               ; preds = %45, %44
  %56 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 3
  %57 = load i32, ptr %56, align 8
  %58 = or i32 %57, %9
  store i32 %58, ptr %56, align 8
  %59 = load i32, ptr %32, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %18, ptr noundef nonnull %42, i32 noundef 7, i32 noundef %59) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  br label %60

60:                                               ; preds = %55, %31
  %61 = add nuw nsw i32 %33, 1
  %62 = load i32, ptr %19, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load ptr, ptr %3, align 4
  br label %31

66:                                               ; preds = %60, %2
  store i32 3, ptr %1, align 4
  %67 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 83
  store i32 0, ptr %67, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ieee80211_scan_completed(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 67
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  %7 = icmp eq i32 %4, 0
  %8 = xor i1 %1, true
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 423, i32 noundef 9, ptr noundef null) #11
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 70
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !10

15:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 9, ptr noundef null) #11
  br label %111

16:                                               ; preds = %11
  %17 = or i1 %7, %1
  %18 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 85
  %19 = load ptr, ptr %18, align 4
  %20 = or i1 %6, %1
  br i1 %20, label %36, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 268435456
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = tail call fastcc zeroext i1 @ieee80211_prep_hw_scan(ptr noundef %19)
  br i1 %27, label %28, label %36

28:                                               ; preds = %26
  %29 = load ptr, ptr %18, align 4
  %30 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 71
  %31 = load ptr, ptr %30, align 4
  %32 = tail call fastcc i32 @drv_hw_scan(ptr noundef %0, ptr noundef %29, ptr noundef %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %111, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 77
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %35, i8 0, i32 16, i1 false)
  br label %36

36:                                               ; preds = %34, %26, %21, %16
  %37 = phi i1 [ false, %21 ], [ true, %34 ], [ false, %26 ], [ %17, %16 ]
  %38 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 71
  %39 = load ptr, ptr %38, align 4
  tail call void @kfree(ptr noundef %39) #11
  store ptr null, ptr %38, align 4
  %40 = load ptr, ptr %12, align 8
  %41 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 69
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %40, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 77
  %46 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 77, i32 2
  %47 = zext i1 %37 to i8
  store i8 %47, ptr %46, align 2
  tail call void @cfg80211_scan_done(ptr noundef %40, ptr noundef %45) #11
  br label %48

48:                                               ; preds = %44, %36
  store volatile ptr null, ptr %12, align 8
  store volatile ptr null, ptr %18, align 4
  store i32 0, ptr %3, align 4
  %49 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 72
  store ptr null, ptr %49, align 8
  %50 = tail call i32 @ieee80211_hw_config(ptr noundef %0, i32 noundef 0) #11
  br i1 %6, label %51, label %92

51:                                               ; preds = %48
  tail call void @ieee80211_configure_filter(ptr noundef %0) #11
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sw_scan_complete, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = tail call ptr @llvm.thread.pointer() #11
  %56 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr @__cpu_online_mask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  %66 = tail call i32 @__traceiter_drv_sw_scan_complete(ptr noundef null, ptr noundef %0, ptr noundef %19) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  br label %67

67:                                               ; preds = %65, %54, %51
  %68 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.ieee80211_ops, ptr %69, i32 0, i32 26
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %19, i32 0, i32 58
  tail call void %71(ptr noundef %0, ptr noundef %74) #11
  br label %75

75:                                               ; preds = %73, %67
  %76 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = tail call ptr @llvm.thread.pointer() #11
  %80 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 2
  %81 = load i32, ptr %80, align 8
  %82 = lshr i32 %81, 5
  %83 = getelementptr i32, ptr @__cpu_online_mask, i32 %82
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %81, 31
  %86 = shl nuw i32 1, %85
  %87 = and i32 %86, %84
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %78
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %90 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !23
  br label %91

91:                                               ; preds = %89, %78, %75
  tail call void @ieee80211_offchannel_return(ptr noundef %0) #11
  br label %92

92:                                               ; preds = %91, %48
  tail call void @ieee80211_recalc_idle(ptr noundef %0) #11
  tail call void @ieee80211_mlme_notify_scan_completed(ptr noundef %0) #11
  tail call void @ieee80211_ibss_notify_scan_completed(ptr noundef %0) #11
  %93 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %94 = load volatile ptr, ptr %93, align 8
  %95 = icmp eq ptr %94, %93
  br i1 %95, label %109, label %96

96:                                               ; preds = %106, %92
  %97 = phi ptr [ %107, %106 ], [ %94, %92 ]
  %98 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %97, i32 0, i32 9
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %97, i32 0, i32 7
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %97, i32 0, i32 40
  tail call void @ieee80211_queue_work(ptr noundef %104, ptr noundef %105) #11
  br label %106

106:                                              ; preds = %102, %96
  %107 = load volatile ptr, ptr %97, align 8
  %108 = icmp eq ptr %107, %93
  br i1 %108, label %109, label %96

109:                                              ; preds = %106, %92
  br i1 %7, label %111, label %110

110:                                              ; preds = %109
  tail call void @ieee80211_start_next_roc(ptr noundef %0) #11
  br label %111

111:                                              ; preds = %110, %109, %28, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_request_scan(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = tail call fastcc i32 @__ieee80211_start_scan(ptr noundef %0, ptr noundef %1)
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 66
  tail call void @mutex_unlock(ptr noundef %8) #11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_request_ibss_scan(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef readonly %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %8, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %9) #11
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %8, i32 0, i32 70
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %116

13:                                               ; preds = %6
  %14 = icmp eq ptr %3, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  %16 = icmp eq i32 %4, 0
  br i1 %16, label %85, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.ieee80211_local, ptr %8, i32 0, i32 69
  br label %68

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 1
  %21 = getelementptr inbounds %struct.ieee80211_local, ptr %8, i32 0, i32 69
  br label %22

22:                                               ; preds = %57, %19
  %23 = phi i32 [ 0, %19 ], [ %59, %57 ]
  %24 = phi i32 [ 0, %19 ], [ %58, %57 ]
  %25 = load ptr, ptr %20, align 8
  %26 = getelementptr %struct.wiphy, ptr %25, i32 0, i32 53, i32 %23
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = icmp eq i32 %23, 3
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %57, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %27, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %53, %31
  %36 = phi ptr [ %56, %53 ], [ %27, %31 ]
  %37 = phi i32 [ %51, %53 ], [ 0, %31 ]
  %38 = phi i32 [ %50, %53 ], [ %24, %31 ]
  %39 = load ptr, ptr %36, align 4
  %40 = getelementptr %struct.ieee80211_channel, ptr %39, i32 %37, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = getelementptr %struct.ieee80211_channel, ptr %39, i32 %37
  %46 = load ptr, ptr %21, align 4
  %47 = getelementptr %struct.cfg80211_scan_request, ptr %46, i32 0, i32 22, i32 %38
  store ptr %45, ptr %47, align 4
  %48 = add i32 %38, 1
  br label %49

49:                                               ; preds = %44, %35
  %50 = phi i32 [ %48, %44 ], [ %38, %35 ]
  %51 = add nuw nsw i32 %37, 1
  %52 = icmp eq i32 %51, %33
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %20, align 8
  %55 = getelementptr %struct.wiphy, ptr %54, i32 0, i32 53, i32 %23
  %56 = load ptr, ptr %55, align 4
  br label %35

57:                                               ; preds = %49, %31, %22
  %58 = phi i32 [ %24, %22 ], [ %24, %31 ], [ %50, %49 ]
  %59 = add nuw nsw i32 %23, 1
  %60 = icmp eq i32 %59, 6
  br i1 %60, label %61, label %22

61:                                               ; preds = %57
  %62 = icmp eq i32 %58, 0
  %63 = load i1, ptr @ieee80211_request_ibss_scan.__already_done, align 1
  %64 = xor i1 %63, true
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %67, !prof !10

66:                                               ; preds = %61
  store i1 true, ptr @ieee80211_request_ibss_scan.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1190, i32 noundef 9, ptr noundef null) #11
  br label %67

67:                                               ; preds = %66, %61
  br i1 %62, label %116, label %95

68:                                               ; preds = %81, %17
  %69 = phi i32 [ 0, %17 ], [ %83, %81 ]
  %70 = phi i32 [ 0, %17 ], [ %82, %81 ]
  %71 = getelementptr ptr, ptr %3, i32 %69
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.ieee80211_channel, ptr %72, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 3
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load ptr, ptr %18, align 4
  %79 = getelementptr %struct.cfg80211_scan_request, ptr %78, i32 0, i32 22, i32 %70
  store ptr %72, ptr %79, align 4
  %80 = add i32 %70, 1
  br label %81

81:                                               ; preds = %77, %68
  %82 = phi i32 [ %70, %68 ], [ %80, %77 ]
  %83 = add nuw i32 %69, 1
  %84 = icmp eq i32 %83, %4
  br i1 %84, label %85, label %68

85:                                               ; preds = %81, %15
  %86 = phi i32 [ 0, %15 ], [ %82, %81 ]
  %87 = icmp eq i32 %86, 0
  %88 = load i1, ptr @ieee80211_request_ibss_scan.__already_done.1, align 1
  %89 = xor i1 %88, true
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %91, label %92, !prof !10

91:                                               ; preds = %85
  store i1 true, ptr @ieee80211_request_ibss_scan.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1204, i32 noundef 9, ptr noundef null) #11
  br label %92

92:                                               ; preds = %91, %85
  br i1 %87, label %116, label %93

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.ieee80211_local, ptr %8, i32 0, i32 69
  br label %95

95:                                               ; preds = %93, %67
  %96 = phi ptr [ %94, %93 ], [ %21, %67 ]
  %97 = phi i32 [ %86, %93 ], [ %58, %67 ]
  %98 = load ptr, ptr %96, align 4
  %99 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %98, i32 0, i32 2
  store i32 %97, ptr %99, align 8
  %100 = getelementptr inbounds %struct.ieee80211_local, ptr %8, i32 0, i32 68
  %101 = getelementptr inbounds %struct.ieee80211_local, ptr %8, i32 0, i32 69
  %102 = load ptr, ptr %101, align 4
  store ptr %100, ptr %102, align 8
  %103 = load ptr, ptr %101, align 4
  %104 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %103, i32 0, i32 1
  store i32 1, ptr %104, align 4
  %105 = load ptr, ptr %101, align 4
  %106 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %105, i32 0, i32 3
  store i32 %5, ptr %106, align 4
  %107 = load ptr, ptr %101, align 4
  %108 = load ptr, ptr %107, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %108, ptr noundef align 1 dereferenceable(32) %1, i32 32, i1 false)
  %109 = load ptr, ptr %101, align 4
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.cfg80211_ssid, ptr %110, i32 0, i32 1
  store i8 %2, ptr %111, align 1
  %112 = load ptr, ptr %7, align 4
  %113 = getelementptr inbounds %struct.ieee80211_local, ptr %112, i32 0, i32 69
  %114 = load ptr, ptr %113, align 4
  %115 = tail call fastcc i32 @__ieee80211_start_scan(ptr noundef %0, ptr noundef %114)
  br label %116

116:                                              ; preds = %95, %92, %67, %6
  %117 = phi i32 [ -16, %6 ], [ -16, %92 ], [ %115, %95 ], [ -16, %67 ]
  tail call void @mutex_unlock(ptr noundef %9) #11
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_scan_cancel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 70
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %83, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 67
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = load volatile i32, ptr %7, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_set_bit(i32 noundef 5, ptr noundef %7) #11
  br label %83

16:                                               ; preds = %11, %6
  %17 = load volatile i32, ptr %7, align 4
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %79, label %20

20:                                               ; preds = %16
  tail call void @_set_bit(i32 noundef 5, ptr noundef %7) #11
  %21 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ieee80211_ops, ptr %22, i32 0, i32 22
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %83, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 85
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 8
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 32
  %32 = icmp eq i32 %31, 0
  %33 = load i1, ptr @drv_cancel_hw_scan.__already_done, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %42, !prof !10

36:                                               ; preds = %26
  store i1 true, ptr @drv_cancel_hw_scan.__already_done, align 1
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 6
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 10
  %41 = select i1 %39, ptr %40, ptr %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 301, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %41, i32 noundef %30) #11
  br label %42

42:                                               ; preds = %36, %26
  br i1 %32, label %83, label %43

43:                                               ; preds = %42
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_cancel_hw_scan, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = tail call ptr @llvm.thread.pointer() #11
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 5
  %51 = getelementptr i32, ptr @__cpu_online_mask, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %49, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %46
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  %58 = tail call i32 @__traceiter_drv_cancel_hw_scan(ptr noundef null, ptr noundef %0, ptr noundef %28) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  br label %59

59:                                               ; preds = %57, %46, %43
  %60 = load ptr, ptr %21, align 4
  %61 = getelementptr inbounds %struct.ieee80211_ops, ptr %60, i32 0, i32 22
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 58
  tail call void %62(ptr noundef %0, ptr noundef %63) #11
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %59
  %67 = tail call ptr @llvm.thread.pointer() #11
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 5
  %71 = getelementptr i32, ptr @__cpu_online_mask, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %66
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %78 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !23
  br label %83

79:                                               ; preds = %16
  %80 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 84
  %81 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %80) #11
  %82 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 77
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %82, i8 0, i32 16, i1 false)
  tail call fastcc void @__ieee80211_scan_completed(ptr noundef %0, i1 noundef zeroext true)
  br label %83

83:                                               ; preds = %79, %77, %66, %59, %42, %20, %15, %1
  tail call void @mutex_unlock(ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ieee80211_request_sched_scan_start(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ieee80211_scan_ies, align 4
  %4 = alloca %struct.cfg80211_chan_def, align 4
  %5 = alloca [6 x i32], align 4
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %3, i8 0, i32 56, i1 false)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false)
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 75
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %9
  %13 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ieee80211_ops, ptr %14, i32 0, i32 23
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %162, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr %struct.wiphy, ptr %20, i32 0, i32 53, i32 0
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 -1, ptr %5, align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = phi i32 [ 1, %24 ], [ 0, %18 ]
  %27 = phi i8 [ 1, %24 ], [ 0, %18 ]
  %28 = getelementptr %struct.wiphy, ptr %20, i32 0, i32 53, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = or i8 %27, 2
  %33 = getelementptr inbounds [6 x i32], ptr %5, i32 0, i32 1
  store i32 -1, ptr %33, align 4
  %34 = add nuw nsw i32 %26, 1
  br label %35

35:                                               ; preds = %31, %25
  %36 = phi i32 [ %34, %31 ], [ %26, %25 ]
  %37 = phi i8 [ %32, %31 ], [ %27, %25 ]
  %38 = getelementptr %struct.wiphy, ptr %20, i32 0, i32 53, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = or i8 %37, 4
  %43 = getelementptr inbounds [6 x i32], ptr %5, i32 0, i32 2
  store i32 -1, ptr %43, align 4
  %44 = add nuw nsw i32 %36, 1
  br label %45

45:                                               ; preds = %41, %35
  %46 = phi i32 [ %44, %41 ], [ %36, %35 ]
  %47 = phi i8 [ %42, %41 ], [ %37, %35 ]
  %48 = getelementptr %struct.wiphy, ptr %20, i32 0, i32 53, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = or i8 %47, 8
  %53 = getelementptr inbounds [6 x i32], ptr %5, i32 0, i32 3
  store i32 -1, ptr %53, align 4
  %54 = add nuw nsw i32 %46, 1
  br label %55

55:                                               ; preds = %51, %45
  %56 = phi i32 [ %54, %51 ], [ %46, %45 ]
  %57 = phi i8 [ %52, %51 ], [ %47, %45 ]
  %58 = getelementptr %struct.wiphy, ptr %20, i32 0, i32 53, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = or i8 %57, 16
  %63 = getelementptr inbounds [6 x i32], ptr %5, i32 0, i32 4
  store i32 -1, ptr %63, align 4
  %64 = add nuw nsw i32 %56, 1
  br label %65

65:                                               ; preds = %61, %55
  %66 = phi i32 [ %64, %61 ], [ %56, %55 ]
  %67 = phi i8 [ %62, %61 ], [ %57, %55 ]
  %68 = getelementptr %struct.wiphy, ptr %20, i32 0, i32 53, i32 5
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  %72 = or i8 %67, 32
  %73 = getelementptr inbounds [6 x i32], ptr %5, i32 0, i32 5
  store i32 -1, ptr %73, align 4
  %74 = add nuw nsw i32 %66, 1
  br label %75

75:                                               ; preds = %71, %65
  %76 = phi i32 [ %74, %71 ], [ %66, %65 ]
  %77 = phi i8 [ %72, %71 ], [ %67, %65 ]
  %78 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %1, i32 0, i32 7
  %79 = load i32, ptr %78, align 8
  %80 = lshr i32 %79, 11
  %81 = and i32 %80, 2
  %82 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 %76) #11
  %83 = extractvalue { i32, i1 } %82, 1
  %84 = extractvalue { i32, i1 } %82, 0
  br i1 %83, label %158, label %85, !prof !10

85:                                               ; preds = %75
  %86 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %84, i32 noundef 3520) #12
  %87 = icmp eq ptr %86, null
  br i1 %87, label %158, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %1, i32 0, i32 4
  %90 = load i32, ptr %89, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false) #11
  switch i32 %90, label %95 [
    i32 2, label %92
    i32 1, label %91
  ]

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %91, %88
  %93 = phi i32 [ 7, %91 ], [ 6, %88 ]
  %94 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %4, i32 0, i32 1
  store i32 %93, ptr %94, align 4
  br label %95

95:                                               ; preds = %92, %88
  %96 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %1, i32 0, i32 5
  %97 = load ptr, ptr %96, align 8
  %98 = load i32, ptr %10, align 4
  %99 = call i32 @ieee80211_build_preq_ies(ptr noundef %0, ptr noundef nonnull %86, i32 noundef %84, ptr noundef nonnull %3, ptr noundef %97, i32 noundef %98, i8 noundef zeroext %77, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %81) #11
  %100 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 8
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, 32
  %103 = icmp eq i32 %102, 0
  %104 = load i1, ptr @drv_sched_scan_start.__already_done, align 1
  %105 = xor i1 %104, true
  %106 = select i1 %103, i1 %105, i1 false
  br i1 %106, label %107, label %113, !prof !10

107:                                              ; preds = %95
  store i1 true, ptr @drv_sched_scan_start.__already_done, align 1
  %108 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %109 = load ptr, ptr %108, align 8
  %110 = icmp eq ptr %109, null
  %111 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %112 = select i1 %110, ptr %111, ptr %109
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 319, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %112, i32 noundef %101) #11
  br label %113

113:                                              ; preds = %107, %95
  br i1 %103, label %153, label %114

114:                                              ; preds = %113
  %115 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sched_scan_start, i32 0, i32 1), align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = tail call ptr @llvm.thread.pointer() #11
  %119 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 2
  %120 = load i32, ptr %119, align 8
  %121 = lshr i32 %120, 5
  %122 = getelementptr i32, ptr @__cpu_online_mask, i32 %121
  %123 = load volatile i32, ptr %122, align 4
  %124 = and i32 %120, 31
  %125 = shl nuw i32 1, %124
  %126 = and i32 %125, %123
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %117
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  %129 = call i32 @__traceiter_drv_sched_scan_start(ptr noundef null, ptr noundef %7, ptr noundef %0) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br label %130

130:                                              ; preds = %128, %117, %114
  %131 = load ptr, ptr %13, align 4
  %132 = getelementptr inbounds %struct.ieee80211_ops, ptr %131, i32 0, i32 23
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %135 = call i32 %133(ptr noundef %7, ptr noundef %134, ptr noundef %1, ptr noundef nonnull %3) #11
  %136 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %130
  %139 = tail call ptr @llvm.thread.pointer() #11
  %140 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 2
  %141 = load i32, ptr %140, align 8
  %142 = lshr i32 %141, 5
  %143 = getelementptr i32, ptr @__cpu_online_mask, i32 %142
  %144 = load volatile i32, ptr %143, align 4
  %145 = and i32 %141, 31
  %146 = shl nuw i32 1, %145
  %147 = and i32 %146, %144
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %138
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  %150 = call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %7, i32 noundef %135) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !31
  br label %151

151:                                              ; preds = %149, %138, %130
  %152 = icmp eq i32 %135, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %151, %113
  %154 = phi i32 [ %135, %151 ], [ -5, %113 ]
  call void @kfree(ptr noundef nonnull %86) #11
  br label %158

155:                                              ; preds = %151
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !32
  %156 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 79
  store volatile ptr %0, ptr %156, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !33
  %157 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 80
  store volatile ptr %1, ptr %157, align 4
  call void @kfree(ptr noundef nonnull %86) #11
  br label %162

158:                                              ; preds = %153, %85, %75
  %159 = phi i32 [ %154, %153 ], [ -12, %85 ], [ -12, %75 ]
  %160 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 79
  store volatile ptr null, ptr %160, align 8
  %161 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 80
  store volatile ptr null, ptr %161, align 4
  br label %162

162:                                              ; preds = %158, %155, %2
  %163 = phi i32 [ -524, %2 ], [ %159, %158 ], [ 0, %155 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #11
  ret i32 %163
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_build_preq_ies(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_request_sched_scan_start(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 79
  %7 = load volatile ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call i32 @__ieee80211_request_sched_scan_start(ptr noundef %0, ptr noundef %1)
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ %10, %9 ], [ -16, %2 ]
  tail call void @mutex_unlock(ptr noundef %5) #11
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_request_sched_scan_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_ops, ptr %4, i32 0, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %68, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 80
  store volatile ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 79
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %68, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %11, i32 0, i32 8
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  %18 = load i1, ptr @drv_sched_scan_stop.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %27, !prof !10

21:                                               ; preds = %13
  store i1 true, ptr @drv_sched_scan_stop.__already_done, align 1
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %11, i32 0, i32 6
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %11, i32 0, i32 10
  %26 = select i1 %24, ptr %25, ptr %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 336, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %26, i32 noundef %15) #11
  br label %27

27:                                               ; preds = %21, %13
  br i1 %17, label %68, label %28

28:                                               ; preds = %27
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sched_scan_stop, i32 0, i32 1), align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = tail call ptr @llvm.thread.pointer() #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  %43 = tail call i32 @__traceiter_drv_sched_scan_stop(ptr noundef null, ptr noundef %0, ptr noundef nonnull %11) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !35
  br label %44

44:                                               ; preds = %42, %31, %28
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr inbounds %struct.ieee80211_ops, ptr %45, i32 0, i32 24
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %11, i32 0, i32 58
  %49 = tail call i32 %47(ptr noundef %0, ptr noundef %48) #11
  %50 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %44
  %53 = tail call ptr @llvm.thread.pointer() #11
  %54 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 5
  %57 = getelementptr i32, ptr @__cpu_online_mask, i32 %56
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %55, 31
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %58
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %52
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  %64 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %49) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !31
  br label %65

65:                                               ; preds = %63, %52, %44
  %66 = icmp eq i32 %49, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  store volatile ptr null, ptr %10, align 8
  br label %68

68:                                               ; preds = %67, %65, %27, %8, %1
  %69 = phi i32 [ %49, %65 ], [ 0, %67 ], [ -2, %8 ], [ -524, %1 ], [ -5, %27 ]
  tail call void @mutex_unlock(ptr noundef %2) #11
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sched_scan_results(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_sched_scan_results, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #11
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !36
  %16 = tail call i32 @__traceiter_api_sched_scan_results(ptr noundef null, ptr noundef %0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !37
  br label %17

17:                                               ; preds = %15, %4, %1
  %18 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  tail call void @cfg80211_sched_scan_results(ptr noundef %19, i64 noundef 0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_results(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sched_scan_end(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 79
  %4 = load volatile ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %2) #11
  br label %11

7:                                                ; preds = %1
  store volatile ptr null, ptr %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 80
  store volatile ptr null, ptr %8, align 4
  tail call void @mutex_unlock(ptr noundef %2) #11
  %9 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  tail call void @cfg80211_sched_scan_stopped(ptr noundef %10, i64 noundef 0) #11
  br label %11

11:                                               ; preds = %7, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_stopped(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sched_scan_stopped_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  tail call void @mutex_lock(ptr noundef %2) #11
  %3 = getelementptr i8, ptr %0, i32 16
  %4 = load volatile ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %2) #11
  br label %11

7:                                                ; preds = %1
  store volatile ptr null, ptr %3, align 8
  %8 = getelementptr i8, ptr %0, i32 20
  store volatile ptr null, ptr %8, align 4
  tail call void @mutex_unlock(ptr noundef %2) #11
  %9 = getelementptr i8, ptr %0, i32 -4216
  %10 = load ptr, ptr %9, align 8
  tail call void @cfg80211_sched_scan_stopped(ptr noundef %10, i64 noundef 0) #11
  br label %11

11:                                               ; preds = %7, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sched_scan_stopped(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_sched_scan_stopped, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #11
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !38
  %16 = tail call i32 @__traceiter_api_sched_scan_stopped(ptr noundef null, ptr noundef %0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !39
  br label %17

17:                                               ; preds = %15, %4, %1
  %18 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 36
  %19 = load i8, ptr %18, align 2, !range !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 78
  %23 = load ptr, ptr @system_wq, align 4
  %24 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %23, ptr noundef %22) #11
  br label %25

25:                                               ; preds = %21, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802_11_parse_elems_crc(ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_scan_completed(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_is_radar_required(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regulatory_pre_cac_allowed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drv_sw_scan_start(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sw_scan_start, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #11
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %18 = tail call i32 @__traceiter_drv_sw_scan_start(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  br label %19

19:                                               ; preds = %17, %6, %3
  %20 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ieee80211_ops, ptr %21, i32 0, i32 25
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  tail call void %23(ptr noundef %0, ptr noundef %26, ptr noundef %2) #11
  br label %27

27:                                               ; preds = %25, %19
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = tail call ptr @llvm.thread.pointer() #11
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %42 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !23
  br label %43

43:                                               ; preds = %41, %30, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_configure_filter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_hw_config(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_prep_hw_scan(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.cfg80211_chan_def, align 4
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #11
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 70
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 67
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %137

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 4
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 268435456
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %6, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %82, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 71
  br label %27

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 73
  %24 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %6, i32 0, i32 2
  %25 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 71
  %26 = load i32, ptr %23, align 4
  br label %42

27:                                               ; preds = %27, %20
  %28 = phi i32 [ 0, %20 ], [ %39, %27 ]
  %29 = phi i8 [ 0, %20 ], [ %38, %27 ]
  %30 = getelementptr %struct.cfg80211_scan_request, ptr %6, i32 0, i32 22, i32 %28
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %21, align 4
  %33 = getelementptr %struct.ieee80211_scan_request, ptr %32, i32 0, i32 1, i32 22, i32 %28
  store ptr %31, ptr %33, align 4
  %34 = load ptr, ptr %30, align 4
  %35 = load i32, ptr %34, align 4
  %36 = shl nuw i32 1, %35
  %37 = trunc i32 %36 to i8
  %38 = or i8 %29, %37
  %39 = add nuw i32 %28, 1
  %40 = load i32, ptr %17, align 8
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %27, label %82

42:                                               ; preds = %76, %22
  %43 = phi i32 [ %80, %76 ], [ %26, %22 ]
  %44 = phi i8 [ %78, %76 ], [ 0, %22 ]
  %45 = icmp eq i32 %43, 6
  br i1 %45, label %137, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %24, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %76, label %49

49:                                               ; preds = %69, %46
  %50 = phi i32 [ %70, %69 ], [ %47, %46 ]
  %51 = phi i32 [ %75, %69 ], [ %43, %46 ]
  %52 = phi i32 [ %72, %69 ], [ 0, %46 ]
  %53 = phi i32 [ %73, %69 ], [ 0, %46 ]
  %54 = phi i8 [ %71, %69 ], [ %44, %46 ]
  %55 = getelementptr %struct.cfg80211_scan_request, ptr %6, i32 0, i32 22, i32 %53
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, %51
  br i1 %58, label %59, label %69

59:                                               ; preds = %49
  %60 = load ptr, ptr %25, align 4
  %61 = getelementptr %struct.ieee80211_scan_request, ptr %60, i32 0, i32 1, i32 22, i32 %52
  store ptr %56, ptr %61, align 4
  %62 = add i32 %52, 1
  %63 = load ptr, ptr %55, align 4
  %64 = load i32, ptr %63, align 4
  %65 = shl nuw i32 1, %64
  %66 = trunc i32 %65 to i8
  %67 = or i8 %54, %66
  %68 = load i32, ptr %24, align 8
  br label %69

69:                                               ; preds = %59, %49
  %70 = phi i32 [ %50, %49 ], [ %68, %59 ]
  %71 = phi i8 [ %54, %49 ], [ %67, %59 ]
  %72 = phi i32 [ %52, %49 ], [ %62, %59 ]
  %73 = add nuw i32 %53, 1
  %74 = icmp ult i32 %73, %70
  %75 = load i32, ptr %23, align 4
  br i1 %74, label %49, label %76

76:                                               ; preds = %69, %46
  %77 = phi i32 [ %43, %46 ], [ %75, %69 ]
  %78 = phi i8 [ %44, %46 ], [ %71, %69 ]
  %79 = phi i32 [ 0, %46 ], [ %72, %69 ]
  %80 = add i32 %77, 1
  store i32 %80, ptr %23, align 4
  %81 = icmp eq i32 %79, 0
  br i1 %81, label %42, label %82

82:                                               ; preds = %76, %27, %16
  %83 = phi i8 [ 0, %16 ], [ %78, %76 ], [ %38, %27 ]
  %84 = phi i32 [ 0, %16 ], [ %79, %76 ], [ %40, %27 ]
  %85 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 71
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %86, i32 0, i32 1, i32 2
  store i32 %84, ptr %87, align 8
  %88 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %6, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false) #11
  switch i32 %89, label %94 [
    i32 2, label %91
    i32 1, label %90
  ]

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %82
  %92 = phi i32 [ 7, %90 ], [ 6, %82 ]
  %93 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 1
  store i32 %92, ptr %93, align 4
  br label %94

94:                                               ; preds = %91, %82
  %95 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %6, i32 0, i32 8
  %96 = load i32, ptr %95, align 4
  %97 = lshr i32 %96, 11
  %98 = and i32 %97, 2
  %99 = load ptr, ptr %85, align 4
  %100 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %99, i32 0, i32 1, i32 4
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 76
  %103 = load i32, ptr %102, align 8
  %104 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %6, i32 0, i32 4
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %6, i32 0, i32 5
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %6, i32 0, i32 9
  %109 = call i32 @ieee80211_build_preq_ies(ptr noundef %0, ptr noundef %101, i32 noundef %103, ptr noundef %99, ptr noundef %105, i32 noundef %107, i8 noundef zeroext %83, ptr noundef %108, ptr noundef nonnull %2, i32 noundef %98) #11
  %110 = load ptr, ptr %85, align 4
  %111 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %110, i32 0, i32 1, i32 5
  store i32 %109, ptr %111, align 4
  %112 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %6, i32 0, i32 18
  %113 = load i8, ptr %112, align 1, !range !9
  %114 = load ptr, ptr %85, align 4
  %115 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %114, i32 0, i32 1, i32 18
  store i8 %113, ptr %115, align 1
  %116 = load ptr, ptr %85, align 4
  %117 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %116, i32 0, i32 1, i32 11
  %118 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %6, i32 0, i32 11
  %119 = load i32, ptr %118, align 4
  store i32 %119, ptr %117, align 4
  %120 = getelementptr %struct.cfg80211_scan_request, ptr %6, i32 0, i32 11, i32 4
  %121 = load i16, ptr %120, align 2
  %122 = getelementptr %struct.ieee80211_scan_request, ptr %116, i32 0, i32 1, i32 11, i32 4
  store i16 %121, ptr %122, align 2
  %123 = load ptr, ptr %85, align 4
  %124 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %123, i32 0, i32 1, i32 12
  %125 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %6, i32 0, i32 12
  %126 = load i32, ptr %125, align 4
  store i32 %126, ptr %124, align 4
  %127 = getelementptr %struct.cfg80211_scan_request, ptr %6, i32 0, i32 12, i32 4
  %128 = load i16, ptr %127, align 2
  %129 = getelementptr %struct.ieee80211_scan_request, ptr %123, i32 0, i32 1, i32 12, i32 4
  store i16 %128, ptr %129, align 2
  %130 = load ptr, ptr %85, align 4
  %131 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %130, i32 0, i32 1, i32 13
  %132 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %6, i32 0, i32 13
  %133 = load i32, ptr %132, align 4
  store i32 %133, ptr %131, align 4
  %134 = getelementptr %struct.cfg80211_scan_request, ptr %6, i32 0, i32 13, i32 4
  %135 = load i16, ptr %134, align 2
  %136 = getelementptr %struct.ieee80211_scan_request, ptr %130, i32 0, i32 1, i32 13, i32 4
  store i16 %135, ptr %136, align 2
  br label %137

137:                                              ; preds = %94, %42, %1
  %138 = phi i1 [ true, %94 ], [ false, %1 ], [ false, %42 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #11
  ret i1 %138
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drv_hw_scan(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @drv_hw_scan.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %17, !prof !10

11:                                               ; preds = %3
  store i1 true, ptr @drv_hw_scan.__already_done, align 1
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %16 = select i1 %14, ptr %15, ptr %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 287, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %16, i32 noundef %5) #11
  br label %17

17:                                               ; preds = %11, %3
  br i1 %7, label %56, label %18

18:                                               ; preds = %17
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_hw_scan, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = tail call ptr @llvm.thread.pointer() #11
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !40
  %33 = tail call i32 @__traceiter_drv_hw_scan(ptr noundef null, ptr noundef %0, ptr noundef %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !41
  br label %34

34:                                               ; preds = %32, %21, %18
  %35 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ieee80211_ops, ptr %36, i32 0, i32 21
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %40 = tail call i32 %38(ptr noundef %0, ptr noundef %39, ptr noundef %2) #11
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %34
  %44 = tail call ptr @llvm.thread.pointer() #11
  %45 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = lshr i32 %46, 5
  %48 = getelementptr i32, ptr @__cpu_online_mask, i32 %47
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %46, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %49
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %43
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  %55 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %40) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !31
  br label %56

56:                                               ; preds = %54, %43, %34, %17
  %57 = phi i32 [ -5, %17 ], [ %40, %34 ], [ %40, %43 ], [ %40, %54 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sw_scan_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_hw_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_offchannel_stop_vifs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_flush_queues(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_s1g_channel_width(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_build_probe_req(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_offchannel_return(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_scan_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_mlme_notify_scan_completed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ibss_notify_scan_completed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_start_next_roc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sw_scan_complete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_cancel_hw_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sched_scan_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sched_scan_stop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_sched_scan_results(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_sched_scan_stopped(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

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
!8 = !{i64 2149368258}
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2149368475}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2159199034}
!14 = !{i64 2159199210}
!15 = !{i64 2159960000}
!16 = !{i64 2159912035}
!17 = !{i64 2159919868}
!18 = !{i64 2159928133}
!19 = !{i64 2159935966}
!20 = !{i64 2158122395}
!21 = !{i64 2158122585}
!22 = !{i64 2157722033}
!23 = !{i64 2157722185}
!24 = !{i64 2158136071}
!25 = !{i64 2158136247}
!26 = !{i64 2158076830}
!27 = !{i64 2158077002}
!28 = !{i64 2158090532}
!29 = !{i64 2158090708}
!30 = !{i64 2157734903}
!31 = !{i64 2157735063}
!32 = !{i64 2159971190}
!33 = !{i64 2159979483}
!34 = !{i64 2158108349}
!35 = !{i64 2158108523}
!36 = !{i64 2159216255}
!37 = !{i64 2159216421}
!38 = !{i64 2159229581}
!39 = !{i64 2159229747}
!40 = !{i64 2158063526}
!41 = !{i64 2158063684}
