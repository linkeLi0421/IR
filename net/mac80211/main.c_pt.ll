; ModuleID = '/llk/IR/net/mac80211/main.c_pt.bc'
source_filename = "../net/mac80211/main.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_restart_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_restart_hw\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_restart_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_alloc_hw_nm:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_alloc_hw_nm\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_alloc_hw_nm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_register_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_register_hw\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_register_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_unregister_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_unregister_hw\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_unregister_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_free_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_free_hw\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_free_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_txrx_stypes = type { i16, i16 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.141, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.141 = type { i32, i16 }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.sk_buff_head = type { %union.anon.69, i32, %struct.spinlock }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { ptr, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.153, i32 }
%union.anon.153 = type { ptr }
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
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.172, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%union.anon.172 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.143, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.143 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.144] }
%struct.anon.144 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.140, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
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
%struct.anon.140 = type { i64, i64, i8 }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.sk_buff = type { %union.anon.41, %union.anon.44, %union.anon.45, [48 x i8], %union.anon.46, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.48, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, ptr, %union.anon.43 }
%union.anon.43 = type { ptr }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.50, i32, i32, i32, i16, i16, %union.anon.52, %union.anon.53, %union.anon.54, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.50 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i16 }
%struct.vif_params = type { i32, i32, [6 x i8], ptr, ptr }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.138 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.138 = type { ptr, i32 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.ieee80211_cipher_scheme = type { i32, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.84, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.101, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.84 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ref_tracker_dir = type {}
%union.anon.101 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.in_device = type { ptr, %struct.netdevice_tracker, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.inet6_ifaddr = type { %struct.in6_addr, i32, i32, i32, i32, %struct.refcount_struct, %struct.spinlock, i32, i32, i8, i8, i16, i64, i32, i32, %struct.delayed_work, ptr, ptr, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, %struct.callback_head, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.62 }
%union.anon.62 = type { [4 x i32] }

@.str = private unnamed_addr constant [20 x i8] c"net/mac80211/main.c\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Hardware restart was requested\0A\00", align 1
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_ieee80211_restart_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_restart_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_restart_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_restart_hw to i32), ptr @__kstrtab_ieee80211_restart_hw, ptr @__kstrtabns_ieee80211_restart_hw }, section "___ksymtab+ieee80211_restart_hw", align 4
@mac80211_config_ops = external dso_local constant %struct.cfg80211_ops, align 4
@ieee80211_default_mgmt_stypes = internal constant [13 x %struct.ieee80211_txrx_stypes] [%struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 -1, i16 14352 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 10256 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 15381 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 15381 }, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 -1, i16 14336 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 8208 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 15381 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 8208 }, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer], align 2
@mac80211_wiphy_privid = external dso_local local_unnamed_addr constant ptr, align 4
@mac80211_ht_capa_mod_mask = internal constant %struct.ieee80211_ht_cap <{ i16 19427, i8 31, %struct.ieee80211_mcs_info { [10 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", i16 0, i8 0, [3 x i8] zeroinitializer }, i16 0, i32 0, i8 0 }>, align 1
@mac80211_vht_capa_mod_mask = internal constant %struct.ieee80211_vht_cap { i32 864034800, %struct.ieee80211_vht_mcs_info { i16 -1, i16 0, i16 -1, i16 0 } }, align 1
@ieee80211_alloc_hw_nm.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"&local->iflist_mtx\00", align 1
@ieee80211_alloc_hw_nm.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"&local->mtx\00", align 1
@ieee80211_alloc_hw_nm.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"&local->key_mtx\00", align 1
@ieee80211_alloc_hw_nm.__key.7 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"&local->chanctx_mtx\00", align 1
@__kstrtab_ieee80211_alloc_hw_nm = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_alloc_hw_nm = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_alloc_hw_nm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm to i32), ptr @__kstrtab_ieee80211_alloc_hw_nm, ptr @__kstrtabns_ieee80211_alloc_hw_nm }, section "___ksymtab+ieee80211_alloc_hw_nm", align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Failed to initialize rate control algorithm\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"copying sband (band %d) due to VHT EXT NSS BW flag\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"wlan%d\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Failed to add default virtual iface\0A\00", align 1
@__kstrtab_ieee80211_register_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_register_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_register_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_register_hw to i32), ptr @__kstrtab_ieee80211_register_hw, ptr @__kstrtabns_ieee80211_register_hw }, section "___ksymtab+ieee80211_register_hw", align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"skb_queue not empty\0A\00", align 1
@__kstrtab_ieee80211_unregister_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_unregister_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_unregister_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_unregister_hw to i32), ptr @__kstrtab_ieee80211_unregister_hw, ptr @__kstrtabns_ieee80211_unregister_hw }, section "___ksymtab+ieee80211_unregister_hw", align 4
@__kstrtab_ieee80211_free_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_free_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_free_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_free_hw to i32), ptr @__kstrtab_ieee80211_free_hw, ptr @__kstrtabns_ieee80211_free_hw }, section "___ksymtab+ieee80211_free_hw", align 4
@__UNIQUE_ID_description940 = internal constant [34 x i8] c"description=IEEE 802.11 subsystem\00", section ".modinfo", align 1
@__UNIQUE_ID_license941 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__tracepoint_drv_prepare_multicast = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_drv_return_u64 = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_configure_filter = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@.str.17 = private unnamed_addr constant [52 x i8] c"control:%d.%03d MHz width:%d center: %d.%03d/%d MHz\00", align 1
@__tracepoint_drv_config = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@drv_bss_info_changed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@drv_bss_info_changed.__already_done.19 = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_bss_info_changed.__already_done.20 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@__tracepoint_drv_bss_info_changed = external dso_local global %struct.tracepoint, align 4
@__tracepoint_api_restart_hw = external dso_local global %struct.tracepoint, align 4
@.str.22 = private unnamed_addr constant [42 x i8] c"%s called with hardware scan in progress\0A\00", align 1
@__func__.ieee80211_restart_work = private unnamed_addr constant [23 x i8] c"ieee80211_restart_work\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"mac80211: Packet is of unknown type %d\0A\00", align 1
@ieee80211_init_cipher_suites.cipher_suites = internal constant [11 x i32] [i32 1027073, i32 1027077, i32 1027074, i32 1027076, i32 1027082, i32 1027080, i32 1027081, i32 1027078, i32 1027085, i32 1027083, i32 1027084], align 4
@__tracepoint_drv_ipv6_addr_change = external dso_local global %struct.tracepoint, align 4
@ieee80211_free_ack_frame.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"Have pending ack frames!\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_description940, ptr @__UNIQUE_ID_license941, ptr @__ksymtab_ieee80211_alloc_hw_nm, ptr @__ksymtab_ieee80211_free_hw, ptr @__ksymtab_ieee80211_register_hw, ptr @__ksymtab_ieee80211_restart_hw, ptr @__ksymtab_ieee80211_unregister_hw], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_configure_filter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 57
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 14
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 67
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load volatile i32, ptr %11, align 4
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15, %10, %1
  %20 = or i32 %6, 16
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %20, %19 ], [ %6, %15 ]
  %23 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 21
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 22
  %28 = load i8, ptr %27, align 4, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26, %21
  %31 = or i32 %22, 256
  store i32 %31, ptr %2, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %31, %30 ], [ %22, %26 ]
  %34 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 16
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = or i32 %33, 4
  %38 = select i1 %36, i32 %33, i32 %37
  %39 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 17
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 0
  %42 = or i32 %38, 8
  %43 = select i1 %41, i32 %38, i32 %42
  %44 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 18
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  %47 = or i32 %43, 32
  %48 = select i1 %46, i32 %43, i32 %47
  %49 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 19
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 0
  %52 = or i32 %48, 64
  %53 = select i1 %51, i32 %48, i32 %52
  %54 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 20
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  %57 = or i32 %53, 128
  %58 = select i1 %56, i32 %53, i32 %57
  %59 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 23
  %60 = load i8, ptr %59, align 1, !range !8
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %32
  %63 = or i32 %58, 512
  store i32 %63, ptr %2, align 4
  br label %64

64:                                               ; preds = %62, %32
  %65 = phi i32 [ %63, %62 ], [ %58, %32 ]
  %66 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 27
  tail call void @_raw_spin_lock_bh(ptr noundef %66) #11
  %67 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 24
  %68 = load i32, ptr %67, align 8
  %69 = xor i32 %65, %68
  %70 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 29
  %71 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 29, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_prepare_multicast, i32 0, i32 1), align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %64
  %76 = tail call ptr @llvm.thread.pointer() #11
  %77 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %78 = load i32, ptr %77, align 8
  %79 = lshr i32 %78, 5
  %80 = getelementptr i32, ptr @__cpu_online_mask, i32 %79
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %78, 31
  %83 = shl nuw i32 1, %82
  %84 = and i32 %83, %81
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %75
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %87 = tail call i32 @__traceiter_drv_prepare_multicast(ptr noundef null, ptr noundef %0, i32 noundef %72) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %88

88:                                               ; preds = %86, %75, %64
  %89 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.ieee80211_ops, ptr %90, i32 0, i32 13
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = tail call i64 %92(ptr noundef %0, ptr noundef %70) #11
  br label %96

96:                                               ; preds = %94, %88
  %97 = phi i64 [ %95, %94 ], [ 0, %88 ]
  %98 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_u64, i32 0, i32 1), align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %96
  %101 = tail call ptr @llvm.thread.pointer() #11
  %102 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %103 = load i32, ptr %102, align 8
  %104 = lshr i32 %103, 5
  %105 = getelementptr i32, ptr @__cpu_online_mask, i32 %104
  %106 = load volatile i32, ptr %105, align 4
  %107 = and i32 %103, 31
  %108 = shl nuw i32 1, %107
  %109 = and i32 %108, %106
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %100
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %112 = tail call i32 @__traceiter_drv_return_u64(ptr noundef null, ptr noundef %0, i64 noundef %97) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  br label %113

113:                                              ; preds = %111, %100, %96
  tail call void @_raw_spin_unlock_bh(ptr noundef %66) #11
  %114 = or i32 %65, -2147483648
  store i32 %114, ptr %2, align 4
  %115 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_configure_filter, i32 0, i32 1), align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %113
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %129 = call i32 @__traceiter_drv_configure_filter(ptr noundef null, ptr noundef %0, i32 noundef %69, ptr noundef nonnull %2, i64 noundef %97) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %130

130:                                              ; preds = %128, %117, %113
  %131 = load ptr, ptr %89, align 4
  %132 = getelementptr inbounds %struct.ieee80211_ops, ptr %131, i32 0, i32 14
  %133 = load ptr, ptr %132, align 4
  call void %133(ptr noundef %0, i32 noundef %69, ptr noundef nonnull %2, i64 noundef %97) #11
  %134 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %130
  %137 = tail call ptr @llvm.thread.pointer() #11
  %138 = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 2
  %139 = load i32, ptr %138, align 8
  %140 = lshr i32 %139, 5
  %141 = getelementptr i32, ptr @__cpu_online_mask, i32 %140
  %142 = load volatile i32, ptr %141, align 4
  %143 = and i32 %139, 31
  %144 = shl nuw i32 1, %143
  %145 = and i32 %144, %142
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %136
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %148 = call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  br label %149

149:                                              ; preds = %147, %136, %130
  %150 = load i32, ptr %2, align 4
  %151 = icmp sgt i32 %150, -1
  br i1 %151, label %154, label %152, !prof !17

152:                                              ; preds = %149
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef null) #11
  %153 = load i32, ptr %2, align 4
  br label %154

154:                                              ; preds = %152, %149
  %155 = phi i32 [ %153, %152 ], [ %150, %149 ]
  %156 = and i32 %155, 2147483647
  store i32 %156, ptr %67, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_hw_config(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.cfg80211_chan_def, align 4
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 26
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %184

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #11
  %8 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 20, i1 false) #11
  %9 = load i32, ptr %0, align 8
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 72
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef align 8 dereferenceable(28) %10, i32 28, i1 false) #11
  br label %27

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 87
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  store ptr %16, ptr %3, align 4
  %19 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 1
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ieee80211_channel, ptr %16, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %8, align 4
  %22 = getelementptr inbounds %struct.ieee80211_channel, ptr %16, i32 0, i32 2
  %23 = load i16, ptr %22, align 4
  %24 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 5
  store i16 %23, ptr %24, align 4
  br label %27

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef align 8 dereferenceable(28) %26, i32 28, i1 false) #11
  br label %27

27:                                               ; preds = %25, %18, %13
  %28 = call zeroext i1 @cfg80211_chandef_valid(ptr noundef nonnull %3) #11
  br i1 %28, label %44, label %29, !prof !17

29:                                               ; preds = %27
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr inbounds %struct.ieee80211_channel, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ieee80211_channel, ptr %30, i32 0, i32 2
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %8, align 4
  %39 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 5
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef nonnull @.str.17, i32 noundef %32, i32 noundef %35, i32 noundef %37, i32 noundef %38, i32 noundef %41, i32 noundef %43) #11
  br label %44

