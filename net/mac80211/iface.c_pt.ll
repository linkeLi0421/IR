; ModuleID = '/llk/IR/net/mac80211/iface.c_pt.bc'
source_filename = "../net/mac80211/iface.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.151, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.list_head = type { ptr, ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.119, i32, %struct.spinlock }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.151 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.122, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.122 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.123] }
%struct.anon.123 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.118, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.118 = type { i32, i16 }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rhltable = type { %struct.rhashtable }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.132, i32 }
%union.anon.132 = type { ptr }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.44, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.81, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.44 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.81 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.117, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.anon.117 = type { i64, i64, i8 }
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
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.152 }
%union.anon.152 = type { %struct.anon.158, [16 x i8] }
%struct.anon.158 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.anon.165 = type { i8, %union.anon.166 }
%union.anon.166 = type <{ %struct.anon.171, [17 x i8] }>
%struct.anon.171 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_if_ap = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ps_data, %struct.atomic_t, i8 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.ieee80211_if_ibss = type { %struct.timer_list, %struct.work_struct, i32, i32, i8, i8, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, ptr, %struct.cfg80211_chan_def, i32, ptr, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.spinlock, %struct.list_head, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync, [28 x i8] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.vif_params = type { i32, i32, [6 x i8], ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.140, [17 x i16], %struct.anon.141, %struct.anon.142, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.anon.140 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.141 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.142 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.net_device_path_ctx = type { ptr, ptr, i32, [2 x %struct.anon.73] }
%struct.anon.73 = type { i16, i16 }
%struct.ieee80211_radiotap_header = type { i8, i8, i16, i32, [0 x i32] }

@ieee80211_add_virtual_monitor.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [21 x i8] c"net/mac80211/iface.c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s-monitor\00", align 1
@ieee80211_del_virtual_monitor.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_if_change_type.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_if_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@ieee80211_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@ieee80211_if_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_sdata_stop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_remove_interfaces.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: open count remains %d\0A\00", align 1
@mac80211_netdev_notifier = internal global %struct.notifier_block { ptr @netdev_notify, ptr null, i32 0 }, align 4
@drv_update_vif_offload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@__tracepoint_drv_update_vif_offload = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@ieee80211_check_queues.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_check_queues.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_check_queues.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_check_queues.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_dataif_8023_ops = internal constant %struct.net_device_ops { ptr null, ptr @ieee80211_uninit, ptr @ieee80211_open, ptr @ieee80211_stop, ptr @ieee80211_subif_start_xmit_8023, ptr null, ptr @ieee80211_netdev_select_queue, ptr null, ptr @ieee80211_set_multicast_list, ptr @ieee80211_change_mac, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ieee80211_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ieee80211_netdev_fill_forward_path }, align 4
@ieee80211_dataif_ops = internal constant %struct.net_device_ops { ptr null, ptr @ieee80211_uninit, ptr @ieee80211_open, ptr @ieee80211_stop, ptr @ieee80211_subif_start_xmit, ptr null, ptr @ieee80211_netdev_select_queue, ptr null, ptr @ieee80211_set_multicast_list, ptr @ieee80211_change_mac, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ieee80211_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ieee80211_check_concurrent_iface.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_net_fill_forward_path.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_net_fill_forward_path = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_config_iface_filter = external dso_local global %struct.tracepoint, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"frame for unexpected interface type\00", align 1
@ieee80211_runtime_change_iftype.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"type change: do_open returned %d\00", align 1
@ieee80211_setup_sdata.bssid_wildcard = internal constant [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@ieee80211_monitorif_ops = internal constant %struct.net_device_ops { ptr null, ptr @ieee80211_uninit, ptr @ieee80211_open, ptr @ieee80211_stop, ptr @ieee80211_monitor_start_xmit, ptr null, ptr @ieee80211_monitor_select_queue, ptr null, ptr @ieee80211_set_multicast_list, ptr @ieee80211_change_mac, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ieee80211_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"\016not contiguous\0A\00", align 1
@ieee80211_do_stop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mac80211_wiphy_privid = external dso_local local_unnamed_addr constant ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__ieee80211_recalc_txpower(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  br label %48

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %25 [
    i32 6, label %9
    i32 7, label %17
  ]

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.ieee80211_channel, ptr %10, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -6
  %14 = getelementptr inbounds %struct.ieee80211_channel, ptr %10, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.smin.i32(i32 %13, i32 %15) #16
  br label %29

17:                                               ; preds = %6
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.ieee80211_channel, ptr %18, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -3
  %22 = getelementptr inbounds %struct.ieee80211_channel, ptr %18, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.smin.i32(i32 %21, i32 %23) #16
  br label %29

25:                                               ; preds = %6
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.ieee80211_channel, ptr %26, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %25, %17, %9
  %30 = phi i32 [ %28, %25 ], [ %24, %17 ], [ %16, %9 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 45
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, -2147483648
  %34 = tail call i32 @llvm.smin.i32(i32 %30, i32 %32)
  %35 = select i1 %33, i32 %30, i32 %34
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 46
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, -2147483648
  %39 = tail call i32 @llvm.smin.i32(i32 %35, i32 %37)
  %40 = select i1 %38, i32 %35, i32 %39
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 42
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %29
  store i32 %40, ptr %41, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @ieee80211_hw_config(ptr noundef %46, i32 noundef 0) #16
  br label %48

48:                                               ; preds = %44, %29, %5
  %49 = phi i1 [ true, %44 ], [ false, %5 ], [ false, %29 ]
  ret i1 %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_hw_config(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_recalc_txpower(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  br label %49

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %26 [
    i32 6, label %10
    i32 7, label %18
  ]

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.ieee80211_channel, ptr %11, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -6
  %15 = getelementptr inbounds %struct.ieee80211_channel, ptr %11, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @llvm.smin.i32(i32 %14, i32 %16) #16
  br label %30

18:                                               ; preds = %7
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.ieee80211_channel, ptr %19, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -3
  %23 = getelementptr inbounds %struct.ieee80211_channel, ptr %19, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @llvm.smin.i32(i32 %22, i32 %24) #16
  br label %30

26:                                               ; preds = %7
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.ieee80211_channel, ptr %27, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %26, %18, %10
  %31 = phi i32 [ %29, %26 ], [ %25, %18 ], [ %17, %10 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 45
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, -2147483648
  %35 = tail call i32 @llvm.smin.i32(i32 %31, i32 %33) #16
  %36 = select i1 %34, i32 %31, i32 %35
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 46
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, -2147483648
  %40 = tail call i32 @llvm.smin.i32(i32 %36, i32 %38) #16
  %41 = select i1 %39, i32 %36, i32 %40
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 42
  %43 = load i32, ptr %42, align 8
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %30
  store i32 %41, ptr %42, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @ieee80211_hw_config(ptr noundef %47, i32 noundef 0) #16
  br label %55

49:                                               ; preds = %30, %6
  br i1 %1, label %50, label %56

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 9
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50, %45
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 262144) #16
  br label %56

56:                                               ; preds = %55, %50, %49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_bss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee80211_idle_off(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_ops, ptr %3, i32 0, i32 54
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 103
  %9 = load volatile ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 67
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load volatile i32, ptr %11, align 4
  br label %17

17:                                               ; preds = %15, %10
  %18 = load i32, ptr %0, align 8
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = and i32 %18, -5
  store i32 %22, ptr %0, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ 0, %17 ], [ 256, %21 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_recalc_idle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 88
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne i32 %7, 0
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ true, %1 ], [ %8, %5 ]
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ieee80211_ops, ptr %12, i32 0, i32 54
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 103
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp ne ptr %18, %17
  br label %20

20:                                               ; preds = %16, %9
  %21 = phi i1 [ false, %9 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 67
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load volatile i32, ptr %22, align 4
  %28 = and i32 %27, 4
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %21, i1 true, i1 %29
  %31 = select i1 %30, i1 true, i1 %10
  br i1 %31, label %32, label %38

32:                                               ; preds = %26, %20
  %33 = load i32, ptr %0, align 8
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = and i32 %33, -5
  br label %45

38:                                               ; preds = %26
  %39 = load i32, ptr %0, align 8
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  tail call void @ieee80211_flush_queues(ptr noundef %0, ptr noundef null, i1 noundef zeroext false) #16
  %43 = load i32, ptr %0, align 8
  %44 = or i32 %43, 4
  br label %45

45:                                               ; preds = %42, %36
  %46 = phi i32 [ %44, %42 ], [ %37, %36 ]
  store i32 %46, ptr %0, align 8
  %47 = tail call i32 @ieee80211_hw_config(ptr noundef %0, i32 noundef 256) #16
  br label %48

48:                                               ; preds = %45, %38, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_recalc_offload(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.ieee80211_hw, ptr %0, i32 0, i32 4, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 131072
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %166, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %7) #16
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %165, label %11

11:                                               ; preds = %162, %6
  %12 = phi ptr [ %163, %162 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 9
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %162, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = tail call fastcc zeroext i1 @ieee80211_set_sdata_offload_flags(ptr noundef %12) #16
  br i1 %20, label %21, label %115

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 8
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  %26 = load i1, ptr @drv_update_vif_offload.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %35, !prof !10

29:                                               ; preds = %21
  store i1 true, ptr @drv_update_vif_offload.__already_done, align 1
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 6
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 10
  %34 = select i1 %32, ptr %33, ptr %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1413, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %34, i32 noundef %23) #16
  br label %35

35:                                               ; preds = %29, %21
  %36 = getelementptr inbounds %struct.ieee80211_local, ptr %19, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ieee80211_ops, ptr %37, i32 0, i32 102
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %78, label %41

41:                                               ; preds = %35
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_update_vif_offload, i32 0, i32 1), align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = tail call ptr @llvm.thread.pointer() #16
  %46 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 5
  %49 = getelementptr i32, ptr @__cpu_online_mask, i32 %48
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %47, 31
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, %50
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %44
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !11
  %56 = tail call i32 @__traceiter_drv_update_vif_offload(ptr noundef null, ptr noundef %19, ptr noundef %12) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %57 = load ptr, ptr %36, align 4
  %58 = getelementptr inbounds %struct.ieee80211_ops, ptr %57, i32 0, i32 102
  %59 = load ptr, ptr %58, align 4
  br label %60

60:                                               ; preds = %55, %44, %41
  %61 = phi ptr [ %39, %41 ], [ %39, %44 ], [ %59, %55 ]
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 58
  tail call void %61(ptr noundef %19, ptr noundef %62) #16
  %63 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = tail call ptr @llvm.thread.pointer() #16
  %67 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = lshr i32 %68, 5
  %70 = getelementptr i32, ptr @__cpu_online_mask, i32 %69
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %68, 31
  %73 = shl nuw i32 1, %72
  %74 = and i32 %73, %71
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %65
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %77 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %19) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  br label %78

78:                                               ; preds = %76, %65, %60, %35
  %79 = load ptr, ptr %18, align 4
  %80 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 58
  %81 = load i32, ptr %80, align 8
  %82 = icmp eq i32 %81, 4
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 49
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %115, label %87

87:                                               ; preds = %83
  %88 = getelementptr i8, ptr %85, i32 -1408
  br label %89

89:                                               ; preds = %87, %78
  %90 = phi ptr [ %88, %87 ], [ %12, %78 ]
  %91 = getelementptr %struct.ieee80211_hw, ptr %79, i32 0, i32 4, i32 1
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %92, 131072
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %115, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %90, i32 0, i32 58
  %97 = load i32, ptr %96, align 8
  %98 = and i32 %97, -2
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %115

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %90, i32 0, i32 58, i32 11
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 1
  %104 = icmp ne i32 %103, 0
  %105 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 1, i32 8
  %106 = load i8, ptr %105, align 8, !range !15
  %107 = icmp eq i8 %106, 0
  %108 = and i32 %102, 3
  %109 = icmp eq i32 %108, 3
  %110 = select i1 %107, i1 %104, i1 %109
  %111 = select i1 %110, ptr @ieee80211_dataif_8023_ops, ptr @ieee80211_dataif_ops
  %112 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 6
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %struct.net_device, ptr %113, i32 0, i32 16
  store ptr %111, ptr %114, align 8
  br label %115

115:                                              ; preds = %100, %95, %89, %83, %17
  %116 = getelementptr inbounds %struct.ieee80211_local, ptr %19, i32 0, i32 62
  %117 = load ptr, ptr %116, align 8
  %118 = icmp eq ptr %117, %116
  br i1 %118, label %162, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 57
  %121 = getelementptr %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 58
  %122 = getelementptr %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 58, i32 11
  br label %123

123:                                              ; preds = %159, %119
  %124 = phi ptr [ %117, %119 ], [ %160, %159 ]
  %125 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %124, i32 0, i32 58
  %126 = load i32, ptr %125, align 8
  %127 = icmp eq i32 %126, 4
  br i1 %127, label %128, label %159

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %124, i32 0, i32 49
  %130 = load ptr, ptr %129, align 4
  %131 = icmp ne ptr %130, %120
  %132 = icmp eq ptr %130, null
  %133 = or i1 %131, %132
  br i1 %133, label %159, label %134

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %124, i32 0, i32 7
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr %struct.ieee80211_hw, ptr %136, i32 0, i32 4, i32 1
  %138 = load volatile i32, ptr %137, align 4
  %139 = and i32 %138, 131072
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %159, label %141

141:                                              ; preds = %134
  %142 = load i32, ptr %121, align 8
  %143 = and i32 %142, -2
  %144 = icmp eq i32 %143, 2
  br i1 %144, label %145, label %159

145:                                              ; preds = %141
  %146 = load i32, ptr %122, align 4
  %147 = and i32 %146, 1
  %148 = icmp ne i32 %147, 0
  %149 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %124, i32 0, i32 1, i32 8
  %150 = load i8, ptr %149, align 8, !range !15
  %151 = icmp eq i8 %150, 0
  %152 = and i32 %146, 3
  %153 = icmp eq i32 %152, 3
  %154 = select i1 %151, i1 %148, i1 %153
  %155 = select i1 %154, ptr @ieee80211_dataif_8023_ops, ptr @ieee80211_dataif_ops
  %156 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %124, i32 0, i32 6
  %157 = load ptr, ptr %156, align 8
  %158 = getelementptr inbounds %struct.net_device, ptr %157, i32 0, i32 16
  store ptr %155, ptr %158, align 8
  br label %159

159:                                              ; preds = %145, %141, %134, %128, %123
  %160 = load ptr, ptr %124, align 8
  %161 = icmp eq ptr %160, %116
  br i1 %161, label %162, label %123

162:                                              ; preds = %159, %115, %11
  %163 = load ptr, ptr %12, align 8
  %164 = icmp eq ptr %163, %8
  br i1 %164, label %165, label %11

165:                                              ; preds = %162, %6
  tail call void @mutex_unlock(ptr noundef %7) #16
  br label %166

166:                                              ; preds = %165, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ieee80211_adjust_monitor_flags(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 16
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %1
  store i32 %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %9, %2
  %14 = and i32 %6, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 17
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, %1
  store i32 %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %16, %13
  %21 = and i32 %6, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 18
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %1
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 20
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %1
  store i32 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %23, %20
  %31 = and i32 %6, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 19
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, %1
  store i32 %36, ptr %34, align 8
  br label %37

37:                                               ; preds = %33, %30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_add_virtual_monitor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 4096
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %113, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @rtnl_is_locked() #16
  %8 = icmp eq i32 %7, 0
  %9 = load i1, ptr @ieee80211_add_virtual_monitor.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !10

12:                                               ; preds = %6
  store i1 true, ptr @ieee80211_add_virtual_monitor.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1022, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1022) #16
  br label %13

13:                                               ; preds = %12, %6
  %14 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 111
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %113

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 3112
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %113, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 7
  store ptr %0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 58
  store i32 6, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 10
  %28 = load ptr, ptr %14, align 8
  %29 = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %24
  %36 = phi ptr [ %34, %32 ], [ %30, %24 ]
  %37 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %27, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %36)
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 1, i32 1
  store i32 6, ptr %38, align 4
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 24
  store i32 8, ptr %39, align 32
  %40 = load ptr, ptr %25, align 4
  %41 = getelementptr inbounds %struct.ieee80211_hw, ptr %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.ieee80211_hw, ptr %40, i32 0, i32 11
  %43 = load volatile i32, ptr %41, align 4
  %44 = shl i32 %43, 13
  %45 = ashr i32 %44, 31
  %46 = trunc i32 %45 to i8
  %47 = getelementptr %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 58, i32 7, i32 0
  store i8 %46, ptr %47, align 2
  %48 = load volatile i32, ptr %41, align 4
  %49 = and i32 %48, 262144
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %35
  %52 = getelementptr %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 58, i32 7, i32 1
  store i8 -1, ptr %52, align 1
  br label %59

53:                                               ; preds = %35
  %54 = load i16, ptr %42, align 4
  %55 = icmp ugt i16 %54, 3
  %56 = getelementptr %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 58, i32 7, i32 1
  br i1 %55, label %58, label %57

57:                                               ; preds = %53
  store i8 0, ptr %56, align 1
  br label %59

58:                                               ; preds = %53
  store i8 1, ptr %56, align 1
  br label %59

59:                                               ; preds = %58, %57, %51
  %60 = load volatile i32, ptr %41, align 4
  %61 = and i32 %60, 262144
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = getelementptr %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 58, i32 7, i32 2
  store i8 -1, ptr %64, align 4
  br label %71

65:                                               ; preds = %59
  %66 = load i16, ptr %42, align 4
  %67 = icmp ugt i16 %66, 3
  %68 = getelementptr %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 58, i32 7, i32 2
  br i1 %67, label %70, label %69

69:                                               ; preds = %65
  store i8 0, ptr %68, align 4
  br label %71

70:                                               ; preds = %65
  store i8 2, ptr %68, align 4
  br label %71

71:                                               ; preds = %70, %69, %63
  %72 = load volatile i32, ptr %41, align 4
  %73 = and i32 %72, 262144
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = getelementptr %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 58, i32 7, i32 3
  store i8 -1, ptr %76, align 1
  br label %83

77:                                               ; preds = %71
  %78 = load i16, ptr %42, align 4
  %79 = icmp ugt i16 %78, 3
  %80 = getelementptr %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 58, i32 7, i32 3
  br i1 %79, label %82, label %81

81:                                               ; preds = %77
  store i8 0, ptr %80, align 1
  br label %83

82:                                               ; preds = %77
  store i8 3, ptr %80, align 1
  br label %83

83:                                               ; preds = %82, %81, %75
  %84 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 58, i32 6
  store i8 -1, ptr %84, align 1
  %85 = tail call i32 @drv_add_interface(ptr noundef %0, ptr noundef nonnull %22) #16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87, !prof !16

87:                                               ; preds = %83
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1044, i32 noundef 9, ptr noundef null) #16
  tail call void @kfree(ptr noundef nonnull %22) #16
  br label %113

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %89) #16
  %90 = tail call fastcc i32 @ieee80211_check_queues(ptr noundef nonnull %22, i32 noundef 6)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  tail call void @kfree(ptr noundef nonnull %22) #16
  br label %113

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %94) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  store volatile ptr %22, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %94) #16
  %95 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %95) #16
  %96 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 112
  %97 = tail call i32 @ieee80211_vif_use_channel(ptr noundef nonnull %22, ptr noundef %96, i32 noundef 1) #16
  tail call void @mutex_unlock(ptr noundef %95) #16
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  tail call void @mutex_lock(ptr noundef %94) #16
  store volatile ptr null, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %94) #16
  tail call void @synchronize_net() #16
  tail call void @drv_remove_interface(ptr noundef %0, ptr noundef nonnull %22) #16
  tail call void @kfree(ptr noundef nonnull %22) #16
  br label %113

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 41
  %102 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 41, i32 2
  store i32 0, ptr %102, align 8
  store ptr %101, ptr %101, align 4
  %103 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 41, i32 0, i32 0, i32 1
  store ptr %101, ptr %103, align 64
  %104 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 41, i32 1
  store i32 0, ptr %104, align 4
  %105 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 42
  %106 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 42, i32 2
  store i32 0, ptr %106, align 8
  store ptr %105, ptr %105, align 4
  %107 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 42, i32 0, i32 0, i32 1
  store ptr %105, ptr %107, align 16
  %108 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 42, i32 1
  store i32 0, ptr %108, align 4
  %109 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 40
  store i32 -32, ptr %109, align 4
  %110 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 40, i32 1
  store volatile ptr %110, ptr %110, align 16
  %111 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 40, i32 1, i32 1
  store ptr %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %22, i32 0, i32 40, i32 2
  store ptr @ieee80211_iface_work, ptr %112, align 8
  br label %113

113:                                              ; preds = %100, %99, %92, %87, %18, %13, %1
  %114 = phi i32 [ %85, %87 ], [ %90, %92 ], [ %97, %99 ], [ 0, %100 ], [ 0, %1 ], [ 0, %13 ], [ -12, %18 ]
  ret i32 %114
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_add_interface(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_check_queues(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 11
  %6 = load i16, ptr %5, align 4
  switch i32 %1, label %7 [
    i32 12, label %107
    i32 10, label %86
  ]

7:                                                ; preds = %2
  %8 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 7, i32 0
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, -1
  %11 = load i1, ptr @ieee80211_check_queues.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %69, label %70, !prof !10

14:                                               ; preds = %79
  %15 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 7, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, -1
  %18 = load i1, ptr @ieee80211_check_queues.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !10

21:                                               ; preds = %14
  store i1 true, ptr @ieee80211_check_queues.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 323, i32 noundef 9, ptr noundef null) #16
  br label %22

22:                                               ; preds = %21, %14
  br i1 %17, label %107, label %23

23:                                               ; preds = %22
  %24 = load i8, ptr %15, align 1
  %25 = zext i8 %24 to i16
  %26 = icmp ule i16 %6, %25
  %27 = load i1, ptr @ieee80211_check_queues.__already_done.7, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %31, !prof !10

30:                                               ; preds = %23
  store i1 true, ptr @ieee80211_check_queues.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 326, i32 noundef 9, ptr noundef null) #16
  br label %31

31:                                               ; preds = %30, %23
  br i1 %26, label %107, label %32

32:                                               ; preds = %31
  %33 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 7, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, -1
  %36 = load i1, ptr @ieee80211_check_queues.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !10

39:                                               ; preds = %32
  store i1 true, ptr @ieee80211_check_queues.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 323, i32 noundef 9, ptr noundef null) #16
  br label %40