44:                                               ; preds = %29, %27
  %45 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86
  %46 = load ptr, ptr %3, align 4
  %47 = load ptr, ptr %45, align 4
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = load i32, ptr %8, align 4
  %57 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 5
  %62 = load i16, ptr %61, align 4
  %63 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86, i32 5
  %64 = load i16, ptr %63, align 4
  %65 = icmp eq i16 %62, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %66, %60, %55, %49, %44
  %73 = load i32, ptr %0, align 8
  %74 = or i32 %73, 8
  br label %78

75:                                               ; preds = %66
  %76 = load i32, ptr %0, align 8
  %77 = and i32 %76, -9
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i32 [ %74, %72 ], [ %77, %75 ]
  store i32 %79, ptr %0, align 8
  %80 = xor i32 %79, %9
  %81 = and i32 %80, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 7
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, %47
  br i1 %86, label %87, label %111

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 7, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 7, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 7, i32 5
  %101 = load i16, ptr %100, align 4
  %102 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86, i32 5
  %103 = load i16, ptr %102, align 4
  %104 = icmp eq i16 %101, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 7, i32 3
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %105, %99, %93, %87, %83, %78
  %112 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %112, ptr noundef nonnull align 4 dereferenceable(28) %3, i32 28, i1 false) #11
  %113 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 7, i32 1
  %114 = load i32, ptr %113, align 4
  br label %115

115:                                              ; preds = %111, %105
  %116 = phi i32 [ %114, %111 ], [ %89, %105 ]
  %117 = phi i32 [ 64, %111 ], [ 0, %105 ]
  switch i32 %116, label %120 [
    i32 6, label %118
    i32 7, label %118
    i32 0, label %118
  ]

118:                                              ; preds = %115, %115, %115
  %119 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 9
  store i32 2, ptr %119, align 4
  br label %128

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 9
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 100
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %128, label %126

126:                                              ; preds = %120
  store i32 %124, ptr %121, align 4
  %127 = or i32 %117, 2
  br label %128

128:                                              ; preds = %126, %120, %118
  %129 = phi i32 [ %127, %126 ], [ %117, %120 ], [ %117, %118 ]
  %130 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 1
  %131 = load i32, ptr %130, align 4
  switch i32 %131, label %146 [
    i32 6, label %132
    i32 7, label %139
  ]

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.ieee80211_channel, ptr %46, i32 0, i32 7
  %134 = load i32, ptr %133, align 4
  %135 = add i32 %134, -6
  %136 = getelementptr inbounds %struct.ieee80211_channel, ptr %46, i32 0, i32 6
  %137 = load i32, ptr %136, align 4
  %138 = call i32 @llvm.smin.i32(i32 %135, i32 %137) #11
  br label %149

139:                                              ; preds = %128
  %140 = getelementptr inbounds %struct.ieee80211_channel, ptr %46, i32 0, i32 7
  %141 = load i32, ptr %140, align 4
  %142 = add i32 %141, -3
  %143 = getelementptr inbounds %struct.ieee80211_channel, ptr %46, i32 0, i32 6
  %144 = load i32, ptr %143, align 4
  %145 = call i32 @llvm.smin.i32(i32 %142, i32 %144) #11
  br label %149

146:                                              ; preds = %128
  %147 = getelementptr inbounds %struct.ieee80211_channel, ptr %46, i32 0, i32 6
  %148 = load i32, ptr %147, align 4
  br label %149

149:                                              ; preds = %146, %139, %132
  %150 = phi i32 [ %148, %146 ], [ %145, %139 ], [ %138, %132 ]
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !18
  %151 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %152 = load volatile ptr, ptr %151, align 8
  %153 = icmp eq ptr %152, %151
  br i1 %153, label %174, label %154

154:                                              ; preds = %170, %149
  %155 = phi ptr [ %172, %170 ], [ %152, %149 ]
  %156 = phi i32 [ %171, %170 ], [ %150, %149 ]
  %157 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %155, i32 0, i32 58, i32 9
  %158 = load volatile ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %170, label %160

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %155, i32 0, i32 58
  %162 = load i32, ptr %161, align 8
  %163 = icmp eq i32 %162, 4
  br i1 %163, label %170, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %155, i32 0, i32 58, i32 1, i32 42
  %166 = load i32, ptr %165, align 8
  %167 = icmp eq i32 %166, -2147483648
  %168 = call i32 @llvm.smin.i32(i32 %156, i32 %166) #11
  %169 = select i1 %167, i32 %156, i32 %168
  br label %170

170:                                              ; preds = %164, %160, %154
  %171 = phi i32 [ %156, %160 ], [ %156, %154 ], [ %169, %164 ]
  %172 = load volatile ptr, ptr %155, align 8
  %173 = icmp eq ptr %172, %151
  br i1 %173, label %174, label %154

174:                                              ; preds = %170, %149
  %175 = phi i32 [ %150, %149 ], [ %171, %170 ]
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %176 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 1
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, %175
  br i1 %178, label %181, label %179

179:                                              ; preds = %174
  %180 = or i32 %129, 32
  store i32 %175, ptr %176, align 4
  br label %181

181:                                              ; preds = %179, %174
  %182 = phi i32 [ %180, %179 ], [ %129, %174 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #11
  %183 = or i32 %182, %1
  br label %186

184:                                              ; preds = %2
  %185 = and i32 %1, -97
  br label %186

186:                                              ; preds = %184, %181
  %187 = phi i32 [ %185, %184 ], [ %183, %181 ]
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %230, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 13
  %191 = load i32, ptr %190, align 8
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %230, label %193

193:                                              ; preds = %189
  %194 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_config, i32 0, i32 1), align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %193
  %197 = tail call ptr @llvm.thread.pointer() #11
  %198 = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 2
  %199 = load i32, ptr %198, align 8
  %200 = lshr i32 %199, 5
  %201 = getelementptr i32, ptr @__cpu_online_mask, i32 %200
  %202 = load volatile i32, ptr %201, align 4
  %203 = and i32 %199, 31
  %204 = shl nuw i32 1, %203
  %205 = and i32 %204, %202
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %196
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %208 = call i32 @__traceiter_drv_config(ptr noundef null, ptr noundef %0, i32 noundef %187) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  br label %209

209:                                              ; preds = %207, %196, %193
  %210 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr inbounds %struct.ieee80211_ops, ptr %211, i32 0, i32 9
  %213 = load ptr, ptr %212, align 4
  %214 = call i32 %213(ptr noundef %0, i32 noundef %187) #11
  %215 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %209
  %218 = tail call ptr @llvm.thread.pointer() #11
  %219 = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 2
  %220 = load i32, ptr %219, align 8
  %221 = lshr i32 %220, 5
  %222 = getelementptr i32, ptr @__cpu_online_mask, i32 %221
  %223 = load volatile i32, ptr %222, align 4
  %224 = and i32 %220, 31
  %225 = shl nuw i32 1, %224
  %226 = and i32 %225, %223
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %217
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %229 = call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %214) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !23
  br label %230

230:                                              ; preds = %228, %217, %209, %189, %186
  %231 = phi i32 [ 0, %189 ], [ 0, %186 ], [ %214, %209 ], [ %214, %217 ], [ %214, %228 ]
  ret i32 %231
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %89, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %89, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1
  %12 = and i32 %1, 768
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = add i32 %8, -1
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 31) #11
  switch i32 %16, label %17 [
    i32 1, label %20
    i32 0, label %20
    i32 3, label %20
    i32 5, label %20
  ]

17:                                               ; preds = %14
  %18 = load i1, ptr @drv_bss_info_changed.__already_done, align 1
  br i1 %18, label %89, label %19, !prof !17

19:                                               ; preds = %17
  store i1 true, ptr @drv_bss_info_changed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 162, i32 noundef 9, ptr noundef null) #11
  br label %89

20:                                               ; preds = %14, %14, %14, %14, %10
  switch i32 %8, label %35 [
    i32 10, label %28
    i32 12, label %28
    i32 6, label %21
  ]

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 5
  %23 = load i8, ptr %22, align 8, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = and i32 %1, 262144
  %27 = icmp eq i32 %26, 0
  br label %28

28:                                               ; preds = %25, %20, %20
  %29 = phi i1 [ true, %20 ], [ %27, %25 ], [ true, %20 ]
  %30 = load i1, ptr @drv_bss_info_changed.__already_done.19, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !24

33:                                               ; preds = %28
  store i1 true, ptr @drv_bss_info_changed.__already_done.19, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 169, i32 noundef 9, ptr noundef null) #11
  br label %89

34:                                               ; preds = %28
  br i1 %29, label %89, label %35

35:                                               ; preds = %34, %21, %20
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 8
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 32
  %39 = icmp eq i32 %38, 0
  %40 = load i1, ptr @drv_bss_info_changed.__already_done.20, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %49, !prof !24

43:                                               ; preds = %35
  store i1 true, ptr @drv_bss_info_changed.__already_done.20, align 1
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  %47 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %48 = select i1 %46, ptr %47, ptr %45
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 172, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %48, i32 noundef %37) #11
  br label %49

49:                                               ; preds = %43, %35
  br i1 %39, label %89, label %50

50:                                               ; preds = %49
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_bss_info_changed, i32 0, i32 1), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = tail call ptr @llvm.thread.pointer() #11
  %55 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 5
  %58 = getelementptr i32, ptr @__cpu_online_mask, i32 %57
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %56, 31
  %61 = shl nuw i32 1, %60
  %62 = and i32 %61, %59
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %53
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  %65 = tail call i32 @__traceiter_drv_bss_info_changed(ptr noundef null, ptr noundef %4, ptr noundef %0, ptr noundef %11, i32 noundef %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  br label %66

66:                                               ; preds = %64, %53, %50
  %67 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 8
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ieee80211_ops, ptr %68, i32 0, i32 10
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  tail call void %70(ptr noundef %4, ptr noundef %7, ptr noundef %11, i32 noundef %1) #11
  br label %73

73:                                               ; preds = %72, %66
  %74 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = tail call ptr @llvm.thread.pointer() #11
  %78 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 8
  %80 = lshr i32 %79, 5
  %81 = getelementptr i32, ptr @__cpu_online_mask, i32 %80
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %79, 31
  %84 = shl nuw i32 1, %83
  %85 = and i32 %84, %82
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %76
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %88 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %4) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  br label %89

89:                                               ; preds = %87, %76, %73, %49, %34, %33, %19, %17, %6, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @ieee80211_reset_erp_info(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 14
  store i8 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 15
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 16
  store i8 0, ptr %4, align 2
  ret i32 14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_restart_hw(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_restart_hw, i32 0, i32 1), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  %16 = tail call i32 @__traceiter_api_restart_hw(ptr noundef null, ptr noundef %0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  br label %17

17:                                               ; preds = %15, %4, %1
  %18 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.1) #12
  tail call void @ieee80211_stop_queues_by_reason(ptr noundef %0, i32 noundef 65535, i32 noundef 4, i1 noundef zeroext false) #11
  %21 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 36
  store i8 1, ptr %21, align 2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %22 = load ptr, ptr @system_freezable_wq, align 4
  %23 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 101
  %24 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %22, ptr noundef %23) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues_by_reason(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 14
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !24

30:                                               ; preds = %26, %22, %18, %14, %10, %6, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 554, i32 noundef 9, ptr noundef null) #11
  br label %275

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 35
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 31
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 32
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43, !prof !17

43:                                               ; preds = %39, %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 557, i32 noundef 9, ptr noundef null) #11
  br label %275

44:                                               ; preds = %39, %31
  %45 = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 69
  %46 = load ptr, ptr %45, align 4
  %47 = icmp ne ptr %46, null
  %48 = zext i1 %47 to i32
  %49 = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 70
  %50 = load ptr, ptr %49, align 4
  %51 = icmp ne ptr %50, null
  %52 = zext i1 %51 to i32
  %53 = add nuw nsw i32 %52, %48
  %54 = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 71
  %55 = load ptr, ptr %54, align 4
  %56 = icmp ne ptr %55, null
  %57 = zext i1 %56 to i32
  %58 = add nuw nsw i32 %53, %57
  %59 = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 72
  %60 = load ptr, ptr %59, align 4
  %61 = icmp ne ptr %60, null
  %62 = zext i1 %61 to i32
  %63 = add nuw nsw i32 %58, %62
  %64 = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 73
  %65 = load ptr, ptr %64, align 4
  %66 = icmp ne ptr %65, null
  %67 = zext i1 %66 to i32
  %68 = add nuw nsw i32 %63, %67
  switch i32 %68, label %69 [
    i32 5, label %70
    i32 0, label %70
  ]

69:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 564, i32 noundef 9, ptr noundef null) #11
  br label %275

70:                                               ; preds = %44, %44
  %71 = icmp eq i32 %68, 5
  %72 = zext i1 %71 to i8
  %73 = add i32 %0, 4704
  %74 = tail call ptr @wiphy_new_nm(ptr noundef nonnull @mac80211_config_ops, i32 noundef %73, ptr noundef %2) #11
  %75 = icmp eq ptr %74, null
  br i1 %75, label %275, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.wiphy, ptr %74, i32 0, i32 4
  store ptr @ieee80211_default_mgmt_stypes, ptr %77, align 4
  %78 = load ptr, ptr @mac80211_wiphy_privid, align 4
  %79 = getelementptr inbounds %struct.wiphy, ptr %74, i32 0, i32 52
  store ptr %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.wiphy, ptr %74, i32 0, i32 11
  %81 = load i32, ptr %80, align 8
  %82 = or i32 %81, 1310824
  store i32 %82, ptr %80, align 8
  br i1 %71, label %83, label %87

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 54
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %83, %76
  %88 = or i32 %81, 3407976
  store i32 %88, ptr %80, align 8
  br label %89

89:                                               ; preds = %87, %83
  %90 = phi i32 [ %88, %87 ], [ %82, %83 ]
  %91 = getelementptr inbounds %struct.wiphy, ptr %74, i32 0, i32 13
  %92 = load i32, ptr %91, align 32
  %93 = or i32 %92, 134316579
  store i32 %93, ptr %91, align 32
  %94 = getelementptr %struct.wiphy, ptr %74, i32 0, i32 14, i32 1
  %95 = load i8, ptr %94, align 1
  %96 = or i8 %95, 2
  store i8 %96, ptr %94, align 1
  %97 = getelementptr %struct.wiphy, ptr %74, i32 0, i32 14, i32 3
  %98 = load i8, ptr %97, align 1
  %99 = or i8 %98, 4
  store i8 %99, ptr %97, align 1
  %100 = getelementptr %struct.wiphy, ptr %74, i32 0, i32 14, i32 5
  %101 = load i8, ptr %100, align 1
  %102 = getelementptr %struct.wiphy, ptr %74, i32 0, i32 14, i32 6
  %103 = load i8, ptr %102, align 1
  %104 = or i8 %103, 1
  store i8 %104, ptr %102, align 1
  %105 = or i8 %101, -124
  store i8 %105, ptr %100, align 1
  %106 = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 21
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %89
  %110 = or i32 %92, 134316899
  store i32 %110, ptr %91, align 32
  %111 = or i8 %98, 100
  store i8 %111, ptr %97, align 1
  br label %112

112:                                              ; preds = %109, %89
  %113 = phi i8 [ %111, %109 ], [ %99, %89 ]
  %114 = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 17
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = or i32 %90, 256
  store i32 %118, ptr %80, align 8
  br label %119

119:                                              ; preds = %117, %112
  %120 = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 89
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = or i8 %113, 16
  store i8 %124, ptr %97, align 1
  br label %125

125:                                              ; preds = %123, %119
  %126 = getelementptr %struct.wiphy, ptr %74, i32 0, i32 14, i32 0
  %127 = load i8, ptr %126, align 1
  %128 = or i8 %127, 2
  store i8 %128, ptr %126, align 1
  %129 = getelementptr inbounds %struct.wiphy, ptr %74, i32 0, i32 17
  store i32 60, ptr %129, align 4
  %130 = getelementptr inbounds %struct.wiphy, ptr %74, i32 0, i32 85
  %131 = tail call i32 @sta_info_init(ptr noundef %130) #11
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %274

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.wiphy, ptr %74, i32 1, i32 11
  store ptr %74, ptr %134, align 8
  %135 = getelementptr %struct.wiphy, ptr %74, i32 6, i32 56, i32 11
  %136 = getelementptr inbounds %struct.wiphy, ptr %74, i32 1, i32 13
  store ptr %135, ptr %136, align 8
  %137 = getelementptr inbounds %struct.wiphy, ptr %74, i32 1, i32 56, i32 11, i32 16
  store ptr %1, ptr %137, align 4
  %138 = getelementptr inbounds %struct.ieee80211_local, ptr %130, i32 0, i32 26
  store i8 %72, ptr %138, align 1
  %139 = getelementptr inbounds %struct.wiphy, ptr %74, i32 1, i32 38
  store i8 7, ptr %139, align 1
  %140 = getelementptr inbounds %struct.wiphy, ptr %74, i32 1, i32 25
  store i16 1, ptr %140, align 4
  %141 = getelementptr inbounds %struct.ieee80211_hw, ptr %130, i32 0, i32 14
  store i8 1, ptr %141, align 1
  %142 = getelementptr inbounds %struct.ieee80211_hw, ptr %130, i32 0, i32 15
  store i8 0, ptr %142, align 2
  %143 = getelementptr inbounds %struct.wiphy, ptr %74, i32 1, i32 27
  store i16 64, ptr %143, align 4
  %144 = getelementptr inbounds %struct.ieee80211_hw, ptr %130, i32 0, i32 18
  store i16 64, ptr %144, align 2
  %145 = getelementptr inbounds %struct.ieee80211_hw, ptr %130, i32 0, i32 20
  store i8 -1, ptr %145, align 1
  %146 = getelementptr inbounds %struct.wiphy, ptr %74, i32 0, i32 34
  %147 = load i8, ptr %146, align 1
  %148 = getelementptr inbounds %struct.ieee80211_conf, ptr %130, i32 0, i32 5
  store i8 %147, ptr %148, align 1
  %149 = getelementptr inbounds %struct.wiphy, ptr %74, i32 0, i32 33
  %150 = load i8, ptr %149, align 4
  %151 = getelementptr inbounds %struct.wiphy, ptr %74, i32 1, i32 0, i32 3, i32 1
  store i8 %150, ptr %151, align 8
  %152 = getelementptr inbounds %struct.ieee80211_hw, ptr %130, i32 0, i32 21
  store i8 7, ptr %152, align 2
  %153 = getelementptr inbounds %struct.wiphy, ptr %74, i32 1, i32 29
  store i16 68, ptr %153, align 4
  %154 = getelementptr inbounds %struct.wiphy, ptr %74, i32 1, i32 35
  store i8 0, ptr %154, align 8
  %155 = getelementptr inbounds %struct.ieee80211_hw, ptr %130, i32 0, i32 26
  store i8 0, ptr %155, align 1
  %156 = getelementptr inbounds %struct.wiphy, ptr %74, i32 1, i32 38, i32 3
  store i32 2304, ptr %156, align 4
  %157 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 42
  store i32 -2147483648, ptr %157, align 8
  %158 = getelementptr inbounds %struct.wiphy, ptr %74, i32 0, i32 59
  store ptr @mac80211_ht_capa_mod_mask, ptr %158, align 8
  %159 = getelementptr inbounds %struct.wiphy, ptr %74, i32 0, i32 60
  store ptr @mac80211_vht_capa_mod_mask, ptr %159, align 4
  %160 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 56, i32 10, i32 2, i32 1
  %161 = getelementptr %struct.ieee80211_local, ptr %130, i32 0, i32 113, i32 7
  store i8 64, ptr %161, align 1
  %162 = getelementptr inbounds %struct.wiphy, ptr %74, i32 0, i32 47
  store ptr %160, ptr %162, align 16
  %163 = getelementptr inbounds %struct.wiphy, ptr %74, i32 0, i32 48
  store ptr %160, ptr %163, align 4
  %164 = getelementptr inbounds %struct.wiphy, ptr %74, i32 0, i32 49
  store i8 8, ptr %164, align 8
  %165 = getelementptr inbounds %struct.wiphy, ptr %74, i32 5, i32 56, i32 15
  store volatile ptr %165, ptr %165, align 4
  %166 = getelementptr inbounds %struct.wiphy, ptr %74, i32 5, i32 56, i32 16
  store ptr %165, ptr %166, align 4
  %167 = getelementptr inbounds %struct.wiphy, ptr %74, i32 5, i32 56, i32 17
  store volatile ptr %167, ptr %167, align 4
  %168 = getelementptr inbounds %struct.list_head, ptr %167, i32 0, i32 1
  store ptr %167, ptr %168, align 4
  %169 = getelementptr inbounds %struct.wiphy, ptr %74, i32 2, i32 56, i32 11, i32 12
  tail call void @__hw_addr_init(ptr noundef %169) #11
  %170 = getelementptr inbounds %struct.wiphy, ptr %74, i32 5, i32 56, i32 18
  tail call void @__mutex_init(ptr noundef %170, ptr noundef nonnull @.str.2, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key) #11
  %171 = getelementptr inbounds %struct.wiphy, ptr %74, i32 5, i32 56, i32 25
  tail call void @__mutex_init(ptr noundef %171, ptr noundef nonnull @.str.4, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.3) #11
  %172 = getelementptr inbounds %struct.wiphy, ptr %74, i32 5, i32 56, i32 21, i32 1
  tail call void @__mutex_init(ptr noundef %172, ptr noundef nonnull @.str.6, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.5) #11
  %173 = getelementptr inbounds %struct.wiphy, ptr %74, i32 2, i32 56, i32 11, i32 10, i32 1, i32 1
  store i32 0, ptr %173, align 8
  %174 = getelementptr inbounds %struct.wiphy, ptr %74, i32 2, i32 56, i32 14, i32 1
  store i32 0, ptr %174, align 4
  %175 = getelementptr inbounds %struct.ieee80211_local, ptr %130, i32 0, i32 12
  store i32 0, ptr %175, align 4
  %176 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 53
  %177 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 53, i32 1
  store ptr null, ptr %177, align 4
  %178 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 53, i32 2
  store ptr null, ptr %178, align 4
  %179 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 53, i32 4
  store volatile ptr %179, ptr %179, align 4
  %180 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 53, i32 5
  store ptr %179, ptr %180, align 4
  store i32 0, ptr %176, align 8
  %181 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 0, i32 7
  store i32 5000, ptr %181, align 8
  %182 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 1
  store i32 12000, ptr %182, align 4
  %183 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 2
  %184 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 3
  store ptr null, ptr %184, align 4
  %185 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 4
  store ptr null, ptr %185, align 4
  %186 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 6
  store volatile ptr %186, ptr %186, align 4
  %187 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 7
  store ptr %186, ptr %187, align 4
  store i32 0, ptr %183, align 8
  %188 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 10, i32 2
  store i32 5000, ptr %188, align 8
  %189 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 10, i32 2, i32 1
  store i32 12000, ptr %189, align 4
  %190 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 10, i32 3
  %191 = getelementptr %struct.ieee80211_local, ptr %130, i32 0, i32 4, i32 2, i32 1
  store ptr null, ptr %191, align 4
  %192 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 11
  store ptr null, ptr %192, align 4
  %193 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 11, i32 2
  store volatile ptr %193, ptr %193, align 4
  %194 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 11, i32 3
  store ptr %193, ptr %194, align 4
  store i32 0, ptr %190, align 8
  %195 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 11, i32 8, i32 0, i32 0, i32 2
  store i32 5000, ptr %195, align 8
  %196 = getelementptr %struct.ieee80211_local, ptr %130, i32 0, i32 4, i32 2, i32 10
  store i32 12000, ptr %196, align 4
  %197 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 11, i32 8, i32 0, i32 1
  %198 = getelementptr %struct.ieee80211_local, ptr %130, i32 0, i32 4, i32 3, i32 1
  store ptr null, ptr %198, align 4
  %199 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 11, i32 8, i32 1
  store ptr null, ptr %199, align 4
  %200 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 11, i32 8, i32 2
  store volatile ptr %200, ptr %200, align 4
  %201 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 11, i32 8, i32 3
  store ptr %200, ptr %201, align 4
  store i32 0, ptr %197, align 8
  %202 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 11, i32 11, i32 1, i32 1
  store i32 5000, ptr %202, align 8
  %203 = getelementptr %struct.wiphy, ptr %74, i32 1, i32 56, i32 11, i32 12
  store i32 12000, ptr %203, align 4
  %204 = getelementptr inbounds %struct.wiphy, ptr %74, i32 1, i32 56, i32 11, i32 13
  store i16 3, ptr %204, align 8
  %205 = getelementptr inbounds %struct.wiphy, ptr %74, i32 1, i32 56, i32 11, i32 14
  store i32 24000, ptr %205, align 4
  %206 = getelementptr inbounds %struct.wiphy, ptr %74, i32 1, i32 56, i32 11, i32 15
  store volatile i32 0, ptr %206, align 4
  %207 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 14, i32 4
  store volatile ptr %207, ptr %207, align 4
  %208 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 15
  store ptr %207, ptr %208, align 4
  %209 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 16
  tail call void @__mutex_init(ptr noundef %209, ptr noundef nonnull @.str.8, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.7) #11
  %210 = getelementptr inbounds %struct.wiphy, ptr %74, i32 5, i32 84, i32 2
  store i32 -32, ptr %210, align 8
  %211 = getelementptr inbounds %struct.wiphy, ptr %74, i32 5, i32 84, i32 6
  store volatile ptr %211, ptr %211, align 4
  %212 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6
  store ptr %211, ptr %212, align 4
  %213 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 0, i32 1
  store ptr @ieee80211_scan_work, ptr %213, align 4
  %214 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %214, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #11
  %215 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 45
  store i32 -32, ptr %215, align 8
  %216 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 46
  store volatile ptr %216, ptr %216, align 4
  %217 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 47
  store ptr %216, ptr %217, align 4
  %218 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 48
  store ptr @ieee80211_restart_work, ptr %218, align 4
  %219 = getelementptr inbounds %struct.wiphy, ptr %74, i32 2, i32 56, i32 11, i32 18
  store i32 -32, ptr %219, align 4
  %220 = getelementptr inbounds %struct.wiphy, ptr %74, i32 2, i32 56, i32 11, i32 19
  store volatile ptr %220, ptr %220, align 4
  %221 = getelementptr inbounds %struct.wiphy, ptr %74, i32 2, i32 56, i32 11, i32 20
  store ptr %220, ptr %221, align 4
  %222 = getelementptr inbounds %struct.wiphy, ptr %74, i32 2, i32 56, i32 11, i32 21
  store ptr @ieee80211_dfs_radar_detected_work, ptr %222, align 4
  %223 = getelementptr inbounds %struct.wiphy, ptr %74, i32 2, i32 56, i32 11, i32 10, i32 2
  store i32 -32, ptr %223, align 4
  %224 = getelementptr inbounds %struct.wiphy, ptr %74, i32 2, i32 56, i32 11, i32 11
  store volatile ptr %224, ptr %224, align 4
  %225 = getelementptr inbounds %struct.wiphy, ptr %74, i32 2, i32 56, i32 11, i32 11, i32 1
  store ptr %224, ptr %225, align 4
  %226 = getelementptr inbounds %struct.wiphy, ptr %74, i32 2, i32 56, i32 11, i32 11, i32 1, i32 1
  store ptr @ieee80211_reconfig_filter, ptr %226, align 4
  %227 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 44
  store i32 1, ptr %227, align 4
  %228 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 28
  store i32 -32, ptr %228, align 8
  %229 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 29
  store volatile ptr %229, ptr %229, align 4
  %230 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 30
  store ptr %229, ptr %230, align 4
  %231 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 31
  store ptr @ieee80211_dynamic_ps_enable_work, ptr %231, align 4
  %232 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 32
  store i32 -32, ptr %232, align 8
  %233 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 33
  store volatile ptr %233, ptr %233, align 4
  %234 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 35
  store ptr %233, ptr %234, align 4
  %235 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 36
  store ptr @ieee80211_dynamic_ps_disable_work, ptr %235, align 4
  %236 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 37
  tail call void @init_timer_key(ptr noundef %236, ptr noundef nonnull @ieee80211_dynamic_ps_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  %237 = getelementptr inbounds %struct.wiphy, ptr %74, i32 5, i32 78
  store i32 -32, ptr %237, align 8
  %238 = getelementptr inbounds %struct.ieee80211_local, ptr %130, i32 0, i32 78, i32 1
  store volatile ptr %238, ptr %238, align 4
  %239 = getelementptr inbounds %struct.wiphy, ptr %74, i32 5, i32 78, i32 1
  store ptr %238, ptr %239, align 4
  %240 = getelementptr inbounds %struct.ieee80211_local, ptr %130, i32 0, i32 78, i32 2
  store ptr @ieee80211_sched_scan_stopped_work, ptr %240, align 4
  %241 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 56, i32 9
  store i32 0, ptr %241, align 4
  %242 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 56, i32 4
  store i32 0, ptr %242, align 4
  %243 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 56, i32 5
  store i32 33554436, ptr %243, align 4
  %244 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 56, i32 6
  store ptr null, ptr %244, align 4
  %245 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 56, i32 7
  store i32 0, ptr %245, align 4
  %246 = getelementptr inbounds %struct.wiphy, ptr %74, i32 6, i32 56, i32 8
  store i32 0, ptr %246, align 4
  br label %247

247:                                              ; preds = %247, %133
  %248 = phi i32 [ 0, %133 ], [ %254, %247 ]
  %249 = getelementptr %struct.ieee80211_local, ptr %130, i32 0, i32 53, i32 %248
  %250 = getelementptr %struct.ieee80211_local, ptr %130, i32 0, i32 53, i32 %248, i32 2
  store i32 0, ptr %250, align 4
  store ptr %249, ptr %249, align 4
  %251 = getelementptr inbounds %struct.anon.70, ptr %249, i32 0, i32 1
  store ptr %249, ptr %251, align 4
  %252 = getelementptr %struct.ieee80211_local, ptr %130, i32 0, i32 53, i32 %248, i32 1
  store i32 0, ptr %252, align 4
  %253 = getelementptr %struct.ieee80211_local, ptr %130, i32 0, i32 56, i32 %248
  store volatile i32 0, ptr %253, align 4
  %254 = add nuw nsw i32 %248, 1
  %255 = icmp eq i32 %254, 16
  br i1 %255, label %256, label %247

256:                                              ; preds = %247
  %257 = getelementptr inbounds %struct.wiphy, ptr %74, i32 3, i32 38, i32 19
  tail call void @tasklet_setup(ptr noundef %257, ptr noundef nonnull @ieee80211_tx_pending) #11
  %258 = load ptr, ptr %120, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %262, label %260

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.wiphy, ptr %74, i32 3, i32 41
  tail call void @tasklet_setup(ptr noundef %261, ptr noundef nonnull @ieee80211_wake_txqs) #11
  br label %262

262:                                              ; preds = %260, %256
  %263 = getelementptr inbounds %struct.ieee80211_local, ptr %130, i32 0, i32 42
  tail call void @tasklet_setup(ptr noundef %263, ptr noundef nonnull @ieee80211_tasklet_handler) #11
  %264 = getelementptr inbounds %struct.ieee80211_local, ptr %130, i32 0, i32 43
  %265 = getelementptr inbounds %struct.wiphy, ptr %74, i32 2, i32 56, i32 11, i32 28
  store i32 0, ptr %265, align 4
  store ptr %264, ptr %264, align 4
  %266 = getelementptr inbounds %struct.wiphy, ptr %74, i32 2, i32 56, i32 11, i32 26
  store ptr %264, ptr %266, align 4
  %267 = getelementptr inbounds %struct.wiphy, ptr %74, i32 2, i32 56, i32 11, i32 27
  store i32 0, ptr %267, align 4
  %268 = getelementptr inbounds %struct.ieee80211_local, ptr %130, i32 0, i32 44
  %269 = getelementptr inbounds %struct.wiphy, ptr %74, i32 2, i32 56, i32 14
  store i32 0, ptr %269, align 4
  store ptr %268, ptr %268, align 4
  %270 = getelementptr inbounds %struct.wiphy, ptr %74, i32 2, i32 56, i32 12
  store ptr %268, ptr %270, align 4
  %271 = getelementptr inbounds %struct.wiphy, ptr %74, i32 2, i32 56, i32 13
  store i32 0, ptr %271, align 4
  tail call void @ieee80211_roc_setup(ptr noundef %130) #11
  %272 = getelementptr inbounds %struct.wiphy, ptr %74, i32 1, i32 30
  store i32 -1, ptr %272, align 8
  %273 = getelementptr inbounds %struct.wiphy, ptr %74, i32 1, i32 31
  store i16 -1, ptr %273, align 4
  br label %275

274:                                              ; preds = %125
  tail call void @wiphy_free(ptr noundef nonnull %74) #11
  br label %275

275:                                              ; preds = %274, %262, %70, %69, %43, %30
  %276 = phi ptr [ null, %30 ], [ null, %43 ], [ null, %274 ], [ %130, %262 ], [ null, %69 ], [ null, %70 ]
  ret ptr %276
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_new_nm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hw_addr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_restart_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4520
  %3 = getelementptr i8, ptr %0, i32 -3984
  %4 = load ptr, ptr %3, align 8
  tail call void @flush_workqueue(ptr noundef %4) #11
  %5 = getelementptr i8, ptr %0, i32 -248
  %6 = tail call zeroext i1 @flush_work(ptr noundef %5) #11
  %7 = getelementptr i8, ptr %0, i32 -3116
  %8 = tail call zeroext i1 @flush_work(ptr noundef %7) #11
  tail call void @rtnl_lock() #11
  %9 = getelementptr i8, ptr %0, i32 -4464
  %10 = load ptr, ptr %9, align 8
  tail call void @mutex_lock(ptr noundef %10) #11
  %11 = getelementptr i8, ptr %0, i32 -364
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15, !prof !17

15:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 267, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.ieee80211_restart_work) #11
  br label %16