40:                                               ; preds = %39, %32
  br i1 %35, label %107, label %41

41:                                               ; preds = %40
  %42 = load i8, ptr %33, align 1
  %43 = zext i8 %42 to i16
  %44 = icmp ule i16 %6, %43
  %45 = load i1, ptr @ieee80211_check_queues.__already_done.7, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !10

48:                                               ; preds = %41
  store i1 true, ptr @ieee80211_check_queues.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 326, i32 noundef 9, ptr noundef null) #16
  br label %49

49:                                               ; preds = %48, %41
  br i1 %44, label %107, label %50

50:                                               ; preds = %49
  %51 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 7, i32 3
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, -1
  %54 = load i1, ptr @ieee80211_check_queues.__already_done, align 1
  %55 = xor i1 %54, true
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %58, !prof !10

57:                                               ; preds = %50
  store i1 true, ptr @ieee80211_check_queues.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 323, i32 noundef 9, ptr noundef null) #16
  br label %58

58:                                               ; preds = %57, %50
  br i1 %53, label %107, label %59

59:                                               ; preds = %58
  %60 = load i8, ptr %51, align 1
  %61 = zext i8 %60 to i16
  %62 = icmp ule i16 %6, %61
  %63 = load i1, ptr @ieee80211_check_queues.__already_done.7, align 1
  %64 = xor i1 %63, true
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %67, !prof !10

66:                                               ; preds = %59
  store i1 true, ptr @ieee80211_check_queues.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 326, i32 noundef 9, ptr noundef null) #16
  br label %67

67:                                               ; preds = %66, %59
  br i1 %62, label %107, label %68

68:                                               ; preds = %67
  switch i32 %1, label %86 [
    i32 9, label %80
    i32 7, label %80
    i32 3, label %80
  ]

69:                                               ; preds = %7
  store i1 true, ptr @ieee80211_check_queues.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 323, i32 noundef 9, ptr noundef null) #16
  br label %70

70:                                               ; preds = %69, %7
  br i1 %10, label %107, label %71

71:                                               ; preds = %70
  %72 = load i8, ptr %8, align 1
  %73 = zext i8 %72 to i16
  %74 = icmp ule i16 %6, %73
  %75 = load i1, ptr @ieee80211_check_queues.__already_done.7, align 1
  %76 = xor i1 %75, true
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %79, !prof !10

78:                                               ; preds = %71
  store i1 true, ptr @ieee80211_check_queues.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 326, i32 noundef 9, ptr noundef null) #16
  br label %79

79:                                               ; preds = %78, %71
  br i1 %74, label %107, label %14

80:                                               ; preds = %68, %68, %68
  %81 = load ptr, ptr %3, align 4
  %82 = getelementptr inbounds %struct.ieee80211_hw, ptr %81, i32 0, i32 4
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %83, 262144
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80, %68, %2
  %87 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 6
  store i8 -1, ptr %87, align 1
  br label %107

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 6
  %90 = load i8, ptr %89, align 1
  %91 = icmp eq i8 %90, -1
  %92 = load i1, ptr @ieee80211_check_queues.__already_done.8, align 1
  %93 = xor i1 %92, true
  %94 = select i1 %91, i1 %93, i1 false
  br i1 %94, label %95, label %96, !prof !10

95:                                               ; preds = %88
  store i1 true, ptr @ieee80211_check_queues.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 339, i32 noundef 9, ptr noundef null) #16
  br label %96

96:                                               ; preds = %95, %88
  br i1 %91, label %107, label %97

97:                                               ; preds = %96
  %98 = load i8, ptr %89, align 1
  %99 = zext i8 %98 to i16
  %100 = icmp ule i16 %6, %99
  %101 = load i1, ptr @ieee80211_check_queues.__already_done.9, align 1
  %102 = xor i1 %101, true
  %103 = select i1 %100, i1 %102, i1 false
  br i1 %103, label %104, label %105, !prof !10

104:                                              ; preds = %97
  store i1 true, ptr @ieee80211_check_queues.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 342, i32 noundef 9, ptr noundef null) #16
  br label %105

105:                                              ; preds = %104, %97
  %106 = select i1 %100, i32 -22, i32 0
  br label %107

107:                                              ; preds = %105, %96, %86, %79, %70, %67, %58, %49, %40, %31, %22, %2
  %108 = phi i32 [ 0, %86 ], [ 0, %2 ], [ -22, %96 ], [ %106, %105 ], [ -22, %67 ], [ -22, %58 ], [ -22, %49 ], [ -22, %40 ], [ -22, %31 ], [ -22, %22 ], [ -22, %70 ], [ -22, %79 ]
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_vif_use_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_remove_interface(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_iface_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1068
  %3 = getelementptr i8, ptr %0, i32 -712
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -704
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %157, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 67
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %157

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 36
  %16 = load i8, ptr %15, align 2, !range !15
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %157

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 34
  %20 = load i8, ptr %19, align 8, !range !15
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %157

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 31
  %24 = load i8, ptr %23, align 1, !range !15
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %157

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %0, i32 16
  %28 = tail call ptr @skb_dequeue(ptr noundef %27) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 46
  %32 = getelementptr i8, ptr %0, i32 1196
  br label %37

33:                                               ; preds = %128, %26
  %34 = getelementptr i8, ptr %0, i32 32
  %35 = tail call ptr @skb_dequeue(ptr noundef %34) #16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %151, label %131

37:                                               ; preds = %128, %30
  %38 = phi ptr [ %28, %30 ], [ %129, %128 ]
  %39 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 13, i32 0, i32 16
  %40 = load i16, ptr %39, align 8
  %41 = icmp eq i16 %40, 3465
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  tail call void @ieee80211_process_tdls_channel_switch(ptr noundef %2, ptr noundef nonnull %38) #16
  br label %128

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 17
  %45 = load ptr, ptr %44, align 4
  %46 = load i16, ptr %45, align 2
  %47 = and i16 %46, 252
  %48 = icmp eq i16 %47, 208
  br i1 %48, label %49, label %88

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %45, i32 0, i32 6
  %51 = load i8, ptr %50, align 2
  switch i8 %51, label %88 [
    i8 3, label %52
    i8 21, label %66
    i8 22, label %82
  ]

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 5
  %54 = load i32, ptr %53, align 8
  tail call void @mutex_lock(ptr noundef %31) #16
  %55 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %45, i32 0, i32 3
  %56 = tail call ptr @sta_info_get_bss(ptr noundef %2, ptr noundef %55) #16
  %57 = icmp eq ptr %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.anon.165, ptr %50, i32 0, i32 1
  %60 = load i8, ptr %59, align 1
  switch i8 %60, label %64 [
    i8 0, label %61
    i8 1, label %62
    i8 2, label %63
  ]

61:                                               ; preds = %58
  tail call void @ieee80211_process_addba_request(ptr noundef %4, ptr noundef nonnull %56, ptr noundef %45, i32 noundef %54) #16
  br label %65

62:                                               ; preds = %58
  tail call void @ieee80211_process_addba_resp(ptr noundef %4, ptr noundef nonnull %56, ptr noundef %45, i32 noundef %54) #16
  br label %65

63:                                               ; preds = %58
  tail call void @ieee80211_process_delba(ptr noundef %2, ptr noundef nonnull %56, ptr noundef %45, i32 noundef %54) #16
  br label %65

64:                                               ; preds = %58
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1440, i32 noundef 9, ptr noundef null) #16
  br label %65

65:                                               ; preds = %64, %63, %62, %61, %52
  tail call void @mutex_unlock(ptr noundef %31) #16
  br label %128

66:                                               ; preds = %49
  %67 = getelementptr inbounds %struct.anon.165, ptr %50, i32 0, i32 1
  %68 = load i8, ptr %67, align 1
  switch i8 %68, label %81 [
    i8 2, label %69
    i8 1, label %80
  ]

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 3, i32 36
  %71 = load i8, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %45, i32 0, i32 6, i32 0, i32 1
  %73 = load i8, ptr %72, align 1
  tail call void @mutex_lock(ptr noundef %31) #16
  %74 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %45, i32 0, i32 3
  %75 = tail call ptr @sta_info_get_bss(ptr noundef %2, ptr noundef %74) #16
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %69
  %78 = zext i8 %71 to i32
  tail call void @ieee80211_vht_handle_opmode(ptr noundef %2, ptr noundef nonnull %75, i8 noundef zeroext %73, i32 noundef %78) #16
  br label %79

79:                                               ; preds = %77, %69
  tail call void @mutex_unlock(ptr noundef %31) #16
  br label %128

80:                                               ; preds = %66
  tail call void @ieee80211_process_mu_groups(ptr noundef %2, ptr noundef %45) #16
  br label %128

81:                                               ; preds = %66
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1472, i32 noundef 9, ptr noundef null) #16
  br label %128

82:                                               ; preds = %49
  %83 = getelementptr inbounds %struct.anon.165, ptr %50, i32 0, i32 1
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %84, -2
  %86 = icmp eq i8 %85, 6
  br i1 %86, label %87, label %128

87:                                               ; preds = %82
  tail call void @ieee80211_s1g_rx_twt_action(ptr noundef %2, ptr noundef nonnull %38) #16
  br label %128

88:                                               ; preds = %49, %43
  %89 = and i16 %46, 12
  %90 = icmp eq i16 %89, 12
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, ptr %32, align 8
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  tail call void @ieee80211_sta_rx_queued_ext(ptr noundef %2, ptr noundef nonnull %38) #16
  br label %128

95:                                               ; preds = %91
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1489, i32 noundef 9, ptr noundef null) #16
  br label %128

96:                                               ; preds = %88
  %97 = and i16 %46, 140
  %98 = icmp eq i16 %97, 136
  br i1 %98, label %99, label %123

99:                                               ; preds = %96
  %100 = and i16 %46, 64
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %103, label %102, !prof !16

102:                                              ; preds = %99
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1503, i32 noundef 9, ptr noundef null) #16
  br label %103

103:                                              ; preds = %102, %99
  %104 = getelementptr inbounds %struct.ieee80211_hdr, ptr %45, i32 0, i32 5
  %105 = load i16, ptr %104, align 2
  %106 = and i16 %105, 15
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %109, !prof !10

108:                                              ; preds = %103
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1505, i32 noundef 9, ptr noundef null) #16
  br label %109

109:                                              ; preds = %108, %103
  tail call void @mutex_lock(ptr noundef %31) #16
  %110 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %45, i32 0, i32 3
  %111 = tail call ptr @sta_info_get_bss(ptr noundef %2, ptr noundef %110) #16
  %112 = icmp eq ptr %111, null
  br i1 %112, label %122, label %113

113:                                              ; preds = %109
  %114 = load i16, ptr %45, align 2
  %115 = and i16 %114, 768
  %116 = icmp eq i16 %115, 768
  %117 = select i1 %116, i32 30, i32 24
  %118 = getelementptr i8, ptr %45, i32 %117
  %119 = load i8, ptr %118, align 1
  %120 = and i8 %119, 15
  %121 = zext i8 %120 to i16
  tail call void @__ieee80211_stop_rx_ba_session(ptr noundef nonnull %111, i16 noundef zeroext %121, i16 noundef zeroext 0, i16 noundef zeroext 38, i1 noundef zeroext true) #16
  br label %122

122:                                              ; preds = %113, %109
  tail call void @mutex_unlock(ptr noundef %31) #16
  br label %128

123:                                              ; preds = %96
  %124 = load i32, ptr %32, align 8
  switch i32 %124, label %127 [
    i32 2, label %125
    i32 1, label %126
    i32 7, label %128
  ]

125:                                              ; preds = %123
  tail call void @ieee80211_sta_rx_queued_mgmt(ptr noundef %2, ptr noundef nonnull %38) #16
  br label %128

126:                                              ; preds = %123
  tail call void @ieee80211_ibss_rx_queued_mgmt(ptr noundef %2, ptr noundef nonnull %38) #16
  br label %128

127:                                              ; preds = %123
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1535, i32 noundef 9, ptr noundef nonnull @.str.10) #16
  br label %128

128:                                              ; preds = %127, %126, %125, %123, %122, %95, %94, %87, %82, %81, %80, %79, %65, %42
  tail call void @kfree_skb_reason(ptr noundef nonnull %38, i32 noundef 0) #16
  %129 = tail call ptr @skb_dequeue(ptr noundef %27) #16
  %130 = icmp eq ptr %129, null
  br i1 %130, label %33, label %37

131:                                              ; preds = %148, %33
  %132 = phi ptr [ %149, %148 ], [ %35, %33 ]
  %133 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 17
  %134 = load ptr, ptr %133, align 4
  %135 = load i16, ptr %134, align 2
  %136 = and i16 %135, 252
  %137 = icmp eq i16 %136, 208
  br i1 %137, label %138, label %148

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %134, i32 0, i32 6
  %140 = load i8, ptr %139, align 2
  %141 = icmp eq i8 %140, 22
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.anon.165, ptr %139, i32 0, i32 1
  %144 = load i8, ptr %143, align 1
  %145 = and i8 %144, -2
  %146 = icmp eq i8 %145, 6
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  tail call void @ieee80211_s1g_status_twt_action(ptr noundef %2, ptr noundef nonnull %132) #16
  br label %148

148:                                              ; preds = %147, %142, %138, %131
  tail call void @kfree_skb_reason(ptr noundef nonnull %132, i32 noundef 0) #16
  %149 = tail call ptr @skb_dequeue(ptr noundef %34) #16
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %131

151:                                              ; preds = %148, %33
  %152 = getelementptr i8, ptr %0, i32 1196
  %153 = load i32, ptr %152, align 8
  switch i32 %153, label %157 [
    i32 2, label %154
    i32 1, label %155
    i32 11, label %156
  ]

154:                                              ; preds = %151
  tail call void @ieee80211_sta_work(ptr noundef %2) #16
  br label %157

155:                                              ; preds = %151
  tail call void @ieee80211_ibss_work(ptr noundef %2) #16
  br label %157

156:                                              ; preds = %151
  tail call void @ieee80211_ocb_work(ptr noundef %2) #16
  br label %157

157:                                              ; preds = %156, %155, %154, %151, %22, %18, %14, %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_del_virtual_monitor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 4096
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @rtnl_is_locked() #16
  %8 = icmp eq i32 %7, 0
  %9 = load i1, ptr @ieee80211_del_virtual_monitor.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !10

12:                                               ; preds = %6
  store i1 true, ptr @ieee80211_del_virtual_monitor.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1090, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1090) #16
  br label %13

13:                                               ; preds = %12, %6
  %14 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %14) #16
  %15 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 111
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @mutex_unlock(ptr noundef %14) #16
  br label %21

19:                                               ; preds = %13
  store volatile ptr null, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %14) #16
  tail call void @synchronize_net() #16
  %20 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %20) #16
  tail call void @ieee80211_vif_release_channel(ptr noundef nonnull %16) #16
  tail call void @mutex_unlock(ptr noundef %20) #16
  tail call void @drv_remove_interface(ptr noundef %0, ptr noundef nonnull %16) #16
  tail call void @kfree(ptr noundef nonnull %16) #16
  br label %21

21:                                               ; preds = %19, %18, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vif_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_do_open(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 348
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 2256
  %9 = load i32, ptr %8, align 8
  switch i32 %9, label %53 [
    i32 4, label %10
    i32 3, label %49
    i32 5, label %52
    i32 9, label %52
    i32 8, label %52
    i32 13, label %52
    i32 0, label %52
  ]

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %0, i32 1172
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %486, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %15) #16
  %16 = getelementptr i8, ptr %0, i32 1400
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr inbounds %struct.ieee80211_if_ap, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %16, ptr %20, align 4
  store ptr %19, ptr %16, align 4
  %21 = getelementptr i8, ptr %0, i32 1404
  store ptr %18, ptr %21, align 4
  store volatile ptr %16, ptr %18, align 4
  tail call void @mutex_unlock(ptr noundef %15) #16
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr i8, ptr %22, i32 -806
  %24 = load i16, ptr %23, align 2
  %25 = getelementptr i8, ptr %0, i32 594
  store i16 %24, ptr %25, align 2
  %26 = getelementptr i8, ptr %22, i32 -804
  %27 = load i8, ptr %26, align 4, !range !15
  %28 = getelementptr i8, ptr %0, i32 596
  store i8 %27, ptr %28, align 4
  %29 = getelementptr i8, ptr %22, i32 -802
  %30 = load i8, ptr %29, align 2, !range !15
  %31 = getelementptr i8, ptr %0, i32 598
  store i8 %30, ptr %31, align 2
  %32 = getelementptr i8, ptr %22, i32 -803
  %33 = load i8, ptr %32, align 1, !range !15
  %34 = getelementptr i8, ptr %0, i32 597
  store i8 %33, ptr %34, align 1
  %35 = getelementptr i8, ptr %22, i32 1665
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr i8, ptr %0, i32 3065
  store i8 %36, ptr %37, align 1
  %38 = getelementptr i8, ptr %0, i32 3066
  %39 = getelementptr i8, ptr %22, i32 1666
  %40 = load i32, ptr %39, align 2
  store i32 %40, ptr %38, align 2
  %41 = getelementptr i8, ptr %0, i32 2364
  %42 = getelementptr i8, ptr %22, i32 964
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %41, ptr noundef align 4 dereferenceable(28) %42, i32 28, i1 false)
  %43 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 65
  tail call void @mutex_lock(ptr noundef %43) #16
  %44 = getelementptr i8, ptr %22, i32 -1108
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr i8, ptr %0, i32 292
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, %45
  store i32 %48, ptr %46, align 4
  tail call void @mutex_unlock(ptr noundef %43) #16
  br label %53