16:                                               ; preds = %15, %1
  %17 = getelementptr i8, ptr %0, i32 -440
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %41, label %20

20:                                               ; preds = %36, %16
  %21 = phi ptr [ %39, %36 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %21, i32 0, i32 58
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %21, i32 0, i32 57, i32 0, i32 16
  %27 = tail call zeroext i1 @cancel_work_sync(ptr noundef %26) #11
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %21, i32 0, i32 58, i32 4
  %29 = load i8, ptr %28, align 1, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %21, i32 0, i32 1, i32 7
  tail call void @mutex_lock(ptr noundef %32) #11
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %21, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.cfg80211_bss, ptr %34, i32 0, i32 11
  tail call void @ieee80211_sta_connection_lost(ptr noundef %21, ptr noundef %35, i8 noundef zeroext 1, i1 noundef zeroext false) #11
  tail call void @mutex_unlock(ptr noundef %32) #11
  br label %36

36:                                               ; preds = %31, %25, %20
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %21, i32 0, i32 5
  %38 = tail call zeroext i1 @flush_delayed_work(ptr noundef %37) #11
  %39 = load ptr, ptr %21, align 8
  %40 = icmp eq ptr %39, %17
  br i1 %40, label %41, label %20

41:                                               ; preds = %36, %16
  tail call void @ieee80211_scan_cancel(ptr noundef %2) #11
  %42 = getelementptr i8, ptr %0, i32 16
  %43 = tail call zeroext i1 @flush_delayed_work(ptr noundef %42) #11
  %44 = getelementptr i8, ptr %0, i32 84
  %45 = tail call zeroext i1 @flush_work(ptr noundef %44) #11
  tail call void @synchronize_net() #11
  %46 = tail call i32 @ieee80211_reconfig(ptr noundef %2) #11
  %47 = load ptr, ptr %9, align 8
  tail call void @mutex_unlock(ptr noundef %47) #11
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr %9, align 8
  tail call void @cfg80211_shutdown_all_interfaces(ptr noundef %50) #11
  br label %51

51:                                               ; preds = %49, %41
  tail call void @rtnl_unlock() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_dfs_radar_detected_work(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_reconfig_filter(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1364
  tail call void @ieee80211_configure_filter(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_dynamic_ps_enable_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_dynamic_ps_disable_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_dynamic_ps_timer(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sched_scan_stopped_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_pending(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_txqs(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_tasklet_handler(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1428
  %3 = getelementptr i8, ptr %0, i32 40
  %4 = getelementptr i8, ptr %0, i32 24
  br label %5

5:                                                ; preds = %22, %1
  %6 = tail call ptr @skb_dequeue(ptr noundef %4) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = tail call ptr @skb_dequeue(ptr noundef %3) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %8, %5
  %12 = phi ptr [ %6, %5 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 13
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 7
  %16 = zext i16 %15 to i32
  switch i32 %16, label %21 [
    i32 1, label %17
    i32 2, label %19
  ]

17:                                               ; preds = %11
  %18 = and i16 %14, -8
  store i16 %18, ptr %13, align 8
  tail call void @ieee80211_rx_napi(ptr noundef %2, ptr noundef null, ptr noundef nonnull %12, ptr noundef null) #11
  br label %22

19:                                               ; preds = %11
  %20 = and i16 %14, -8
  store i16 %20, ptr %13, align 8
  tail call void @ieee80211_tx_status(ptr noundef %2, ptr noundef nonnull %12) #11
  br label %22

21:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %16) #11
  tail call void @consume_skb(ptr noundef nonnull %12) #11
  br label %22

22:                                               ; preds = %21, %19, %17
  br label %5

23:                                               ; preds = %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_roc_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_register_hw(ptr noundef %0) #0 {
  %2 = alloca %struct.cfg80211_chan_def, align 4
  %3 = alloca %struct.vif_params, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false)
  %4 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 262144
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 20
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, -1
  br i1 %11, label %659, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %14 = load i16, ptr %13, align 4
  %15 = zext i8 %10 to i16
  %16 = icmp ugt i16 %14, %15
  br i1 %16, label %17, label %659

17:                                               ; preds = %12, %1
  %18 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 13
  %21 = load i32, ptr %20, align 32
  %22 = and i32 %21, 268435456
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ieee80211_ops, ptr %26, i32 0, i32 86
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %659, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.ieee80211_ops, ptr %26, i32 0, i32 87
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %659, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ieee80211_ops, ptr %26, i32 0, i32 88
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %659, label %38

38:                                               ; preds = %34, %17
  %39 = getelementptr %struct.ieee80211_hw, ptr %0, i32 0, i32 4, i32 1
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 64
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ieee80211_ops, ptr %45, i32 0, i32 29
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50, !prof !24

49:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 927, i32 noundef 9, ptr noundef null) #11
  br label %659

50:                                               ; preds = %43, %38
  %51 = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 9
  %52 = load i16, ptr %51, align 4
  %53 = and i16 %52, 4096
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.ieee80211_ops, ptr %57, i32 0, i32 91
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.ieee80211_ops, ptr %57, i32 0, i32 92
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66, !prof !24

65:                                               ; preds = %61, %55
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 932, i32 noundef 9, ptr noundef null) #11
  br label %659

66:                                               ; preds = %61, %50
  %67 = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 40
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %80, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.ieee80211_ops, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %659, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.ieee80211_ops, ptr %72, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %659, label %80

80:                                               ; preds = %76, %66
  %81 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 26
  %82 = load i8, ptr %81, align 1, !range !8
  %83 = icmp eq i8 %82, 0
  %84 = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %83, label %91, label %87

87:                                               ; preds = %80
  br i1 %86, label %88, label %115

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 5
  %90 = load ptr, ptr %89, align 8
  br label %103

91:                                               ; preds = %80
  br i1 %86, label %92, label %115

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 5
  %94 = load ptr, ptr %93, align 8
  br label %98

95:                                               ; preds = %98
  %96 = add nuw nsw i32 %99, 1
  %97 = icmp eq i32 %96, %85
  br i1 %97, label %115, label %98

98:                                               ; preds = %95, %92
  %99 = phi i32 [ 0, %92 ], [ %96, %95 ]
  %100 = getelementptr %struct.ieee80211_iface_combination, ptr %94, i32 %99, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = icmp ugt i32 %101, 1
  br i1 %102, label %659, label %95

103:                                              ; preds = %112, %88
  %104 = phi i32 [ 0, %88 ], [ %113, %112 ]
  %105 = getelementptr %struct.ieee80211_iface_combination, ptr %90, i32 %104, i32 5
  %106 = load i8, ptr %105, align 4
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = getelementptr %struct.ieee80211_iface_combination, ptr %90, i32 %104, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = icmp ugt i32 %110, 1
  br i1 %111, label %659, label %112

112:                                              ; preds = %108, %103
  %113 = add nuw nsw i32 %104, 1
  %114 = icmp eq i32 %113, %85
  br i1 %114, label %115, label %103

115:                                              ; preds = %112, %95, %91, %87
  %116 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 24
  %117 = load i64, ptr %116, align 8
  %118 = and i64 %117, -1126357073980
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %121, label %120, !prof !17

120:                                              ; preds = %115
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 963, i32 noundef 9, ptr noundef null) #11
  br label %659

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 15
  %123 = load i8, ptr %122, align 2
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 14
  %127 = load i8, ptr %126, align 1
  store i8 %127, ptr %122, align 2
  br label %128

128:                                              ; preds = %125, %121
  %129 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 39
  store i8 1, ptr %129, align 4
  %130 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86
  %131 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 7
  %132 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 112
  %133 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  br label %134

134:                                              ; preds = %232, %128
  %135 = phi ptr [ %19, %128 ], [ %240, %232 ]
  %136 = phi i32 [ 0, %128 ], [ %238, %232 ]
  %137 = phi i32 [ 0, %128 ], [ %237, %232 ]
  %138 = phi i32 [ 0, %128 ], [ %236, %232 ]
  %139 = phi i1 [ false, %128 ], [ %235, %232 ]
  %140 = phi i1 [ false, %128 ], [ %234, %232 ]
  %141 = phi i1 [ false, %128 ], [ %233, %232 ]
  %142 = getelementptr %struct.wiphy, ptr %135, i32 0, i32 53, i32 %136
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %232, label %145

145:                                              ; preds = %134
  %146 = load ptr, ptr %2, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %174

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %143, i32 0, i32 3
  %150 = load i32, ptr %149, align 4
  %151 = icmp sgt i32 %150, 0
  %152 = load ptr, ptr %143, align 4
  br i1 %151, label %153, label %162

153:                                              ; preds = %159, %148
  %154 = phi i32 [ %160, %159 ], [ 0, %148 ]
  %155 = getelementptr %struct.ieee80211_channel, ptr %152, i32 %154, i32 4
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %153
  %160 = add nuw nsw i32 %154, 1
  %161 = icmp eq i32 %160, %150
  br i1 %161, label %162, label %153

162:                                              ; preds = %159, %153, %148
  %163 = phi i32 [ 0, %148 ], [ %154, %153 ], [ %150, %159 ]
  %164 = icmp eq i32 %163, %150
  %165 = select i1 %164, i32 0, i32 %163
  %166 = getelementptr %struct.ieee80211_channel, ptr %152, i32 %165
  call void @cfg80211_chandef_create(ptr noundef nonnull %2, ptr noundef %166, i32 noundef 0) #11
  %167 = load i8, ptr %81, align 1, !range !8
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load ptr, ptr %130, align 8
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %131, ptr noundef nonnull align 4 dereferenceable(28) %2, i32 28, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %130, ptr noundef nonnull align 4 dereferenceable(28) %2, i32 28, i1 false)
  br label %173

173:                                              ; preds = %172, %169, %162
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %132, ptr noundef nonnull align 4 dereferenceable(28) %2, i32 28, i1 false)
  br label %174

174:                                              ; preds = %173, %145
  %175 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %143, i32 0, i32 3
  %176 = load i32, ptr %175, align 4
  %177 = add i32 %176, %137
  %178 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %143, i32 0, i32 4
  %179 = load i32, ptr %178, align 4
  %180 = call i32 @llvm.smax.i32(i32 %138, i32 %179)
  br i1 %139, label %185, label %181

181:                                              ; preds = %174
  %182 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %143, i32 0, i32 5, i32 1
  %183 = load i8, ptr %182, align 2, !range !8
  %184 = icmp ne i8 %183, 0
  br label %185

185:                                              ; preds = %181, %174
  %186 = phi i1 [ true, %174 ], [ %184, %181 ]
  br i1 %140, label %191, label %187

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %143, i32 0, i32 6
  %189 = load i8, ptr %188, align 4, !range !8
  %190 = icmp ne i8 %189, 0
  br label %191

191:                                              ; preds = %187, %185
  %192 = phi i1 [ true, %185 ], [ %190, %187 ]
  %193 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %143, i32 0, i32 9
  %194 = load i16, ptr %193, align 4
  %195 = zext i16 %194 to i32
  %196 = icmp eq i16 %194, 0
  br i1 %196, label %211, label %197

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %143, i32 0, i32 10
  br label %199

199:                                              ; preds = %207, %197
  %200 = phi i32 [ 0, %197 ], [ %209, %207 ]
  %201 = phi i1 [ %141, %197 ], [ %208, %207 ]
  br i1 %201, label %207, label %202

202:                                              ; preds = %199
  %203 = load ptr, ptr %198, align 4
  %204 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %203, i32 %200, i32 1
  %205 = load i8, ptr %204, align 2, !range !8
  %206 = icmp ne i8 %205, 0
  br label %207

207:                                              ; preds = %202, %199
  %208 = phi i1 [ true, %199 ], [ %206, %202 ]
  %209 = add nuw nsw i32 %200, 1
  %210 = icmp eq i32 %209, %195
  br i1 %210, label %211, label %199

211:                                              ; preds = %207, %191
  %212 = phi i1 [ %141, %191 ], [ %208, %207 ]
  %213 = load i16, ptr %133, align 4
  %214 = icmp ugt i16 %213, 3
  %215 = select i1 %214, i1 true, i1 %186
  %216 = xor i1 %214, true
  %217 = select i1 %192, i1 true, i1 %212
  %218 = select i1 %215, i1 %216, i1 %217
  br i1 %218, label %231, label %219, !prof !24

219:                                              ; preds = %211
  %220 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %143, i32 0, i32 5, i32 1
  %221 = load i8, ptr %220, align 2, !range !8
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %232, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %143, i32 0, i32 5
  %225 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %143, i32 0, i32 5, i32 4
  %226 = call zeroext i8 @ieee80211_mcs_to_chains(ptr noundef %225) #11
  %227 = load i8, ptr %129, align 4
  %228 = call i8 @llvm.umax.i8(i8 %226, i8 %227)
  store i8 %228, ptr %129, align 4
  %229 = load i16, ptr %224, align 4
  %230 = or i16 %229, 12
  store i16 %230, ptr %224, align 4
  br label %232

231:                                              ; preds = %211
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1028, i32 noundef 9, ptr noundef null) #11
  br label %659

232:                                              ; preds = %223, %219, %134
  %233 = phi i1 [ %212, %219 ], [ %141, %134 ], [ %212, %223 ]
  %234 = phi i1 [ %192, %219 ], [ %140, %134 ], [ %192, %223 ]
  %235 = phi i1 [ %186, %219 ], [ %139, %134 ], [ %186, %223 ]
  %236 = phi i32 [ %180, %219 ], [ %138, %134 ], [ %180, %223 ]
  %237 = phi i32 [ %177, %219 ], [ %137, %134 ], [ %177, %223 ]
  %238 = add nuw nsw i32 %136, 1
  %239 = icmp eq i32 %238, 6
  %240 = load ptr, ptr %18, align 8
  br i1 %239, label %241, label %134

241:                                              ; preds = %232
  %242 = getelementptr inbounds %struct.wiphy, ptr %240, i32 0, i32 9
  %243 = load i16, ptr %242, align 4
  %244 = and i16 %243, 8
  %245 = icmp eq i16 %244, 0
  br i1 %245, label %259, label %246

246:                                              ; preds = %241
  %247 = load volatile i32, ptr %4, align 4
  %248 = and i32 %247, 16384
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %259

250:                                              ; preds = %246
  %251 = or i16 %243, 16
  store i16 %251, ptr %242, align 4
  %252 = load ptr, ptr %18, align 8
  %253 = getelementptr inbounds %struct.wiphy, ptr %252, i32 0, i32 7
  %254 = load i16, ptr %253, align 16
  %255 = or i16 %254, 16
  store i16 %255, ptr %253, align 16
  %256 = load ptr, ptr %18, align 8
  %257 = getelementptr inbounds %struct.wiphy, ptr %256, i32 0, i32 9
  %258 = load i16, ptr %257, align 4
  br label %259

259:                                              ; preds = %250, %246, %241
  %260 = phi i16 [ %258, %250 ], [ %243, %246 ], [ %243, %241 ]
  %261 = phi ptr [ %256, %250 ], [ %240, %246 ], [ %240, %241 ]
  %262 = getelementptr inbounds %struct.wiphy, ptr %261, i32 0, i32 9
  %263 = or i16 %260, 64
  store i16 %263, ptr %262, align 4
  %264 = load ptr, ptr %18, align 8
  %265 = getelementptr inbounds %struct.wiphy, ptr %264, i32 0, i32 7
  %266 = load i16, ptr %265, align 16
  %267 = or i16 %266, 64
  store i16 %267, ptr %265, align 16
  %268 = load ptr, ptr %18, align 8
  %269 = getelementptr inbounds %struct.wiphy, ptr %268, i32 0, i32 6
  %270 = load i32, ptr %269, align 4
  %271 = icmp sgt i32 %270, 0
  br i1 %271, label %272, label %300

272:                                              ; preds = %259
  %273 = getelementptr inbounds %struct.wiphy, ptr %268, i32 0, i32 5
  %274 = load ptr, ptr %273, align 8
  br label %275

275:                                              ; preds = %297, %272
  %276 = phi i32 [ 0, %272 ], [ %298, %297 ]
  %277 = getelementptr %struct.ieee80211_iface_combination, ptr %274, i32 %276, i32 3
  %278 = load i8, ptr %277, align 2
  %279 = zext i8 %278 to i32
  %280 = icmp eq i8 %278, 0
  br i1 %280, label %297, label %281

281:                                              ; preds = %275
  %282 = getelementptr %struct.ieee80211_iface_combination, ptr %274, i32 %276
  %283 = load ptr, ptr %282, align 4
  br label %284

284:                                              ; preds = %294, %281
  %285 = phi i32 [ 0, %281 ], [ %295, %294 ]
  %286 = getelementptr %struct.ieee80211_iface_limit, ptr %283, i32 %285, i32 1
  %287 = load i16, ptr %286, align 2
  %288 = and i16 %287, 2
  %289 = icmp eq i16 %288, 0
  br i1 %289, label %294, label %290

290:                                              ; preds = %284
  %291 = getelementptr %struct.ieee80211_iface_limit, ptr %283, i32 %285
  %292 = load i16, ptr %291, align 2
  %293 = icmp ugt i16 %292, 1
  br i1 %293, label %659, label %294

294:                                              ; preds = %290, %284
  %295 = add nuw nsw i32 %285, 1
  %296 = icmp eq i32 %295, %279
  br i1 %296, label %297, label %284

297:                                              ; preds = %294, %275
  %298 = add nuw nsw i32 %276, 1
  %299 = icmp eq i32 %298, %270
  br i1 %299, label %300, label %275

300:                                              ; preds = %297, %259
  %301 = shl i32 %237, 2
  %302 = add i32 %301, 120
  %303 = call noalias align 64 ptr @__kmalloc(i32 noundef %302, i32 noundef 3520) #13
  %304 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 69
  store ptr %303, ptr %304, align 4
  %305 = icmp eq ptr %303, null
  br i1 %305, label %659, label %306

306:                                              ; preds = %300
  %307 = load ptr, ptr %18, align 8
  %308 = getelementptr %struct.wiphy, ptr %307, i32 0, i32 53, i32 0
  %309 = load ptr, ptr %308, align 4
  %310 = icmp eq ptr %309, null
  br i1 %310, label %314, label %311

311:                                              ; preds = %306
  %312 = getelementptr %struct.cfg80211_scan_request, ptr %303, i32 0, i32 9, i32 0
  store i32 -1, ptr %312, align 32
  %313 = load ptr, ptr %18, align 8
  br label %314

314:                                              ; preds = %311, %306
  %315 = phi ptr [ %307, %306 ], [ %313, %311 ]
  %316 = getelementptr %struct.wiphy, ptr %315, i32 0, i32 53, i32 1
  %317 = load ptr, ptr %316, align 4
  %318 = icmp eq ptr %317, null
  br i1 %318, label %323, label %319

319:                                              ; preds = %314
  %320 = load ptr, ptr %304, align 4
  %321 = getelementptr %struct.cfg80211_scan_request, ptr %320, i32 0, i32 9, i32 1
  store i32 -1, ptr %321, align 4
  %322 = load ptr, ptr %18, align 8
  br label %323

323:                                              ; preds = %319, %314
  %324 = phi ptr [ %322, %319 ], [ %315, %314 ]
  %325 = getelementptr %struct.wiphy, ptr %324, i32 0, i32 53, i32 2
  %326 = load ptr, ptr %325, align 4
  %327 = icmp eq ptr %326, null
  br i1 %327, label %332, label %328

328:                                              ; preds = %323
  %329 = load ptr, ptr %304, align 4
  %330 = getelementptr %struct.cfg80211_scan_request, ptr %329, i32 0, i32 9, i32 2
  store i32 -1, ptr %330, align 4
  %331 = load ptr, ptr %18, align 8
  br label %332

332:                                              ; preds = %328, %323
  %333 = phi ptr [ %331, %328 ], [ %324, %323 ]
  %334 = getelementptr %struct.wiphy, ptr %333, i32 0, i32 53, i32 3
  %335 = load ptr, ptr %334, align 4
  %336 = icmp eq ptr %335, null
  br i1 %336, label %341, label %337

337:                                              ; preds = %332
  %338 = load ptr, ptr %304, align 4
  %339 = getelementptr %struct.cfg80211_scan_request, ptr %338, i32 0, i32 9, i32 3
  store i32 -1, ptr %339, align 4
  %340 = load ptr, ptr %18, align 8
  br label %341

341:                                              ; preds = %337, %332
  %342 = phi ptr [ %340, %337 ], [ %333, %332 ]
  %343 = getelementptr %struct.wiphy, ptr %342, i32 0, i32 53, i32 4
  %344 = load ptr, ptr %343, align 4
  %345 = icmp eq ptr %344, null
  br i1 %345, label %350, label %346

346:                                              ; preds = %341
  %347 = load ptr, ptr %304, align 4
  %348 = getelementptr %struct.cfg80211_scan_request, ptr %347, i32 0, i32 9, i32 4
  store i32 -1, ptr %348, align 4
  %349 = load ptr, ptr %18, align 8
  br label %350

350:                                              ; preds = %346, %341
  %351 = phi ptr [ %349, %346 ], [ %342, %341 ]
  %352 = getelementptr %struct.wiphy, ptr %351, i32 0, i32 53, i32 5
  %353 = load ptr, ptr %352, align 4
  %354 = icmp eq ptr %353, null
  br i1 %354, label %359, label %355

355:                                              ; preds = %350
  %356 = load ptr, ptr %304, align 4
  %357 = getelementptr %struct.cfg80211_scan_request, ptr %356, i32 0, i32 9, i32 5
  store i32 -1, ptr %357, align 4
  %358 = load ptr, ptr %18, align 8
  br label %359

359:                                              ; preds = %355, %350
  %360 = phi ptr [ %358, %355 ], [ %351, %350 ]
  %361 = getelementptr inbounds %struct.wiphy, ptr %360, i32 0, i32 9
  %362 = load i16, ptr %361, align 4
  %363 = and i16 %362, -129
  store i16 %363, ptr %361, align 4
  %364 = load ptr, ptr %18, align 8
  %365 = getelementptr inbounds %struct.wiphy, ptr %364, i32 0, i32 9
  %366 = load i16, ptr %365, align 4
  %367 = and i16 %366, 128
  %368 = icmp eq i16 %367, 0
  br i1 %368, label %374, label %369

369:                                              ; preds = %359
  %370 = getelementptr inbounds %struct.wiphy, ptr %364, i32 0, i32 11
  %371 = load i32, ptr %370, align 8
  %372 = or i32 %371, 1024
  store i32 %372, ptr %370, align 8
  %373 = load ptr, ptr %18, align 8
  br label %374

374:                                              ; preds = %369, %359
  %375 = phi ptr [ %373, %369 ], [ %364, %359 ]
  %376 = getelementptr inbounds %struct.wiphy, ptr %375, i32 0, i32 11
  %377 = load i32, ptr %376, align 8
  %378 = or i32 %377, 128
  store i32 %378, ptr %376, align 8
  %379 = load volatile i32, ptr %4, align 4
  %380 = and i32 %379, 16
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %385, label %382

382:                                              ; preds = %374
  %383 = load ptr, ptr %18, align 8
  %384 = getelementptr inbounds %struct.wiphy, ptr %383, i32 0, i32 16
  store i32 1, ptr %384, align 16
  br label %395

385:                                              ; preds = %374
  %386 = load volatile i32, ptr %4, align 4
  %387 = and i32 %386, 8
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %395, label %389

389:                                              ; preds = %385
  %390 = load ptr, ptr %18, align 8
  %391 = getelementptr inbounds %struct.wiphy, ptr %390, i32 0, i32 16
  store i32 2, ptr %391, align 16
  %392 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 13
  %393 = load i8, ptr %392, align 8
  %394 = icmp slt i8 %393, 1
  br i1 %394, label %648, label %395

395:                                              ; preds = %389, %385, %382
  %396 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %397 = load ptr, ptr %396, align 4
  %398 = getelementptr inbounds %struct.ieee80211_ops, ptr %397, i32 0, i32 17
  %399 = load ptr, ptr %398, align 4
  %400 = icmp eq ptr %399, null
  br i1 %400, label %401, label %410

401:                                              ; preds = %395
  %402 = load ptr, ptr %18, align 8
  %403 = getelementptr %struct.wiphy, ptr %402, i32 0, i32 14, i32 3
  %404 = load i8, ptr %403, align 1
  %405 = or i8 %404, -128
  store i8 %405, ptr %403, align 1
  %406 = load ptr, ptr %18, align 8
  %407 = getelementptr %struct.wiphy, ptr %406, i32 0, i32 14, i32 4
  %408 = load i8, ptr %407, align 1
  %409 = or i8 %408, 16
  store i8 %409, ptr %407, align 1
  br label %410

410:                                              ; preds = %401, %395
  %411 = load ptr, ptr %18, align 8
  %412 = getelementptr inbounds %struct.wiphy, ptr %411, i32 0, i32 9
  %413 = load i16, ptr %412, align 4
  %414 = and i16 %413, 2
  %415 = icmp eq i16 %414, 0
  br i1 %415, label %420, label %416

416:                                              ; preds = %410
  %417 = getelementptr %struct.wiphy, ptr %411, i32 0, i32 14, i32 5
  %418 = load i8, ptr %417, align 1
  %419 = or i8 %418, 16
  store i8 %419, ptr %417, align 1
  br label %420

420:                                              ; preds = %416, %410
  %421 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 75
  %422 = select i1 %235, i32 35, i32 7
  %423 = add i32 %236, %422
  %424 = add i32 %423, 14
  %425 = select i1 %234, i32 %424, i32 %423
  %426 = add i32 %425, 57
  %427 = select i1 %233, i32 %426, i32 %425
  store i32 %427, ptr %421, align 4
  %428 = load ptr, ptr %396, align 4
  %429 = getelementptr inbounds %struct.ieee80211_ops, ptr %428, i32 0, i32 21
  %430 = load ptr, ptr %429, align 4
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %437

432:                                              ; preds = %420
  %433 = load ptr, ptr %18, align 8
  %434 = getelementptr inbounds %struct.wiphy, ptr %433, i32 0, i32 18
  store i8 4, ptr %434, align 8
  %435 = load ptr, ptr %18, align 8
  %436 = getelementptr inbounds %struct.wiphy, ptr %435, i32 0, i32 22
  store i16 2304, ptr %436, align 4
  br label %437

437:                                              ; preds = %432, %420
  %438 = load ptr, ptr %18, align 8
  %439 = getelementptr inbounds %struct.wiphy, ptr %438, i32 0, i32 22
  %440 = load i16, ptr %439, align 4
  %441 = icmp eq i16 %440, 0
  br i1 %441, label %446, label %442

442:                                              ; preds = %437
  %443 = load i32, ptr %421, align 4
  %444 = trunc i32 %443 to i16
  %445 = sub i16 %440, %444
  store i16 %445, ptr %439, align 4
  br label %446

446:                                              ; preds = %442, %437
  %447 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 28
  %448 = load ptr, ptr %447, align 4
  %449 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 27
  %450 = load i8, ptr %449, align 2
  %451 = zext i8 %450 to i32
  %452 = call zeroext i1 @ieee80211_cs_list_valid(ptr noundef %448, i32 noundef %451) #11
  br i1 %452, label %454, label %453, !prof !17

453:                                              ; preds = %446
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1160, i32 noundef 9, ptr noundef null) #11
  br label %648

454:                                              ; preds = %446
  %455 = call fastcc i32 @ieee80211_init_cipher_suites(ptr noundef %0)
  %456 = icmp slt i32 %455, 0
  br i1 %456, label %648, label %457

457:                                              ; preds = %454
  %458 = load ptr, ptr %396, align 4
  %459 = getelementptr inbounds %struct.ieee80211_ops, ptr %458, i32 0, i32 54
  %460 = load ptr, ptr %459, align 4
  %461 = icmp eq ptr %460, null
  br i1 %461, label %462, label %465

462:                                              ; preds = %457
  %463 = load ptr, ptr %18, align 8
  %464 = getelementptr inbounds %struct.wiphy, ptr %463, i32 0, i32 42
  store i16 5000, ptr %464, align 32
  br label %465

465:                                              ; preds = %462, %457
  %466 = load ptr, ptr %18, align 8
  %467 = getelementptr inbounds %struct.wiphy, ptr %466, i32 0, i32 11
  %468 = load i32, ptr %467, align 8
  %469 = and i32 %468, 32768
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %473, label %471

471:                                              ; preds = %465
  %472 = or i32 %468, 65536
  store i32 %472, ptr %467, align 8
  br label %473

473:                                              ; preds = %471, %465
  %474 = load volatile i32, ptr %4, align 4
  %475 = and i32 %474, 67108864
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %481, label %477