49:                                               ; preds = %2
  %50 = getelementptr i8, ptr %0, i32 1400
  %51 = getelementptr i8, ptr %0, i32 1172
  store ptr %50, ptr %51, align 4
  br label %53

52:                                               ; preds = %2, %2, %2, %2, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1181, i32 noundef 9, ptr noundef null) #16
  br label %53

53:                                               ; preds = %52, %49, %14, %2
  %54 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 13
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = tail call i32 @drv_start(ptr noundef %7) #16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %472

60:                                               ; preds = %57, %53
  %61 = phi i32 [ 0, %53 ], [ -1, %57 ]
  %62 = icmp eq ptr %5, null
  br i1 %62, label %87, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 72
  %65 = load ptr, ptr %64, align 32
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr i8, ptr %65, i32 4
  %68 = load i16, ptr %67, align 2
  %69 = zext i16 %68 to i32
  %70 = or i32 %66, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.wiphy, ptr %74, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef nonnull %5, i32 noundef 0, ptr noundef %75, i32 noundef 6) #16
  %76 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 49
  %77 = load ptr, ptr %64, align 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %76, ptr noundef align 1 dereferenceable(6) %77, i32 6, i1 false)
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %467

81:                                               ; preds = %72
  %82 = getelementptr i8, ptr %77, i32 4
  %83 = load i16, ptr %82, align 2
  %84 = zext i16 %83 to i32
  %85 = or i32 %78, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %467, label %87

87:                                               ; preds = %81, %63, %60
  %88 = load i32, ptr %8, align 8
  switch i32 %88, label %246 [
    i32 4, label %89
    i32 6, label %130
  ]

89:                                               ; preds = %87
  %90 = getelementptr i8, ptr %0, i32 1172
  %91 = load ptr, ptr %90, align 4
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %129, label %94

94:                                               ; preds = %89
  tail call void @ieee80211_vif_vlan_copy_chanctx(ptr noundef %3) #16
  tail call void @netif_carrier_on(ptr noundef %5) #16
  %95 = load ptr, ptr %6, align 4
  %96 = load i32, ptr %8, align 8
  %97 = icmp eq i32 %96, 4
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load ptr, ptr %90, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %370, label %101

101:                                              ; preds = %98
  %102 = getelementptr i8, ptr %99, i32 -1408
  br label %103

103:                                              ; preds = %101, %94
  %104 = phi ptr [ %102, %101 ], [ %3, %94 ]
  %105 = getelementptr %struct.ieee80211_hw, ptr %95, i32 0, i32 4, i32 1
  %106 = load volatile i32, ptr %105, align 4
  %107 = and i32 %106, 131072
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %370, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %104, i32 0, i32 58
  %111 = load i32, ptr %110, align 8
  %112 = and i32 %111, -2
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %370

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %104, i32 0, i32 58, i32 11
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, 1
  %118 = icmp ne i32 %117, 0
  %119 = getelementptr i8, ptr %0, i32 56
  %120 = load i8, ptr %119, align 8, !range !15
  %121 = icmp eq i8 %120, 0
  %122 = and i32 %116, 3
  %123 = icmp eq i32 %122, 3
  %124 = select i1 %121, i1 %118, i1 %123
  %125 = select i1 %124, ptr @ieee80211_dataif_8023_ops, ptr @ieee80211_dataif_ops
  %126 = getelementptr i8, ptr %0, i32 344
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr inbounds %struct.net_device, ptr %127, i32 0, i32 16
  store ptr %125, ptr %128, align 8
  br label %370

129:                                              ; preds = %89
  tail call void @netif_carrier_off(ptr noundef %5) #16
  br label %370

130:                                              ; preds = %87
  %131 = getelementptr i8, ptr %0, i32 1400
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 15
  %137 = load i32, ptr %136, align 8
  %138 = add i32 %137, 1
  store i32 %138, ptr %136, align 8
  br label %370

139:                                              ; preds = %130
  %140 = and i32 %132, 64
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = tail call i32 @drv_add_interface(ptr noundef %7, ptr noundef %3) #16
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %155, label %467

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 14
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load i32, ptr %54, align 8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = tail call i32 @ieee80211_add_virtual_monitor(ptr noundef %7)
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %467

155:                                              ; preds = %152, %149, %145, %142
  %156 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 14
  %157 = load i32, ptr %156, align 4
  %158 = add i32 %157, 1
  store i32 %158, ptr %156, align 4
  %159 = icmp eq i32 %157, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load i32, ptr %7, align 8
  %162 = or i32 %161, 1
  store i32 %162, ptr %7, align 8
  %163 = or i32 %61, 8
  br label %164

164:                                              ; preds = %160, %155
  %165 = phi i32 [ %163, %160 ], [ %61, %155 ]
  %166 = load ptr, ptr %6, align 4
  %167 = load i32, ptr %131, align 8
  %168 = and i32 %167, 2
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.ieee80211_local, ptr %166, i32 0, i32 16
  %172 = load i32, ptr %171, align 4
  %173 = add i32 %172, 1
  store i32 %173, ptr %171, align 4
  br label %174

174:                                              ; preds = %170, %164
  %175 = and i32 %167, 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.ieee80211_local, ptr %166, i32 0, i32 17
  %179 = load i32, ptr %178, align 8
  %180 = add i32 %179, 1
  store i32 %180, ptr %178, align 8
  br label %181

181:                                              ; preds = %177, %174
  %182 = and i32 %167, 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.ieee80211_local, ptr %166, i32 0, i32 18
  %186 = load i32, ptr %185, align 4
  %187 = add i32 %186, 1
  store i32 %187, ptr %185, align 4
  %188 = getelementptr inbounds %struct.ieee80211_local, ptr %166, i32 0, i32 20
  %189 = load i32, ptr %188, align 4
  %190 = add i32 %189, 1
  store i32 %190, ptr %188, align 4
  br label %191

191:                                              ; preds = %184, %181
  %192 = and i32 %167, 16
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.ieee80211_local, ptr %166, i32 0, i32 19
  %196 = load i32, ptr %195, align 8
  %197 = add i32 %196, 1
  store i32 %197, ptr %195, align 8
  br label %198

198:                                              ; preds = %194, %191
  tail call void @ieee80211_configure_filter(ptr noundef %7) #16
  tail call void @ieee80211_recalc_offload(ptr noundef %7)
  %199 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %199) #16
  %200 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 88
  %201 = load volatile ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, %200
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load i32, ptr %156, align 4
  %205 = icmp ne i32 %204, 0
  br label %206

206:                                              ; preds = %203, %198
  %207 = phi i1 [ true, %198 ], [ %205, %203 ]
  %208 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 8
  %209 = load ptr, ptr %208, align 4
  %210 = getelementptr inbounds %struct.ieee80211_ops, ptr %209, i32 0, i32 54
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %217

213:                                              ; preds = %206
  %214 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 103
  %215 = load volatile ptr, ptr %214, align 4
  %216 = icmp ne ptr %215, %214
  br label %217

217:                                              ; preds = %213, %206
  %218 = phi i1 [ false, %206 ], [ %216, %213 ]
  %219 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 67
  %220 = load volatile i32, ptr %219, align 4
  %221 = and i32 %220, 1
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %217
  %224 = load volatile i32, ptr %219, align 4
  %225 = and i32 %224, 4
  %226 = icmp ne i32 %225, 0
  %227 = select i1 %218, i1 true, i1 %226
  %228 = select i1 %227, i1 true, i1 %207
  br i1 %228, label %229, label %235

229:                                              ; preds = %223, %217
  %230 = load i32, ptr %7, align 8
  %231 = and i32 %230, 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %245, label %233

233:                                              ; preds = %229
  %234 = and i32 %230, -5
  br label %242

235:                                              ; preds = %223
  %236 = load i32, ptr %7, align 8
  %237 = and i32 %236, 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %235
  tail call void @ieee80211_flush_queues(ptr noundef %7, ptr noundef null, i1 noundef zeroext false) #16
  %240 = load i32, ptr %7, align 8
  %241 = or i32 %240, 4
  br label %242

242:                                              ; preds = %239, %233
  %243 = phi i32 [ %241, %239 ], [ %234, %233 ]
  store i32 %243, ptr %7, align 8
  %244 = tail call i32 @ieee80211_hw_config(ptr noundef %7, i32 noundef 256) #16
  br label %245

245:                                              ; preds = %242, %235, %229
  tail call void @mutex_unlock(ptr noundef %199) #16
  tail call void @netif_carrier_on(ptr noundef %5) #16
  br label %370

246:                                              ; preds = %87
  br i1 %1, label %247, label %302

247:                                              ; preds = %246
  tail call void @ieee80211_del_virtual_monitor(ptr noundef %7)
  %248 = tail call fastcc zeroext i1 @ieee80211_set_sdata_offload_flags(ptr noundef %3)
  %249 = tail call i32 @drv_add_interface(ptr noundef %7, ptr noundef %3) #16
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %467

251:                                              ; preds = %247
  %252 = load ptr, ptr %6, align 4
  %253 = load i32, ptr %8, align 8
  %254 = icmp eq i32 %253, 4
  br i1 %254, label %255, label %261

255:                                              ; preds = %251
  %256 = getelementptr i8, ptr %0, i32 1172
  %257 = load ptr, ptr %256, align 4
  %258 = icmp eq ptr %257, null
  br i1 %258, label %288, label %259

259:                                              ; preds = %255
  %260 = getelementptr i8, ptr %257, i32 -1408
  br label %261

261:                                              ; preds = %259, %251
  %262 = phi ptr [ %260, %259 ], [ %3, %251 ]
  %263 = getelementptr %struct.ieee80211_hw, ptr %252, i32 0, i32 4, i32 1
  %264 = load volatile i32, ptr %263, align 4
  %265 = and i32 %264, 131072
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %288, label %267

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %262, i32 0, i32 58
  %269 = load i32, ptr %268, align 8
  %270 = and i32 %269, -2
  %271 = icmp eq i32 %270, 2
  br i1 %271, label %272, label %288

272:                                              ; preds = %267
  %273 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %262, i32 0, i32 58, i32 11
  %274 = load i32, ptr %273, align 4
  %275 = and i32 %274, 1
  %276 = icmp ne i32 %275, 0
  %277 = getelementptr i8, ptr %0, i32 56
  %278 = load i8, ptr %277, align 8, !range !15
  %279 = icmp eq i8 %278, 0
  %280 = and i32 %274, 3
  %281 = icmp eq i32 %280, 3
  %282 = select i1 %279, i1 %276, i1 %281
  %283 = select i1 %282, ptr @ieee80211_dataif_8023_ops, ptr @ieee80211_dataif_ops
  %284 = getelementptr i8, ptr %0, i32 344
  %285 = load ptr, ptr %284, align 8
  %286 = getelementptr inbounds %struct.net_device, ptr %285, i32 0, i32 16
  store ptr %283, ptr %286, align 8
  %287 = load i32, ptr %8, align 8
  br label %288

288:                                              ; preds = %272, %267, %261, %255
  %289 = phi i32 [ 4, %255 ], [ %253, %261 ], [ %253, %267 ], [ %287, %272 ]
  %290 = getelementptr i8, ptr %0, i32 3062
  %291 = load i8, ptr %290, align 2, !range !15
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %288
  switch i32 %289, label %295 [
    i32 2, label %296
    i32 3, label %294
  ]

294:                                              ; preds = %293
  br label %296

295:                                              ; preds = %293, %288
  br label %296

296:                                              ; preds = %295, %294, %293
  %297 = phi i32 [ %289, %295 ], [ 9, %294 ], [ 8, %293 ]
  %298 = tail call fastcc i32 @ieee80211_check_queues(ptr noundef %3, i32 noundef %297)
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %466

300:                                              ; preds = %296
  %301 = load i32, ptr %8, align 8
  br label %302

302:                                              ; preds = %300, %246
  %303 = phi i32 [ %301, %300 ], [ %88, %246 ]
  switch i32 %303, label %315 [
    i32 3, label %304
    i32 1, label %311
  ]

304:                                              ; preds = %302
  %305 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 20
  %306 = load i32, ptr %305, align 4
  %307 = add i32 %306, 1
  store i32 %307, ptr %305, align 4
  %308 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 21
  %309 = load i32, ptr %308, align 8
  %310 = add i32 %309, 1
  store i32 %310, ptr %308, align 8
  tail call void @ieee80211_configure_filter(ptr noundef %7) #16
  br label %315

311:                                              ; preds = %302
  %312 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 21
  %313 = load i32, ptr %312, align 8
  %314 = add i32 %313, 1
  store i32 %314, ptr %312, align 8
  br label %315

315:                                              ; preds = %311, %304, %302
  %316 = getelementptr i8, ptr %0, i32 3088
  %317 = load i8, ptr %316, align 8, !range !15
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %358, label %319

319:                                              ; preds = %315
  %320 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_config_iface_filter, i32 0, i32 1), align 4
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %322, label %335

322:                                              ; preds = %319
  %323 = tail call ptr @llvm.thread.pointer() #16
  %324 = getelementptr inbounds %struct.thread_info, ptr %323, i32 0, i32 2
  %325 = load i32, ptr %324, align 8
  %326 = lshr i32 %325, 5
  %327 = getelementptr i32, ptr @__cpu_online_mask, i32 %326
  %328 = load volatile i32, ptr %327, align 4
  %329 = and i32 %325, 31
  %330 = shl nuw i32 1, %329
  %331 = and i32 %330, %328
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %335, label %333

333:                                              ; preds = %322
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !18
  %334 = tail call i32 @__traceiter_drv_config_iface_filter(ptr noundef null, ptr noundef %7, ptr noundef %3, i32 noundef 256, i32 noundef 256) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  br label %335

335:                                              ; preds = %333, %322, %319
  %336 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 8
  %337 = load ptr, ptr %336, align 4
  %338 = getelementptr inbounds %struct.ieee80211_ops, ptr %337, i32 0, i32 15
  %339 = load ptr, ptr %338, align 4
  %340 = icmp eq ptr %339, null
  br i1 %340, label %342, label %341

341:                                              ; preds = %335
  tail call void %339(ptr noundef %7, ptr noundef %8, i32 noundef 256, i32 noundef 256) #16
  br label %342

342:                                              ; preds = %341, %335
  %343 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %344 = icmp sgt i32 %343, 0
  br i1 %344, label %345, label %358

345:                                              ; preds = %342
  %346 = tail call ptr @llvm.thread.pointer() #16
  %347 = getelementptr inbounds %struct.thread_info, ptr %346, i32 0, i32 2
  %348 = load i32, ptr %347, align 8
  %349 = lshr i32 %348, 5
  %350 = getelementptr i32, ptr @__cpu_online_mask, i32 %349
  %351 = load volatile i32, ptr %350, align 4
  %352 = and i32 %348, 31
  %353 = shl nuw i32 1, %352
  %354 = and i32 %353, %351
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %358, label %356

356:                                              ; preds = %345
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %357 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %7) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  br label %358

358:                                              ; preds = %356, %345, %342, %315
  %359 = load i32, ptr %8, align 8
  switch i32 %359, label %360 [
    i32 10, label %362
    i32 12, label %362
  ]

360:                                              ; preds = %358
  %361 = tail call i32 @ieee80211_reset_erp_info(ptr noundef %3) #16
  br label %362

362:                                              ; preds = %360, %358, %358
  %363 = phi i32 [ %361, %360 ], [ 0, %358 ], [ 0, %358 ]
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %3, i32 noundef %363) #16
  %364 = load i32, ptr %8, align 8
  switch i32 %364, label %366 [
    i32 2, label %365
    i32 1, label %365
    i32 3, label %365
    i32 7, label %365
    i32 11, label %365
    i32 10, label %367
    i32 12, label %367
  ]

365:                                              ; preds = %362, %362, %362, %362, %362
  tail call void @netif_carrier_off(ptr noundef %5) #16
  br label %367

366:                                              ; preds = %362
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1301, i32 noundef 9, ptr noundef null) #16
  br label %367

367:                                              ; preds = %366, %365, %362, %362
  %368 = load i32, ptr %8, align 8
  %369 = icmp ne i32 %368, 2
  tail call void @ieee80211_set_wmm_default(ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext %369) #16
  br label %370

370:                                              ; preds = %367, %245, %135, %129, %114, %109, %103, %98
  %371 = phi i32 [ %61, %367 ], [ %61, %135 ], [ %165, %245 ], [ %61, %129 ], [ %61, %98 ], [ %61, %103 ], [ %61, %109 ], [ %61, %114 ]
  %372 = getelementptr i8, ptr %0, i32 356
  tail call void @_set_bit(i32 noundef 0, ptr noundef %372) #16
  %373 = load i32, ptr %8, align 8
  switch i32 %373, label %387 [
    i32 10, label %374
    i32 6, label %376
  ]

374:                                              ; preds = %370
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %375 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 110
  store volatile ptr %3, ptr %375, align 8
  br label %387

376:                                              ; preds = %370
  %377 = getelementptr i8, ptr %0, i32 1400
  %378 = load i32, ptr %377, align 8
  %379 = and i32 %378, 32
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %387

381:                                              ; preds = %376
  %382 = getelementptr i8, ptr %0, i32 1412
  %383 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 63
  %384 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 63, i32 1
  %385 = load ptr, ptr %384, align 4
  store ptr %383, ptr %382, align 4
  %386 = getelementptr i8, ptr %0, i32 1416
  store ptr %385, ptr %386, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  store volatile ptr %382, ptr %385, align 4
  store ptr %382, ptr %384, align 4
  br label %387

387:                                              ; preds = %381, %376, %374, %370
  %388 = getelementptr i8, ptr %0, i32 352
  %389 = load i32, ptr %388, align 8
  %390 = and i32 %389, 1
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %395, label %392

392:                                              ; preds = %387
  %393 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 57
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %393) #16, !srcloc !22
  %394 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %393, ptr %393, i32 1, ptr elementtype(i32) %393) #16, !srcloc !23
  br label %395

395:                                              ; preds = %392, %387
  br i1 %1, label %396, label %399

396:                                              ; preds = %395
  %397 = load i32, ptr %54, align 8
  %398 = add i32 %397, 1
  store i32 %398, ptr %54, align 8
  br label %399

399:                                              ; preds = %396, %395
  %400 = icmp eq i32 %371, 0
  br i1 %400, label %403, label %401

401:                                              ; preds = %399
  %402 = tail call i32 @ieee80211_hw_config(ptr noundef %7, i32 noundef %371) #16
  br label %403