477:                                              ; preds = %473
  %478 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 113
  %479 = load i8, ptr %478, align 4
  %480 = or i8 %479, 4
  store i8 %480, ptr %478, align 4
  br label %481

481:                                              ; preds = %477, %473
  %482 = load volatile i32, ptr %39, align 4
  %483 = and i32 %482, 16384
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %502, label %485

485:                                              ; preds = %481
  %486 = load ptr, ptr %18, align 8
  %487 = getelementptr inbounds %struct.wiphy, ptr %486, i32 0, i32 76
  %488 = load i8, ptr %487, align 8
  %489 = or i8 %488, 1
  store i8 %489, ptr %487, align 8
  %490 = load volatile i32, ptr %39, align 4
  %491 = and i32 %490, 32768
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %498, label %493

493:                                              ; preds = %485
  %494 = load ptr, ptr %18, align 8
  %495 = getelementptr inbounds %struct.wiphy, ptr %494, i32 0, i32 76
  %496 = load i8, ptr %495, align 8
  %497 = or i8 %496, 2
  store i8 %497, ptr %495, align 8
  br label %502

498:                                              ; preds = %485
  %499 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 113, i32 2
  %500 = load i8, ptr %499, align 2
  %501 = or i8 %500, 64
  store i8 %501, ptr %499, align 2
  br label %502

502:                                              ; preds = %498, %493, %481
  %503 = load ptr, ptr %18, align 8
  %504 = getelementptr inbounds %struct.wiphy, ptr %503, i32 0, i32 69
  store i8 2, ptr %504, align 2
  %505 = load i16, ptr %133, align 4
  %506 = icmp ugt i16 %505, 16
  br i1 %506, label %507, label %508

507:                                              ; preds = %502
  store i16 16, ptr %133, align 4
  br label %508

508:                                              ; preds = %507, %502
  %509 = load ptr, ptr %18, align 8
  %510 = getelementptr inbounds %struct.wiphy, ptr %509, i32 0, i32 56, i32 3
  %511 = load ptr, ptr %510, align 4
  %512 = icmp eq ptr %511, null
  br i1 %512, label %513, label %516

513:                                              ; preds = %508
  %514 = getelementptr inbounds %struct.wiphy, ptr %509, i32 0, i32 56
  %515 = load ptr, ptr %514, align 4
  br label %516

516:                                              ; preds = %513, %508
  %517 = phi ptr [ %515, %513 ], [ %511, %508 ]
  %518 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.9, i32 noundef 655362, i32 noundef 1, ptr noundef %517) #11
  %519 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 9
  store ptr %518, ptr %519, align 8
  %520 = icmp eq ptr %518, null
  br i1 %520, label %648, label %521

521:                                              ; preds = %516
  %522 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 5
  %523 = load i32, ptr %522, align 4
  %524 = call i32 @llvm.umax.i32(i32 %523, i32 16)
  %525 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 41
  store i32 %524, ptr %525, align 8
  %526 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 12
  %527 = load i16, ptr %526, align 2
  %528 = icmp eq i16 %527, 0
  br i1 %528, label %529, label %530

529:                                              ; preds = %521
  store i16 5, ptr %526, align 2
  br label %530

530:                                              ; preds = %529, %521
  %531 = phi i16 [ 5, %529 ], [ %527, %521 ]
  %532 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 3
  store i16 %531, ptr %532, align 4
  %533 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 98
  store i32 -1, ptr %533, align 4
  %534 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 29
  %535 = load i8, ptr %534, align 8
  %536 = icmp eq i8 %535, 0
  br i1 %536, label %537, label %538

537:                                              ; preds = %530
  store i8 -1, ptr %534, align 8
  br label %538

538:                                              ; preds = %537, %530
  %539 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 31
  %540 = load i8, ptr %539, align 2
  %541 = icmp eq i8 %540, 0
  br i1 %541, label %542, label %543

542:                                              ; preds = %538
  store i8 1, ptr %539, align 2
  br label %543

543:                                              ; preds = %542, %538
  call void @ieee80211_wep_init(ptr noundef %0) #11
  store i32 4, ptr %0, align 8
  %544 = call i32 @ieee80211_txq_setup_flows(ptr noundef %0) #11
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %645

546:                                              ; preds = %543
  call void @rtnl_lock() #11
  %547 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 2
  %548 = load ptr, ptr %547, align 4
  %549 = call i32 @ieee80211_init_rate_ctrl_alg(ptr noundef %0, ptr noundef %548) #11
  call void @rtnl_unlock() #11
  %550 = icmp slt i32 %549, 0
  br i1 %550, label %551, label %554

551:                                              ; preds = %546
  %552 = load ptr, ptr %18, align 8
  %553 = getelementptr inbounds %struct.wiphy, ptr %552, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %553, ptr noundef nonnull @.str.11) #12
  br label %645

554:                                              ; preds = %546
  %555 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 58
  %556 = load ptr, ptr %555, align 8
  %557 = icmp eq ptr %556, null
  br i1 %557, label %567, label %558

558:                                              ; preds = %554
  call void @_clear_bit(i32 noundef 43, ptr noundef %4) #11
  %559 = load ptr, ptr %555, align 8
  %560 = load ptr, ptr %559, align 4
  %561 = load i32, ptr %560, align 4
  %562 = and i32 %561, 1
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %567, label %564

564:                                              ; preds = %558
  %565 = load i32, ptr %39, align 4
  %566 = or i32 %565, 2048
  store i32 %566, ptr %39, align 4
  br label %567

567:                                              ; preds = %564, %558, %554
  %568 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 40
  br label %569

569:                                              ; preds = %603, %567
  %570 = phi i32 [ 0, %567 ], [ %604, %603 ]
  %571 = load volatile i32, ptr %39, align 4
  %572 = and i32 %571, 2048
  %573 = icmp ne i32 %572, 0
  %574 = load ptr, ptr %18, align 8
  %575 = getelementptr %struct.wiphy, ptr %574, i32 0, i32 53, i32 %570
  %576 = load ptr, ptr %575, align 4
  %577 = icmp eq ptr %576, null
  br i1 %577, label %603, label %578

578:                                              ; preds = %569
  %579 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %576, i32 0, i32 6
  %580 = load i8, ptr %579, align 4, !range !8
  %581 = icmp eq i8 %580, 0
  br i1 %581, label %603, label %582

582:                                              ; preds = %578
  %583 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %576, i32 0, i32 6, i32 2, i32 3
  %584 = load i16, ptr %583, align 2
  %585 = and i16 %584, 8192
  %586 = icmp eq i16 %585, 0
  %587 = xor i1 %573, %586
  br i1 %587, label %603, label %588

588:                                              ; preds = %582
  %589 = call ptr @kmemdup(ptr noundef nonnull %576, i32 noundef 92, i32 noundef 3264) #11
  %590 = icmp eq ptr %589, null
  br i1 %590, label %645, label %591

591:                                              ; preds = %588
  %592 = load ptr, ptr %18, align 8
  %593 = getelementptr inbounds %struct.wiphy, ptr %592, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %593, ptr noundef nonnull @.str.12, i32 noundef %570) #12
  %594 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %589, i32 0, i32 6, i32 2, i32 3
  %595 = load i16, ptr %594, align 2
  %596 = xor i16 %595, 8192
  store i16 %596, ptr %594, align 2
  %597 = load ptr, ptr %18, align 8
  %598 = getelementptr %struct.wiphy, ptr %597, i32 0, i32 53, i32 %570
  store ptr %589, ptr %598, align 4
  %599 = shl nuw nsw i32 1, %570
  %600 = load i8, ptr %568, align 1
  %601 = trunc i32 %599 to i8
  %602 = or i8 %600, %601
  store i8 %602, ptr %568, align 1
  br label %603

603:                                              ; preds = %591, %582, %578, %569
  %604 = add nuw nsw i32 %570, 1
  %605 = icmp eq i32 %604, 6
  br i1 %605, label %606, label %569

606:                                              ; preds = %603
  %607 = load ptr, ptr %18, align 8
  %608 = call i32 @wiphy_register(ptr noundef %607) #11
  %609 = icmp slt i32 %608, 0
  br i1 %609, label %643, label %610

610:                                              ; preds = %606
  call void @rtnl_lock() #11
  %611 = load ptr, ptr %18, align 8
  call void @mutex_lock(ptr noundef %611) #11
  %612 = load ptr, ptr %18, align 8
  %613 = getelementptr inbounds %struct.wiphy, ptr %612, i32 0, i32 9
  %614 = load i16, ptr %613, align 4
  %615 = and i16 %614, 4
  %616 = icmp eq i16 %615, 0
  br i1 %616, label %629, label %617

617:                                              ; preds = %610
  %618 = load volatile i32, ptr %4, align 4
  %619 = and i32 %618, 8192
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %621, label %629

621:                                              ; preds = %617
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false)
  %622 = call i32 @ieee80211_if_add(ptr noundef %0, ptr noundef nonnull @.str.13, i8 noundef zeroext 1, ptr noundef null, i32 noundef 2, ptr noundef nonnull %3) #11
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %627, label %624

624:                                              ; preds = %621
  %625 = load ptr, ptr %18, align 8
  %626 = getelementptr inbounds %struct.wiphy, ptr %625, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %626, ptr noundef nonnull @.str.14) #12
  br label %627

627:                                              ; preds = %624, %621
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  %628 = load ptr, ptr %18, align 8
  br label %629

629:                                              ; preds = %627, %617, %610
  %630 = phi ptr [ %628, %627 ], [ %612, %617 ], [ %612, %610 ]
  call void @mutex_unlock(ptr noundef %630) #11
  call void @rtnl_unlock() #11
  %631 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 96
  store ptr @ieee80211_ifa_changed, ptr %631, align 4
  %632 = call i32 @register_inetaddr_notifier(ptr noundef %631) #11
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %634, label %640

634:                                              ; preds = %629
  %635 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 97
  store ptr @ieee80211_ifa6_changed, ptr %635, align 8
  %636 = call i32 @register_inet6addr_notifier(ptr noundef %635) #11
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %659, label %638

638:                                              ; preds = %634
  %639 = call i32 @unregister_inetaddr_notifier(ptr noundef %631) #11
  br label %640

640:                                              ; preds = %638, %629
  %641 = phi i32 [ %632, %629 ], [ %636, %638 ]
  %642 = load ptr, ptr %18, align 8
  call void @wiphy_unregister(ptr noundef %642) #11
  br label %643

643:                                              ; preds = %640, %606
  %644 = phi i32 [ %608, %606 ], [ %641, %640 ]
  call void @rtnl_lock() #11
  call void @rate_control_deinitialize(ptr noundef %0) #11
  call void @ieee80211_remove_interfaces(ptr noundef %0) #11
  call void @rtnl_unlock() #11
  br label %645

645:                                              ; preds = %643, %588, %551, %543
  %646 = phi i32 [ %544, %543 ], [ %549, %551 ], [ %644, %643 ], [ -12, %588 ]
  %647 = load ptr, ptr %519, align 8
  call void @destroy_workqueue(ptr noundef %647) #11
  br label %648

648:                                              ; preds = %645, %516, %454, %453, %389
  %649 = phi i32 [ -22, %453 ], [ %455, %454 ], [ %646, %645 ], [ -22, %389 ], [ -12, %516 ]
  %650 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 25
  %651 = load i8, ptr %650, align 4, !range !8
  %652 = icmp eq i8 %651, 0
  br i1 %652, label %657, label %653

653:                                              ; preds = %648
  %654 = load ptr, ptr %18, align 8
  %655 = getelementptr inbounds %struct.wiphy, ptr %654, i32 0, i32 28
  %656 = load ptr, ptr %655, align 16
  call void @kfree(ptr noundef %656) #11
  br label %657

657:                                              ; preds = %653, %648
  %658 = load ptr, ptr %304, align 4
  call void @kfree(ptr noundef %658) #11
  br label %659