403:                                              ; preds = %401, %399
  tail call void @ieee80211_recalc_ps(ptr noundef %7) #16
  %404 = load i32, ptr %8, align 8
  switch i32 %404, label %405 [
    i32 6, label %411
    i32 4, label %411
  ]

405:                                              ; preds = %403
  %406 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 8
  %407 = load ptr, ptr %406, align 4
  %408 = getelementptr inbounds %struct.ieee80211_ops, ptr %407, i32 0, i32 89
  %409 = load ptr, ptr %408, align 4
  %410 = icmp eq ptr %409, null
  br i1 %410, label %425, label %411

411:                                              ; preds = %405, %403, %403
  br i1 %62, label %486, label %412

412:                                              ; preds = %411
  %413 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 88
  %414 = load i32, ptr %413, align 4
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %486, label %416

416:                                              ; preds = %412
  %417 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 87
  br label %418

418:                                              ; preds = %418, %416
  %419 = phi i32 [ 0, %416 ], [ %422, %418 ]
  %420 = load ptr, ptr %417, align 64
  %421 = getelementptr %struct.netdev_queue, ptr %420, i32 %419, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %421) #16
  %422 = add nuw i32 %419, 1
  %423 = load i32, ptr %413, align 4
  %424 = icmp ult i32 %422, %423
  br i1 %424, label %418, label %486

425:                                              ; preds = %405
  br i1 %62, label %486, label %426

426:                                              ; preds = %425
  %427 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 11
  %428 = load i16, ptr %427, align 4
  %429 = icmp ult i16 %428, 4
  %430 = select i1 %429, i32 1, i32 4
  %431 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 12
  %432 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %431) #16
  %433 = getelementptr i8, ptr %0, i32 3065
  %434 = load i8, ptr %433, align 1
  %435 = zext i8 %434 to i32
  %436 = icmp eq i8 %434, -1
  br i1 %436, label %445, label %437

437:                                              ; preds = %426
  %438 = getelementptr %struct.ieee80211_local, ptr %7, i32 0, i32 10, i32 %435
  %439 = load i32, ptr %438, align 4
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %465

441:                                              ; preds = %437
  %442 = getelementptr %struct.ieee80211_local, ptr %7, i32 0, i32 53, i32 %435
  %443 = load ptr, ptr %442, align 4
  %444 = icmp eq ptr %443, %442
  br i1 %444, label %445, label %465

445:                                              ; preds = %441, %426
  %446 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 87
  br label %447

447:                                              ; preds = %462, %445
  %448 = phi i32 [ 0, %445 ], [ %463, %462 ]
  %449 = getelementptr %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 58, i32 7, i32 %448
  %450 = load i8, ptr %449, align 1
  %451 = zext i8 %450 to i32
  %452 = getelementptr %struct.ieee80211_local, ptr %7, i32 0, i32 10, i32 %451
  %453 = load i32, ptr %452, align 4
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %462

455:                                              ; preds = %447
  %456 = getelementptr %struct.ieee80211_local, ptr %7, i32 0, i32 53, i32 %451
  %457 = load ptr, ptr %456, align 4
  %458 = icmp eq ptr %457, %456
  br i1 %458, label %459, label %462

459:                                              ; preds = %455
  %460 = load ptr, ptr %446, align 64
  %461 = getelementptr %struct.netdev_queue, ptr %460, i32 %448, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %461) #16
  br label %462

462:                                              ; preds = %459, %455, %447
  %463 = add nuw nsw i32 %448, 1
  %464 = icmp eq i32 %463, %430
  br i1 %464, label %465, label %447

465:                                              ; preds = %462, %441, %437
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %431, i32 noundef %432) #16
  br label %486

466:                                              ; preds = %296
  tail call void @drv_remove_interface(ptr noundef %7, ptr noundef %3) #16
  br label %467

467:                                              ; preds = %466, %247, %152, %142, %81, %72
  %468 = phi i32 [ %249, %247 ], [ %298, %466 ], [ %143, %142 ], [ %153, %152 ], [ -99, %81 ], [ -99, %72 ]
  %469 = load i32, ptr %54, align 8
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %472

471:                                              ; preds = %467
  tail call void @drv_stop(ptr noundef %7) #16
  br label %472

472:                                              ; preds = %471, %467, %57
  %473 = phi i32 [ %58, %57 ], [ %468, %467 ], [ %468, %471 ]
  %474 = getelementptr i8, ptr %0, i32 1172
  store ptr null, ptr %474, align 4
  %475 = load i32, ptr %8, align 8
  %476 = icmp eq i32 %475, 4
  br i1 %476, label %477, label %484

477:                                              ; preds = %472
  %478 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %478) #16
  %479 = getelementptr i8, ptr %0, i32 1400
  %480 = getelementptr i8, ptr %0, i32 1404
  %481 = load ptr, ptr %480, align 4
  %482 = load ptr, ptr %479, align 4
  %483 = getelementptr inbounds %struct.list_head, ptr %482, i32 0, i32 1
  store ptr %481, ptr %483, align 4
  store volatile ptr %482, ptr %481, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %479, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %480, align 4
  tail call void @mutex_unlock(ptr noundef %478) #16
  br label %484

484:                                              ; preds = %477, %472
  %485 = getelementptr i8, ptr %0, i32 356
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %485) #16
  br label %486

486:                                              ; preds = %484, %465, %425, %418, %412, %411, %10
  %487 = phi i32 [ %473, %484 ], [ 0, %425 ], [ 0, %465 ], [ 0, %411 ], [ -67, %10 ], [ 0, %412 ], [ 0, %418 ]
  ret i32 %487
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vif_vlan_copy_chanctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_configure_filter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_set_sdata_offload_flags(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.ieee80211_hw, ptr %3, i32 0, i32 4, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 131072
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %1
  %12 = load i32, ptr %4, align 8
  %13 = and i32 %12, -2
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = or i32 %6, 1
  %17 = load volatile i32, ptr %7, align 4
  %18 = and i32 %17, 64
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 35
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, -1
  %26 = and i32 %6, -2
  %27 = select i1 %25, i32 %16, i32 %26
  br label %28

28:                                               ; preds = %20, %15
  %29 = phi i32 [ %16, %15 ], [ %27, %20 ]
  %30 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 14
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = and i32 %29, -2
  %34 = select i1 %32, i32 %29, i32 %33
  br label %37

35:                                               ; preds = %11, %1
  %36 = and i32 %6, -2
  br label %37

37:                                               ; preds = %35, %28
  %38 = phi i32 [ %36, %35 ], [ %34, %28 ]
  %39 = load volatile i32, ptr %7, align 4
  %40 = and i32 %39, 262144
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %4, align 8
  %44 = and i32 %43, -2
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = or i32 %38, 4
  %48 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 14
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load volatile i32, ptr %7, align 4
  %53 = and i32 %52, 524288
  %54 = icmp eq i32 %53, 0
  %55 = and i32 %38, -5
  %56 = select i1 %54, i32 %55, i32 %47
  br label %59

57:                                               ; preds = %42, %37
  %58 = and i32 %38, -5
  br label %59

59:                                               ; preds = %57, %51, %46
  %60 = phi i32 [ %47, %46 ], [ %58, %57 ], [ %56, %51 ]
  %61 = icmp eq i32 %6, %60
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i32 %60, ptr %5, align 4
  tail call void @ieee80211_check_fast_rx_iface(ptr noundef %0) #16
  br label %63

63:                                               ; preds = %62, %59
  %64 = xor i1 %61, true
  ret i1 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_reset_erp_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_set_wmm_default(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_ps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_if_change_type(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @rtnl_is_locked() #16
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @ieee80211_if_change_type.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %2
  store i1 true, ptr @ieee80211_if_change_type.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1819, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1819) #16
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 3
  %13 = load i8, ptr %12, align 2, !range !15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  switch i32 %11, label %17 [
    i32 2, label %18
    i32 3, label %16
  ]

16:                                               ; preds = %15
  br label %18

17:                                               ; preds = %15, %9
  br label %18

18:                                               ; preds = %17, %16, %15
  %19 = phi i32 [ %11, %17 ], [ 9, %16 ], [ 8, %15 ]
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %117, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 9
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %111, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @rtnl_is_locked() #16
  %30 = icmp eq i32 %29, 0
  %31 = load i1, ptr @ieee80211_runtime_change_iftype.__already_done, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35, !prof !10

34:                                               ; preds = %26
  store i1 true, ptr @ieee80211_runtime_change_iftype.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1733, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1733) #16
  br label %35

35:                                               ; preds = %34, %26
  %36 = getelementptr inbounds %struct.ieee80211_local, ptr %28, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ieee80211_ops, ptr %37, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %117, label %41

41:                                               ; preds = %35
  %42 = load i32, ptr %10, align 8
  switch i32 %42, label %117 [
    i32 3, label %43
    i32 2, label %47
    i32 1, label %47
    i32 11, label %47
  ]

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %47, label %117

47:                                               ; preds = %43, %41, %41, %41
  switch i32 %1, label %117 [
    i32 3, label %50
    i32 2, label %50
    i32 1, label %50
    i32 11, label %50
    i32 8, label %48
    i32 9, label %49
  ]

48:                                               ; preds = %47
  br label %50

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49, %48, %47, %47, %47, %47
  %51 = phi i32 [ 3, %49 ], [ 2, %48 ], [ %1, %47 ], [ %1, %47 ], [ %1, %47 ], [ %1, %47 ]
  %52 = phi i1 [ true, %49 ], [ true, %48 ], [ false, %47 ], [ false, %47 ], [ false, %47 ], [ false, %47 ]
  %53 = tail call fastcc i32 @ieee80211_check_concurrent_iface(ptr noundef %0, i32 noundef %51) #16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %117

55:                                               ; preds = %50
  tail call void @ieee80211_stop_vif_queues(ptr noundef %28, ptr noundef %0, i32 noundef 10) #16
  tail call void @synchronize_net() #16
  tail call fastcc void @ieee80211_do_stop(ptr noundef %0, i1 noundef zeroext false) #16
  tail call void @ieee80211_free_keys(ptr noundef %0, i1 noundef zeroext false) #16
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 11
  tail call void @ieee80211_destroy_frag_cache(ptr noundef %56) #16
  %57 = tail call fastcc zeroext i1 @ieee80211_set_sdata_offload_flags(ptr noundef %0) #16
  %58 = tail call i32 @drv_change_interface(ptr noundef %28, ptr noundef %0, i32 noundef %51, i1 noundef zeroext %52) #16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = load i32, ptr %10, align 8
  %62 = load i8, ptr %12, align 2, !range !15
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  switch i32 %61, label %66 [
    i32 2, label %67
    i32 3, label %65
  ]

65:                                               ; preds = %64
  br label %67

66:                                               ; preds = %64, %60
  br label %67

67:                                               ; preds = %66, %65, %64, %55
  %68 = phi i32 [ %1, %55 ], [ %61, %66 ], [ 9, %65 ], [ 8, %64 ]
  %69 = tail call fastcc i32 @ieee80211_check_queues(ptr noundef %0, i32 noundef %68) #16
  tail call fastcc void @ieee80211_setup_sdata(ptr noundef %0, i32 noundef %68) #16
  %70 = load ptr, ptr %27, align 4
  %71 = load i32, ptr %10, align 8
  %72 = icmp eq i32 %71, 4
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 49
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %105, label %77

77:                                               ; preds = %73
  %78 = getelementptr i8, ptr %75, i32 -1408
  br label %79

79:                                               ; preds = %77, %67
  %80 = phi ptr [ %78, %77 ], [ %0, %67 ]
  %81 = getelementptr %struct.ieee80211_hw, ptr %70, i32 0, i32 4, i32 1
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %82, 131072
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %105, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %80, i32 0, i32 58
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, -2
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %105

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %80, i32 0, i32 58, i32 11
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  %95 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 8
  %96 = load i8, ptr %95, align 8, !range !15
  %97 = icmp eq i8 %96, 0
  %98 = and i32 %92, 3
  %99 = icmp eq i32 %98, 3
  %100 = select i1 %97, i1 %94, i1 %99
  %101 = select i1 %100, ptr @ieee80211_dataif_8023_ops, ptr @ieee80211_dataif_ops
  %102 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.net_device, ptr %103, i32 0, i32 16
  store ptr %101, ptr %104, align 8
  br label %105

105:                                              ; preds = %90, %85, %79, %73
  %106 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1
  %107 = tail call i32 @ieee80211_do_open(ptr noundef %106, i1 noundef zeroext false) #16
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %109, !prof !16

109:                                              ; preds = %105
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1807, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %107) #16
  br label %110

110:                                              ; preds = %109, %105
  tail call void @ieee80211_wake_vif_queues(ptr noundef %28, ptr noundef %0, i32 noundef 10) #16
  br i1 %59, label %113, label %117

111:                                              ; preds = %21
  tail call void @ieee80211_free_keys(ptr noundef %0, i1 noundef zeroext false) #16
  %112 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 11
  tail call void @ieee80211_destroy_frag_cache(ptr noundef %112) #16
  tail call fastcc void @ieee80211_setup_sdata(ptr noundef %0, i32 noundef %1)
  br label %113

113:                                              ; preds = %111, %110
  %114 = icmp eq i32 %1, 2
  br i1 %114, label %115, label %117

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 23
  store i8 0, ptr %116, align 4
  br label %117

117:                                              ; preds = %115, %113, %110, %50, %47, %43, %41, %35, %18
  %118 = phi i32 [ 0, %18 ], [ %58, %110 ], [ 0, %115 ], [ 0, %113 ], [ %53, %50 ], [ -16, %47 ], [ -16, %41 ], [ -16, %43 ], [ -16, %35 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_setup_sdata(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(856) %3, i8 0, i32 856, i1 false)
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  store i32 %1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 3
  store i8 0, ptr %5, align 2
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 1
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 20
  store i16 -29048, ptr %7, align 2
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 21
  store i8 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 23
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 22
  store i8 0, ptr %10, align 1
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 24
  store i32 8, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 37
  store i8 1, ptr %13, align 1
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 42
  store i32 -2147483648, ptr %14, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 12
  store i16 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 16
  store ptr @ieee80211_dataif_ops, ptr %20, align 8
  %21 = load ptr, ptr %16, align 8
  %22 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 32
  store i16 1, ptr %22, align 16
  br label %23

23:                                               ; preds = %19, %2
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 41
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 41, i32 2
  store i32 0, ptr %25, align 4
  store ptr %24, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 41, i32 0, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 41, i32 1
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 42
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 42, i32 2
  store i32 0, ptr %29, align 4
  store ptr %28, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 42, i32 0, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 42, i32 1
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 40
  store i32 -32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 40, i32 1
  store volatile ptr %33, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 40, i32 1, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 40, i32 2
  store ptr @ieee80211_iface_work, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 39
  store i32 -32, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 39, i32 1
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 39, i32 1, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 39, i32 2
  store ptr @ieee80211_recalc_smps_work, ptr %39, align 4
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 29
  store i32 -32, ptr %40, align 8
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 29, i32 1
  store volatile ptr %41, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 29, i32 1, i32 1
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 29, i32 2
  store ptr @ieee80211_csa_finalize_work, ptr %43, align 4
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 32
  store i32 -32, ptr %44, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 32, i32 1
  store volatile ptr %45, ptr %45, align 4
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 32, i32 1, i32 1
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 32, i32 2
  store ptr @ieee80211_color_change_finalize_work, ptr %47, align 4
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 33
  store volatile ptr %48, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 33, i32 1
  store ptr %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 34
  store volatile ptr %50, ptr %50, align 4
  %51 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 34, i32 1
  store ptr %50, ptr %51, align 4
  switch i32 %1, label %83 [
    i32 9, label %52
    i32 3, label %53
    i32 8, label %61
    i32 2, label %62
    i32 11, label %64
    i32 1, label %65
    i32 13, label %82
    i32 6, label %67
    i32 12, label %72
    i32 4, label %80
    i32 10, label %80
    i32 0, label %82
    i32 5, label %82
  ]

52:                                               ; preds = %23
  store i32 3, ptr %4, align 8
  store i8 1, ptr %5, align 2
  br label %53

53:                                               ; preds = %52, %23
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 27
  %55 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 30
  store i32 0, ptr %55, align 4
  store ptr %54, ptr %54, align 4
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 28
  store ptr %54, ptr %56, align 4
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 29
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  store volatile ptr %58, ptr %58, align 4
  %59 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 0, i32 1
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  store ptr %60, ptr %12, align 8
  br label %83

61:                                               ; preds = %23
  store i32 2, ptr %4, align 8
  store i8 1, ptr %5, align 2
  br label %62

62:                                               ; preds = %61, %23
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  store ptr %63, ptr %12, align 8
  tail call void @ieee80211_sta_setup_sdata(ptr noundef %0) #16
  br label %83

64:                                               ; preds = %23
  store ptr @ieee80211_setup_sdata.bssid_wildcard, ptr %12, align 8
  tail call void @ieee80211_ocb_setup_sdata(ptr noundef %0) #16
  br label %83

65:                                               ; preds = %23
  %66 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %3, i32 0, i32 10
  store ptr %66, ptr %12, align 8
  tail call void @ieee80211_ibss_setup_sdata(ptr noundef %0) #16
  br label %83

67:                                               ; preds = %23
  %68 = load ptr, ptr %16, align 8
  %69 = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 32
  store i16 803, ptr %69, align 16
  %70 = load ptr, ptr %16, align 8
  %71 = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 16
  store ptr @ieee80211_monitorif_ops, ptr %71, align 8
  store i32 24, ptr %3, align 8
  br label %83

72:                                               ; preds = %23
  %73 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  store i32 0, ptr %73, align 4
  %74 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 2
  store i32 33554436, ptr %74, align 4
  %75 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 3
  store ptr null, ptr %75, align 4
  %76 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  store i32 0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 0, i32 1
  store i32 0, ptr %77, align 4
  %78 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  store i32 0, ptr %78, align 4
  %79 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  store ptr %79, ptr %12, align 8
  br label %83

80:                                               ; preds = %23, %23
  %81 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  store ptr %81, ptr %12, align 8
  br label %83

82:                                               ; preds = %23, %23, %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1718, i32 noundef 9, ptr noundef null) #16
  br label %83

83:                                               ; preds = %82, %80, %72, %67, %65, %64, %62, %53, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_if_add(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef writeonly %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @rtnl_is_locked() #16
  %8 = icmp eq i32 %7, 0
  %9 = load i1, ptr @ieee80211_if_add.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !10

12:                                               ; preds = %6
  store i1 true, ptr @ieee80211_if_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1985, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1985) #16
  br label %13

13:                                               ; preds = %12, %6
  switch i32 %4, label %26 [
    i32 12, label %14
    i32 10, label %14
  ]

14:                                               ; preds = %13, %13
  %15 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 3112
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %337, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %18, i32 0, i32 6
  store ptr null, ptr %21, align 32
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %18, i32 0, i32 10
  %23 = tail call i32 @strlcpy(ptr noundef %22, ptr noundef %1, i32 noundef 16) #16
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %18, i32 0, i32 1, i32 12
  tail call fastcc void @ieee80211_assign_perm_addr(ptr noundef %0, ptr noundef %24, i32 noundef %4)
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %18, i32 0, i32 58, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %25, ptr noundef align 4 dereferenceable(6) %24, i32 6, i1 false)
  br label %139

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 3115
  %30 = and i32 %29, -4
  %31 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ieee80211_ops, ptr %32, i32 0, i32 89
  %34 = load ptr, ptr %33, align 4
  %35 = icmp ne ptr %34, null
  %36 = icmp ne i32 %4, 4
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %48

38:                                               ; preds = %26
  %39 = icmp eq i32 %4, 6
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load i32, ptr %5, align 4
  %42 = and i32 %41, 64
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %40, %38
  %45 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 10
  %46 = load i32, ptr %45, align 8
  %47 = add i32 %46, 176
  br label %55

48:                                               ; preds = %26
  %49 = icmp eq ptr %34, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %52 = load i16, ptr %51, align 4
  %53 = icmp ugt i16 %52, 3
  %54 = select i1 %53, i32 4, i32 1
  br label %55

55:                                               ; preds = %50, %48, %44, %40
  %56 = phi i32 [ 0, %48 ], [ 0, %50 ], [ 0, %40 ], [ %47, %44 ]
  %57 = phi i32 [ 1, %48 ], [ %54, %50 ], [ 1, %40 ], [ 1, %44 ]
  %58 = phi ptr [ @ieee80211_if_setup_no_queue, %48 ], [ @ieee80211_if_setup, %50 ], [ @ieee80211_if_setup_no_queue, %40 ], [ @ieee80211_if_setup_no_queue, %44 ]
  %59 = add i32 %56, %30
  %60 = tail call ptr @alloc_netdev_mqs(i32 noundef %59, ptr noundef %1, i8 noundef zeroext %2, ptr noundef nonnull %58, i32 noundef %57, i32 noundef 1) #16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %337, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %31, align 4
  %64 = getelementptr inbounds %struct.ieee80211_ops, ptr %63, i32 0, i32 89
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.wiphy, ptr %69, i32 0, i32 75
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 91
  store i32 %71, ptr %74, align 16
  br label %75

75:                                               ; preds = %73, %67, %62
  %76 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %77 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #17
  %78 = icmp eq ptr %77, null
  br i1 %78, label %94, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr @nr_cpu_ids, align 4
  %81 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  %82 = icmp ult i32 %81, %80
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = ptrtoint ptr %77 to i32
  br label %85

85:                                               ; preds = %85, %83
  %86 = phi i32 [ %81, %83 ], [ %92, %85 ]
  %87 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %86
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, %84
  %90 = inttoptr i32 %89 to ptr
  %91 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %90, i32 0, i32 4
  store i32 0, ptr %91, align 4
  %92 = tail call i32 @cpumask_next(i32 noundef %86, ptr noundef nonnull @__cpu_possible_mask) #18
  %93 = icmp ult i32 %92, %80
  br i1 %93, label %85, label %96

94:                                               ; preds = %75
  %95 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 110
  store ptr null, ptr %95, align 8
  tail call void @free_netdev(ptr noundef nonnull %60) #16
  br label %337

96:                                               ; preds = %85, %79
  %97 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 110
  store ptr %77, ptr %97, align 8
  %98 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 41
  %99 = load i32, ptr %98, align 8
  %100 = trunc i32 %99 to i16
  %101 = add i16 %100, 40
  %102 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 21
  store i16 %101, ptr %102, align 8
  %103 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 22
  store i16 18, ptr %103, align 2
  %104 = tail call i32 @dev_alloc_name(ptr noundef nonnull %60, ptr noundef nonnull %60) #16
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load ptr, ptr %97, align 8
  tail call void @free_percpu(ptr noundef %107) #16
  tail call void @free_netdev(ptr noundef %60) #16
  br label %337

108:                                              ; preds = %96
  %109 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 49
  tail call fastcc void @ieee80211_assign_perm_addr(ptr noundef %0, ptr noundef %109, i32 noundef %4)
  %110 = getelementptr inbounds %struct.vif_params, ptr %5, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = getelementptr %struct.vif_params, ptr %5, i32 0, i32 2, i32 4
  %116 = load i16, ptr %115, align 2
  %117 = zext i16 %116 to i32
  %118 = or i32 %111, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  tail call void @dev_addr_mod(ptr noundef %60, i32 noundef 0, ptr noundef %110, i32 noundef 6) #16
  br label %122

121:                                              ; preds = %114, %108
  tail call void @dev_addr_mod(ptr noundef nonnull %60, i32 noundef 0, ptr noundef %109, i32 noundef 6) #16
  br label %122

122:                                              ; preds = %121, %120
  %123 = load ptr, ptr %76, align 8
  %124 = getelementptr inbounds %struct.wiphy, ptr %123, i32 0, i32 56, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 111, i32 1
  store ptr %125, ptr %126, align 4
  %127 = getelementptr i8, ptr %60, i32 1408
  %128 = getelementptr i8, ptr %60, i32 1416
  %129 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 70
  store ptr %128, ptr %129, align 8
  %130 = getelementptr i8, ptr %60, i32 4472
  %131 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 72
  %132 = load ptr, ptr %131, align 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %130, ptr noundef align 1 dereferenceable(6) %132, i32 6, i1 false)
  %133 = getelementptr i8, ptr %60, i32 1776
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %133, ptr noundef align 64 dereferenceable(16) %60, i32 16, i1 false)
  %134 = icmp eq i32 %56, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %122
  %136 = getelementptr i8, ptr %127, i32 %30
  tail call void @ieee80211_txq_init(ptr noundef %127, ptr noundef null, ptr noundef %136, i32 noundef 0) #16
  br label %137

137:                                              ; preds = %135, %122
  %138 = getelementptr i8, ptr %60, i32 1760
  store ptr %60, ptr %138, align 8
  br label %139

139:                                              ; preds = %137, %20
  %140 = phi ptr [ %127, %137 ], [ %18, %20 ]
  %141 = phi ptr [ %60, %137 ], [ null, %20 ]
  %142 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %143 = load ptr, ptr %142, align 8
  %144 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 1
  store ptr %143, ptr %144, align 8
  %145 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 7
  store ptr %0, ptr %145, align 4
  %146 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 11
  tail call void @ieee80211_init_frag_cache(ptr noundef %146) #16
  %147 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 2
  store volatile ptr %147, ptr %147, align 4
  %148 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 2, i32 1
  store ptr %147, ptr %148, align 4
  %149 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 48
  store i32 -32, ptr %149, align 8
  %150 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 48, i32 0, i32 1
  store volatile ptr %150, ptr %150, align 4
  %151 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 48, i32 0, i32 1, i32 1
  store ptr %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 48, i32 0, i32 2
  store ptr @ieee80211_dfs_cac_timer_work, ptr %152, align 4
  %153 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 48, i32 1
  tail call void @init_timer_key(ptr noundef %153, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16
  %154 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 5
  store i32 -32, ptr %154, align 4
  %155 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 5, i32 0, i32 1
  store volatile ptr %155, ptr %155, align 4
  %156 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 5, i32 0, i32 1, i32 1
  store ptr %155, ptr %156, align 4
  %157 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 5, i32 0, i32 2
  store ptr @ieee80211_delayed_tailroom_dec, ptr %157, align 4
  %158 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %158, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16
  br label %159

159:                                              ; preds = %180, %139
  %160 = phi i32 [ 0, %139 ], [ %181, %180 ]
  %161 = load ptr, ptr %142, align 8
  %162 = getelementptr %struct.wiphy, ptr %161, i32 0, i32 53, i32 %160
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %176, label %165

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %163, i32 0, i32 4
  %167 = load i32, ptr %166, align 4
  %168 = shl nsw i32 -1, %167
  %169 = xor i32 %168, -1
  %170 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 50, i32 %160
  store i32 %169, ptr %170, align 4
  %171 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 52, i32 %160
  %172 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %163, i32 0, i32 5, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(10) %171, ptr noundef align 1 dereferenceable(10) %172, i32 10, i1 false)
  %173 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %163, i32 0, i32 6, i32 2
  %174 = load i16, ptr %173, align 4
  %175 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 54, i32 %160
  tail call void @ieee80211_get_vht_mask_from_cap(i16 noundef zeroext %174, ptr noundef %175) #16
  br label %180

176:                                              ; preds = %159
  %177 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 50, i32 %160
  store i32 0, ptr %177, align 4
  %178 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 52, i32 %160
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(10) %178, i8 0, i32 10, i1 false)
  %179 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 54, i32 %160
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %179, i8 0, i32 16, i1 false)
  br label %180

180:                                              ; preds = %176, %165
  %181 = add nuw nsw i32 %160, 1
  %182 = icmp eq i32 %181, 6
  br i1 %182, label %183, label %159

183:                                              ; preds = %180
  %184 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 0, i32 5
  store volatile i32 0, ptr %184, align 4
  %185 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 0, i32 9
  %186 = load i32, ptr %185, align 8
  %187 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 0, i32 6
  store i32 %186, ptr %187, align 4
  %188 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 0, i32 10
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 0, i32 7
  store i32 %189, ptr %190, align 8
  %191 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 0, i32 9
  %192 = load i16, ptr %191, align 8
  %193 = icmp eq i16 %192, 256
  br i1 %193, label %196, label %194

194:                                              ; preds = %183
  store i16 256, ptr %191, align 8
  %195 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 0, i32 8
  store i32 2048, ptr %195, align 4
  br label %196

196:                                              ; preds = %194, %183
  %197 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 0, i32 4
  store volatile ptr %197, ptr %197, align 4
  %198 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 0, i32 4, i32 1
  store ptr %197, ptr %198, align 4
  %199 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 1, i32 5
  store volatile i32 0, ptr %199, align 4
  %200 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 1, i32 9
  %201 = load i32, ptr %200, align 8
  %202 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 1, i32 6
  store i32 %201, ptr %202, align 4
  %203 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 1, i32 10
  %204 = load i32, ptr %203, align 4
  %205 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 1, i32 7
  store i32 %204, ptr %205, align 8
  %206 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 1, i32 9
  %207 = load i16, ptr %206, align 8
  %208 = icmp eq i16 %207, 256
  br i1 %208, label %211, label %209

209:                                              ; preds = %196
  store i16 256, ptr %206, align 8
  %210 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 1, i32 8
  store i32 2048, ptr %210, align 4
  br label %211

211:                                              ; preds = %209, %196
  %212 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 1, i32 4
  store volatile ptr %212, ptr %212, align 4
  %213 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 1, i32 4, i32 1
  store ptr %212, ptr %213, align 4
  %214 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 2, i32 5
  store volatile i32 0, ptr %214, align 4
  %215 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 2, i32 9
  %216 = load i32, ptr %215, align 8
  %217 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 2, i32 6
  store i32 %216, ptr %217, align 4
  %218 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 2, i32 10
  %219 = load i32, ptr %218, align 4
  %220 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 2, i32 7
  store i32 %219, ptr %220, align 8
  %221 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 2, i32 9
  %222 = load i16, ptr %221, align 8
  %223 = icmp eq i16 %222, 256
  br i1 %223, label %226, label %224

224:                                              ; preds = %211
  store i16 256, ptr %221, align 8
  %225 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 2, i32 8
  store i32 2048, ptr %225, align 4
  br label %226

226:                                              ; preds = %224, %211
  %227 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 2, i32 4
  store volatile ptr %227, ptr %227, align 4
  %228 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 2, i32 4, i32 1
  store ptr %227, ptr %228, align 4
  %229 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 3, i32 5
  store volatile i32 0, ptr %229, align 4
  %230 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 3, i32 9
  %231 = load i32, ptr %230, align 8
  %232 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 3, i32 6
  store i32 %231, ptr %232, align 4
  %233 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 3, i32 10
  %234 = load i32, ptr %233, align 4
  %235 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 3, i32 7
  store i32 %234, ptr %235, align 8
  %236 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 3, i32 9
  %237 = load i16, ptr %236, align 8
  %238 = icmp eq i16 %237, 256
  br i1 %238, label %241, label %239

239:                                              ; preds = %226
  store i16 256, ptr %236, align 8
  %240 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 3, i32 8
  store i32 2048, ptr %240, align 4
  br label %241

241:                                              ; preds = %239, %226
  %242 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 3, i32 4
  store volatile ptr %242, ptr %242, align 4
  %243 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 28, i32 3, i32 4, i32 1
  store ptr %242, ptr %243, align 4
  %244 = load ptr, ptr %145, align 4
  %245 = getelementptr inbounds %struct.ieee80211_hw, ptr %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.ieee80211_hw, ptr %244, i32 0, i32 11
  %247 = load volatile i32, ptr %245, align 4
  %248 = shl i32 %247, 13
  %249 = ashr i32 %248, 31
  %250 = trunc i32 %249 to i8
  %251 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 58, i32 7, i32 0
  store i8 %250, ptr %251, align 1
  %252 = load volatile i32, ptr %245, align 4
  %253 = and i32 %252, 262144
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %241
  %256 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 58, i32 7, i32 1
  store i8 -1, ptr %256, align 1
  br label %263

257:                                              ; preds = %241
  %258 = load i16, ptr %246, align 4
  %259 = icmp ugt i16 %258, 3
  %260 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 58, i32 7, i32 1
  br i1 %259, label %262, label %261

261:                                              ; preds = %257
  store i8 0, ptr %260, align 1
  br label %263

262:                                              ; preds = %257
  store i8 1, ptr %260, align 1
  br label %263

263:                                              ; preds = %262, %261, %255
  %264 = load volatile i32, ptr %245, align 4
  %265 = and i32 %264, 262144
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %263
  %268 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 58, i32 7, i32 2
  store i8 -1, ptr %268, align 1
  br label %275

269:                                              ; preds = %263
  %270 = load i16, ptr %246, align 4
  %271 = icmp ugt i16 %270, 3
  %272 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 58, i32 7, i32 2
  br i1 %271, label %274, label %273

273:                                              ; preds = %269
  store i8 0, ptr %272, align 1
  br label %275

274:                                              ; preds = %269
  store i8 2, ptr %272, align 1
  br label %275

275:                                              ; preds = %274, %273, %267
  %276 = load volatile i32, ptr %245, align 4
  %277 = and i32 %276, 262144
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %275
  %280 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 58, i32 7, i32 3
  store i8 -1, ptr %280, align 1
  br label %287

281:                                              ; preds = %275
  %282 = load i16, ptr %246, align 4
  %283 = icmp ugt i16 %282, 3
  %284 = getelementptr %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 58, i32 7, i32 3
  br i1 %283, label %286, label %285

285:                                              ; preds = %281
  store i8 0, ptr %284, align 1
  br label %287

286:                                              ; preds = %281
  store i8 3, ptr %284, align 1
  br label %287

287:                                              ; preds = %286, %285, %279
  %288 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 58, i32 6
  store i8 -1, ptr %288, align 1
  %289 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 46
  store i32 -2147483648, ptr %289, align 8
  %290 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 99
  %291 = load i32, ptr %290, align 8
  %292 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 45
  store i32 %291, ptr %292, align 4
  %293 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 24
  store i32 8, ptr %293, align 8
  tail call fastcc void @ieee80211_setup_sdata(ptr noundef %140, i32 noundef %4)
  %294 = icmp eq ptr %141, null
  br i1 %294, label %329, label %295

295:                                              ; preds = %287
  %296 = getelementptr inbounds %struct.vif_params, ptr %5, i32 0, i32 1
  %297 = load i32, ptr %296, align 4
  %298 = icmp ne i32 %297, 0
  %299 = getelementptr inbounds %struct.net_device, ptr %141, i32 0, i32 70
  %300 = load ptr, ptr %299, align 8
  %301 = getelementptr inbounds %struct.wireless_dev, ptr %300, i32 0, i32 8
  %302 = zext i1 %298 to i8
  store i8 %302, ptr %301, align 4
  %303 = icmp eq i32 %4, 2
  br i1 %303, label %304, label %308

304:                                              ; preds = %295
  %305 = load i32, ptr %296, align 4
  %306 = trunc i32 %305 to i8
  %307 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %140, i32 0, i32 57, i32 0, i32 24, i32 23
  store i8 %306, ptr %307, align 4
  br label %308

308:                                              ; preds = %304, %295
  %309 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 24
  %310 = load i64, ptr %309, align 8
  %311 = getelementptr inbounds %struct.net_device, ptr %141, i32 0, i32 23
  %312 = load i64, ptr %311, align 16
  %313 = or i64 %312, %310
  store i64 %313, ptr %311, align 16
  %314 = and i64 %313, 26845446203
  %315 = getelementptr inbounds %struct.net_device, ptr %141, i32 0, i32 24
  %316 = load i64, ptr %315, align 8
  %317 = or i64 %316, %314
  store i64 %317, ptr %315, align 8
  tail call void @netdev_set_default_ethtool_ops(ptr noundef nonnull %141, ptr noundef nonnull @ieee80211_ethtool_ops) #16
  %318 = getelementptr inbounds %struct.net_device, ptr %141, i32 0, i32 30
  store i32 256, ptr %318, align 8
  %319 = icmp eq i32 %4, 6
  br i1 %319, label %323, label %320

320:                                              ; preds = %308
  %321 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 32
  %322 = load i32, ptr %321, align 4
  br label %323

323:                                              ; preds = %320, %308
  %324 = phi i32 [ %322, %320 ], [ 0, %308 ]
  %325 = getelementptr inbounds %struct.net_device, ptr %141, i32 0, i32 31
  store i32 %324, ptr %325, align 4
  %326 = tail call i32 @cfg80211_register_netdevice(ptr noundef nonnull %141) #16
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %329, label %328

328:                                              ; preds = %323
  tail call void @free_netdev(ptr noundef nonnull %141) #16
  br label %337

329:                                              ; preds = %323, %287
  %330 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %330) #16
  %331 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %332 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62, i32 1
  %333 = load ptr, ptr %332, align 4
  store ptr %331, ptr %140, align 4
  %334 = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  store ptr %333, ptr %334, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  store volatile ptr %140, ptr %333, align 4
  store ptr %140, ptr %332, align 4
  tail call void @mutex_unlock(ptr noundef %330) #16
  %335 = icmp eq ptr %3, null
  br i1 %335, label %337, label %336

336:                                              ; preds = %329
  store ptr %144, ptr %3, align 4
  br label %337

337:                                              ; preds = %336, %329, %328, %106, %94, %55, %14
  %338 = phi i32 [ %326, %328 ], [ 0, %336 ], [ 0, %329 ], [ -12, %14 ], [ -12, %55 ], [ -12, %94 ], [ %104, %106 ]
  ret i32 %338
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_assign_perm_addr(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %1, ptr noundef align 4 dereferenceable(6) %6, i32 6, i1 false)
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.wiphy, ptr %7, i32 0, i32 2, i32 4
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = or i32 %9, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 8
  %17 = load i16, ptr %16, align 2
  %18 = icmp ult i16 %17, 2
  br i1 %18, label %253, label %19

19:                                               ; preds = %15, %3
  %20 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %20) #16
  switch i32 %2, label %57 [
    i32 6, label %252
    i32 4, label %21
    i32 8, label %33
    i32 9, label %33
  ]

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  br label %23

23:                                               ; preds = %27, %21
  %24 = phi ptr [ %22, %21 ], [ %25, %27 ]
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, %22
  br i1 %26, label %252, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %25, i32 0, i32 58
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %23

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %25, i32 0, i32 58, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %1, ptr noundef align 8 dereferenceable(6) %32, i32 6, i1 false)
  br label %252

33:                                               ; preds = %19, %19
  %34 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 8388608
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %57, label %42

42:                                               ; preds = %54, %38
  %43 = phi ptr [ %55, %54 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %43, i32 0, i32 58
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %43, i32 0, i32 9
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %43, i32 0, i32 58, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %1, ptr noundef align 8 dereferenceable(6) %53, i32 6, i1 false)
  br label %252