659:                                              ; preds = %657, %634, %300, %290, %231, %120, %108, %98, %76, %70, %65, %49, %34, %30, %24, %12, %8
  %660 = phi i32 [ -22, %49 ], [ -22, %65 ], [ -22, %120 ], [ -22, %231 ], [ %649, %657 ], [ -22, %12 ], [ -22, %8 ], [ -95, %34 ], [ -95, %30 ], [ -95, %24 ], [ -22, %76 ], [ -22, %70 ], [ -12, %300 ], [ 0, %634 ], [ -22, %290 ], [ -22, %98 ], [ -22, %108 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #11
  ret i32 %660
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ieee80211_mcs_to_chains(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_cs_list_valid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_init_cipher_suites(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 2048
  %5 = icmp eq i32 %4, 0
  %6 = load volatile i32, ptr %2, align 4
  %7 = and i32 %6, 16384
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %74

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 28
  %13 = load ptr, ptr %12, align 16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %74

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 28
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  store ptr @ieee80211_init_cipher_suites.cipher_suites, ptr %12, align 16
  %20 = load ptr, ptr %10, align 8
  %21 = getelementptr inbounds %struct.wiphy, ptr %20, i32 0, i32 27
  store i32 11, ptr %21, align 4
  br i1 %5, label %22, label %74

22:                                               ; preds = %19
  %23 = load ptr, ptr %10, align 8
  %24 = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 27
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -4
  store i32 %26, ptr %24, align 4
  br label %74

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 27
  %29 = select i1 %5, i32 7, i32 11
  %30 = load i8, ptr %28, align 2
  %31 = zext i8 %30 to i32
  %32 = add nuw nsw i32 %29, %31
  %33 = shl nuw nsw i32 %32, 2
  %34 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %33, i32 noundef 3264) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %74, label %36

36:                                               ; preds = %27
  store i32 1027076, ptr %34, align 64
  %37 = getelementptr i32, ptr %34, i32 1
  store i32 1027082, ptr %37, align 4
  %38 = getelementptr i32, ptr %34, i32 2
  store i32 1027074, ptr %38, align 8
  %39 = getelementptr i32, ptr %34, i32 3
  store i32 1027080, ptr %39, align 4
  %40 = getelementptr i32, ptr %34, i32 4
  store i32 1027081, ptr %40, align 16
  %41 = getelementptr i32, ptr %34, i32 5
  store i32 1027073, ptr %41, align 4
  %42 = getelementptr i32, ptr %34, i32 6
  store i32 1027077, ptr %42, align 8
  br i1 %5, label %48, label %43

43:                                               ; preds = %36
  %44 = getelementptr i32, ptr %34, i32 7
  store i32 1027078, ptr %44, align 4
  %45 = getelementptr i32, ptr %34, i32 8
  store i32 1027085, ptr %45, align 32
  %46 = getelementptr i32, ptr %34, i32 9
  store i32 1027083, ptr %46, align 4
  %47 = getelementptr i32, ptr %34, i32 10
  store i32 1027084, ptr %47, align 8
  br label %48

48:                                               ; preds = %43, %36
  %49 = phi i32 [ 11, %43 ], [ 7, %36 ]
  %50 = load i8, ptr %28, align 2
  %51 = zext i8 %50 to i32
  %52 = icmp eq i8 %50, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %63, %48
  %54 = phi i32 [ %64, %63 ], [ %49, %48 ]
  %55 = phi i32 [ %65, %63 ], [ 0, %48 ]
  %56 = getelementptr %struct.ieee80211_cipher_scheme, ptr %17, i32 %55
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr i32, ptr %34, i32 %54
  store i32 %57, ptr %58, align 4
  %59 = getelementptr %struct.ieee80211_cipher_scheme, ptr %17, i32 %55, i32 3
  %60 = load i8, ptr %59, align 1
  %61 = icmp ugt i8 %60, 16
  br i1 %61, label %62, label %63, !prof !24

62:                                               ; preds = %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef null) #11
  tail call void @kfree(ptr noundef nonnull %34) #11
  br label %74

63:                                               ; preds = %53
  %64 = add nuw nsw i32 %54, 1
  %65 = add nuw nsw i32 %55, 1
  %66 = icmp eq i32 %65, %51
  br i1 %66, label %67, label %53

67:                                               ; preds = %63, %48
  %68 = phi i32 [ %49, %48 ], [ %64, %63 ]
  %69 = load ptr, ptr %10, align 8
  %70 = getelementptr inbounds %struct.wiphy, ptr %69, i32 0, i32 28
  store ptr %34, ptr %70, align 16
  %71 = load ptr, ptr %10, align 8
  %72 = getelementptr inbounds %struct.wiphy, ptr %71, i32 0, i32 27
  store i32 %68, ptr %72, align 4
  %73 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 25
  store i8 1, ptr %73, align 4
  br label %74

74:                                               ; preds = %67, %62, %27, %22, %19, %9, %1
  %75 = phi i32 [ 0, %67 ], [ 0, %1 ], [ 0, %9 ], [ 0, %19 ], [ 0, %22 ], [ -12, %27 ], [ -22, %62 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wep_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_txq_setup_flows(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_init_rate_ctrl_alg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiphy_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_if_add(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_ifa_changed(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.in_ifaddr, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 70
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %52, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr i8, ptr %0, i32 -4428
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %6, i32 1408
  %17 = getelementptr i8, ptr %6, i32 3672
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %52

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %6, i32 1760
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 68
  %24 = load ptr, ptr %23, align 16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %52, label %26

26:                                               ; preds = %20
  %27 = getelementptr i8, ptr %6, i32 1452
  tail call void @mutex_lock(ptr noundef %27) #11
  %28 = getelementptr inbounds %struct.in_device, ptr %24, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %39, %26
  %32 = phi ptr [ %42, %39 ], [ %29, %26 ]
  %33 = phi i32 [ %41, %39 ], [ 0, %26 ]
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.in_ifaddr, ptr %32, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr %struct.ieee80211_sub_if_data, ptr %16, i32 0, i32 58, i32 1, i32 34, i32 %33
  store i32 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.in_ifaddr, ptr %32, i32 0, i32 1
  %41 = add i32 %33, 1
  %42 = load ptr, ptr %40, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %31

44:                                               ; preds = %39, %26
  %45 = phi i32 [ 0, %26 ], [ %41, %39 ]
  %46 = getelementptr i8, ptr %6, i32 3848
  store i32 %45, ptr %46, align 8
  %47 = getelementptr i8, ptr %6, i32 2976
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %16, i32 noundef 4096)
  br label %51

51:                                               ; preds = %50, %44
  tail call void @mutex_unlock(ptr noundef %27) #11
  br label %52

52:                                               ; preds = %51, %20, %15, %10, %3
  %53 = phi i32 [ 1, %51 ], [ 0, %3 ], [ 0, %10 ], [ 0, %15 ], [ 0, %20 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_ifa6_changed(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.inet6_ifaddr, ptr %2, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -4496
  %8 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 70
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %60, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr i8, ptr %0, i32 -4440
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %6, i32 1408
  %18 = getelementptr i8, ptr %6, i32 3672
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %60

21:                                               ; preds = %16
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_ipv6_addr_change, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = tail call ptr @llvm.thread.pointer() #11
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  %36 = tail call i32 @__traceiter_drv_ipv6_addr_change(ptr noundef null, ptr noundef %7, ptr noundef %17) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !31
  br label %37

37:                                               ; preds = %35, %24, %21
  %38 = getelementptr i8, ptr %0, i32 -3964
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ieee80211_ops, ptr %39, i32 0, i32 76
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void %41(ptr noundef %7, ptr noundef %18, ptr noundef %5) #11
  br label %44

44:                                               ; preds = %43, %37
  %45 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = tail call ptr @llvm.thread.pointer() #11
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 5
  %52 = getelementptr i32, ptr @__cpu_online_mask, i32 %51
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %50, 31
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %53
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %47
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %59 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %7) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  br label %60

60:                                               ; preds = %58, %47, %44, %16, %11, %3
  %61 = phi i32 [ 0, %11 ], [ 0, %3 ], [ 0, %16 ], [ 1, %44 ], [ 1, %47 ], [ 1, %58 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inet6addr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inetaddr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rate_control_deinitialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_remove_interfaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_unregister_hw(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 54
  tail call void @tasklet_kill(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 42
  tail call void @tasklet_kill(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 96
  %5 = tail call i32 @unregister_inetaddr_notifier(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 97
  %7 = tail call i32 @unregister_inet6addr_notifier(ptr noundef %6) #11
  tail call void @rtnl_lock() #11
  tail call void @ieee80211_remove_interfaces(ptr noundef %0) #11
  tail call void @rtnl_unlock() #11
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 102
  %9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %8) #11
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 101
  %11 = tail call zeroext i1 @cancel_work_sync(ptr noundef %10) #11
  %12 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 28
  %13 = tail call zeroext i1 @cancel_work_sync(ptr noundef %12) #11
  %14 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 78
  %15 = tail call zeroext i1 @flush_work(ptr noundef %14) #11
  %16 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 38
  %17 = tail call zeroext i1 @flush_work(ptr noundef %16) #11
  tail call void @ieee80211_clear_tx_pending(ptr noundef %0) #11
  tail call void @rate_control_deinitialize(ptr noundef %0) #11
  %18 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 43, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 44, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21, %1
  %26 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.15) #12
  br label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 43
  tail call void @skb_queue_purge(ptr noundef %30) #11
  %31 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 44
  tail call void @skb_queue_purge(ptr noundef %31) #11
  %32 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  tail call void @wiphy_unregister(ptr noundef %33) #11
  %34 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 9
  %35 = load ptr, ptr %34, align 8
  tail call void @destroy_workqueue(ptr noundef %35) #11
  %36 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 69
  %37 = load ptr, ptr %36, align 4
  tail call void @kfree(ptr noundef %37) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inet6addr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_clear_tx_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_free_hw(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 25
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 28
  %9 = load ptr, ptr %8, align 16
  tail call void @kfree(ptr noundef %9) #11
  br label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 108
  %12 = tail call i32 @idr_for_each(ptr noundef %11, ptr noundef nonnull @ieee80211_free_ack_frame, ptr noundef null) #11
  tail call void @idr_destroy(ptr noundef %11) #11
  tail call void @sta_info_stop(ptr noundef %0) #11
  %13 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 40
  %14 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %15 = load i8, ptr %13, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %10
  %20 = load ptr, ptr %14, align 8
  %21 = getelementptr %struct.wiphy, ptr %20, i32 0, i32 53, i32 0
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #11
  %23 = load i8, ptr %13, align 1
  %24 = zext i8 %23 to i32
  br label %25

25:                                               ; preds = %19, %10
  %26 = phi i32 [ %16, %10 ], [ %24, %19 ]
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %14, align 8
  %31 = getelementptr %struct.wiphy, ptr %30, i32 0, i32 53, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #11
  %33 = load i8, ptr %13, align 1
  %34 = zext i8 %33 to i32
  br label %35

35:                                               ; preds = %29, %25
  %36 = phi i32 [ %34, %29 ], [ %26, %25 ]
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %14, align 8
  %41 = getelementptr %struct.wiphy, ptr %40, i32 0, i32 53, i32 2
  %42 = load ptr, ptr %41, align 4
  tail call void @kfree(ptr noundef %42) #11
  %43 = load i8, ptr %13, align 1
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %39, %35
  %46 = phi i32 [ %44, %39 ], [ %36, %35 ]
  %47 = and i32 %46, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %14, align 8
  %51 = getelementptr %struct.wiphy, ptr %50, i32 0, i32 53, i32 3
  %52 = load ptr, ptr %51, align 4
  tail call void @kfree(ptr noundef %52) #11
  %53 = load i8, ptr %13, align 1
  %54 = zext i8 %53 to i32
  br label %55

55:                                               ; preds = %49, %45
  %56 = phi i32 [ %54, %49 ], [ %46, %45 ]
  %57 = and i32 %56, 16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %14, align 8
  %61 = getelementptr %struct.wiphy, ptr %60, i32 0, i32 53, i32 4
  %62 = load ptr, ptr %61, align 4
  tail call void @kfree(ptr noundef %62) #11
  %63 = load i8, ptr %13, align 1
  %64 = zext i8 %63 to i32
  br label %65

65:                                               ; preds = %59, %55
  %66 = phi i32 [ %64, %59 ], [ %56, %55 ]
  %67 = and i32 %66, 32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %14, align 8
  %71 = getelementptr %struct.wiphy, ptr %70, i32 0, i32 53, i32 5
  %72 = load ptr, ptr %71, align 4
  tail call void @kfree(ptr noundef %72) #11
  br label %73

73:                                               ; preds = %69, %65
  %74 = load ptr, ptr %14, align 8
  tail call void @wiphy_free(ptr noundef %74) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_free_ack_frame(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i1, ptr @ieee80211_free_ack_frame.__already_done, align 1
  br i1 %4, label %6, label %5, !prof !17

5:                                                ; preds = %3
  store i1 true, ptr @ieee80211_free_ack_frame.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1416, i32 noundef 9, ptr noundef nonnull @.str.24) #11
  br label %6

6:                                                ; preds = %5, %3
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sta_info_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call i32 @rc80211_minstrel_init() #11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @ieee80211_iface_init() #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @rc80211_minstrel_exit() #11
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %4, %6 ], [ %1, %0 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #7 section ".exit.text" {
  tail call void @rc80211_minstrel_exit() #11
  tail call void @ieee80211_iface_exit() #11
  tail call void @rcu_barrier() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_prepare_multicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_u64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_configure_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_bss_info_changed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_restart_hw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_connection_lost(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_reconfig(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_shutdown_all_interfaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_napi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_ipv6_addr_change(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc80211_minstrel_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_iface_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc80211_minstrel_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iface_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

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
!9 = !{i64 2158744361}
!10 = !{i64 2158744545}
!11 = !{i64 2158548328}
!12 = !{i64 2158548488}
!13 = !{i64 2158759041}
!14 = !{i64 2158759281}
!15 = !{i64 2158492797}
!16 = !{i64 2158492949}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2149646662}
!19 = !{i64 2149646879}
!20 = !{i64 2158716635}
!21 = !{i64 2158716795}
!22 = !{i64 2158505667}
!23 = !{i64 2158505827}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2158730836}
!26 = !{i64 2158731042}
!27 = !{i64 2159884862}
!28 = !{i64 2159885012}
!29 = !{i64 2160662088}
!30 = !{i64 2159669126}
!31 = !{i64 2159669302}