54:                                               ; preds = %47, %42
  %55 = load ptr, ptr %43, align 8
  %56 = icmp eq ptr %55, %39
  br i1 %56, label %57, label %42

57:                                               ; preds = %54, %38, %33, %19
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %struct.wiphy, ptr %58, i32 0, i32 8
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp eq i16 %60, 0
  br i1 %62, label %92, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %65 = getelementptr inbounds %struct.wiphy, ptr %58, i32 0, i32 3
  %66 = load ptr, ptr %65, align 32
  br label %67

67:                                               ; preds = %89, %63
  %68 = phi i32 [ 0, %63 ], [ %90, %89 ]
  %69 = getelementptr %struct.mac_address, ptr %66, i32 %68
  %70 = getelementptr i8, ptr %69, i32 4
  br label %71

71:                                               ; preds = %75, %67
  %72 = phi ptr [ %64, %67 ], [ %73, %75 ]
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, %64
  br i1 %74, label %87, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %73, i32 0, i32 58, i32 2
  %77 = load i32, ptr %69, align 4
  %78 = load i32, ptr %76, align 4
  %79 = xor i32 %78, %77
  %80 = load i16, ptr %70, align 2
  %81 = getelementptr %struct.ieee80211_sub_if_data, ptr %73, i32 0, i32 58, i32 2, i32 4
  %82 = load i16, ptr %81, align 2
  %83 = xor i16 %82, %80
  %84 = zext i16 %83 to i32
  %85 = or i32 %79, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %71

87:                                               ; preds = %71
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %1, ptr noundef align 1 dereferenceable(6) %69, i32 6, i1 false)
  %88 = load ptr, ptr %4, align 8
  br label %92

89:                                               ; preds = %75
  %90 = add nuw nsw i32 %68, 1
  %91 = icmp eq i32 %90, %61
  br i1 %91, label %92, label %67

92:                                               ; preds = %89, %87, %57
  %93 = phi ptr [ %58, %57 ], [ %88, %87 ], [ %58, %89 ]
  %94 = getelementptr inbounds %struct.wiphy, ptr %93, i32 0, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr %struct.wiphy, ptr %93, i32 0, i32 2, i32 4
  %97 = load i16, ptr %96, align 2
  %98 = zext i16 %97 to i32
  %99 = or i32 %95, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %252, label %101

101:                                              ; preds = %92
  %102 = lshr i16 %97, 8
  %103 = and i32 %95, 65535
  %104 = zext i32 %103 to i48
  %105 = call i48 @llvm.bswap.i48(i48 %104)
  %106 = zext i48 %105 to i64
  %107 = zext i32 %95 to i48
  %108 = call i48 @llvm.bswap.i48(i48 %107)
  %109 = zext i48 %108 to i64
  %110 = shl i16 %97, 8
  %111 = zext i16 %110 to i64
  %112 = or i64 %111, %109
  %113 = zext i16 %102 to i64
  %114 = or i64 %112, %113
  %115 = trunc i64 %114 to i32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %101
  %118 = lshr exact i64 %106, 32
  %119 = trunc i64 %118 to i32
  %120 = tail call i32 @llvm.cttz.i32(i32 %119, i1 false) #16, !range !24
  %121 = add nuw nsw i32 %120, 32
  br label %124

122:                                              ; preds = %101
  %123 = tail call i32 @llvm.cttz.i32(i32 %115, i1 true) #16, !range !24
  br label %124

124:                                              ; preds = %122, %117
  %125 = phi i32 [ %121, %117 ], [ %123, %122 ]
  %126 = tail call i32 @__sw_hweight64(i64 noundef %114) #16
  %127 = add i32 %126, %125
  %128 = lshr exact i64 %106, 32
  %129 = trunc i64 %128 to i32
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %124
  %132 = tail call i32 @llvm.ctlz.i32(i32 %129, i1 true) #16, !range !24
  %133 = sub nuw nsw i32 64, %132
  br label %138

134:                                              ; preds = %124
  %135 = tail call i32 @llvm.ctlz.i32(i32 %115, i1 false) #16, !range !24
  %136 = sub nuw nsw i32 32, %135
  %137 = select i1 %116, i32 0, i32 %136
  br label %138

138:                                              ; preds = %134, %131
  %139 = phi i32 [ %133, %131 ], [ %137, %134 ]
  %140 = icmp eq i32 %127, %139
  br i1 %140, label %143, label %141

141:                                              ; preds = %138
  %142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #19
  br label %252

143:                                              ; preds = %138
  %144 = load ptr, ptr %4, align 8
  %145 = getelementptr inbounds %struct.wiphy, ptr %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  br label %147

147:                                              ; preds = %151, %143
  %148 = phi ptr [ %146, %143 ], [ %149, %151 ]
  %149 = load ptr, ptr %148, align 8
  %150 = icmp eq ptr %149, %146
  br i1 %150, label %157, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %149, i32 0, i32 58
  %153 = load i32, ptr %152, align 8
  %154 = icmp eq i32 %153, 6
  br i1 %154, label %147, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %149, i32 0, i32 58, i32 2
  br label %157

157:                                              ; preds = %155, %147
  %158 = phi ptr [ %156, %155 ], [ %145, %147 ]
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i64
  %161 = shl nuw nsw i64 %160, 40
  %162 = getelementptr i8, ptr %158, i32 1
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i64
  %165 = shl nuw nsw i64 %164, 32
  %166 = or i64 %165, %161
  %167 = getelementptr i8, ptr %158, i32 2
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i64
  %170 = shl nuw nsw i64 %169, 24
  %171 = or i64 %166, %170
  %172 = getelementptr i8, ptr %158, i32 3
  %173 = load i8, ptr %172, align 1
  %174 = zext i8 %173 to i64
  %175 = shl nuw nsw i64 %174, 16
  %176 = or i64 %171, %175
  %177 = getelementptr i8, ptr %158, i32 4
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i64
  %180 = shl nuw nsw i64 %179, 8
  %181 = or i64 %176, %180
  %182 = getelementptr i8, ptr %158, i32 5
  %183 = load i8, ptr %182, align 1
  %184 = zext i8 %183 to i64
  %185 = or i64 %181, %184
  %186 = tail call i32 @llvm.cttz.i32(i32 %129, i1 false) #16, !range !24
  %187 = add nuw nsw i32 %186, 32
  %188 = tail call i32 @llvm.cttz.i32(i32 %115, i1 true) #16, !range !24
  %189 = select i1 %116, i32 %187, i32 %188
  %190 = zext i32 %189 to i64
  %191 = shl nuw i64 1, %190
  %192 = and i64 %185, %114
  %193 = xor i64 %114, -1
  %194 = and i64 %185, %193
  %195 = trunc i64 %185 to i8
  %196 = lshr exact i64 %181, 8
  %197 = trunc i64 %196 to i8
  br label %198

198:                                              ; preds = %237, %157
  %199 = phi i64 [ %192, %157 ], [ %210, %237 ]
  %200 = phi i8 [ %195, %157 ], [ %241, %237 ]
  %201 = phi i8 [ %197, %157 ], [ %243, %237 ]
  %202 = phi i8 [ %173, %157 ], [ %245, %237 ]
  %203 = phi i8 [ %168, %157 ], [ %247, %237 ]
  %204 = phi i8 [ %163, %157 ], [ %249, %237 ]
  %205 = phi i8 [ %159, %157 ], [ %251, %237 ]
  %206 = zext i8 %200 to i16
  %207 = shl nuw i16 %206, 8
  %208 = zext i8 %201 to i16
  %209 = or i16 %207, %208
  %210 = add i64 %199, %191
  %211 = zext i8 %202 to i32
  %212 = shl nuw i32 %211, 24
  %213 = zext i8 %203 to i32
  %214 = shl nuw nsw i32 %213, 16
  %215 = or i32 %214, %212
  %216 = zext i8 %204 to i32
  %217 = shl nuw nsw i32 %216, 8
  %218 = or i32 %215, %217
  %219 = zext i8 %205 to i32
  %220 = or i32 %218, %219
  br label %221

221:                                              ; preds = %225, %198
  %222 = phi ptr [ %146, %198 ], [ %223, %225 ]
  %223 = load ptr, ptr %222, align 8
  %224 = icmp eq ptr %223, %146
  br i1 %224, label %235, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %223, i32 0, i32 58, i32 2
  %227 = load i32, ptr %226, align 4
  %228 = xor i32 %227, %220
  %229 = getelementptr %struct.ieee80211_sub_if_data, ptr %223, i32 0, i32 58, i32 2, i32 4
  %230 = load i16, ptr %229, align 2
  %231 = xor i16 %230, %209
  %232 = zext i16 %231 to i32
  %233 = or i32 %228, %232
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %237, label %221

235:                                              ; preds = %221
  store i32 %220, ptr %1, align 1
  %236 = getelementptr inbounds i8, ptr %1, i32 4
  store i16 %209, ptr %236, align 1
  br label %252

237:                                              ; preds = %225
  %238 = and i64 %210, %114
  %239 = or i64 %238, %194
  %240 = icmp eq i64 %239, %185
  %241 = trunc i64 %239 to i8
  %242 = lshr i64 %239, 8
  %243 = trunc i64 %242 to i8
  %244 = lshr i64 %239, 16
  %245 = trunc i64 %244 to i8
  %246 = lshr i64 %239, 24
  %247 = trunc i64 %246 to i8
  %248 = lshr i64 %239, 32
  %249 = trunc i64 %248 to i8
  %250 = lshr i64 %239, 40
  %251 = trunc i64 %250 to i8
  br i1 %240, label %252, label %198

252:                                              ; preds = %237, %235, %141, %92, %52, %31, %23, %19
  tail call void @mutex_unlock(ptr noundef %20) #16
  br label %253

253:                                              ; preds = %252, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_if_setup_no_queue(ptr noundef %0) #0 {
  tail call void @ether_setup(ptr noundef %0) #16
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %3 = load i64, ptr %2, align 16
  %4 = and i64 %3, -526337
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  store ptr @ieee80211_dataif_ops, ptr %5, align 8
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 105
  store i8 1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 106
  store ptr @ieee80211_if_free, ptr %7, align 4
  %8 = or i64 %4, 524288
  store i64 %8, ptr %2, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_if_setup(ptr noundef %0) #0 {
  tail call void @ether_setup(ptr noundef %0) #16
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %3 = load i64, ptr %2, align 16
  %4 = and i64 %3, -2049
  store i64 %4, ptr %2, align 16
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  store ptr @ieee80211_dataif_ops, ptr %5, align 8
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 105
  store i8 1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 106
  store ptr @ieee80211_if_free, ptr %7, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_if_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 110
  %3 = load ptr, ptr %2, align 8
  tail call void @free_percpu(ptr noundef %3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_txq_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_init_frag_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_dfs_cac_timer_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_delayed_tailroom_dec(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_vht_mask_from_cap(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_set_default_ethtool_ops(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_if_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @rtnl_is_locked() #16
  %3 = icmp eq i32 %2, 0
  %4 = load i1, ptr @ieee80211_if_remove.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !10

7:                                                ; preds = %1
  store i1 true, ptr @ieee80211_if_remove.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2165, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2165) #16
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %10, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %11) #16
  %12 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr inbounds %struct.ieee80211_local, ptr %16, i32 0, i32 64
  tail call void @mutex_unlock(ptr noundef %17) #16
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %8
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr i8, ptr %19, i32 -164
  tail call void @ieee80211_txq_purge(ptr noundef %22, ptr noundef %23) #16
  br label %24

24:                                               ; preds = %21, %8
  tail call void @synchronize_rcu() #16
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1
  tail call void @cfg80211_unregister_wdev(ptr noundef %25) #16
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  tail call void @ieee80211_free_keys(ptr noundef %0, i1 noundef zeroext false) #16
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 11
  tail call void @ieee80211_destroy_frag_cache(ptr noundef %30) #16
  tail call void @kfree(ptr noundef %0) #16
  br label %31

31:                                               ; preds = %29, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_txq_purge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unregister_wdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sdata_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 9
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = load i1, ptr @ieee80211_sdata_stop.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !10

9:                                                ; preds = %1
  store i1 true, ptr @ieee80211_sdata_stop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2186, i32 noundef 9, ptr noundef null) #16
  br label %10

10:                                               ; preds = %9, %1
  br i1 %5, label %12, label %11

11:                                               ; preds = %10
  tail call fastcc void @ieee80211_do_stop(ptr noundef %0, i1 noundef zeroext true)
  br label %12

12:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_do_stop(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_chan_def, align 4
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !25
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %7) #16
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 85
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @ieee80211_scan_cancel(ptr noundef %6) #16
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @netif_tx_stop_all_queues(ptr noundef nonnull %14) #16
  br label %17

17:                                               ; preds = %16, %12
  tail call void @ieee80211_roc_purge(ptr noundef %6, ptr noundef %0) #16
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %19 = load i32, ptr %18, align 8
  switch i32 %19, label %33 [
    i32 2, label %20
    i32 1, label %21
    i32 6, label %22
  ]

20:                                               ; preds = %17
  tail call void @ieee80211_mgd_stop(ptr noundef %0) #16
  br label %33

21:                                               ; preds = %17
  tail call void @ieee80211_ibss_stop(ptr noundef %0) #16
  br label %33

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 2
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  br label %33

33:                                               ; preds = %27, %22, %21, %20, %17
  %34 = tail call i32 @__sta_info_flush(ptr noundef %0, i1 noundef zeroext false) #16
  %35 = load i32, ptr %18, align 8
  %36 = icmp ne i32 %35, 4
  %37 = icmp sgt i32 %34, 0
  %38 = select i1 %36, i1 %37, i1 false
  %39 = load i1, ptr @ieee80211_do_stop.__already_done, align 1
  %40 = xor i1 %39, true
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %43, !prof !10

42:                                               ; preds = %33
  store i1 true, ptr @ieee80211_do_stop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 425, i32 noundef 9, ptr noundef null) #16
  br label %43

43:                                               ; preds = %42, %33
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 8
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 57
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #16, !srcloc !22
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #16, !srcloc !26
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, ptr %18, align 8
  switch i32 %52, label %61 [
    i32 3, label %53
    i32 1, label %57
  ]

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 20
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, -1
  store i32 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %53, %51
  %58 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 21
  %59 = load i32, ptr %58, align 8
  %60 = add i32 %59, -1
  store i32 %60, ptr %58, align 8
  br label %61

61:                                               ; preds = %57, %51
  %62 = load ptr, ptr %13, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %79, label %64

64:                                               ; preds = %61
  %65 = tail call ptr @llvm.thread.pointer() #16
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %67 = load volatile i32, ptr %66, align 4
  %68 = add i32 %67, 512
  store volatile i32 %68, ptr %66, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %69 = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 58
  tail call void @_raw_spin_lock(ptr noundef %69) #16
  %70 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 27
  tail call void @_raw_spin_lock_bh(ptr noundef %70) #16
  %71 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 29
  %72 = load ptr, ptr %13, align 8
  %73 = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 61
  %74 = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 51
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  tail call void @__hw_addr_unsync(ptr noundef %71, ptr noundef %73, i32 noundef %76) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %70) #16
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 58
  tail call void @_raw_spin_unlock_bh(ptr noundef %78) #16
  br label %79

79:                                               ; preds = %64, %61
  %80 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 95
  %81 = tail call i32 @del_timer_sync(ptr noundef %80) #16
  %82 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 93
  %83 = tail call zeroext i1 @cancel_work_sync(ptr noundef %82) #16
  %84 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 39
  %85 = tail call zeroext i1 @cancel_work_sync(ptr noundef %84) #16
  %86 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 7
  tail call void @mutex_lock(ptr noundef %86) #16
  %87 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %87) #16
  %88 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 4
  store i8 0, ptr %88, align 1
  %89 = load i32, ptr %18, align 8
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 10
  store i8 0, ptr %92, align 4
  br label %93

93:                                               ; preds = %91, %79
  %94 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 30
  %95 = load i8, ptr %94, align 8, !range !15
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  tail call void @ieee80211_wake_vif_queues(ptr noundef %6, ptr noundef %0, i32 noundef 2) #16
  store i8 0, ptr %94, align 8
  br label %98

98:                                               ; preds = %97, %93
  tail call void @mutex_unlock(ptr noundef %87) #16
  tail call void @mutex_unlock(ptr noundef %86) #16
  %99 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 29
  %100 = tail call zeroext i1 @cancel_work_sync(ptr noundef %99) #16
  %101 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 32
  %102 = tail call zeroext i1 @cancel_work_sync(ptr noundef %101) #16
  %103 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 48
  %104 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %103) #16
  %105 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 36
  %106 = load i8, ptr %105, align 1, !range !15
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef align 4 dereferenceable(28) %109, i32 28, i1 false)
  %110 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 31
  %111 = load i8, ptr %110, align 1, !range !15
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %114, label %113, !prof !16

113:                                              ; preds = %108
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 471, i32 noundef 9, ptr noundef null) #16
  br label %114

114:                                              ; preds = %113, %108
  tail call void @mutex_lock(ptr noundef %87) #16
  tail call void @ieee80211_vif_release_channel(ptr noundef %0) #16
  tail call void @mutex_unlock(ptr noundef %87) #16
  %115 = load ptr, ptr %13, align 8
  call void @cfg80211_cac_event(ptr noundef %115, ptr noundef nonnull %4, i32 noundef 2, i32 noundef 3264) #16
  br label %116

116:                                              ; preds = %114, %98
  %117 = load i32, ptr %18, align 8
  switch i32 %117, label %153 [
    i32 3, label %118
    i32 4, label %123
  ]

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  %120 = load volatile ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, %119
  br i1 %121, label %153, label %122, !prof !16

122:                                              ; preds = %118
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 481, i32 noundef 9, ptr noundef null) #16
  br label %153

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 49
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.ieee80211_if_ap, ptr %125, i32 0, i32 6, i32 1
  %127 = getelementptr inbounds %struct.ieee80211_if_ap, ptr %125, i32 0, i32 6, i32 1, i32 2
  %128 = call i32 @_raw_spin_lock_irqsave(ptr noundef %127) #16
  %129 = load ptr, ptr %126, align 4
  %130 = icmp eq ptr %129, %126
  br i1 %130, label %152, label %131

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.ieee80211_if_ap, ptr %125, i32 0, i32 6, i32 1, i32 1
  %133 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 90
  br label %134

134:                                              ; preds = %150, %131
  %135 = phi ptr [ %129, %131 ], [ %136, %150 ]
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr inbounds %struct.anon.46, ptr %135, i32 0, i32 2
  %138 = load ptr, ptr %137, align 8
  %139 = load ptr, ptr %13, align 8
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %134
  %142 = load i32, ptr %132, align 4
  %143 = add i32 %142, -1
  store volatile i32 %143, ptr %132, align 4
  %144 = load ptr, ptr %135, align 8
  %145 = getelementptr inbounds %struct.anon.46, ptr %135, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  store ptr null, ptr %145, align 4
  store ptr null, ptr %135, align 8
  %147 = getelementptr inbounds %struct.anon.46, ptr %144, i32 0, i32 1
  store volatile ptr %146, ptr %147, align 4
  store volatile ptr %144, ptr %146, align 8
  %148 = load i32, ptr %133, align 4
  %149 = add i32 %148, -1
  store i32 %149, ptr %133, align 4
  call void @ieee80211_free_txskb(ptr noundef %6, ptr noundef %135) #16
  br label %150

150:                                              ; preds = %141, %134
  %151 = icmp eq ptr %136, %126
  br i1 %151, label %152, label %134

152:                                              ; preds = %150, %123
  call void @_raw_spin_unlock_irqrestore(ptr noundef %127, i32 noundef %128) #16
  br label %153

153:                                              ; preds = %152, %122, %118, %116
  br i1 %1, label %154, label %158

154:                                              ; preds = %153
  %155 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 13
  %156 = load i32, ptr %155, align 8
  %157 = add i32 %156, -1
  store i32 %157, ptr %155, align 8
  br label %158

158:                                              ; preds = %154, %153
  %159 = load i32, ptr %18, align 8
  switch i32 %159, label %234 [
    i32 4, label %160
    i32 6, label %167
    i32 12, label %218
    i32 10, label %232
  ]

160:                                              ; preds = %158
  call void @mutex_lock(ptr noundef %87) #16
  %161 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %162 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = load ptr, ptr %161, align 4
  %165 = getelementptr inbounds %struct.list_head, ptr %164, i32 0, i32 1
  store ptr %163, ptr %165, align 4
  store volatile ptr %164, ptr %163, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %161, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %162, align 4
  call void @mutex_unlock(ptr noundef %87) #16
  %166 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  store volatile ptr null, ptr %166, align 4
  call void @ieee80211_free_keys(ptr noundef %0, i1 noundef zeroext true) #16
  br label %239

167:                                              ; preds = %158
  %168 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %169 = load i32, ptr %168, align 8
  %170 = and i32 %169, 32
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 15
  %174 = load i32, ptr %173, align 8
  %175 = add i32 %174, -1
  store i32 %175, ptr %173, align 8
  br label %239

176:                                              ; preds = %167
  %177 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 14
  %178 = load i32, ptr %177, align 4
  %179 = add i32 %178, -1
  store i32 %179, ptr %177, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i32, ptr %6, align 8
  %183 = and i32 %182, -2
  store i32 %183, ptr %6, align 8
  br label %184

184:                                              ; preds = %181, %176
  %185 = phi i32 [ 8, %181 ], [ 0, %176 ]
  %186 = load ptr, ptr %5, align 4
  %187 = load i32, ptr %168, align 8
  %188 = and i32 %187, 2
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.ieee80211_local, ptr %186, i32 0, i32 16
  %192 = load i32, ptr %191, align 4
  %193 = add i32 %192, -1
  store i32 %193, ptr %191, align 4
  br label %194

194:                                              ; preds = %190, %184
  %195 = and i32 %187, 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.ieee80211_local, ptr %186, i32 0, i32 17
  %199 = load i32, ptr %198, align 8
  %200 = add i32 %199, -1
  store i32 %200, ptr %198, align 8
  br label %201

201:                                              ; preds = %197, %194
  %202 = and i32 %187, 8
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %211, label %204

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.ieee80211_local, ptr %186, i32 0, i32 18
  %206 = load i32, ptr %205, align 4
  %207 = add i32 %206, -1
  store i32 %207, ptr %205, align 4
  %208 = getelementptr inbounds %struct.ieee80211_local, ptr %186, i32 0, i32 20
  %209 = load i32, ptr %208, align 4
  %210 = add i32 %209, -1
  store i32 %210, ptr %208, align 4
  br label %211

211:                                              ; preds = %204, %201
  %212 = and i32 %187, 16
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %239, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.ieee80211_local, ptr %186, i32 0, i32 19
  %216 = load i32, ptr %215, align 8
  %217 = add i32 %216, -1
  store i32 %217, ptr %215, align 8
  br label %239

218:                                              ; preds = %158
  %219 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %219) #16
  %220 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %221 = call ptr @idr_get_next(ptr noundef %220, ptr noundef nonnull %3) #16
  %222 = icmp eq ptr %221, null
  br i1 %222, label %231, label %223

223:                                              ; preds = %223, %218
  %224 = phi ptr [ %229, %223 ], [ %221, %218 ]
  %225 = load i32, ptr %3, align 4
  %226 = call ptr @idr_remove(ptr noundef %220, i32 noundef %225) #16
  call void @cfg80211_free_nan_func(ptr noundef nonnull %224) #16
  %227 = load i32, ptr %3, align 4
  %228 = add i32 %227, 1
  store i32 %228, ptr %3, align 4
  %229 = call ptr @idr_get_next(ptr noundef %220, ptr noundef nonnull %3) #16
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %223

231:                                              ; preds = %223, %218
  call void @idr_destroy(ptr noundef %220) #16
  call void @_raw_spin_unlock_bh(ptr noundef %219) #16
  br label %239

232:                                              ; preds = %158
  %233 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 110
  store volatile ptr null, ptr %233, align 8
  br label %234

234:                                              ; preds = %232, %158
  %235 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 40
  %236 = call zeroext i1 @cancel_work_sync(ptr noundef %235) #16
  call void @ieee80211_free_keys(ptr noundef %0, i1 noundef zeroext true) #16
  %237 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 41
  call void @skb_queue_purge(ptr noundef %237) #16
  %238 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 42
  call void @skb_queue_purge(ptr noundef %238) #16
  br label %239

239:                                              ; preds = %234, %231, %214, %211, %172, %160
  %240 = phi i32 [ 0, %234 ], [ 0, %231 ], [ 0, %172 ], [ 0, %160 ], [ %185, %211 ], [ %185, %214 ]
  %241 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 12
  %242 = call i32 @_raw_spin_lock_irqsave(ptr noundef %241) #16
  store i32 0, ptr %3, align 4
  br label %243

243:                                              ; preds = %268, %239
  %244 = phi i32 [ 0, %239 ], [ %270, %268 ]
  %245 = getelementptr %struct.ieee80211_local, ptr %6, i32 0, i32 53, i32 %244
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, %245
  br i1 %247, label %268, label %248

248:                                              ; preds = %264, %243
  %249 = phi i32 [ %265, %264 ], [ %244, %243 ]
  %250 = phi ptr [ %251, %264 ], [ %246, %243 ]
  %251 = load ptr, ptr %250, align 8
  %252 = getelementptr inbounds %struct.sk_buff, ptr %250, i32 0, i32 3, i32 24
  %253 = load ptr, ptr %252, align 8
  %254 = icmp eq ptr %253, %18
  br i1 %254, label %255, label %264

255:                                              ; preds = %248
  %256 = getelementptr %struct.ieee80211_local, ptr %6, i32 0, i32 53, i32 %249, i32 1
  %257 = load i32, ptr %256, align 4
  %258 = add i32 %257, -1
  store volatile i32 %258, ptr %256, align 4
  %259 = load ptr, ptr %250, align 8
  %260 = getelementptr inbounds %struct.anon.46, ptr %250, i32 0, i32 1
  %261 = load ptr, ptr %260, align 4
  store ptr null, ptr %260, align 4
  store ptr null, ptr %250, align 8
  %262 = getelementptr inbounds %struct.anon.46, ptr %259, i32 0, i32 1
  store volatile ptr %261, ptr %262, align 4
  store volatile ptr %259, ptr %261, align 8
  call void @ieee80211_free_txskb(ptr noundef %6, ptr noundef %250) #16
  %263 = load i32, ptr %3, align 4
  br label %264

264:                                              ; preds = %255, %248
  %265 = phi i32 [ %263, %255 ], [ %249, %248 ]
  %266 = getelementptr %struct.ieee80211_local, ptr %6, i32 0, i32 53, i32 %265
  %267 = icmp eq ptr %251, %266
  br i1 %267, label %268, label %248

268:                                              ; preds = %264, %243
  %269 = phi i32 [ %244, %243 ], [ %265, %264 ]
  %270 = add i32 %269, 1
  store i32 %270, ptr %3, align 4
  %271 = icmp slt i32 %270, 16
  br i1 %271, label %243, label %272

272:                                              ; preds = %268
  call void @_raw_spin_unlock_irqrestore(ptr noundef %241, i32 noundef %242) #16
  %273 = load i32, ptr %18, align 8
  %274 = icmp eq i32 %273, 4
  br i1 %274, label %275, label %276

275:                                              ; preds = %272
  call void @ieee80211_txq_remove_vlan(ptr noundef %6, ptr noundef %0) #16
  br label %276

276:                                              ; preds = %275, %272
  %277 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 49
  store ptr null, ptr %277, align 4
  %278 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 13
  %279 = load i32, ptr %278, align 8
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %276
  call void @ieee80211_clear_tx_pending(ptr noundef %6) #16
  br label %282

282:                                              ; preds = %281, %276
  %283 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 19
  store i16 0, ptr %283, align 2
  %284 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 31
  %285 = load i8, ptr %284, align 1, !range !15
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %297, label %287

287:                                              ; preds = %282
  %288 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 37
  %289 = load i8, ptr %288, align 1, !range !15
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %292, label %291, !prof !16

291:                                              ; preds = %287
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 590, i32 noundef 9, ptr noundef null) #16
  br label %292

292:                                              ; preds = %291, %287
  %293 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 111
  %294 = load volatile ptr, ptr %293, align 4
  %295 = icmp eq ptr %294, null
  br i1 %295, label %374, label %296, !prof !16

296:                                              ; preds = %292
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 591, i32 noundef 9, ptr noundef null) #16
  br label %374

297:                                              ; preds = %282
  %298 = load i32, ptr %18, align 8
  switch i32 %298, label %356 [
    i32 4, label %358
    i32 6, label %299
  ]

299:                                              ; preds = %297
  %300 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 14
  %301 = load i32, ptr %300, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %299
  call void @ieee80211_del_virtual_monitor(ptr noundef %6)
  br label %304

304:                                              ; preds = %303, %299
  call void @mutex_lock(ptr noundef %87) #16
  %305 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 88
  %306 = load volatile ptr, ptr %305, align 4
  %307 = icmp eq ptr %306, %305
  br i1 %307, label %308, label %311

308:                                              ; preds = %304
  %309 = load i32, ptr %300, align 4
  %310 = icmp ne i32 %309, 0
  br label %311

311:                                              ; preds = %308, %304
  %312 = phi i1 [ true, %304 ], [ %310, %308 ]
  %313 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 8
  %314 = load ptr, ptr %313, align 4
  %315 = getelementptr inbounds %struct.ieee80211_ops, ptr %314, i32 0, i32 54
  %316 = load ptr, ptr %315, align 4
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %322

318:                                              ; preds = %311
  %319 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 103
  %320 = load volatile ptr, ptr %319, align 4
  %321 = icmp ne ptr %320, %319
  br label %322

322:                                              ; preds = %318, %311
  %323 = phi i1 [ false, %311 ], [ %321, %318 ]
  %324 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 67
  %325 = load volatile i32, ptr %324, align 4
  %326 = and i32 %325, 1
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %322
  %329 = load volatile i32, ptr %324, align 4
  %330 = and i32 %329, 4
  %331 = icmp ne i32 %330, 0
  %332 = select i1 %323, i1 true, i1 %331
  %333 = select i1 %332, i1 true, i1 %312
  br i1 %333, label %334, label %340

334:                                              ; preds = %328, %322
  %335 = load i32, ptr %6, align 8
  %336 = and i32 %335, 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %350, label %338

338:                                              ; preds = %334
  %339 = and i32 %335, -5
  br label %347

340:                                              ; preds = %328
  %341 = load i32, ptr %6, align 8
  %342 = and i32 %341, 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %350

344:                                              ; preds = %340
  call void @ieee80211_flush_queues(ptr noundef %6, ptr noundef null, i1 noundef zeroext false) #16
  %345 = load i32, ptr %6, align 8
  %346 = or i32 %345, 4
  br label %347

347:                                              ; preds = %344, %338
  %348 = phi i32 [ %346, %344 ], [ %339, %338 ]
  store i32 %348, ptr %6, align 8
  %349 = call i32 @ieee80211_hw_config(ptr noundef %6, i32 noundef 256) #16
  br label %350

350:                                              ; preds = %347, %340, %334
  call void @mutex_unlock(ptr noundef %87) #16
  %351 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %352 = load i32, ptr %351, align 8
  %353 = and i32 %352, 64
  %354 = icmp ne i32 %353, 0
  %355 = and i1 %354, %1
  br i1 %355, label %357, label %358

356:                                              ; preds = %297
  br i1 %1, label %357, label %358

357:                                              ; preds = %356, %350
  call void @drv_remove_interface(ptr noundef %6, ptr noundef %0) #16
  br label %358

358:                                              ; preds = %357, %356, %350, %297
  call void @ieee80211_recalc_ps(ptr noundef %6) #16
  br i1 %10, label %359, label %362

359:                                              ; preds = %358
  %360 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 84
  %361 = call zeroext i1 @flush_delayed_work(ptr noundef %360) #16
  br label %362

362:                                              ; preds = %359, %358
  %363 = load i32, ptr %278, align 8
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %362
  call void @ieee80211_stop_device(ptr noundef %6) #16
  br label %374

366:                                              ; preds = %362
  call void @ieee80211_configure_filter(ptr noundef %6) #16
  %367 = call i32 @ieee80211_hw_config(ptr noundef %6, i32 noundef %240) #16
  %368 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 14
  %369 = load i32, ptr %368, align 4
  %370 = load i32, ptr %278, align 8
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %372, label %374

372:                                              ; preds = %366
  %373 = call i32 @ieee80211_add_virtual_monitor(ptr noundef %6)
  br label %374

374:                                              ; preds = %372, %366, %365, %296, %292
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_remove_interfaces(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  store ptr %2, ptr %2, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store ptr %3, ptr %3, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  %6 = call i32 @rtnl_is_locked() #16
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @ieee80211_remove_interfaces.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %1
  store i1 true, ptr @ieee80211_remove_interfaces.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2197, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2197) #16
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  call void @cfg80211_shutdown_all_interfaces(ptr noundef %14) #16
  %15 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 13
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18, !prof !16

18:                                               ; preds = %12
  %19 = load ptr, ptr %13, align 8
  %20 = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 56, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 56
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi ptr [ %25, %23 ], [ %21, %18 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2213, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %27, i32 noundef %16) #16
  br label %28

28:                                               ; preds = %26, %12
  call void @ieee80211_txq_teardown_flows(ptr noundef %0) #16
  %29 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 64
  call void @mutex_lock(ptr noundef %29) #16
  %30 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %48, label %33

33:                                               ; preds = %46, %28
  %34 = phi ptr [ %35, %46 ], [ %31, %28 ]
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %35, ptr %37, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %34, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %36, align 4
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %34, i32 0, i32 6
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  call void @unregister_netdevice_queue(ptr noundef nonnull %40, ptr noundef nonnull %2) #16
  br label %46

43:                                               ; preds = %33
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %34, ptr %45, align 4
  store ptr %44, ptr %34, align 4
  store ptr %3, ptr %36, align 4
  store volatile ptr %34, ptr %3, align 8
  br label %46

46:                                               ; preds = %43, %42
  %47 = icmp eq ptr %35, %30
  br i1 %47, label %48, label %33

48:                                               ; preds = %46, %28
  call void @mutex_unlock(ptr noundef %29) #16
  call void @unregister_netdevice_many(ptr noundef nonnull %2) #16
  %49 = load ptr, ptr %13, align 8
  call void @mutex_lock(ptr noundef %49) #16
  %50 = load ptr, ptr %3, align 8
  %51 = icmp eq ptr %50, %3
  br i1 %51, label %60, label %52

52:                                               ; preds = %52, %48
  %53 = phi ptr [ %54, %52 ], [ %50, %48 ]
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %56, ptr %57, align 4
  store volatile ptr %54, ptr %56, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %53, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %55, align 4
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %53, i32 0, i32 1
  call void @cfg80211_unregister_wdev(ptr noundef %58) #16
  call void @kfree(ptr noundef %53) #16
  %59 = icmp eq ptr %54, %3
  br i1 %59, label %60, label %52

60:                                               ; preds = %52, %48
  %61 = load ptr, ptr %13, align 8
  call void @mutex_unlock(ptr noundef %61) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_shutdown_all_interfaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_txq_teardown_flows(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_iface_init() local_unnamed_addr #0 {
  %1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @mac80211_netdev_notifier) #16
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_iface_exit() local_unnamed_addr #0 {
  %1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @mac80211_netdev_notifier) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_vif_inc_num_mcast(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %10 [
    i32 3, label %4
    i32 4, label %7
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #16, !srcloc !22
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #16, !srcloc !23
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #16, !srcloc !22
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #16, !srcloc !23
  br label %10

10:                                               ; preds = %7, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_vif_dec_num_mcast(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %10 [
    i32 3, label %4
    i32 4, label %7
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #16, !srcloc !22
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #16, !srcloc !26
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #16, !srcloc !22
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #16, !srcloc !26
  br label %10

10:                                               ; preds = %7, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_flush_queues(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_update_vif_offload(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_uninit(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  tail call void @ieee80211_free_keys(ptr noundef %2, i1 noundef zeroext false) #16
  %3 = getelementptr i8, ptr %0, i32 1792
  tail call void @ieee80211_destroy_frag_cache(ptr noundef %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_open(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %4 = load ptr, ptr %3, align 32
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %4, i32 4
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = or i32 %5, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %0, i32 3672
  %16 = load i32, ptr %15, align 8
  %17 = tail call fastcc i32 @ieee80211_check_concurrent_iface(ptr noundef %2, i32 noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %0, i32 1764
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  tail call void @mutex_lock(ptr noundef %23) #16
  %24 = getelementptr i8, ptr %0, i32 1416
  %25 = tail call i32 @ieee80211_do_open(ptr noundef %24, i1 noundef zeroext true)
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr inbounds %struct.ieee80211_hw, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  tail call void @mutex_unlock(ptr noundef %28) #16
  br label %29

29:                                               ; preds = %19, %14, %8, %1
  %30 = phi i32 [ %25, %19 ], [ -99, %8 ], [ %17, %14 ], [ -99, %1 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_stop(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 3672
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %62

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 2836
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %16, label %10

10:                                               ; preds = %10, %6
  %11 = phi ptr [ %12, %10 ], [ %8, %6 ]
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %11, i32 -1056
  %14 = load ptr, ptr %13, align 8
  tail call void @dev_close(ptr noundef %14) #16
  %15 = icmp eq ptr %12, %7
  br i1 %15, label %16, label %10

16:                                               ; preds = %10, %6
  %17 = getelementptr i8, ptr %0, i32 4512
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %62, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %18, i32 -2264
  store ptr null, ptr %17, align 8
  %22 = getelementptr i8, ptr %18, i32 -1908
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ieee80211_local, ptr %23, i32 0, i32 62
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %51, label %27

27:                                               ; preds = %47, %20
  %28 = phi ptr [ %48, %47 ], [ %23, %20 ]
  %29 = phi ptr [ %30, %47 ], [ %25, %20 ]
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %29, %2
  %32 = icmp eq ptr %29, %21
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %47, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %29, i32 0, i32 58, i32 17
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, %18
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %29, i32 0, i32 9
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  store ptr null, ptr %35, align 8
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %29, i32 0, i32 1, i32 3
  %45 = load ptr, ptr %44, align 8
  tail call void @dev_close(ptr noundef %45) #16
  %46 = load ptr, ptr %22, align 4
  br label %47

47:                                               ; preds = %43, %38, %34, %27
  %48 = phi ptr [ %28, %27 ], [ %28, %34 ], [ %28, %38 ], [ %46, %43 ]
  %49 = getelementptr inbounds %struct.ieee80211_local, ptr %48, i32 0, i32 62
  %50 = icmp eq ptr %30, %49
  br i1 %50, label %51, label %27

51:                                               ; preds = %47, %20
  %52 = icmp eq ptr %21, %2
  br i1 %52, label %62, label %53

53:                                               ; preds = %51
  %54 = getelementptr i8, ptr %18, i32 -1900
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %18, i32 840
  store ptr null, ptr %59, align 8
  %60 = getelementptr i8, ptr %18, i32 -2240
  %61 = load ptr, ptr %60, align 8
  tail call void @dev_close(ptr noundef %61) #16
  br label %62

62:                                               ; preds = %58, %53, %51, %16, %1
  %63 = getelementptr i8, ptr %0, i32 1764
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.ieee80211_hw, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8
  tail call void @mutex_lock(ptr noundef %66) #16
  tail call fastcc void @ieee80211_do_stop(ptr noundef %2, i1 noundef zeroext true)
  %67 = load ptr, ptr %63, align 4
  %68 = getelementptr inbounds %struct.ieee80211_hw, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8
  tail call void @mutex_unlock(ptr noundef %69) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_subif_start_xmit_8023(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @ieee80211_netdev_select_queue(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = tail call zeroext i16 @ieee80211_select_queue(ptr noundef %4, ptr noundef %1) #16
  ret i16 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_set_multicast_list(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1764
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 512
  %7 = lshr exact i32 %6, 9
  %8 = getelementptr i8, ptr %0, i32 1768
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = icmp eq i32 %6, 0
  %14 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 57
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #16
  br i1 %13, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #16, !srcloc !23
  br label %19

17:                                               ; preds = %12
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #16, !srcloc !26
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i32, ptr %8, align 8
  %21 = xor i32 %20, 1
  store i32 %21, ptr %8, align 8
  br label %22

22:                                               ; preds = %19, %1
  %23 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 27
  tail call void @_raw_spin_lock_bh(ptr noundef %23) #16
  %24 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 29
  %25 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %26 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 51
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = tail call i32 @__hw_addr_sync(ptr noundef %24, ptr noundef %25, i32 noundef %28) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %23) #16
  %30 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 28
  tail call void @ieee80211_queue_work(ptr noundef %3, ptr noundef %30) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_change_mac(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1772
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %129

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 3672
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 6
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 2816
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 64
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi i1 [ true, %8 ], [ %16, %12 ]
  %19 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %20 = getelementptr i8, ptr %0, i32 1764
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.wiphy, ptr %23, i32 0, i32 2, i32 4
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = or i32 %25, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %124, label %31

31:                                               ; preds = %17
  %32 = lshr i16 %27, 8
  %33 = load i8, ptr %19, align 1
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 40
  %36 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i64
  %39 = shl nuw nsw i64 %38, 32
  %40 = or i64 %39, %35
  %41 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i64
  %44 = shl nuw nsw i64 %43, 24
  %45 = or i64 %40, %44
  %46 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 3
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 16
  %50 = or i64 %45, %49
  %51 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 4
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i64
  %54 = shl nuw nsw i64 %53, 8
  %55 = or i64 %50, %54
  %56 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 5
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i64
  %59 = or i64 %55, %58
  %60 = zext i32 %25 to i48
  %61 = tail call i48 @llvm.bswap.i48(i48 %60) #16
  %62 = zext i48 %61 to i64
  %63 = shl i16 %27, 8
  %64 = zext i16 %63 to i64
  %65 = or i64 %62, %64
  %66 = zext i16 %32 to i64
  %67 = or i64 %65, %66
  br i1 %18, label %68, label %124

68:                                               ; preds = %31
  %69 = getelementptr inbounds %struct.ieee80211_local, ptr %21, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %69) #16
  %70 = getelementptr inbounds %struct.ieee80211_local, ptr %21, i32 0, i32 62
  %71 = load ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, %70
  br i1 %72, label %122, label %73

73:                                               ; preds = %68
  %74 = xor i64 %67, -1
  br label %75

75:                                               ; preds = %119, %73
  %76 = phi ptr [ %71, %73 ], [ %120, %119 ]
  %77 = icmp eq ptr %76, %3
  br i1 %77, label %119, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %76, i32 0, i32 58
  %80 = load i32, ptr %79, align 8
  %81 = icmp eq i32 %80, 6
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %76, i32 0, i32 57
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 64
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %119, label %87

87:                                               ; preds = %82, %78
  %88 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %76, i32 0, i32 58, i32 2
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i64
  %91 = shl nuw nsw i64 %90, 40
  %92 = getelementptr %struct.ieee80211_sub_if_data, ptr %76, i32 0, i32 58, i32 2, i32 1
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 32
  %96 = or i64 %95, %91
  %97 = getelementptr %struct.ieee80211_sub_if_data, ptr %76, i32 0, i32 58, i32 2, i32 2
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = or i64 %96, %100
  %102 = getelementptr %struct.ieee80211_sub_if_data, ptr %76, i32 0, i32 58, i32 2, i32 3
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i64
  %105 = shl nuw nsw i64 %104, 16
  %106 = or i64 %101, %105
  %107 = getelementptr %struct.ieee80211_sub_if_data, ptr %76, i32 0, i32 58, i32 2, i32 4
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i64
  %110 = shl nuw nsw i64 %109, 8
  %111 = or i64 %106, %110
  %112 = getelementptr %struct.ieee80211_sub_if_data, ptr %76, i32 0, i32 58, i32 2, i32 5
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i64
  %115 = or i64 %111, %114
  %116 = xor i64 %115, %59
  %117 = and i64 %116, %74
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %87, %82, %75
  %120 = load ptr, ptr %76, align 8
  %121 = icmp eq ptr %120, %70
  br i1 %121, label %122, label %75

122:                                              ; preds = %119, %68
  tail call void @mutex_unlock(ptr noundef %69) #16
  br label %124

123:                                              ; preds = %87
  tail call void @mutex_unlock(ptr noundef %69) #16
  br label %129

124:                                              ; preds = %122, %31, %17
  %125 = tail call i32 @eth_mac_addr(ptr noundef %0, ptr noundef %1) #16
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = getelementptr i8, ptr %0, i32 4472
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %128, ptr noundef align 2 dereferenceable(6) %19, i32 6, i1 false)
  br label %129

129:                                              ; preds = %127, %124, %123, %2
  %130 = phi i32 [ -16, %2 ], [ -22, %123 ], [ 0, %127 ], [ %125, %124 ]
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_get_stats64(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 110
  %4 = load ptr, ptr %3, align 8
  tail call void @dev_fetch_sw_netstats(ptr noundef %1, ptr noundef %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_netdev_fill_forward_path(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = getelementptr i8, ptr %3, i32 1764
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_ops, ptr %8, i32 0, i32 109
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %138, label %12

12:                                               ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %13 = getelementptr i8, ptr %3, i32 3672
  %14 = load i32, ptr %13, align 8
  switch i32 %14, label %136 [
    i32 4, label %15
    i32 3, label %33
    i32 2, label %41
  ]

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %3, i32 2824
  %17 = load volatile ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 46
  br label %73

21:                                               ; preds = %15
  %22 = getelementptr i8, ptr %3, i32 1472
  %23 = load i8, ptr %22, align 8, !range !15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %136

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.net_device_path_ctx, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %136

31:                                               ; preds = %25
  %32 = tail call ptr @sta_info_get_bss(ptr noundef %4, ptr noundef %27) #16
  br label %65

33:                                               ; preds = %12
  %34 = getelementptr inbounds %struct.net_device_path_ctx, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %136

39:                                               ; preds = %33
  %40 = tail call ptr @sta_info_get(ptr noundef %4, ptr noundef %35) #16
  br label %65

41:                                               ; preds = %12
  %42 = getelementptr i8, ptr %3, i32 1416
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.wiphy, ptr %43, i32 0, i32 11
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 32768
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.net_device_path_ctx, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = tail call ptr @sta_info_get(ptr noundef %4, ptr noundef %50) #16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.sta_info, ptr %51, i32 0, i32 23
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 2048
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load volatile i32, ptr %54, align 4
  %60 = and i32 %59, 4096
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %136, label %68

62:                                               ; preds = %53, %48, %41
  %63 = getelementptr i8, ptr %3, i32 2988
  %64 = tail call ptr @sta_info_get(ptr noundef %4, ptr noundef %63) #16
  br label %65

65:                                               ; preds = %62, %39, %31
  %66 = phi ptr [ %64, %62 ], [ %40, %39 ], [ %32, %31 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %136, label %68

68:                                               ; preds = %65, %58
  %69 = phi ptr [ %66, %65 ], [ %51, %58 ]
  %70 = load i32, ptr %13, align 8
  %71 = getelementptr inbounds %struct.sta_info, ptr %69, i32 0, i32 46
  %72 = icmp eq i32 %70, 4
  br i1 %72, label %73, label %78

73:                                               ; preds = %68, %19
  %74 = phi ptr [ %20, %19 ], [ %71, %68 ]
  %75 = getelementptr i8, ptr %3, i32 2588
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 -1408
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi ptr [ %74, %73 ], [ %71, %68 ]
  %80 = phi ptr [ %77, %73 ], [ %4, %68 ]
  %81 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %80, i32 0, i32 8
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 32
  %84 = icmp eq i32 %83, 0
  %85 = load i1, ptr @drv_net_fill_forward_path.__already_done, align 1
  %86 = xor i1 %85, true
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %94, !prof !10

88:                                               ; preds = %78
  store i1 true, ptr @drv_net_fill_forward_path.__already_done, align 1
  %89 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %80, i32 0, i32 6
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, null
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %80, i32 0, i32 10
  %93 = select i1 %91, ptr %92, ptr %90
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1498, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %93, i32 noundef %82) #16
  br label %94

94:                                               ; preds = %88, %78
  br i1 %84, label %136, label %95

95:                                               ; preds = %94
  %96 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_net_fill_forward_path, i32 0, i32 1), align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = tail call ptr @llvm.thread.pointer() #16
  %100 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %101 = load i32, ptr %100, align 8
  %102 = lshr i32 %101, 5
  %103 = getelementptr i32, ptr @__cpu_online_mask, i32 %102
  %104 = load volatile i32, ptr %103, align 4
  %105 = and i32 %101, 31
  %106 = shl nuw i32 1, %105
  %107 = and i32 %106, %104
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %98
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  %110 = tail call i32 @__traceiter_drv_net_fill_forward_path(ptr noundef null, ptr noundef %6, ptr noundef %80, ptr noundef %79) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  br label %111

111:                                              ; preds = %109, %98, %95
  %112 = load ptr, ptr %7, align 4
  %113 = getelementptr inbounds %struct.ieee80211_ops, ptr %112, i32 0, i32 109
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %80, i32 0, i32 58
  %118 = tail call i32 %114(ptr noundef %6, ptr noundef %117, ptr noundef %79, ptr noundef %0, ptr noundef %1) #16
  br label %119

119:                                              ; preds = %116, %111
  %120 = phi i32 [ %118, %116 ], [ -95, %111 ]
  %121 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = tail call ptr @llvm.thread.pointer() #16
  %125 = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 2
  %126 = load i32, ptr %125, align 8
  %127 = lshr i32 %126, 5
  %128 = getelementptr i32, ptr @__cpu_online_mask, i32 %127
  %129 = load volatile i32, ptr %128, align 4
  %130 = and i32 %126, 31
  %131 = shl nuw i32 1, %130
  %132 = and i32 %131, %129
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %123
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !30
  %135 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %6, i32 noundef %120) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  br label %136

136:                                              ; preds = %134, %123, %119, %94, %65, %58, %33, %25, %21, %12
  %137 = phi i32 [ -2, %12 ], [ -2, %58 ], [ -2, %65 ], [ -2, %33 ], [ -2, %21 ], [ -2, %25 ], [ -5, %94 ], [ %120, %119 ], [ %120, %123 ], [ %120, %134 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  br label %138

138:                                              ; preds = %136, %2
  %139 = phi i32 [ %137, %136 ], [ -95, %2 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_check_concurrent_iface(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @rtnl_is_locked() #16
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @ieee80211_check_concurrent_iface.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %2
  store i1 true, ptr @ieee80211_check_concurrent_iface.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 247) #16
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 62
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %90, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %17 = icmp eq i32 %1, 1
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  %19 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2, i32 4
  %20 = icmp eq i32 %1, 6
  %21 = icmp eq i32 %1, 10
  %22 = icmp eq i32 %1, 3
  %23 = icmp ne i32 %1, 4
  %24 = icmp eq i32 %1, 4
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 49
  br label %26

26:                                               ; preds = %87, %15
  %27 = phi ptr [ %13, %15 ], [ %88, %87 ]
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %87, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %27, i32 0, i32 9
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %87, label %34

34:                                               ; preds = %29
  %35 = load i32, ptr %16, align 8
  switch i32 %35, label %40 [
    i32 11, label %36
    i32 6, label %44
  ]

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %27, i32 0, i32 58
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, 6
  br i1 %39, label %44, label %93

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %27, i32 0, i32 58
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, 11
  br i1 %43, label %93, label %44

44:                                               ; preds = %40, %36, %34
  br i1 %17, label %45, label %49

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %27, i32 0, i32 58
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %93, label %49

49:                                               ; preds = %45, %44
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %27, i32 0, i32 58
  %51 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %27, i32 0, i32 58, i32 4
  %52 = load i8, ptr %51, align 1, !range !15
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %93

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %27, i32 0, i32 58, i32 2
  %56 = load i32, ptr %18, align 4
  %57 = load i32, ptr %55, align 4
  %58 = xor i32 %57, %56
  %59 = load i16, ptr %19, align 2
  %60 = getelementptr %struct.ieee80211_sub_if_data, ptr %27, i32 0, i32 58, i32 2, i32 4
  %61 = load i16, ptr %60, align 2
  %62 = xor i16 %61, %59
  %63 = zext i16 %62 to i32
  %64 = or i32 %58, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %54
  %67 = load i32, ptr %50, align 8
  %68 = icmp eq i32 %67, 6
  %69 = or i1 %20, %68
  %70 = or i1 %21, %69
  %71 = icmp eq i32 %67, 10
  %72 = or i1 %71, %70
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = icmp eq i32 %67, 4
  %75 = and i1 %22, %74
  br i1 %75, label %87, label %76

76:                                               ; preds = %73
  %77 = add i32 %67, -5
  %78 = icmp ult i32 %77, -2
  %79 = select i1 %23, i1 true, i1 %78
  br i1 %79, label %93, label %83

80:                                               ; preds = %66
  %81 = icmp eq i32 %67, 3
  %82 = select i1 %24, i1 %81, i1 false
  br i1 %82, label %85, label %87

83:                                               ; preds = %76
  %84 = icmp eq i32 %67, 3
  br i1 %84, label %85, label %87

85:                                               ; preds = %83, %80
  %86 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %27, i32 0, i32 57
  store ptr %86, ptr %25, align 4
  br label %87

87:                                               ; preds = %85, %83, %80, %73, %54, %29, %26
  %88 = load ptr, ptr %27, align 8
  %89 = icmp eq ptr %88, %12
  br i1 %89, label %90, label %26

90:                                               ; preds = %87, %11
  %91 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %91) #16
  %92 = tail call i32 @ieee80211_check_combinations(ptr noundef %0, ptr noundef null, i32 noundef 0, i8 noundef zeroext 0) #16
  tail call void @mutex_unlock(ptr noundef %91) #16
  br label %93

93:                                               ; preds = %90, %76, %49, %45, %40, %36
  %94 = phi i32 [ %92, %90 ], [ -76, %76 ], [ -16, %49 ], [ -16, %45 ], [ -16, %36 ], [ -16, %40 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_check_combinations(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_select_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hw_addr_sync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_fetch_sw_netstats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_net_fill_forward_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_subif_start_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_check_fast_rx_iface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_config_iface_filter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_process_tdls_channel_switch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ibss_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ocb_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_process_addba_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_process_addba_resp(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_process_delba(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vht_handle_opmode(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_process_mu_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_s1g_rx_twt_action(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_rx_queued_ext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_stop_rx_ba_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_rx_queued_mgmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ibss_rx_queued_mgmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_s1g_status_twt_action(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_vif_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_change_interface(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_vif_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_keys(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_destroy_frag_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_recalc_smps_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1052
  tail call void @ieee80211_recalc_smps(ptr noundef %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_csa_finalize_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_color_change_finalize_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_setup_sdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ocb_setup_sdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ibss_setup_sdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_smps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_monitor_start_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @ieee80211_monitor_select_queue(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 1764
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 11
  %8 = load i16, ptr %7, align 4
  %9 = icmp ult i16 %8, 4
  br i1 %9, label %31, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(48) %11, i8 0, i32 48, i1 false)
  %12 = tail call zeroext i1 @ieee80211_parse_tx_radiotap(ptr noundef %1, ptr noundef %0) #16
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %15, i32 0, i32 2
  %17 = load i16, ptr %16, align 1
  %18 = zext i16 %17 to i32
  %19 = getelementptr i8, ptr %15, i32 %18
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = add nuw nsw i32 %18, 2
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %13
  %25 = load i16, ptr %19, align 2
  %26 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %25) #20
  %27 = add i32 %26, %18
  %28 = icmp ult i32 %21, %27
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = tail call zeroext i16 @ieee80211_select_queue_80211(ptr noundef %4, ptr noundef %1, ptr noundef %19) #16
  br label %31

31:                                               ; preds = %29, %24, %13, %10, %3
  %32 = phi i16 [ %30, %29 ], [ 0, %3 ], [ 0, %10 ], [ 0, %24 ], [ 0, %13 ]
  ret i16 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_parse_tx_radiotap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_select_queue_80211(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight64(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_roc_purge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_mgd_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ibss_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hw_addr_unsync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_cac_event(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_free_nan_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_txq_remove_vlan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_clear_tx_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sta_info_flush(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @netdev_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #15 {
  %4 = load ptr, ptr %2, align 4
  %5 = icmp eq i32 %1, 11
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 70
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 52
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr @mac80211_wiphy_privid, align 4
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %4, i32 1776
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %19, ptr noundef align 64 dereferenceable(16) %4, i32 16, i1 false)
  br label %20

20:                                               ; preds = %18, %13, %10, %6, %3
  %21 = phi i32 [ 1, %18 ], [ 0, %3 ], [ 0, %10 ], [ 0, %6 ], [ 0, %13 ]
  ret i32 %21
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i48 @llvm.bswap.i48(i48) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readnone willreturn }

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
!8 = !{i64 2149381511}
!9 = !{i64 2149381728}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2159379528}
!12 = !{i64 2159379708}
!13 = !{i64 2157494393}
!14 = !{i64 2157494545}
!15 = !{i8 0, i8 2}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2159659253}
!18 = !{i64 2157775724}
!19 = !{i64 2157775964}
!20 = !{i64 2159677855}
!21 = !{i64 2150488030}
!22 = !{i64 814135, i64 2148304106, i64 2148304132, i64 2148304179, i64 2148304201, i64 2148304229, i64 2148304249}
!23 = !{i64 2148315521, i64 2148315547, i64 2148315576, i64 2148315610, i64 2148315641, i64 2148315664}
!24 = !{i32 0, i32 33}
!25 = !{!"auto-init"}
!26 = !{i64 2148317878, i64 2148317904, i64 2148317933, i64 2148317967, i64 2148317998, i64 2148318021}
!27 = !{i64 2148776965}
!28 = !{i64 2159456278}
!29 = !{i64 2159456474}
!30 = !{i64 2157507263}
!31 = !{i64 2157507423}
