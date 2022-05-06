; ModuleID = '/llk/IR/net/mac80211/tx.c_pt.bc'
source_filename = "../net/mac80211/tx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_tx_prepare_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_tx_prepare_skb\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_tx_prepare_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_tx_dequeue:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_tx_dequeue\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_tx_dequeue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_next_txq:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_next_txq\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_next_txq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_schedule_txq:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_schedule_txq\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_schedule_txq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_return_txq:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_return_txq\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_return_txq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_txq_airtime_check:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_txq_airtime_check\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_txq_airtime_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_txq_may_transmit:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_txq_may_transmit\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_txq_may_transmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_txq_schedule_start:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_txq_schedule_start\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_txq_schedule_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_beacon_update_cntdwn:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_beacon_update_cntdwn\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_beacon_update_cntdwn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_beacon_set_cntdwn:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_beacon_set_cntdwn\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_beacon_set_cntdwn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_beacon_cntdwn_is_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_beacon_cntdwn_is_complete\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_beacon_cntdwn_is_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_beacon_get_template:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_beacon_get_template\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_beacon_get_template:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_beacon_get_tim:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_beacon_get_tim\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_beacon_get_tim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_proberesp_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_proberesp_get\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_proberesp_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_fils_discovery_tmpl:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_fils_discovery_tmpl\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_fils_discovery_tmpl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_unsol_bcast_probe_resp_tmpl:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_unsol_bcast_probe_resp_tmpl\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_unsol_bcast_probe_resp_tmpl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_pspoll_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_pspoll_get\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_pspoll_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_nullfunc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_nullfunc_get\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_nullfunc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_probereq_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_probereq_get\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_probereq_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_rts_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_rts_get\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_rts_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_ctstoself_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_ctstoself_get\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_ctstoself_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_buffered_bc:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_buffered_bc\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_buffered_bc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_reserve_tid:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_reserve_tid\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_reserve_tid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_unreserve_tid:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_unreserve_tid\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_unreserve_tid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.fq_tin = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.fq_flow, i32, i32, i32, i32, i32, i32, i32 }
%struct.fq_flow = type { ptr, %struct.list_head, %struct.sk_buff_head, i32, i32 }
%struct.txq_info = type { %struct.fq_tin, %struct.codel_vars, %struct.codel_stats, %struct.rb_node, %struct.sk_buff_head, i32, %struct.ieee80211_txq }
%struct.codel_vars = type { i32, i32, i8, i16, i32, i32, i32 }
%struct.codel_stats = type { i32, i32, i32, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.161, [17 x i16], %struct.anon.162, %struct.anon.163, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.anon.161 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.162 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.163 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.140 = type { i64, i64, i8 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_tx_data = type { ptr, %struct.sk_buff_head, ptr, ptr, ptr, ptr, %struct.ieee80211_tx_rate, i32 }
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
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.tid_ampdu_tx = type { %struct.callback_head, %struct.timer_list, %struct.timer_list, %struct.sk_buff_head, ptr, i32, i32, i16, i8, i8, i8, i16, i16, i16, i8, i8, i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ieee80211_radiotap_iterator = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.84, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.101, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.84 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ref_tracker_dir = type {}
%union.anon.101 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.ieee80211_radiotap_header = type { i8, i8, i16, i32, [0 x i32] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_fast_tx = type { ptr, i8, i8, i8, i8, i8, i8, [56 x i8], %struct.callback_head }
%struct.ieee80211_if_ibss = type { %struct.timer_list, %struct.work_struct, i32, i32, i8, i8, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, ptr, %struct.cfg80211_chan_def, i32, ptr, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.spinlock, %struct.list_head, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_key = type { ptr, ptr, ptr, %struct.list_head, i32, %union.anon.164, i32, %struct.ieee80211_key_conf }
%union.anon.164 = type { %struct.anon.165 }
%struct.anon.165 = type { %struct.spinlock, %struct.tkip_ctx, [16 x %struct.tkip_ctx_rx], i32 }
%struct.tkip_ctx = type { [5 x i16], i32, i32 }
%struct.tkip_ctx_rx = type { %struct.tkip_ctx, i32, i16 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.vlan_hdr = type { i16, i16 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.173 }
%union.anon.173 = type { %struct.anon.179, [16 x i8] }
%struct.anon.179 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_tx_rate_control = type { ptr, ptr, ptr, ptr, %struct.ieee80211_tx_rate, i8, i8, i32, ptr, i8 }
%struct.ieee80211_sta_rates = type { %struct.callback_head, [4 x %struct.anon.142] }
%struct.anon.142 = type { i8, i8, i8, i8, i16 }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync, [28 x i8] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.sock_common = type { %union.anon.34, %union.anon.36, %union.anon.37, i16, i8, i8, i32, %union.anon.39, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.63, [0 x i32], %union.anon.64, i16, i16, %union.anon.65, %struct.refcount_struct, [0 x i32], %union.anon.66 }
%union.anon.34 = type { i64 }
%union.anon.36 = type { i32 }
%union.anon.37 = type { i32 }
%union.anon.39 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.62 }
%union.anon.62 = type { [4 x i32] }
%union.anon.63 = type { i32 }
%union.anon.64 = type { %struct.hlist_node }
%union.anon.65 = type { i32 }
%union.anon.66 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.71, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.72, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.73, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.71 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.72 = type { ptr }
%union.anon.73 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.ieee80211_if_ap = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ps_data, %struct.atomic_t, i8 }
%struct.vlan_ethhdr = type { %union.anon.207, i16, i16, i16 }
%union.anon.207 = type { %struct.anon.208 }
%struct.anon.208 = type { [6 x i8], [6 x i8] }
%struct.sk_buff_list = type { ptr, ptr }
%struct.beacon_data = type { ptr, ptr, i32, i32, ptr, [2 x i16], i8, %struct.callback_head }
%struct.ieee80211_mutable_offsets = type { i16, i16, [2 x i16] }
%struct.probe_resp = type { %struct.callback_head, i32, [2 x i16], [0 x i8] }
%struct.fils_discovery_data = type { %struct.callback_head, i32, [0 x i8] }
%struct.unsol_bcast_probe_resp_data = type { %struct.callback_head, i32, [0 x i8] }
%struct.ieee80211_pspoll = type { i16, i16, [6 x i8], [6 x i8] }
%struct.ieee80211_hdr_3addr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.ieee80211_rts = type { i16, i16, [6 x i8], [6 x i8] }
%struct.ieee80211_cts = type { i16, i16, [6 x i8] }
%struct.ieee80211_tx_control = type { ptr }

@.str = private unnamed_addr constant [18 x i8] c"net/mac80211/tx.c\00", align 1
@__kstrtab_ieee80211_tx_prepare_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_tx_prepare_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_tx_prepare_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_tx_prepare_skb to i32), ptr @__kstrtab_ieee80211_tx_prepare_skb, ptr @__kstrtabns_ieee80211_tx_prepare_skb }, section "___ksymtab+ieee80211_tx_prepare_skb", align 4
@rfc1042_header = external dso_local local_unnamed_addr constant [6 x i8], align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"management cipher suite 0x%x enabled for data\0A\00", align 1
@ieee80211_tx_dequeue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ieee80211_tx_dequeue = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_tx_dequeue = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_tx_dequeue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_tx_dequeue to i32), ptr @__kstrtab_ieee80211_tx_dequeue, ptr @__kstrtabns_ieee80211_tx_dequeue }, section "___ksymtab+ieee80211_tx_dequeue", align 4
@__kstrtab_ieee80211_next_txq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_next_txq = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_next_txq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_next_txq to i32), ptr @__kstrtab_ieee80211_next_txq, ptr @__kstrtabns_ieee80211_next_txq }, section "___ksymtab+ieee80211_next_txq", align 4
@__kstrtab_ieee80211_schedule_txq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_schedule_txq = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_schedule_txq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_schedule_txq to i32), ptr @__kstrtab_ieee80211_schedule_txq, ptr @__kstrtabns_ieee80211_schedule_txq }, section "___ksymtab+ieee80211_schedule_txq", align 4
@__kstrtab_ieee80211_return_txq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_return_txq = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_return_txq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_return_txq to i32), ptr @__kstrtab_ieee80211_return_txq, ptr @__kstrtabns_ieee80211_return_txq }, section "___ksymtab+ieee80211_return_txq", align 4
@aql_disable = dso_local global %struct.static_key_false zeroinitializer, align 4
@__kstrtab_ieee80211_txq_airtime_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_txq_airtime_check = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_txq_airtime_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_txq_airtime_check to i32), ptr @__kstrtab_ieee80211_txq_airtime_check, ptr @__kstrtabns_ieee80211_txq_airtime_check }, section "___ksymtab+ieee80211_txq_airtime_check", align 4
@__kstrtab_ieee80211_txq_may_transmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_txq_may_transmit = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_txq_may_transmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_txq_may_transmit to i32), ptr @__kstrtab_ieee80211_txq_may_transmit, ptr @__kstrtabns_ieee80211_txq_may_transmit }, section "___ksymtab+ieee80211_txq_may_transmit", align 4
@__kstrtab_ieee80211_txq_schedule_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_txq_schedule_start = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_txq_schedule_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_txq_schedule_start to i32), ptr @__kstrtab_ieee80211_txq_schedule_start, ptr @__kstrtabns_ieee80211_txq_schedule_start }, section "___ksymtab+ieee80211_txq_schedule_start", align 4
@__kstrtab_ieee80211_beacon_update_cntdwn = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_beacon_update_cntdwn = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_beacon_update_cntdwn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_beacon_update_cntdwn to i32), ptr @__kstrtab_ieee80211_beacon_update_cntdwn, ptr @__kstrtabns_ieee80211_beacon_update_cntdwn }, section "___ksymtab+ieee80211_beacon_update_cntdwn", align 4
@__kstrtab_ieee80211_beacon_set_cntdwn = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_beacon_set_cntdwn = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_beacon_set_cntdwn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_beacon_set_cntdwn to i32), ptr @__kstrtab_ieee80211_beacon_set_cntdwn, ptr @__kstrtabns_ieee80211_beacon_set_cntdwn }, section "___ksymtab+ieee80211_beacon_set_cntdwn", align 4
@ieee80211_beacon_cntdwn_is_complete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ieee80211_beacon_cntdwn_is_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_beacon_cntdwn_is_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_beacon_cntdwn_is_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_beacon_cntdwn_is_complete to i32), ptr @__kstrtab_ieee80211_beacon_cntdwn_is_complete, ptr @__kstrtabns_ieee80211_beacon_cntdwn_is_complete }, section "___ksymtab+ieee80211_beacon_cntdwn_is_complete", align 4
@__kstrtab_ieee80211_beacon_get_template = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_beacon_get_template = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_beacon_get_template = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_beacon_get_template to i32), ptr @__kstrtab_ieee80211_beacon_get_template, ptr @__kstrtabns_ieee80211_beacon_get_template }, section "___ksymtab+ieee80211_beacon_get_template", align 4
@__kstrtab_ieee80211_beacon_get_tim = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_beacon_get_tim = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_beacon_get_tim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_beacon_get_tim to i32), ptr @__kstrtab_ieee80211_beacon_get_tim, ptr @__kstrtabns_ieee80211_beacon_get_tim }, section "___ksymtab+ieee80211_beacon_get_tim", align 4
@__kstrtab_ieee80211_proberesp_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_proberesp_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_proberesp_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_proberesp_get to i32), ptr @__kstrtab_ieee80211_proberesp_get, ptr @__kstrtabns_ieee80211_proberesp_get }, section "___ksymtab+ieee80211_proberesp_get", align 4
@__kstrtab_ieee80211_get_fils_discovery_tmpl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_fils_discovery_tmpl = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_fils_discovery_tmpl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_fils_discovery_tmpl to i32), ptr @__kstrtab_ieee80211_get_fils_discovery_tmpl, ptr @__kstrtabns_ieee80211_get_fils_discovery_tmpl }, section "___ksymtab+ieee80211_get_fils_discovery_tmpl", align 4
@__kstrtab_ieee80211_get_unsol_bcast_probe_resp_tmpl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_unsol_bcast_probe_resp_tmpl = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_unsol_bcast_probe_resp_tmpl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_unsol_bcast_probe_resp_tmpl to i32), ptr @__kstrtab_ieee80211_get_unsol_bcast_probe_resp_tmpl, ptr @__kstrtabns_ieee80211_get_unsol_bcast_probe_resp_tmpl }, section "___ksymtab+ieee80211_get_unsol_bcast_probe_resp_tmpl", align 4
@__kstrtab_ieee80211_pspoll_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_pspoll_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_pspoll_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_pspoll_get to i32), ptr @__kstrtab_ieee80211_pspoll_get, ptr @__kstrtabns_ieee80211_pspoll_get }, section "___ksymtab+ieee80211_pspoll_get", align 4
@__kstrtab_ieee80211_nullfunc_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_nullfunc_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_nullfunc_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_nullfunc_get to i32), ptr @__kstrtab_ieee80211_nullfunc_get, ptr @__kstrtabns_ieee80211_nullfunc_get }, section "___ksymtab+ieee80211_nullfunc_get", align 4
@__kstrtab_ieee80211_probereq_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_probereq_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_probereq_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_probereq_get to i32), ptr @__kstrtab_ieee80211_probereq_get, ptr @__kstrtabns_ieee80211_probereq_get }, section "___ksymtab+ieee80211_probereq_get", align 4
@__kstrtab_ieee80211_rts_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_rts_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_rts_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_rts_get to i32), ptr @__kstrtab_ieee80211_rts_get, ptr @__kstrtabns_ieee80211_rts_get }, section "___ksymtab+ieee80211_rts_get", align 4
@__kstrtab_ieee80211_ctstoself_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_ctstoself_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_ctstoself_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_ctstoself_get to i32), ptr @__kstrtab_ieee80211_ctstoself_get, ptr @__kstrtabns_ieee80211_ctstoself_get }, section "___ksymtab+ieee80211_ctstoself_get", align 4
@__kstrtab_ieee80211_get_buffered_bc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_buffered_bc = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_buffered_bc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_buffered_bc to i32), ptr @__kstrtab_ieee80211_get_buffered_bc, ptr @__kstrtabns_ieee80211_get_buffered_bc }, section "___ksymtab+ieee80211_get_buffered_bc", align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"\013%s: TID reservation already active\0A\00", align 1
@ieee802_1d_to_ac = external dso_local local_unnamed_addr constant [8 x i32], align 4
@__kstrtab_ieee80211_reserve_tid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_reserve_tid = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_reserve_tid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_reserve_tid to i32), ptr @__kstrtab_ieee80211_reserve_tid, ptr @__kstrtabns_ieee80211_reserve_tid }, section "___ksymtab+ieee80211_reserve_tid", align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"\013%s: TID to unreserve (%d) isn't reserved\0A\00", align 1
@__kstrtab_ieee80211_unreserve_tid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_unreserve_tid = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_unreserve_tid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_unreserve_tid to i32), ptr @__kstrtab_ieee80211_unreserve_tid, ptr @__kstrtabns_ieee80211_unreserve_tid }, section "___ksymtab+ieee80211_unreserve_tid", align 4
@fq_tin_reset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"include/net/fq_impl.h\00", align 1
@fq_tin_reset.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@fq_tin_reset.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@fq_flow_reset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.8 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"failed to reallocate TX buffer\0A\00", align 1
@drv_wake_tx_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@__tracepoint_drv_wake_tx_queue = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__ieee80211_tx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"include/net/mac80211.h\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"include/linux/if_vlan.h\00", align 1
@.str.15 = private unnamed_addr constant [117 x i8] c"%s: Dropped data frame as no usable bitrate found while scanning and associated. Target station: %pM on %d GHz band\0A\00", align 1
@ieee80211_tx_h_rate_ctrl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_duration.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bridge_tunnel_header = external dso_local local_unnamed_addr constant [6 x i8], align 1
@__ieee80211_beacon_update_cntdwn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_beacon_protect.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_set_beacon_cntdwn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_ieee80211_beacon_cntdwn_is_complete, ptr @__ksymtab_ieee80211_beacon_get_template, ptr @__ksymtab_ieee80211_beacon_get_tim, ptr @__ksymtab_ieee80211_beacon_set_cntdwn, ptr @__ksymtab_ieee80211_beacon_update_cntdwn, ptr @__ksymtab_ieee80211_ctstoself_get, ptr @__ksymtab_ieee80211_get_buffered_bc, ptr @__ksymtab_ieee80211_get_fils_discovery_tmpl, ptr @__ksymtab_ieee80211_get_unsol_bcast_probe_resp_tmpl, ptr @__ksymtab_ieee80211_next_txq, ptr @__ksymtab_ieee80211_nullfunc_get, ptr @__ksymtab_ieee80211_probereq_get, ptr @__ksymtab_ieee80211_proberesp_get, ptr @__ksymtab_ieee80211_pspoll_get, ptr @__ksymtab_ieee80211_reserve_tid, ptr @__ksymtab_ieee80211_return_txq, ptr @__ksymtab_ieee80211_rts_get, ptr @__ksymtab_ieee80211_schedule_txq, ptr @__ksymtab_ieee80211_tx_dequeue, ptr @__ksymtab_ieee80211_tx_prepare_skb, ptr @__ksymtab_ieee80211_txq_airtime_check, ptr @__ksymtab_ieee80211_txq_may_transmit, ptr @__ksymtab_ieee80211_txq_schedule_start, ptr @__ksymtab_ieee80211_unreserve_tid], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_txq_remove_vlan(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1459, i32 noundef 9, ptr noundef null) #16
  br label %34

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 49
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 1672
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %12, i32 -164
  %16 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %16) #16
  %17 = load ptr, ptr %15, align 4
  %18 = icmp eq ptr %17, %15
  br i1 %18, label %24, label %19

19:                                               ; preds = %19, %14
  %20 = phi ptr [ %22, %19 ], [ %17, %14 ]
  %21 = getelementptr i8, ptr %20, i32 -4
  tail call fastcc void @fq_flow_filter(ptr noundef %3, ptr noundef %21, ptr noundef %4) #16
  %22 = load ptr, ptr %20, align 4
  %23 = icmp eq ptr %22, %15
  br i1 %23, label %24, label %19

24:                                               ; preds = %19, %14
  %25 = getelementptr i8, ptr %12, i32 -156
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %33, label %28

28:                                               ; preds = %28, %24
  %29 = phi ptr [ %31, %28 ], [ %26, %24 ]
  %30 = getelementptr i8, ptr %29, i32 -4
  tail call fastcc void @fq_flow_filter(ptr noundef %3, ptr noundef %30, ptr noundef %4) #16
  %31 = load ptr, ptr %29, align 4
  %32 = icmp eq ptr %31, %25
  br i1 %32, label %33, label %28

33:                                               ; preds = %28, %24
  tail call void @_raw_spin_unlock_bh(ptr noundef %16) #16
  br label %34

34:                                               ; preds = %33, %8, %7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_txq_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  store volatile ptr %2, ptr %2, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.fq_tin, ptr %2, i32 0, i32 1
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.fq_tin, ptr %2, i32 0, i32 1, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.fq_tin, ptr %2, i32 0, i32 2
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.fq_tin, ptr %2, i32 0, i32 2, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fq_tin, ptr %2, i32 0, i32 3, i32 1
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.fq_tin, ptr %2, i32 0, i32 3, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.fq_tin, ptr %2, i32 0, i32 3, i32 2
  store ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.fq_tin, ptr %2, i32 0, i32 3, i32 2, i32 0, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.fq_tin, ptr %2, i32 0, i32 3, i32 2, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.txq_info, ptr %2, i32 0, i32 1
  %16 = getelementptr inbounds %struct.txq_info, ptr %2, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %15, i8 0, i64 28, i1 false)
  store ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.txq_info, ptr %2, i32 0, i32 4, i32 0, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.txq_info, ptr %2, i32 0, i32 4, i32 1
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.txq_info, ptr %2, i32 0, i32 3
  %20 = ptrtoint ptr %19 to i32
  store i32 %20, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %22 = getelementptr inbounds %struct.txq_info, ptr %2, i32 0, i32 6
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %1, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 8
  store ptr %22, ptr %25, align 8
  %26 = getelementptr inbounds %struct.txq_info, ptr %2, i32 0, i32 6, i32 2
  store i8 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.txq_info, ptr %2, i32 0, i32 6, i32 3
  store i8 2, ptr %27, align 1
  br label %56

28:                                               ; preds = %4
  %29 = icmp eq i32 %3, 16
  br i1 %29, label %30, label %43

30:                                               ; preds = %28
  %31 = load i32, ptr %21, align 8
  %32 = icmp eq i32 %31, 2
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr %struct.ieee80211_hw, ptr %34, i32 0, i32 4, i32 1
  %36 = load volatile i32, ptr %35, align 4
  br i1 %32, label %37, label %40

37:                                               ; preds = %30
  %38 = and i32 %36, 4096
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %56, label %48

40:                                               ; preds = %30
  %41 = and i32 %36, 1024
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %56, label %48

43:                                               ; preds = %28
  %44 = and i32 %3, 7
  %45 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = trunc i32 %46 to i8
  br label %48

48:                                               ; preds = %43, %40, %37
  %49 = phi i8 [ %47, %43 ], [ 0, %40 ], [ 0, %37 ]
  %50 = getelementptr inbounds %struct.txq_info, ptr %2, i32 0, i32 6, i32 3
  store i8 %49, ptr %50, align 1
  %51 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46
  %52 = getelementptr inbounds %struct.txq_info, ptr %2, i32 0, i32 6, i32 1
  store ptr %51, ptr %52, align 4
  %53 = trunc i32 %3 to i8
  %54 = getelementptr inbounds %struct.txq_info, ptr %2, i32 0, i32 6, i32 2
  store i8 %53, ptr %54, align 4
  %55 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 46, i32 28, i32 %3
  store ptr %22, ptr %55, align 4
  br label %56

56:                                               ; preds = %48, %40, %37, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_txq_purge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #16
  %5 = getelementptr inbounds %struct.fq_tin, ptr %1, i32 0, i32 1
  br label %6

6:                                                ; preds = %12, %2
  %7 = load volatile ptr, ptr %1, align 4
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load volatile ptr, ptr %5, align 4
  %11 = icmp eq ptr %10, %5
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %6
  %13 = phi ptr [ %10, %9 ], [ %7, %6 ]
  %14 = getelementptr i8, ptr %13, i32 -4
  tail call fastcc void @fq_flow_reset(ptr noundef %3, ptr noundef %14) #16
  br label %6

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.fq_tin, ptr %1, i32 0, i32 2
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp ne ptr %17, %16
  %19 = load i1, ptr @fq_tin_reset.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !10

22:                                               ; preds = %15
  store i1 true, ptr @fq_tin_reset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 326, i32 noundef 9, ptr noundef null) #16
  br label %23

23:                                               ; preds = %22, %15
  %24 = getelementptr inbounds %struct.fq_tin, ptr %1, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = load i1, ptr @fq_tin_reset.__already_done.5, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %31, !prof !10

30:                                               ; preds = %23
  store i1 true, ptr @fq_tin_reset.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 327, i32 noundef 9, ptr noundef null) #16
  br label %31

31:                                               ; preds = %30, %23
  %32 = getelementptr inbounds %struct.fq_tin, ptr %1, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = load i1, ptr @fq_tin_reset.__already_done.6, align 1
  %36 = xor i1 %35, true
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %39, !prof !10

38:                                               ; preds = %31
  store i1 true, ptr @fq_tin_reset.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 328, i32 noundef 9, ptr noundef null) #16
  br label %39

39:                                               ; preds = %38, %31
  %40 = getelementptr inbounds %struct.txq_info, ptr %1, i32 0, i32 4
  tail call void @ieee80211_purge_tx_queue(ptr noundef %0, ptr noundef %40) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #16
  %41 = getelementptr inbounds %struct.txq_info, ptr %1, i32 0, i32 6
  %42 = getelementptr inbounds %struct.txq_info, ptr %1, i32 0, i32 6, i32 3
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %44
  tail call void @_raw_spin_lock_bh(ptr noundef %45) #16
  tail call fastcc void @__ieee80211_unschedule_txq(ptr noundef %0, ptr noundef %41, i1 noundef zeroext true) #16
  %46 = load i8, ptr %42, align 1
  %47 = zext i8 %46 to i32
  %48 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %47
  tail call void @_raw_spin_unlock_bh(ptr noundef %48) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_purge_tx_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_unschedule_txq(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 3
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6
  tail call void @_raw_spin_lock_bh(ptr noundef %7) #16
  tail call fastcc void @__ieee80211_unschedule_txq(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2)
  %8 = load i8, ptr %4, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %9
  tail call void @_raw_spin_unlock_bh(ptr noundef %10) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ieee80211_txq_set_params(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 72
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 5
  br i1 %6, label %9, label %8

8:                                                ; preds = %1
  store i32 %5, ptr %7, align 8
  br label %12

9:                                                ; preds = %1
  %10 = load i32, ptr %7, align 8
  store i32 %10, ptr %4, align 8
  %11 = load ptr, ptr %2, align 8
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi ptr [ %11, %9 ], [ %3, %8 ]
  %14 = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 73
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 6
  br i1 %16, label %19, label %18

18:                                               ; preds = %12
  store i32 %15, ptr %17, align 4
  br label %22

19:                                               ; preds = %12
  %20 = load i32, ptr %17, align 4
  store i32 %20, ptr %14, align 4
  %21 = load ptr, ptr %2, align 8
  br label %22

22:                                               ; preds = %19, %18
  %23 = phi ptr [ %21, %19 ], [ %13, %18 ]
  %24 = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 74
  %25 = load i32, ptr %24, align 32
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 8
  br i1 %26, label %29, label %28

28:                                               ; preds = %22
  store i32 %25, ptr %27, align 4
  br label %31

29:                                               ; preds = %22
  %30 = load i32, ptr %27, align 4
  store i32 %30, ptr %24, align 32
  br label %31

31:                                               ; preds = %29, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_txq_setup_flows(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_ops, ptr %4, i32 0, i32 89
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %184, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(56) %2, i8 0, i64 56, i1 false) #16
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 2, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 4
  store i32 4096, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 8
  store i32 300, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 5
  store i32 8192, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 6
  store i32 16777216, ptr %14, align 4
  %15 = tail call noalias ptr @kvmalloc_node(i32 noundef 147456, i32 noundef 3520, i32 noundef -1) #17
  store ptr %15, ptr %2, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %184, label %17

17:                                               ; preds = %8
  %18 = load i32, ptr %11, align 4
  %19 = add i32 %18, 31
  %20 = lshr i32 %19, 3
  %21 = and i32 %20, 536870908
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #17
  %23 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 1
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, ptr %11, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %41, label %30

28:                                               ; preds = %17
  %29 = load ptr, ptr %2, align 4
  tail call void @kvfree(ptr noundef %29) #16
  store ptr null, ptr %2, align 4
  br label %184

30:                                               ; preds = %30, %25
  %31 = phi i32 [ %38, %30 ], [ 0, %25 ]
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr %struct.fq_flow, ptr %32, i32 %31, i32 1
  store volatile ptr %33, ptr %33, align 4
  %34 = getelementptr %struct.fq_flow, ptr %32, i32 %31, i32 1, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr %struct.fq_flow, ptr %32, i32 %31, i32 2
  store ptr %35, ptr %35, align 4
  %36 = getelementptr %struct.fq_flow, ptr %32, i32 %31, i32 2, i32 0, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  %37 = getelementptr %struct.fq_flow, ptr %32, i32 %31, i32 2, i32 1
  store i32 0, ptr %37, align 4
  %38 = add nuw i32 %31, 1
  %39 = load i32, ptr %11, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %30, label %41

41:                                               ; preds = %30, %25
  %42 = phi i32 [ 0, %25 ], [ %39, %30 ]
  %43 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr %struct.wiphy, ptr %44, i32 0, i32 53, i32 0
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %46, i32 0, i32 6
  %50 = load i8, ptr %49, align 4, !range !11
  %51 = icmp ne i8 %50, 0
  br label %52

52:                                               ; preds = %48, %41
  %53 = phi i1 [ false, %41 ], [ %51, %48 ]
  %54 = getelementptr %struct.wiphy, ptr %44, i32 0, i32 53, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  %57 = select i1 %56, i1 true, i1 %53
  %58 = xor i1 %56, true
  %59 = select i1 %58, i1 true, i1 %53
  br i1 %57, label %64, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %55, i32 0, i32 6
  %62 = load i8, ptr %61, align 4, !range !11
  %63 = icmp ne i8 %62, 0
  br label %64

64:                                               ; preds = %60, %52
  %65 = phi i1 [ %59, %52 ], [ %63, %60 ]
  %66 = getelementptr %struct.wiphy, ptr %44, i32 0, i32 53, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  %69 = select i1 %68, i1 true, i1 %65
  %70 = xor i1 %68, true
  %71 = select i1 %70, i1 true, i1 %65
  br i1 %69, label %76, label %72

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %67, i32 0, i32 6
  %74 = load i8, ptr %73, align 4, !range !11
  %75 = icmp ne i8 %74, 0
  br label %76

76:                                               ; preds = %72, %64
  %77 = phi i1 [ %71, %64 ], [ %75, %72 ]
  %78 = getelementptr %struct.wiphy, ptr %44, i32 0, i32 53, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  %81 = select i1 %80, i1 true, i1 %77
  %82 = xor i1 %80, true
  %83 = select i1 %82, i1 true, i1 %77
  br i1 %81, label %88, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %79, i32 0, i32 6
  %86 = load i8, ptr %85, align 4, !range !11
  %87 = icmp ne i8 %86, 0
  br label %88

88:                                               ; preds = %84, %76
  %89 = phi i1 [ %83, %76 ], [ %87, %84 ]
  %90 = getelementptr %struct.wiphy, ptr %44, i32 0, i32 53, i32 4
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  %93 = select i1 %92, i1 true, i1 %89
  %94 = xor i1 %92, true
  %95 = select i1 %94, i1 true, i1 %89
  br i1 %93, label %100, label %96

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %91, i32 0, i32 6
  %98 = load i8, ptr %97, align 4, !range !11
  %99 = icmp ne i8 %98, 0
  br label %100

100:                                              ; preds = %96, %88
  %101 = phi i1 [ %95, %88 ], [ %99, %96 ]
  %102 = getelementptr %struct.wiphy, ptr %44, i32 0, i32 53, i32 5
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  %105 = select i1 %104, i1 true, i1 %101
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %103, i32 0, i32 6
  %108 = load i8, ptr %107, align 4, !range !11
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %113, label %114

110:                                              ; preds = %100
  %111 = xor i1 %104, true
  %112 = select i1 %111, i1 true, i1 %101
  br i1 %112, label %114, label %113

113:                                              ; preds = %110, %106
  store i32 4194304, ptr %14, align 4
  br label %114

114:                                              ; preds = %113, %110, %106
  %115 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 3
  %116 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 3, i32 2
  %117 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 3, i32 1
  store i32 2147483647, ptr %117, align 4
  %118 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 3, i32 6
  store i8 0, ptr %118, align 2
  %119 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 3, i32 5
  store i8 0, ptr %119, align 1
  %120 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 3, i32 4
  store i32 97656, ptr %116, align 4
  store i32 19531, ptr %115, align 4
  store i8 1, ptr %120, align 4
  %121 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %42, i32 24) #16
  %122 = extractvalue { i32, i1 } %121, 1
  br i1 %122, label %123, label %125, !prof !10

123:                                              ; preds = %114
  %124 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 2
  store ptr null, ptr %124, align 8
  br label %136

125:                                              ; preds = %114
  %126 = extractvalue { i32, i1 } %121, 0
  %127 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %126, i32 noundef 3520) #17
  %128 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 2
  store ptr %127, ptr %128, align 8
  %129 = icmp eq ptr %127, null
  br i1 %129, label %136, label %130

130:                                              ; preds = %125
  %131 = load i32, ptr %11, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %158, label %133

133:                                              ; preds = %130
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(24) %127, i8 0, i32 24, i1 false) #16
  %134 = load i32, ptr %11, align 4
  %135 = icmp ugt i32 %134, 1
  br i1 %135, label %151, label %158

136:                                              ; preds = %125, %123
  %137 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %137) #16
  %138 = load i32, ptr %11, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %140, %136
  %141 = phi i32 [ %144, %140 ], [ 0, %136 ]
  %142 = load ptr, ptr %2, align 4
  %143 = getelementptr %struct.fq_flow, ptr %142, i32 %141
  tail call fastcc void @fq_flow_reset(ptr noundef %2, ptr noundef %143) #16
  %144 = add nuw i32 %141, 1
  %145 = load i32, ptr %11, align 4
  %146 = icmp ult i32 %144, %145
  br i1 %146, label %140, label %147

147:                                              ; preds = %140, %136
  %148 = load ptr, ptr %2, align 4
  tail call void @kvfree(ptr noundef %148) #16
  store ptr null, ptr %2, align 4
  %149 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 1
  %150 = load ptr, ptr %149, align 4
  tail call void @kfree(ptr noundef %150) #16
  store ptr null, ptr %149, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %137) #16
  br label %184

151:                                              ; preds = %151, %133
  %152 = phi i32 [ %155, %151 ], [ 1, %133 ]
  %153 = load ptr, ptr %128, align 8
  %154 = getelementptr %struct.codel_vars, ptr %153, i32 %152
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %154, i8 0, i32 24, i1 false) #16
  %155 = add nuw i32 %152, 1
  %156 = load i32, ptr %11, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %151, label %158

158:                                              ; preds = %151, %133, %130
  %159 = load ptr, ptr %43, align 8
  %160 = getelementptr inbounds %struct.wiphy, ptr %159, i32 0, i32 72
  %161 = load i32, ptr %160, align 8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %158
  store i32 %161, ptr %13, align 8
  br label %167

164:                                              ; preds = %158
  %165 = load i32, ptr %13, align 8
  store i32 %165, ptr %160, align 8
  %166 = load ptr, ptr %43, align 8
  br label %167

167:                                              ; preds = %164, %163
  %168 = phi ptr [ %166, %164 ], [ %159, %163 ]
  %169 = getelementptr inbounds %struct.wiphy, ptr %168, i32 0, i32 73
  %170 = load i32, ptr %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  store i32 %170, ptr %14, align 4
  br label %176

173:                                              ; preds = %167
  %174 = load i32, ptr %14, align 4
  store i32 %174, ptr %169, align 4
  %175 = load ptr, ptr %43, align 8
  br label %176

176:                                              ; preds = %173, %172
  %177 = phi ptr [ %175, %173 ], [ %168, %172 ]
  %178 = getelementptr inbounds %struct.wiphy, ptr %177, i32 0, i32 74
  %179 = load i32, ptr %178, align 32
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %176
  store i32 %179, ptr %12, align 4
  br label %184

182:                                              ; preds = %176
  %183 = load i32, ptr %12, align 4
  store i32 %183, ptr %178, align 32
  br label %184

184:                                              ; preds = %182, %181, %147, %28, %8, %1
  %185 = phi i32 [ -12, %147 ], [ 0, %1 ], [ 0, %181 ], [ 0, %182 ], [ -12, %28 ], [ -12, %8 ]
  ret i32 %185
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_txq_teardown_flows(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_ops, ptr %3, i32 0, i32 89
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  tail call void @kfree(ptr noundef %10) #16
  store ptr null, ptr %9, align 8
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %11) #16
  %12 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %15, %7
  %16 = phi i32 [ %19, %15 ], [ 0, %7 ]
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr %struct.fq_flow, ptr %17, i32 %16
  tail call fastcc void @fq_flow_reset(ptr noundef %8, ptr noundef %18) #16
  %19 = add nuw i32 %16, 1
  %20 = load i32, ptr %12, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %15, label %22

22:                                               ; preds = %15, %7
  %23 = load ptr, ptr %8, align 4
  tail call void @kvfree(ptr noundef %23) #16
  store ptr null, ptr %8, align 4
  %24 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void @kfree(ptr noundef %25) #16
  store ptr null, ptr %24, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %11) #16
  br label %26

26:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ieee80211_tx_prepare_skb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly %4) #0 {
  %6 = alloca %struct.ieee80211_tx_data, align 4
  %7 = getelementptr i8, ptr %1, i32 -2264
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %6, i8 0, i32 44, i1 false), !annotation !12
  %8 = call fastcc i32 @ieee80211_tx_prepare(ptr noundef %7, ptr noundef nonnull %6, ptr noundef null, ptr noundef %2)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %61, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %3, 7
  %14 = and i32 %12, -8
  %15 = or i32 %14, %13
  store i32 %15, ptr %11, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 24
  store ptr %1, ptr %16, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 9
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr %struct.ieee80211_vif, ptr %1, i32 0, i32 7, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = and i8 %21, 15
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 16
  %25 = and i32 %15, -983041
  %26 = or i32 %24, %25
  store i32 %26, ptr %11, align 4
  %27 = call fastcc i32 @invoke_tx_handlers_early(ptr noundef nonnull %6) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %10
  %30 = call fastcc i32 @invoke_tx_handlers_late(ptr noundef nonnull %6) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %29
  %33 = icmp eq ptr %4, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %6, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds %struct.sta_info, ptr %36, i32 0, i32 46
  %39 = select i1 %37, ptr null, ptr %38
  store ptr %39, ptr %4, align 4
  br label %40

40:                                               ; preds = %34, %32
  %41 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %6, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  %44 = select i1 %43, ptr null, ptr %42
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %6, i32 0, i32 1, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, -1
  store volatile i32 %49, ptr %47, align 4
  %50 = load ptr, ptr %44, align 8
  %51 = getelementptr inbounds %struct.anon.42, ptr %44, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  store ptr null, ptr %51, align 4
  store ptr null, ptr %44, align 8
  %53 = getelementptr inbounds %struct.anon.42, ptr %50, i32 0, i32 1
  store volatile ptr %52, ptr %53, align 4
  store volatile ptr %50, ptr %52, align 8
  %54 = load ptr, ptr %41, align 4
  br label %55

55:                                               ; preds = %46, %40
  %56 = phi ptr [ %42, %40 ], [ %54, %46 ]
  %57 = icmp eq ptr %44, %2
  %58 = icmp eq ptr %56, %41
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %61, label %60, !prof !13

60:                                               ; preds = %55
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1897, i32 noundef 9, ptr noundef null) #16
  call void @ieee80211_free_txskb(ptr noundef %0, ptr noundef %44) #16
  call void @ieee80211_purge_tx_queue(ptr noundef %0, ptr noundef %41) #16
  br label %61

61:                                               ; preds = %60, %55, %29, %10, %5
  %62 = phi i1 [ false, %60 ], [ false, %5 ], [ false, %29 ], [ false, %10 ], [ true, %55 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %6) #16
  ret i1 %62
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_tx_prepare(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %8 = getelementptr inbounds i8, ptr %1, i32 16
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(44) %8, i8 0, i32 28, i1 false)
  store ptr %3, ptr %1, align 4
  %9 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %1, i32 0, i32 2
  store ptr %6, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %1, i32 0, i32 3
  store ptr %0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %1, i32 0, i32 1
  store ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %1, i32 0, i32 1, i32 1
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 32
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, -65
  store i32 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %2, null
  br i1 %19, label %26, label %20, !prof !10

20:                                               ; preds = %4
  %21 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %22 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %1, i32 0, i32 4
  br i1 %21, label %23, label %25

23:                                               ; preds = %20
  %24 = load ptr, ptr %22, align 4
  br label %68

25:                                               ; preds = %20
  store ptr %2, ptr %22, align 4
  br label %65

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  %32 = load volatile ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %1, i32 0, i32 4
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %65

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 8
  %37 = load i8, ptr %36, align 8, !range !11
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %57, label %247

39:                                               ; preds = %26
  %40 = load ptr, ptr %10, align 4
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %40, i32 0, i32 20
  %42 = load i16, ptr %41, align 2
  %43 = load ptr, ptr %1, align 4
  %44 = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 13, i32 0, i32 16
  %45 = load i16, ptr %44, align 8
  %46 = icmp eq i16 %42, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %1, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  br label %54

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.ieee80211_hdr, ptr %18, i32 0, i32 2
  %52 = tail call ptr @sta_info_get_bss(ptr noundef %0, ptr noundef %51) #16
  %53 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %1, i32 0, i32 4
  store ptr %52, ptr %53, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi ptr [ %49, %47 ], [ %52, %50 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %54, %35
  %58 = getelementptr inbounds %struct.ieee80211_hdr, ptr %18, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %1, i32 0, i32 4
  br i1 %61, label %63, label %192

63:                                               ; preds = %57
  %64 = tail call ptr @sta_info_get(ptr noundef %0, ptr noundef %58) #16
  store ptr %64, ptr %62, align 4
  br label %68

65:                                               ; preds = %54, %30, %25
  %66 = phi ptr [ %55, %54 ], [ %2, %25 ], [ %32, %30 ]
  %67 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %1, i32 0, i32 4
  br label %73

68:                                               ; preds = %63, %23
  %69 = phi ptr [ %24, %23 ], [ %64, %63 ]
  %70 = xor i1 %19, true
  %71 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %1, i32 0, i32 4
  %72 = icmp eq ptr %69, null
  br i1 %72, label %192, label %73

73:                                               ; preds = %68, %65
  %74 = phi ptr [ %67, %65 ], [ %71, %68 ]
  %75 = phi i1 [ true, %65 ], [ %70, %68 ]
  %76 = phi ptr [ %66, %65 ], [ %69, %68 ]
  %77 = load i16, ptr %18, align 2
  %78 = and i16 %77, 140
  %79 = icmp ne i16 %78, 136
  %80 = and i16 %77, 252
  %81 = icmp eq i16 %80, 200
  %82 = or i1 %79, %81
  br i1 %82, label %192, label %83

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 4
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %85, 128
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %192, label %88

88:                                               ; preds = %83
  %89 = load volatile i32, ptr %84, align 4
  %90 = and i32 %89, 2097152
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %192

92:                                               ; preds = %88
  %93 = and i16 %77, 768
  %94 = icmp eq i16 %93, 768
  %95 = select i1 %94, i32 30, i32 24
  %96 = getelementptr i8, ptr %18, i32 %95
  %97 = load i8, ptr %96, align 1
  %98 = and i8 %97, 15
  %99 = zext i8 %98 to i32
  %100 = getelementptr %struct.sta_info, ptr %76, i32 0, i32 38, i32 9, i32 %99
  %101 = load volatile ptr, ptr %100, align 4
  %102 = icmp ne ptr %101, null
  %103 = or i1 %75, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %92
  tail call fastcc void @ieee80211_aggr_check(ptr noundef %0, ptr noundef nonnull %76, ptr noundef %3)
  %105 = load ptr, ptr %74, align 4
  %106 = getelementptr %struct.sta_info, ptr %105, i32 0, i32 38, i32 9, i32 %99
  %107 = load volatile ptr, ptr %106, align 4
  br label %108

108:                                              ; preds = %104, %92
  %109 = phi ptr [ %76, %92 ], [ %105, %104 ]
  %110 = phi ptr [ %101, %92 ], [ %107, %104 ]
  %111 = icmp eq ptr %110, null
  br i1 %111, label %192, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %110, i32 0, i32 5
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %114, 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load i32, ptr %7, align 8
  %119 = or i32 %118, 64
  store i32 %119, ptr %7, align 8
  %120 = load volatile i32, ptr @jiffies, align 64
  %121 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %110, i32 0, i32 6
  store i32 %120, ptr %121, align 4
  br label %192

122:                                              ; preds = %112
  %123 = load volatile i32, ptr %113, align 4
  %124 = and i32 %123, 16
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %192

126:                                              ; preds = %122
  %127 = getelementptr %struct.sta_info, ptr %109, i32 0, i32 46, i32 28, i32 %99
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %192

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.sta_info, ptr %109, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %131) #16
  %132 = load ptr, ptr %74, align 4
  %133 = getelementptr %struct.sta_info, ptr %132, i32 0, i32 38, i32 9, i32 %99
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %176, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %134, i32 0, i32 5
  %138 = load volatile i32, ptr %137, align 4
  %139 = and i32 %138, 4
  %140 = icmp eq i32 %139, 0
  %141 = load i32, ptr %7, align 8
  br i1 %140, label %144, label %142

142:                                              ; preds = %136
  %143 = or i32 %141, 64
  store i32 %143, ptr %7, align 8
  br label %176

144:                                              ; preds = %136
  %145 = and i32 %141, 131072
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.sta_info, ptr %132, i32 0, i32 23
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %148) #16
  %149 = load i32, ptr %7, align 8
  br label %150

150:                                              ; preds = %147, %144
  %151 = phi i32 [ %149, %147 ], [ %141, %144 ]
  %152 = load ptr, ptr %10, align 4
  %153 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %152, i32 0, i32 58
  %154 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 24
  store ptr %153, ptr %154, align 8
  %155 = load i32, ptr %14, align 8
  %156 = or i32 %155, 64
  store i32 %156, ptr %14, align 8
  %157 = and i32 %151, -298196861
  store i32 %157, ptr %7, align 8
  %158 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %134, i32 0, i32 3
  %159 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %134, i32 0, i32 3, i32 0, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  store volatile ptr %158, ptr %3, align 8
  %161 = getelementptr inbounds %struct.anon.42, ptr %3, i32 0, i32 1
  store volatile ptr %160, ptr %161, align 4
  store volatile ptr %3, ptr %159, align 4
  store volatile ptr %3, ptr %160, align 4
  %162 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %134, i32 0, i32 3, i32 1
  %163 = load i32, ptr %162, align 4
  %164 = add i32 %163, 1
  store volatile i32 %164, ptr %162, align 4
  %165 = icmp ugt i32 %164, 64
  br i1 %165, label %166, label %176

166:                                              ; preds = %150
  %167 = load ptr, ptr %158, align 4
  %168 = icmp eq ptr %167, %158
  %169 = icmp eq ptr %167, null
  %170 = or i1 %168, %169
  br i1 %170, label %176, label %171

171:                                              ; preds = %166
  store volatile i32 %163, ptr %162, align 4
  %172 = load ptr, ptr %167, align 8
  %173 = getelementptr inbounds %struct.anon.42, ptr %167, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  store ptr null, ptr %173, align 4
  store ptr null, ptr %167, align 8
  %175 = getelementptr inbounds %struct.anon.42, ptr %172, i32 0, i32 1
  store volatile ptr %174, ptr %175, align 4
  store volatile ptr %172, ptr %174, align 8
  br label %176

176:                                              ; preds = %171, %166, %150, %142, %130
  %177 = phi i1 [ false, %142 ], [ true, %150 ], [ false, %130 ], [ true, %166 ], [ true, %171 ]
  %178 = phi i1 [ true, %142 ], [ false, %150 ], [ false, %130 ], [ false, %166 ], [ false, %171 ]
  %179 = phi ptr [ null, %142 ], [ null, %150 ], [ null, %130 ], [ null, %166 ], [ %167, %171 ]
  %180 = load ptr, ptr %74, align 4
  %181 = getelementptr inbounds %struct.sta_info, ptr %180, i32 0, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  %182 = load i16, ptr %181, align 4
  %183 = add i16 %182, 1
  store i16 %183, ptr %181, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  %184 = icmp eq ptr %179, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %176
  %186 = load ptr, ptr %9, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %186, ptr noundef nonnull %179) #16
  br i1 %178, label %188, label %191

187:                                              ; preds = %176
  br i1 %178, label %188, label %191

188:                                              ; preds = %187, %185
  %189 = load volatile i32, ptr @jiffies, align 64
  %190 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %134, i32 0, i32 6
  store i32 %189, ptr %190, align 4
  br i1 %177, label %247, label %192

191:                                              ; preds = %187, %185
  br i1 %177, label %247, label %192

192:                                              ; preds = %191, %188, %126, %122, %117, %108, %88, %83, %73, %68, %57
  %193 = phi ptr [ %74, %126 ], [ %74, %122 ], [ %74, %117 ], [ %74, %188 ], [ %74, %108 ], [ %74, %191 ], [ %74, %88 ], [ %74, %83 ], [ %74, %73 ], [ %71, %68 ], [ %62, %57 ]
  %194 = getelementptr inbounds %struct.ieee80211_hdr, ptr %18, i32 0, i32 2
  %195 = load i32, ptr %194, align 4
  %196 = and i32 %195, 1
  %197 = icmp eq i32 %196, 0
  %198 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %1, i32 0, i32 7
  %199 = load i32, ptr %198, align 4
  br i1 %197, label %204, label %200

200:                                              ; preds = %192
  %201 = and i32 %199, -3
  store i32 %201, ptr %198, align 4
  %202 = load i32, ptr %7, align 8
  %203 = or i32 %202, 4
  store i32 %203, ptr %7, align 8
  br label %207

204:                                              ; preds = %192
  %205 = or i32 %199, 2
  store i32 %205, ptr %198, align 4
  %206 = load i32, ptr %7, align 8
  br label %207

207:                                              ; preds = %204, %200
  %208 = phi i32 [ %206, %204 ], [ %203, %200 ]
  %209 = and i32 %208, 1073741824
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %230

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %1, i32 0, i32 7
  %213 = load i32, ptr %212, align 4
  %214 = and i32 %213, 2
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %228, label %216

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %218 = load i32, ptr %217, align 8
  %219 = add i32 %218, 4
  %220 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %221 = load ptr, ptr %220, align 8
  %222 = getelementptr inbounds %struct.wiphy, ptr %221, i32 0, i32 35
  %223 = load i32, ptr %222, align 8
  %224 = icmp ugt i32 %219, %223
  %225 = and i32 %208, 64
  %226 = icmp eq i32 %225, 0
  %227 = select i1 %224, i1 %226, i1 false
  br i1 %227, label %230, label %228

228:                                              ; preds = %216, %211
  %229 = or i32 %208, 1073741824
  store i32 %229, ptr %7, align 8
  br label %230

230:                                              ; preds = %228, %216, %207
  %231 = phi i32 [ %208, %216 ], [ %229, %228 ], [ %208, %207 ]
  %232 = load ptr, ptr %193, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = or i32 %231, 8
  store i32 %235, ptr %7, align 8
  br label %244

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.sta_info, ptr %232, i32 0, i32 23
  %238 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %237) #16
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %236
  %241 = load i32, ptr %7, align 8
  %242 = or i32 %241, 8
  store i32 %242, ptr %7, align 8
  %243 = load ptr, ptr %193, align 4
  tail call void @ieee80211_check_fast_xmit(ptr noundef %243)
  br label %244

244:                                              ; preds = %240, %236, %234
  %245 = load i32, ptr %7, align 8
  %246 = or i32 %245, 16
  store i32 %246, ptr %7, align 8
  br label %247

247:                                              ; preds = %244, %191, %188, %35
  %248 = phi i32 [ 0, %244 ], [ 1, %35 ], [ 2, %191 ], [ 2, %188 ]
  ret i32 %248
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @invoke_tx_handlers(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @invoke_tx_handlers_early(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @invoke_tx_handlers_late(ptr noundef %0)
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %2, %1 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_xmit(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65536
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 41
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  br label %27

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = load i16, ptr %17, align 2
  %19 = and i16 %18, 12
  %20 = icmp eq i16 %19, 0
  %21 = select i1 %20, i32 1, i32 2
  %22 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 41
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 24
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, %23
  br label %27

27:                                               ; preds = %15, %10
  %28 = phi ptr [ %17, %15 ], [ %14, %10 ]
  %29 = phi i32 [ %21, %15 ], [ 0, %10 ]
  %30 = phi i32 [ %26, %15 ], [ %12, %10 ]
  %31 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %32 = load ptr, ptr %31, align 8
  %33 = ptrtoint ptr %28 to i32
  %34 = ptrtoint ptr %32 to i32
  %35 = sub i32 %30, %33
  %36 = add i32 %35, %34
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 0)
  %38 = tail call fastcc i32 @ieee80211_skb_resize(ptr noundef %0, ptr noundef %2, i32 noundef %37, i32 noundef %29)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %27
  tail call void @ieee80211_free_txskb(ptr noundef %5, ptr noundef %2) #16
  br label %45

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %43 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 24
  store ptr %42, ptr %43, align 8
  tail call void @ieee80211_set_qos_hdr(ptr noundef %0, ptr noundef %2) #16
  %44 = tail call fastcc zeroext i1 @ieee80211_tx(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false)
  br label %45

45:                                               ; preds = %41, %40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_skb_resize(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  switch i32 %3, label %27 [
    i32 1, label %11
    i32 2, label %7
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %7, %4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = ptrtoint ptr %17 to i32
  %21 = ptrtoint ptr %19 to i32
  %22 = sub i32 18, %20
  %23 = add i32 %22, %21
  br label %24

24:                                               ; preds = %15, %11
  %25 = phi i32 [ %23, %15 ], [ 18, %11 ]
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 0)
  br label %27

27:                                               ; preds = %24, %7, %4
  %28 = phi i1 [ true, %24 ], [ false, %7 ], [ false, %4 ]
  %29 = phi i32 [ %26, %24 ], [ 0, %7 ], [ 0, %4 ]
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %31 = load i8, ptr %30, align 2
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %66, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.skb_shared_info, ptr %36, i32 0, i32 10
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %66, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 4
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 134217728
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %41
  %47 = load volatile i32, ptr %37, align 4
  %48 = and i32 %47, 65535
  %49 = ashr i32 %47, 16
  %50 = sub nsw i32 %48, %49
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %70

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %56 = load ptr, ptr %55, align 8
  %57 = ptrtoint ptr %54 to i32
  %58 = ptrtoint ptr %56 to i32
  %59 = add i32 %57, 14
  %60 = sub i32 %59, %58
  %61 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 8
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = icmp ugt i32 %60, %63
  %65 = or i1 %28, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %52, %34, %27
  %67 = icmp ne i32 %2, 0
  %68 = icmp ne i32 %29, 0
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66, %52, %46, %41
  %71 = tail call i32 @pskb_expand_head(ptr noundef %1, i32 noundef %2, i32 noundef %29, i32 noundef 2592) #16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.wiphy, ptr %75, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %76, ptr noundef nonnull @.str.9) #18
  br label %77

77:                                               ; preds = %73, %70, %66
  %78 = phi i32 [ -12, %73 ], [ 0, %66 ], [ 0, %70 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_set_qos_hdr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_tx(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.ieee80211_tx_data, align 4
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i32 44, i1 false), !annotation !12
  %8 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  %9 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = icmp ult i32 %10, 10
  br i1 %11, label %12, label %13, !prof !10

12:                                               ; preds = %4
  tail call void @consume_skb(ptr noundef %2) #16
  br label %53

13:                                               ; preds = %4
  %14 = call fastcc i32 @ieee80211_tx_prepare(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2)
  switch i32 %14, label %16 [
    i32 1, label %15
    i32 2, label %53
  ], !prof !18

15:                                               ; preds = %13
  call void @ieee80211_free_txskb(ptr noundef %7, ptr noundef %2) #16
  br label %53

16:                                               ; preds = %13
  %17 = load i32, ptr %8, align 8
  %18 = and i32 %17, 33554432
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 4
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 262144
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20, %16
  %26 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 9
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 7, i32 %28
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = and i8 %30, 15
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 16
  %36 = and i32 %32, -983041
  %37 = or i32 %35, %36
  store i32 %37, ptr %31, align 4
  br label %38

38:                                               ; preds = %25, %20
  %39 = call fastcc i32 @invoke_tx_handlers_early(ptr noundef nonnull %5)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %5, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %5, align 4
  %45 = call fastcc zeroext i1 @ieee80211_queue_skb(ptr noundef %7, ptr noundef %0, ptr noundef %43, ptr noundef %44)
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = call fastcc i32 @invoke_tx_handlers_late(ptr noundef nonnull %5)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %5, i32 0, i32 1
  %51 = load ptr, ptr %42, align 4
  %52 = call fastcc zeroext i1 @__ieee80211_tx(ptr noundef %7, ptr noundef %50, ptr noundef %51, i1 noundef zeroext %3)
  br label %53

53:                                               ; preds = %49, %46, %41, %38, %15, %13, %12
  %54 = phi i1 [ true, %12 ], [ true, %15 ], [ true, %13 ], [ true, %38 ], [ true, %41 ], [ true, %46 ], [ %52, %49 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #16
  ret i1 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ieee80211_parse_tx_radiotap(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ieee80211_radiotap_iterator, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !10

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #16, !srcloc !19
  unreachable

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #16, !srcloc !20
  unreachable

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 85
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %3, i8 0, i32 56, i1 false), !annotation !12
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = call i32 @ieee80211_radiotap_iterator_init(ptr noundef nonnull %3, ptr noundef %15, i32 noundef %18, ptr noundef null) #16
  %20 = load ptr, ptr %14, align 4
  %21 = load i32, ptr %17, align 8
  %22 = icmp ult i32 %21, 8
  br i1 %22, label %272, label %23, !prof !10

23:                                               ; preds = %12
  %24 = load i8, ptr %20, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %272, !prof !9

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %20, i32 0, i32 2
  %28 = load i16, ptr %27, align 1
  %29 = zext i16 %28 to i32
  %30 = icmp ult i32 %21, %29
  br i1 %30, label %272, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr %16, align 8
  %33 = or i32 %32, 1073807360
  store i32 %33, ptr %16, align 8
  %34 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %3, i32 0, i32 7
  %35 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %3, i32 0, i32 6
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  %37 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %3, i32 0, i32 10
  br label %38

38:                                               ; preds = %190, %31
  %39 = phi i16 [ 0, %31 ], [ %191, %190 ]
  %40 = phi i1 [ false, %31 ], [ %192, %190 ]
  %41 = phi i8 [ 0, %31 ], [ %193, %190 ]
  %42 = phi i16 [ 0, %31 ], [ %194, %190 ]
  %43 = phi i8 [ 0, %31 ], [ %195, %190 ]
  %44 = phi i8 [ 0, %31 ], [ %196, %190 ]
  %45 = phi i32 [ %19, %31 ], [ 0, %190 ]
  br label %46

46:                                               ; preds = %48, %38
  %47 = phi i32 [ %49, %48 ], [ %45, %38 ]
  switch i32 %47, label %272 [
    i32 0, label %48
    i32 -2, label %197
  ]

48:                                               ; preds = %46
  %49 = call i32 @ieee80211_radiotap_iterator_next(ptr noundef nonnull %3) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %46

51:                                               ; preds = %48
  %52 = load i32, ptr %34, align 4
  switch i32 %52, label %190 [
    i32 1, label %53
    i32 15, label %83
    i32 2, label %104
    i32 17, label %108
    i32 19, label %111
    i32 21, label %154
  ]

53:                                               ; preds = %51
  %54 = load ptr, ptr %35, align 4
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, 16
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %53
  %59 = load i32, ptr %17, align 8
  %60 = load i32, ptr %37, align 4
  %61 = add i32 %60, 4
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %272, label %63

63:                                               ; preds = %58
  %64 = add i32 %59, -4
  call void @skb_trim(ptr noundef %0, i32 noundef %64) #16
  %65 = load ptr, ptr %35, align 4
  %66 = load i8, ptr %65, align 1
  br label %67

67:                                               ; preds = %63, %53
  %68 = phi i8 [ %66, %63 ], [ %55, %53 ]
  %69 = phi ptr [ %65, %63 ], [ %54, %53 ]
  %70 = and i8 %68, 4
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load i32, ptr %16, align 8
  %74 = and i32 %73, -65537
  store i32 %74, ptr %16, align 8
  %75 = load i8, ptr %69, align 1
  br label %76

76:                                               ; preds = %72, %67
  %77 = phi i8 [ %75, %72 ], [ %68, %67 ]
  %78 = and i8 %77, 8
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %190, label %80

80:                                               ; preds = %76
  %81 = load i32, ptr %16, align 8
  %82 = and i32 %81, -1073741825
  store i32 %82, ptr %16, align 8
  br label %190

83:                                               ; preds = %51
  %84 = load ptr, ptr %35, align 4
  %85 = load i16, ptr %84, align 1
  %86 = zext i16 %85 to i32
  %87 = and i32 %86, 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = load i32, ptr %16, align 8
  %91 = or i32 %90, 4
  store i32 %91, ptr %16, align 8
  br label %92

92:                                               ; preds = %89, %83
  %93 = and i32 %86, 16
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr %36, align 8
  %97 = or i32 %96, 128
  store i32 %97, ptr %36, align 8
  br label %98

98:                                               ; preds = %95, %92
  %99 = and i32 %86, 32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %190, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr %36, align 8
  %103 = or i32 %102, 256
  store i32 %103, ptr %36, align 8
  br label %190

104:                                              ; preds = %51
  %105 = load ptr, ptr %35, align 4
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i16
  br label %190

108:                                              ; preds = %51
  %109 = load ptr, ptr %35, align 4
  %110 = load i8, ptr %109, align 1
  br label %190

111:                                              ; preds = %51
  %112 = load ptr, ptr %35, align 4
  %113 = load i8, ptr %112, align 1
  %114 = getelementptr i8, ptr %112, i32 1
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %113 to i32
  %117 = and i32 %116, 2
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %190, label %119

119:                                              ; preds = %111
  %120 = getelementptr i8, ptr %112, i32 2
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i16
  %123 = and i32 %116, 4
  %124 = icmp eq i32 %123, 0
  %125 = and i8 %115, 4
  %126 = icmp eq i8 %125, 0
  %127 = select i1 %124, i1 true, i1 %126
  %128 = select i1 %127, i16 8, i16 136
  %129 = and i8 %115, 3
  %130 = and i32 %116, 1
  %131 = icmp ne i32 %130, 0
  %132 = icmp eq i8 %129, 1
  %133 = select i1 %131, i1 %132, i1 false
  %134 = or i16 %128, 32
  %135 = select i1 %133, i16 %134, i16 %128
  %136 = and i32 %116, 16
  %137 = icmp eq i32 %136, 0
  %138 = and i8 %115, 16
  %139 = icmp eq i8 %138, 0
  %140 = select i1 %137, i1 true, i1 %139
  br i1 %140, label %144, label %141

141:                                              ; preds = %119
  %142 = load i32, ptr %16, align 8
  %143 = or i32 %142, 4194304
  store i32 %143, ptr %16, align 8
  br label %144

144:                                              ; preds = %141, %119
  %145 = and i32 %116, 32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %190, label %147

147:                                              ; preds = %144
  %148 = lshr i8 %115, 5
  %149 = zext i8 %148 to i32
  %150 = shl nuw nsw i32 %149, 23
  %151 = and i32 %150, 25165824
  %152 = load i32, ptr %16, align 8
  %153 = or i32 %152, %151
  store i32 %153, ptr %16, align 8
  br label %190

154:                                              ; preds = %51
  %155 = load ptr, ptr %35, align 4
  %156 = load i16, ptr %155, align 1
  %157 = zext i16 %156 to i32
  %158 = and i32 %157, 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %154
  %161 = getelementptr i8, ptr %155, i32 2
  %162 = load i8, ptr %161, align 1
  %163 = and i8 %162, 4
  %164 = icmp eq i8 %163, 0
  %165 = select i1 %164, i16 256, i16 384
  br label %166

166:                                              ; preds = %160, %154
  %167 = phi i16 [ 256, %154 ], [ %165, %160 ]
  %168 = and i32 %157, 64
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %179, label %170

170:                                              ; preds = %166
  %171 = getelementptr i8, ptr %155, i32 3
  %172 = load i8, ptr %171, align 1
  switch i8 %172, label %179 [
    i8 1, label %173
    i8 4, label %175
    i8 11, label %177
  ]

173:                                              ; preds = %170
  %174 = or i16 %167, 32
  br label %179

175:                                              ; preds = %170
  %176 = or i16 %167, 512
  br label %179

177:                                              ; preds = %170
  %178 = or i16 %167, 1024
  br label %179

179:                                              ; preds = %177, %175, %173, %170, %166
  %180 = phi i16 [ %174, %173 ], [ %176, %175 ], [ %178, %177 ], [ %167, %166 ], [ %167, %170 ]
  %181 = getelementptr i8, ptr %155, i32 4
  %182 = load i8, ptr %181, align 1
  %183 = lshr i8 %182, 4
  %184 = icmp ugt i8 %182, -65
  %185 = select i1 %184, i8 0, i8 %183
  %186 = and i8 %182, 15
  %187 = add nsw i8 %186, -9
  %188 = icmp ult i8 %187, -8
  %189 = select i1 %188, i8 1, i8 %186
  br label %190

190:                                              ; preds = %179, %147, %144, %111, %108, %104, %101, %98, %80, %76, %51
  %191 = phi i16 [ %39, %51 ], [ %39, %179 ], [ %122, %147 ], [ %122, %144 ], [ %39, %111 ], [ %39, %108 ], [ %107, %104 ], [ %39, %101 ], [ %39, %98 ], [ %39, %80 ], [ %39, %76 ]
  %192 = phi i1 [ %40, %51 ], [ true, %179 ], [ true, %147 ], [ true, %144 ], [ %40, %111 ], [ %40, %108 ], [ true, %104 ], [ %40, %101 ], [ %40, %98 ], [ %40, %80 ], [ %40, %76 ]
  %193 = phi i8 [ %41, %51 ], [ %41, %179 ], [ %41, %147 ], [ %41, %144 ], [ %41, %111 ], [ %110, %108 ], [ %41, %104 ], [ %41, %101 ], [ %41, %98 ], [ %41, %80 ], [ %41, %76 ]
  %194 = phi i16 [ %42, %51 ], [ %180, %179 ], [ %135, %147 ], [ %135, %144 ], [ %42, %111 ], [ %42, %108 ], [ 0, %104 ], [ %42, %101 ], [ %42, %98 ], [ %42, %80 ], [ %42, %76 ]
  %195 = phi i8 [ %43, %51 ], [ %185, %179 ], [ %43, %147 ], [ %43, %144 ], [ %43, %111 ], [ %43, %108 ], [ %43, %104 ], [ %43, %101 ], [ %43, %98 ], [ %43, %80 ], [ %43, %76 ]
  %196 = phi i8 [ %44, %51 ], [ %189, %179 ], [ %44, %147 ], [ %44, %144 ], [ %44, %111 ], [ %44, %108 ], [ %44, %104 ], [ %44, %101 ], [ %44, %98 ], [ %44, %80 ], [ %44, %76 ]
  br label %38

197:                                              ; preds = %46
  br i1 %40, label %198, label %272

198:                                              ; preds = %197
  %199 = getelementptr inbounds %struct.wiphy, ptr %9, i32 1, i32 11
  %200 = load ptr, ptr %199, align 8
  %201 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  %202 = load i32, ptr %201, align 4
  %203 = and i32 %202, 7
  %204 = getelementptr %struct.wiphy, ptr %200, i32 0, i32 53, i32 %203
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  %207 = load i32, ptr %36, align 8
  %208 = or i32 %207, 4
  store i32 %208, ptr %36, align 8
  store i8 -1, ptr %206, align 1
  %209 = getelementptr %struct.sk_buff, ptr %0, i32 0, i32 3, i32 9
  store i16 0, ptr %209, align 1
  %210 = getelementptr %struct.sk_buff, ptr %0, i32 0, i32 3, i32 11
  store i8 -1, ptr %210, align 1
  %211 = getelementptr %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  store i16 0, ptr %211, align 1
  %212 = getelementptr %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  store i8 -1, ptr %212, align 1
  %213 = getelementptr %struct.sk_buff, ptr %0, i32 0, i32 3, i32 15
  store i16 0, ptr %213, align 1
  %214 = getelementptr %struct.sk_buff, ptr %0, i32 0, i32 3, i32 17
  store i8 -1, ptr %214, align 1
  %215 = getelementptr %struct.sk_buff, ptr %0, i32 0, i32 3, i32 18
  store i16 0, ptr %215, align 1
  %216 = zext i16 %42 to i32
  %217 = and i32 %216, 8
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %198
  %220 = trunc i16 %39 to i8
  store i8 %220, ptr %206, align 8
  br label %253

221:                                              ; preds = %198
  %222 = and i32 %216, 256
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %233, label %224

224:                                              ; preds = %221
  %225 = zext i8 %44 to i32
  %226 = add nsw i32 %225, -1
  %227 = icmp ult i32 %226, 8
  br i1 %227, label %229, label %228, !prof !9

228:                                              ; preds = %224
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 997, i32 noundef 9, ptr noundef null) #16
  br label %229

229:                                              ; preds = %228, %224
  %230 = trunc i32 %226 to i8
  %231 = shl i8 %230, 4
  %232 = or i8 %231, %43
  store i8 %232, ptr %206, align 1
  br label %253

233:                                              ; preds = %221
  %234 = icmp eq ptr %205, null
  br i1 %234, label %256, label %235

235:                                              ; preds = %233
  %236 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %205, i32 0, i32 4
  %237 = load i32, ptr %236, align 4
  %238 = icmp sgt i32 %237, 0
  br i1 %238, label %239, label %256

239:                                              ; preds = %235
  %240 = mul nuw nsw i16 %39, 5
  %241 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %205, i32 0, i32 1
  %242 = load ptr, ptr %241, align 4
  br label %243

243:                                              ; preds = %250, %239
  %244 = phi i32 [ 0, %239 ], [ %251, %250 ]
  %245 = getelementptr %struct.ieee80211_rate, ptr %242, i32 %244, i32 1
  %246 = load i16, ptr %245, align 4
  %247 = icmp eq i16 %240, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %243
  %249 = trunc i32 %244 to i8
  store i8 %249, ptr %206, align 8
  br label %253

250:                                              ; preds = %243
  %251 = add nuw nsw i32 %244, 1
  %252 = icmp eq i32 %251, %237
  br i1 %252, label %256, label %243

253:                                              ; preds = %248, %229, %219
  %254 = phi i8 [ %232, %229 ], [ %249, %248 ], [ %220, %219 ]
  %255 = icmp slt i8 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %253, %250, %235, %233
  %257 = load i32, ptr %36, align 8
  %258 = and i32 %257, -5
  store i32 %258, ptr %36, align 8
  br label %259

259:                                              ; preds = %256, %253
  %260 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 9
  %261 = load i16, ptr %260, align 1
  %262 = shl i16 %42, 5
  %263 = and i16 %261, 31
  %264 = or i16 %263, %262
  store i16 %264, ptr %260, align 1
  %265 = add i8 %41, 1
  %266 = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 16
  %267 = load i8, ptr %266, align 1
  %268 = call i8 @llvm.umin.i8(i8 %265, i8 %267)
  %269 = and i8 %268, 31
  %270 = zext i8 %269 to i16
  %271 = or i16 %262, %270
  store i16 %271, ptr %260, align 1
  br label %272

272:                                              ; preds = %259, %197, %58, %46, %26, %23, %12
  %273 = phi i1 [ false, %26 ], [ true, %259 ], [ true, %197 ], [ false, %12 ], [ false, %23 ], [ false, %46 ], [ false, %58 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #16
  ret i1 %273
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_radiotap_iterator_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_radiotap_iterator_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_monitor_start_xmit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !10

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #16, !srcloc !19
  unreachable

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #16, !srcloc !20
  unreachable

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 85
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(48) %13, i8 0, i32 48, i1 false)
  store i32 129, ptr %13, align 8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = icmp ult i32 %17, 8
  br i1 %18, label %153, label %19, !prof !10

19:                                               ; preds = %11
  %20 = load i8, ptr %15, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %153, !prof !9

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %15, i32 0, i32 2
  %24 = load i16, ptr %23, align 1
  %25 = zext i16 %24 to i32
  %26 = icmp ult i32 %17, %25
  br i1 %26, label %153, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %29 = load ptr, ptr %28, align 8
  %30 = ptrtoint ptr %15 to i32
  %31 = ptrtoint ptr %29 to i32
  %32 = sub i32 %30, %31
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %35 = add i16 %24, %33
  store i16 %35, ptr %34, align 2
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  store i16 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  store i16 %35, ptr %37, align 2
  %38 = add nuw nsw i32 %25, 2
  %39 = icmp ult i32 %17, %38
  br i1 %39, label %153, label %40

40:                                               ; preds = %27
  %41 = getelementptr i8, ptr %15, i32 %25
  %42 = load i16, ptr %41, align 2
  %43 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %42) #19
  %44 = add i32 %43, %25
  %45 = icmp ult i32 %17, %44
  br i1 %45, label %153, label %46

46:                                               ; preds = %40
  %47 = and i16 %42, 12
  %48 = icmp ne i16 %47, 8
  %49 = add i32 %44, 8
  %50 = icmp ult i32 %17, %49
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %75, label %52

52:                                               ; preds = %46
  %53 = getelementptr i8, ptr %41, i32 %43
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr @rfc1042_header, align 4
  %56 = xor i32 %55, %54
  %57 = getelementptr i8, ptr %53, i32 4
  %58 = load i16, ptr %57, align 2
  %59 = load i16, ptr getelementptr inbounds ([6 x i8], ptr @rfc1042_header, i32 0, i32 4), align 2
  %60 = xor i16 %59, %58
  %61 = zext i16 %60 to i32
  %62 = or i32 %56, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %52
  %65 = getelementptr i8, ptr %53, i32 6
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i16
  %68 = shl nuw i16 %67, 8
  %69 = getelementptr i8, ptr %53, i32 7
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i16
  %72 = or i16 %68, %71
  %73 = tail call i16 @llvm.bswap.i16(i16 %72)
  %74 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  store i16 %73, ptr %74, align 8
  br label %75

75:                                               ; preds = %64, %52, %46
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %76 = getelementptr i8, ptr %1, i32 1408
  %77 = getelementptr inbounds %struct.wiphy, ptr %8, i32 5, i32 56, i32 15
  %78 = load volatile ptr, ptr %77, align 8
  %79 = icmp eq ptr %78, %77
  br i1 %79, label %107, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.ieee80211_hdr, ptr %41, i32 0, i32 3
  %82 = getelementptr i8, ptr %81, i32 4
  br label %83

83:                                               ; preds = %104, %80
  %84 = phi ptr [ %78, %80 ], [ %105, %104 ]
  %85 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %84, i32 0, i32 9
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %104, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %84, i32 0, i32 58
  %91 = load i32, ptr %90, align 8
  switch i32 %91, label %92 [
    i32 6, label %104
    i32 4, label %104
  ]

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %84, i32 0, i32 58, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = load i32, ptr %81, align 4
  %96 = xor i32 %95, %94
  %97 = getelementptr %struct.ieee80211_sub_if_data, ptr %84, i32 0, i32 58, i32 2, i32 4
  %98 = load i16, ptr %97, align 2
  %99 = load i16, ptr %82, align 2
  %100 = xor i16 %99, %98
  %101 = zext i16 %100 to i32
  %102 = or i32 %96, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %92, %89, %89, %83
  %105 = load volatile ptr, ptr %84, align 8
  %106 = icmp eq ptr %105, %77
  br i1 %106, label %107, label %83

107:                                              ; preds = %104, %92, %75
  %108 = phi ptr [ %76, %75 ], [ %84, %92 ], [ %76, %104 ]
  %109 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %108, i32 0, i32 58
  %110 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %108, i32 0, i32 58, i32 9
  %111 = load volatile ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %127

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.wiphy, ptr %8, i32 6, i32 56, i32 9, i32 2
  %115 = load volatile ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %115, i32 0, i32 58, i32 9
  %119 = load volatile ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %117, %113
  %122 = getelementptr inbounds %struct.ieee80211_local, ptr %12, i32 0, i32 26
  %123 = load i8, ptr %122, align 1, !range !11
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %152

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.wiphy, ptr %8, i32 6, i32 5
  br label %127

127:                                              ; preds = %125, %117, %107
  %128 = phi ptr [ %126, %125 ], [ %119, %117 ], [ %111, %107 ]
  %129 = getelementptr inbounds %struct.wiphy, ptr %8, i32 1, i32 11
  %130 = load ptr, ptr %129, align 8
  %131 = load i32, ptr %109, align 8
  %132 = tail call zeroext i1 @cfg80211_reg_can_beacon(ptr noundef %130, ptr noundef %128, i32 noundef %131) #16
  br i1 %132, label %133, label %152

133:                                              ; preds = %127
  %134 = load ptr, ptr %128, align 4
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  %137 = load i32, ptr %136, align 4
  %138 = and i32 %135, 7
  %139 = and i32 %137, -8
  %140 = or i32 %139, %138
  store i32 %140, ptr %136, align 4
  %141 = tail call zeroext i16 @ieee80211_select_queue_80211(ptr noundef %108, ptr noundef %0, ptr noundef %41) #16
  %142 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 5
  %143 = load i32, ptr %142, align 8
  %144 = and i32 %143, 7
  %145 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %144
  %146 = load i32, ptr %145, align 4
  %147 = trunc i32 %146 to i16
  %148 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  store i16 %147, ptr %148, align 4
  %149 = tail call zeroext i1 @ieee80211_parse_tx_radiotap(ptr noundef %0, ptr noundef %1)
  br i1 %149, label %150, label %152

150:                                              ; preds = %133
  %151 = tail call ptr @skb_pull(ptr noundef %0, i32 noundef %25) #16
  tail call void @ieee80211_xmit(ptr noundef %108, ptr noundef null, ptr noundef %0)
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %154

152:                                              ; preds = %133, %127, %121
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %153

153:                                              ; preds = %152, %40, %27, %22, %19, %11
  tail call void @consume_skb(ptr noundef %0) #16
  br label %154

154:                                              ; preds = %153, %150
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_reg_can_beacon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_select_queue_80211(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_lookup_ra_sta(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %70 [
    i32 4, label %6
    i32 3, label %14
    i32 11, label %14
    i32 1, label %14
    i32 2, label %20
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  %8 = load volatile ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %68

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 8
  %12 = load i8, ptr %11, align 8, !range !11
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %70

14:                                               ; preds = %10, %3, %3, %3
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %64, label %68

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 11
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 32768
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %60, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = tail call ptr @sta_info_get(ptr noundef %0, ptr noundef %29) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %60, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.sta_info, ptr %30, i32 0, i32 23
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %60, label %37

37:                                               ; preds = %32
  %38 = load volatile i32, ptr %33, align 4
  %39 = and i32 %38, 4096
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load ptr, ptr %28, align 4
  %43 = getelementptr i8, ptr %42, i32 12
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 8
  %47 = getelementptr i8, ptr %42, i32 13
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %46, %49
  %51 = icmp eq i32 %50, 35085
  br i1 %51, label %52, label %70

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %54 = load i32, ptr %53, align 8
  %55 = icmp ugt i32 %54, 14
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = getelementptr i8, ptr %42, i32 14
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 2
  br i1 %59, label %60, label %70

60:                                               ; preds = %56, %32, %27, %20
  %61 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  %62 = tail call ptr @sta_info_get(ptr noundef %0, ptr noundef %61) #16
  %63 = icmp eq ptr %62, null
  br i1 %63, label %70, label %68

64:                                               ; preds = %14
  %65 = tail call ptr @sta_info_get_bss(ptr noundef %0, ptr noundef %16) #16
  %66 = icmp eq ptr %65, null
  %67 = select i1 %66, ptr inttoptr (i32 -2 to ptr), ptr %65
  br label %68

68:                                               ; preds = %64, %60, %37, %14, %6
  %69 = phi ptr [ %8, %6 ], [ inttoptr (i32 -2 to ptr), %14 ], [ %30, %37 ], [ %62, %60 ], [ %67, %64 ]
  store ptr %69, ptr %2, align 4
  br label %70

70:                                               ; preds = %68, %60, %56, %52, %41, %10, %3
  %71 = phi i32 [ -67, %10 ], [ -22, %56 ], [ -67, %60 ], [ -22, %3 ], [ -22, %52 ], [ -22, %41 ], [ 0, %68 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_check_fast_xmit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ieee80211_fast_tx, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(76) %2, i8 0, i32 76, i1 false)
  %3 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 7
  %8 = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 4
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 32768
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %214, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %13) #16
  %14 = load volatile i32, ptr %8, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = load volatile i32, ptr %8, align 4
  %19 = and i32 %18, 1024
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 58
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %206, label %25

25:                                               ; preds = %21, %17, %12
  %26 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %206, label %30

30:                                               ; preds = %25
  %31 = load volatile i32, ptr %26, align 4
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %206

34:                                               ; preds = %30
  %35 = load volatile i32, ptr %26, align 4
  %36 = and i32 %35, 512
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %206

38:                                               ; preds = %34
  %39 = load volatile i32, ptr %26, align 4
  %40 = and i32 %39, 33554432
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %206

42:                                               ; preds = %38
  %43 = load volatile i32, ptr %26, align 4
  %44 = and i32 %43, 64
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %206

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 12
  %48 = load i16, ptr %47, align 4
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %206

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.wiphy, ptr %52, i32 0, i32 35
  %54 = load i32, ptr %53, align 8
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = getelementptr %struct.ieee80211_hw, ptr %4, i32 0, i32 4, i32 1
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %58, 64
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %206, label %61

61:                                               ; preds = %56, %50
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 58, i32 9
  %63 = load volatile ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %206

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 58
  %68 = load ptr, ptr %63, align 4
  %69 = load i32, ptr %68, align 4
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 5
  store i8 %70, ptr %71, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %72 = load i32, ptr %67, align 8
  switch i32 %72, label %206 [
    i32 1, label %73
    i32 2, label %79
    i32 4, label %102
    i32 3, label %113
  ]

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 3
  store i8 4, ptr %74, align 2
  %75 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 2
  store i8 10, ptr %75, align 1
  %76 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 7, i32 16
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 57
  %78 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %77, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %76, ptr noundef align 2 dereferenceable(6) %78, i32 6, i1 false)
  br label %118

79:                                               ; preds = %66
  %80 = load volatile i32, ptr %26, align 4
  %81 = and i32 %80, 2048
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 3
  store i8 4, ptr %84, align 2
  %85 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 2
  store i8 10, ptr %85, align 1
  %86 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 7, i32 16
  %87 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 57, i32 0, i32 23, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %86, ptr noundef align 4 dereferenceable(6) %87, i32 6, i1 false)
  br label %118

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 57, i32 0, i32 24, i32 23
  %90 = load i8, ptr %89, align 4
  %91 = icmp eq i8 %90, 0
  %92 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 7, i32 4
  %93 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 57, i32 0, i32 23, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %92, ptr noundef align 4 dereferenceable(6) %93, i32 6, i1 false)
  br i1 %91, label %99, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 7, i32 10
  %96 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 58, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %95, ptr noundef align 8 dereferenceable(6) %96, i32 6, i1 false)
  %97 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 3
  store i8 16, ptr %97, align 2
  %98 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 2
  store i8 24, ptr %98, align 1
  br label %118

99:                                               ; preds = %88
  %100 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 3
  store i8 16, ptr %100, align 2
  %101 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 2
  store i8 10, ptr %101, align 1
  br label %118

102:                                              ; preds = %66
  %103 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 1, i32 8
  %104 = load i8, ptr %103, align 8, !range !11
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 7, i32 4
  %108 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %107, ptr noundef align 8 dereferenceable(6) %108, i32 6, i1 false)
  %109 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 7, i32 10
  %110 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 58, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %109, ptr noundef align 8 dereferenceable(6) %110, i32 6, i1 false)
  %111 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 3
  store i8 16, ptr %111, align 2
  %112 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 2
  store i8 24, ptr %112, align 1
  br label %118

113:                                              ; preds = %102, %66
  %114 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 3
  store i8 4, ptr %114, align 2
  %115 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 7, i32 10
  %116 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 58, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %115, ptr noundef align 8 dereferenceable(6) %116, i32 6, i1 false)
  %117 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 2
  store i8 16, ptr %117, align 1
  br label %118

118:                                              ; preds = %113, %106, %99, %94, %83, %73
  %119 = phi i8 [ 24, %113 ], [ 30, %106 ], [ 24, %99 ], [ 30, %94 ], [ 24, %83 ], [ 24, %73 ]
  %120 = phi i16 [ 520, %113 ], [ 776, %106 ], [ 264, %99 ], [ 776, %94 ], [ 8, %83 ], [ 8, %73 ]
  %121 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 1
  store i8 %119, ptr %121, align 4
  %122 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 10
  %123 = load i8, ptr %122, align 4, !range !11
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 1
  %127 = add nuw nsw i8 %119, 2
  store i8 %127, ptr %126, align 4
  %128 = or i16 %120, 128
  br label %129

129:                                              ; preds = %125, %118
  %130 = phi i8 [ %127, %125 ], [ %119, %118 ]
  %131 = phi i16 [ %128, %125 ], [ %120, %118 ]
  %132 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 9
  %133 = load i8, ptr %132, align 8
  %134 = zext i8 %133 to i32
  %135 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 8, i32 %134
  %136 = load volatile ptr, ptr %135, align 4
  store ptr %136, ptr %2, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %129
  %139 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 15
  %140 = load volatile ptr, ptr %139, align 8
  store ptr %140, ptr %2, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %198, label %142

142:                                              ; preds = %138, %129
  %143 = phi ptr [ %140, %138 ], [ %136, %129 ]
  %144 = getelementptr inbounds %struct.ieee80211_key, ptr %143, i32 0, i32 7, i32 6
  %145 = load i16, ptr %144, align 8
  %146 = zext i16 %145 to i32
  %147 = and i32 %146, 2
  %148 = icmp eq i32 %147, 0
  %149 = and i32 %146, 32
  %150 = icmp eq i32 %149, 0
  %151 = and i32 %146, 260
  %152 = icmp ne i32 %151, 0
  %153 = getelementptr inbounds %struct.ieee80211_key, ptr %143, i32 0, i32 4
  %154 = load i32, ptr %153, align 4
  %155 = and i32 %154, 3
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %206

157:                                              ; preds = %142
  %158 = getelementptr inbounds %struct.ieee80211_key, ptr %143, i32 0, i32 7, i32 1
  %159 = load i32, ptr %158, align 8
  switch i32 %159, label %183 [
    i32 1027076, label %160
    i32 1027082, label %160
    i32 1027080, label %166
    i32 1027081, label %166
    i32 1027074, label %172
    i32 1027073, label %178
    i32 1027077, label %178
    i32 1027078, label %182
    i32 1027085, label %182
    i32 1027083, label %182
    i32 1027084, label %182
  ]

160:                                              ; preds = %157, %157
  br i1 %148, label %163, label %161

161:                                              ; preds = %160
  %162 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 4
  store i8 %130, ptr %162, align 1
  br label %164

163:                                              ; preds = %160
  br i1 %150, label %195, label %164

164:                                              ; preds = %163, %161
  %165 = add nuw nsw i8 %130, 8
  br label %195

166:                                              ; preds = %157, %157
  br i1 %148, label %169, label %167

167:                                              ; preds = %166
  %168 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 4
  store i8 %130, ptr %168, align 1
  br label %170

169:                                              ; preds = %166
  br i1 %150, label %195, label %170

170:                                              ; preds = %169, %167
  %171 = add nuw nsw i8 %130, 8
  br label %195

172:                                              ; preds = %157
  %173 = xor i1 %148, true
  %174 = select i1 %152, i1 true, i1 %173
  br i1 %174, label %206, label %175

175:                                              ; preds = %172
  %176 = add nuw nsw i8 %130, 8
  %177 = select i1 %150, i8 %130, i8 %176
  br label %195

178:                                              ; preds = %157, %157
  br i1 %148, label %179, label %206

179:                                              ; preds = %178
  %180 = add nuw nsw i8 %130, 4
  %181 = select i1 %150, i8 %130, i8 %180
  br label %195

182:                                              ; preds = %157, %157, %157, %157
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3125, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %159) #16
  br label %206

183:                                              ; preds = %157
  br i1 %148, label %185, label %184, !prof !9

184:                                              ; preds = %183
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3129, i32 noundef 9, ptr noundef null) #16
  br label %206

185:                                              ; preds = %183
  %186 = and i32 %154, 4
  %187 = icmp eq i32 %186, 0
  %188 = select i1 %187, i1 true, i1 %150
  br i1 %188, label %195, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.ieee80211_key, ptr %143, i32 0, i32 7, i32 3
  %191 = load i8, ptr %190, align 1
  %192 = icmp ugt i8 %191, 18
  br i1 %192, label %206, label %193

193:                                              ; preds = %189
  %194 = add nuw nsw i8 %130, %191
  br label %195

195:                                              ; preds = %193, %185, %179, %175, %170, %169, %164, %163
  %196 = phi i8 [ %165, %164 ], [ %130, %163 ], [ %171, %170 ], [ %130, %169 ], [ %194, %193 ], [ %130, %185 ], [ %177, %175 ], [ %181, %179 ]
  %197 = or i16 %131, 16384
  br label %198

198:                                              ; preds = %195, %138
  %199 = phi i8 [ %196, %195 ], [ %130, %138 ]
  %200 = phi i16 [ %197, %195 ], [ %131, %138 ]
  store i16 %200, ptr %7, align 2
  %201 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %2, i32 0, i32 1
  %202 = zext i8 %199 to i32
  %203 = getelementptr i8, ptr %7, i32 %202
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %203, ptr noundef nonnull align 1 dereferenceable(6) @rfc1042_header, i32 6, i1 false)
  %204 = add nuw nsw i8 %199, 6
  store i8 %204, ptr %201, align 4
  %205 = call ptr @kmemdup(ptr noundef nonnull %2, i32 noundef 76, i32 noundef 2592) #16
  br label %206

206:                                              ; preds = %198, %189, %184, %182, %178, %172, %142, %66, %65, %56, %46, %42, %38, %34, %30, %25, %21
  %207 = phi ptr [ null, %30 ], [ null, %34 ], [ null, %38 ], [ null, %42 ], [ null, %46 ], [ null, %66 ], [ %205, %198 ], [ null, %65 ], [ null, %56 ], [ null, %25 ], [ null, %21 ], [ null, %184 ], [ null, %182 ], [ null, %142 ], [ null, %172 ], [ null, %178 ], [ null, %189 ]
  %208 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 14
  %209 = load ptr, ptr %208, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  store volatile ptr %207, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %213, label %211

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %209, i32 0, i32 8
  call void @kvfree_call_rcu(ptr noundef %212, ptr noundef nonnull inttoptr (i32 68 to ptr)) #16
  br label %213

213:                                              ; preds = %211, %206
  call void @_raw_spin_unlock_bh(ptr noundef %13) #16
  br label %214

214:                                              ; preds = %213, %1
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %2) #16
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_check_fast_xmit_all(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 49
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %9, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @ieee80211_check_fast_xmit(ptr noundef %6)
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %9, label %5

9:                                                ; preds = %5, %1
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_check_fast_xmit_iface(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 49
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 49
  br label %9

9:                                                ; preds = %22, %7
  %10 = phi ptr [ %5, %7 ], [ %23, %22 ]
  %11 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 49
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %8, align 4
  %20 = icmp eq ptr %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %9
  tail call void @ieee80211_check_fast_xmit(ptr noundef %10)
  br label %22

22:                                               ; preds = %21, %18, %14
  %23 = load volatile ptr, ptr %10, align 4
  %24 = icmp eq ptr %23, %4
  br i1 %24, label %25, label %9

25:                                               ; preds = %22, %1
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_clear_fast_xmit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  store volatile ptr null, ptr %3, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %4, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %7, ptr noundef nonnull inttoptr (i32 68 to ptr)) #16
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_tx_dequeue(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.vlan_hdr, align 4
  %4 = alloca %struct.ieee80211_tx_data, align 4
  %5 = getelementptr i8, ptr %1, i32 -164
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i32 44, i1 false), !annotation !12
  %7 = load ptr, ptr %1, align 4
  %8 = tail call ptr @llvm.thread.pointer() #16
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 65280
  %12 = icmp eq i32 %11, 0
  %13 = load i1, ptr @ieee80211_tx_dequeue.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !10

16:                                               ; preds = %2
  store i1 true, ptr @ieee80211_tx_dequeue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3638, i32 noundef 9, ptr noundef null) #16
  br label %17

17:                                               ; preds = %16, %2
  %18 = getelementptr %struct.ieee80211_txq, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %19, i32 -832
  %23 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr [4 x %struct.airtime_info], ptr %22, i32 0, i32 %25
  br label %34

27:                                               ; preds = %17
  %28 = load ptr, ptr %1, align 4
  %29 = getelementptr i8, ptr %28, i32 -2264
  %30 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = getelementptr %struct.ieee80211_sub_if_data, ptr %29, i32 0, i32 28, i32 %32
  br label %34

34:                                               ; preds = %27, %21
  %35 = phi ptr [ %26, %21 ], [ %33, %27 ]
  %36 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr %struct.wiphy, ptr %37, i32 0, i32 14, i32 5
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %34
  %43 = load volatile i32, ptr @aql_disable, align 4
  %44 = icmp sgt i32 %43, 0
  %45 = select i1 %44, i1 true, i1 %20
  br i1 %45, label %67, label %46, !prof !24

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 2
  %48 = load i8, ptr %47, align 4
  %49 = icmp eq i8 %48, 16
  br i1 %49, label %67, label %50, !prof !10

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.airtime_info, ptr %35, i32 0, i32 5
  %52 = load volatile i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.airtime_info, ptr %35, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %67, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 7
  %58 = load volatile i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %62, label %889

62:                                               ; preds = %56
  %63 = load volatile i32, ptr %51, align 4
  %64 = getelementptr inbounds %struct.airtime_info, ptr %35, i32 0, i32 7
  %65 = load i32, ptr %64, align 8
  %66 = icmp ult i32 %63, %65
  br i1 %66, label %67, label %889

67:                                               ; preds = %62, %50, %46, %42, %34
  %68 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %68) #16
  %69 = getelementptr i8, ptr %1, i32 -4
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %887

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 3
  %75 = getelementptr i8, ptr %1, i32 -20
  %76 = getelementptr i8, ptr %1, i32 -12
  %77 = getelementptr i8, ptr %1, i32 -156
  %78 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 3
  %79 = getelementptr i8, ptr %1, i32 -140
  %80 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 2
  %81 = getelementptr i8, ptr %1, i32 -76
  %82 = getelementptr i8, ptr %1, i32 -52
  %83 = getelementptr i8, ptr %1, i32 -44
  %84 = getelementptr i8, ptr %1, i32 -48
  %85 = getelementptr i8, ptr %1, i32 -40
  %86 = getelementptr i8, ptr %1, i32 -36
  %87 = getelementptr i8, ptr %1, i32 -152
  %88 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 8
  %89 = getelementptr i8, ptr %1, i32 -84
  %90 = getelementptr i8, ptr %1, i32 -80
  %91 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %4, i32 0, i32 1
  %92 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %4, i32 0, i32 1, i32 0, i32 0, i32 1
  %93 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %4, i32 0, i32 1, i32 1
  %94 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %4, i32 0, i32 2
  %95 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %4, i32 0, i32 3
  %96 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %4, i32 0, i32 4
  %97 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %98 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %4, i32 0, i32 5
  %99 = getelementptr i8, ptr %1, i32 -16
  %100 = getelementptr %struct.ieee80211_hw, ptr %0, i32 0, i32 4, i32 1
  %101 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 111
  %102 = getelementptr inbounds i8, ptr %4, i32 16
  br label %103

103:                                              ; preds = %714, %73
  %104 = phi ptr [ null, %73 ], [ %715, %714 ]
  %105 = load volatile i32, ptr %69, align 4
  %106 = and i32 %105, 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %887

108:                                              ; preds = %103
  %109 = load i8, ptr %74, align 1
  %110 = zext i8 %109 to i32
  %111 = getelementptr %struct.ieee80211_vif, ptr %7, i32 0, i32 14, i32 %110
  %112 = load i8, ptr %111, align 1, !range !11
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  call void @_set_bit(i32 noundef 3, ptr noundef %69) #16
  br label %887

115:                                              ; preds = %108
  %116 = load ptr, ptr %75, align 4
  %117 = icmp eq ptr %116, %75
  %118 = icmp eq ptr %116, null
  %119 = or i1 %117, %118
  br i1 %119, label %133, label %120

120:                                              ; preds = %115
  %121 = load i32, ptr %76, align 4
  %122 = add i32 %121, -1
  store volatile i32 %122, ptr %76, align 4
  %123 = load ptr, ptr %116, align 8
  %124 = getelementptr inbounds %struct.anon.42, ptr %116, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  store ptr null, ptr %124, align 4
  store ptr null, ptr %116, align 8
  %126 = getelementptr inbounds %struct.anon.42, ptr %123, i32 0, i32 1
  store volatile ptr %125, ptr %126, align 4
  store volatile ptr %123, ptr %125, align 8
  %127 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 3, i32 32
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 64
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %887, label %131

131:                                              ; preds = %120
  %132 = and i32 %128, -65
  store i32 %132, ptr %127, align 8
  br label %662

133:                                              ; preds = %651, %115
  %134 = load volatile ptr, ptr %5, align 4
  %135 = icmp eq ptr %134, %5
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load volatile ptr, ptr %77, align 4
  %138 = icmp eq ptr %137, %77
  br i1 %138, label %887, label %139

139:                                              ; preds = %136, %133
  %140 = phi ptr [ %137, %136 ], [ %134, %133 ]
  %141 = phi ptr [ %77, %136 ], [ %5, %133 ]
  %142 = getelementptr i8, ptr %140, i32 -4
  %143 = getelementptr i8, ptr %140, i32 28
  %144 = load i32, ptr %143, align 4
  %145 = icmp slt i32 %144, 1
  br i1 %145, label %146, label %154

146:                                              ; preds = %139
  %147 = load i32, ptr %88, align 4
  %148 = add i32 %147, %144
  store i32 %148, ptr %143, align 4
  %149 = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = load ptr, ptr %140, align 4
  %152 = getelementptr inbounds %struct.list_head, ptr %151, i32 0, i32 1
  store ptr %150, ptr %152, align 4
  store volatile ptr %151, ptr %150, align 4
  %153 = load ptr, ptr %87, align 4
  store ptr %140, ptr %87, align 4
  store ptr %77, ptr %140, align 4
  store ptr %153, ptr %149, align 4
  store volatile ptr %140, ptr %153, align 4
  br label %651

154:                                              ; preds = %139
  %155 = load ptr, ptr %18, align 4
  %156 = icmp eq ptr %155, null
  %157 = getelementptr i8, ptr %155, i32 -216
  %158 = select i1 %156, ptr %78, ptr %157
  %159 = icmp eq ptr %79, %142
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  %161 = load ptr, ptr %1, align 4
  %162 = getelementptr i8, ptr %161, i32 -1908
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.ieee80211_local, ptr %163, i32 0, i32 1
  br label %187

165:                                              ; preds = %154
  %166 = load ptr, ptr %80, align 8
  %167 = load ptr, ptr %6, align 4
  %168 = ptrtoint ptr %142 to i32
  %169 = ptrtoint ptr %167 to i32
  %170 = sub i32 %168, %169
  %171 = sdiv exact i32 %170, 36
  %172 = getelementptr %struct.codel_vars, ptr %166, i32 %171
  %173 = load ptr, ptr %1, align 4
  %174 = getelementptr i8, ptr %173, i32 -1908
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.ieee80211_local, ptr %175, i32 0, i32 1
  %177 = icmp eq ptr %81, %172
  br i1 %177, label %187, label %178

178:                                              ; preds = %165
  %179 = load ptr, ptr %176, align 4
  %180 = getelementptr inbounds %struct.ieee80211_local, ptr %175, i32 0, i32 2
  %181 = load ptr, ptr %180, align 8
  %182 = ptrtoint ptr %172 to i32
  %183 = ptrtoint ptr %181 to i32
  %184 = sub i32 %182, %183
  %185 = sdiv exact i32 %184, 24
  %186 = getelementptr %struct.fq_flow, ptr %179, i32 %185
  br label %187

187:                                              ; preds = %178, %165, %160
  %188 = phi i1 [ false, %178 ], [ true, %165 ], [ true, %160 ]
  %189 = phi ptr [ %176, %178 ], [ %176, %165 ], [ %164, %160 ]
  %190 = phi ptr [ %172, %178 ], [ %81, %165 ], [ %81, %160 ]
  %191 = phi ptr [ %186, %178 ], [ %79, %165 ], [ %79, %160 ]
  %192 = getelementptr i8, ptr %140, i32 24
  %193 = call fastcc ptr @fq_flow_dequeue(ptr noundef %189, ptr noundef %191) #16
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %197

195:                                              ; preds = %187
  %196 = getelementptr inbounds %struct.codel_vars, ptr %190, i32 0, i32 2
  store i8 0, ptr %196, align 4
  br label %635

197:                                              ; preds = %187
  %198 = call i64 @ktime_get() #16
  %199 = lshr i64 %198, 10
  %200 = trunc i64 %199 to i32
  %201 = getelementptr inbounds %struct.sk_buff, ptr %193, i32 0, i32 5
  %202 = load i32, ptr %201, align 8
  %203 = getelementptr inbounds %struct.sk_buff, ptr %193, i32 0, i32 3, i32 36
  %204 = load i32, ptr %203, align 4
  %205 = sub i32 %200, %204
  %206 = getelementptr inbounds %struct.codel_vars, ptr %190, i32 0, i32 6
  store i32 %205, ptr %206, align 4
  %207 = load i32, ptr %82, align 4
  %208 = icmp ugt i32 %202, %207
  br i1 %208, label %209, label %211, !prof !10

209:                                              ; preds = %197
  store i32 %202, ptr %82, align 4
  %210 = load i32, ptr %206, align 4
  br label %211

211:                                              ; preds = %209, %197
  %212 = phi i32 [ %210, %209 ], [ %205, %197 ]
  %213 = load i32, ptr %158, align 4
  %214 = sub i32 %213, %212
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %211
  %217 = load i32, ptr %192, align 4
  %218 = getelementptr inbounds %struct.codel_params, ptr %158, i32 0, i32 3
  %219 = load i32, ptr %218, align 4
  %220 = icmp ugt i32 %217, %219
  br i1 %220, label %223, label %221

221:                                              ; preds = %216, %211
  %222 = getelementptr inbounds %struct.codel_vars, ptr %190, i32 0, i32 4
  store i32 0, ptr %222, align 4
  br label %234

223:                                              ; preds = %216
  %224 = getelementptr inbounds %struct.codel_vars, ptr %190, i32 0, i32 4
  %225 = load i32, ptr %224, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.codel_params, ptr %158, i32 0, i32 2
  %229 = load i32, ptr %228, align 4
  %230 = add i32 %229, %200
  store i32 %230, ptr %224, align 4
  br label %234

231:                                              ; preds = %223
  %232 = sub i32 %200, %225
  %233 = icmp sgt i32 %232, 0
  br label %234

234:                                              ; preds = %231, %227, %221
  %235 = phi i1 [ false, %221 ], [ false, %227 ], [ %233, %231 ]
  %236 = getelementptr inbounds %struct.codel_vars, ptr %190, i32 0, i32 2
  %237 = load i8, ptr %236, align 4, !range !11
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %364, label %239

239:                                              ; preds = %234
  br i1 %235, label %241, label %240

240:                                              ; preds = %239
  store i8 0, ptr %236, align 4
  br label %486

241:                                              ; preds = %239
  %242 = getelementptr inbounds %struct.codel_vars, ptr %190, i32 0, i32 5
  %243 = load i32, ptr %242, align 4
  %244 = sub i32 %200, %243
  %245 = icmp sgt i32 %244, -1
  br i1 %245, label %246, label %486

246:                                              ; preds = %241
  %247 = getelementptr inbounds %struct.codel_vars, ptr %190, i32 0, i32 3
  %248 = getelementptr inbounds %struct.codel_params, ptr %158, i32 0, i32 4
  %249 = ptrtoint ptr %190 to i32
  %250 = getelementptr inbounds %struct.codel_params, ptr %158, i32 0, i32 3
  %251 = getelementptr inbounds %struct.codel_vars, ptr %190, i32 0, i32 4
  %252 = getelementptr inbounds %struct.codel_params, ptr %158, i32 0, i32 2
  br label %253

253:                                              ; preds = %350, %246
  %254 = phi i32 [ %243, %246 ], [ %361, %350 ]
  %255 = phi ptr [ %193, %246 ], [ %317, %350 ]
  %256 = sub i32 %200, %254
  %257 = icmp sgt i32 %256, -1
  br i1 %257, label %258, label %483

258:                                              ; preds = %253
  %259 = load i32, ptr %190, align 4
  %260 = add i32 %259, 1
  store i32 %260, ptr %190, align 4
  %261 = load i16, ptr %247, align 2
  %262 = zext i16 %261 to i32
  %263 = shl nuw i32 %262, 16
  %264 = zext i32 %263 to i64
  %265 = mul nuw i64 %264, %264
  %266 = lshr exact i64 %265, 32
  %267 = zext i32 %260 to i64
  %268 = mul nuw i64 %266, %267
  %269 = sub i64 12884901888, %268
  %270 = lshr i64 %269, 2
  %271 = mul i64 %270, %264
  %272 = lshr i64 %271, 47
  %273 = trunc i64 %272 to i16
  store i16 %273, ptr %247, align 2
  %274 = load i8, ptr %248, align 4, !range !11
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %293, label %276

276:                                              ; preds = %258
  %277 = call fastcc i32 @INET_ECN_set_ce(ptr noundef nonnull %255) #16
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %293, label %279

279:                                              ; preds = %276
  %280 = load i32, ptr %85, align 4
  %281 = add i32 %280, 1
  store i32 %281, ptr %85, align 4
  %282 = load i32, ptr %242, align 4
  %283 = load i32, ptr %252, align 4
  %284 = load i16, ptr %247, align 2
  %285 = zext i16 %284 to i32
  %286 = shl nuw i32 %285, 16
  %287 = zext i32 %283 to i64
  %288 = zext i32 %286 to i64
  %289 = mul nuw i64 %288, %287
  %290 = lshr i64 %289, 32
  %291 = trunc i64 %290 to i32
  %292 = add i32 %282, %291
  store i32 %292, ptr %242, align 4
  br label %483

293:                                              ; preds = %276, %258
  %294 = getelementptr inbounds %struct.sk_buff, ptr %255, i32 0, i32 5
  %295 = load i32, ptr %294, align 8
  %296 = load i32, ptr %83, align 4
  %297 = add i32 %296, %295
  store i32 %297, ptr %83, align 4
  %298 = load ptr, ptr %1, align 4
  %299 = getelementptr i8, ptr %298, i32 -1908
  %300 = load ptr, ptr %299, align 4
  call void @ieee80211_free_txskb(ptr noundef %300, ptr noundef nonnull %255) #16
  %301 = load i32, ptr %84, align 4
  %302 = add i32 %301, 1
  store i32 %302, ptr %84, align 4
  %303 = load ptr, ptr %1, align 4
  %304 = getelementptr i8, ptr %303, i32 -1908
  %305 = load ptr, ptr %304, align 4
  %306 = getelementptr inbounds %struct.ieee80211_local, ptr %305, i32 0, i32 1
  br i1 %188, label %315, label %307

307:                                              ; preds = %293
  %308 = load ptr, ptr %306, align 4
  %309 = getelementptr inbounds %struct.ieee80211_local, ptr %305, i32 0, i32 2
  %310 = load ptr, ptr %309, align 8
  %311 = ptrtoint ptr %310 to i32
  %312 = sub i32 %249, %311
  %313 = sdiv exact i32 %312, 24
  %314 = getelementptr %struct.fq_flow, ptr %308, i32 %313
  br label %315

315:                                              ; preds = %307, %293
  %316 = phi ptr [ %314, %307 ], [ %79, %293 ]
  %317 = call fastcc ptr @fq_flow_dequeue(ptr noundef %306, ptr noundef %316) #16
  %318 = icmp eq ptr %317, null
  br i1 %318, label %347, label %319

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.sk_buff, ptr %317, i32 0, i32 5
  %321 = load i32, ptr %320, align 8
  %322 = getelementptr inbounds %struct.sk_buff, ptr %317, i32 0, i32 3, i32 36
  %323 = load i32, ptr %322, align 4
  %324 = sub i32 %200, %323
  store i32 %324, ptr %206, align 4
  %325 = load i32, ptr %82, align 4
  %326 = icmp ugt i32 %321, %325
  br i1 %326, label %327, label %329, !prof !10

327:                                              ; preds = %319
  store i32 %321, ptr %82, align 4
  %328 = load i32, ptr %206, align 4
  br label %329

329:                                              ; preds = %327, %319
  %330 = phi i32 [ %328, %327 ], [ %324, %319 ]
  %331 = load i32, ptr %158, align 4
  %332 = sub i32 %331, %330
  %333 = icmp sgt i32 %332, 0
  br i1 %333, label %347, label %334

334:                                              ; preds = %329
  %335 = load i32, ptr %192, align 4
  %336 = load i32, ptr %250, align 4
  %337 = icmp ugt i32 %335, %336
  br i1 %337, label %338, label %347

338:                                              ; preds = %334
  %339 = load i32, ptr %251, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %338
  %342 = load i32, ptr %252, align 4
  %343 = add i32 %342, %200
  br label %347

344:                                              ; preds = %338
  %345 = sub i32 %200, %339
  %346 = icmp sgt i32 %345, 0
  br i1 %346, label %350, label %349

347:                                              ; preds = %341, %334, %329, %315
  %348 = phi i32 [ %343, %341 ], [ 0, %315 ], [ 0, %329 ], [ 0, %334 ]
  store i32 %348, ptr %251, align 4
  br label %349

349:                                              ; preds = %347, %344
  store i8 0, ptr %236, align 4
  br label %480

350:                                              ; preds = %344
  %351 = load i32, ptr %242, align 4
  %352 = load i32, ptr %252, align 4
  %353 = load i16, ptr %247, align 2
  %354 = zext i16 %353 to i32
  %355 = shl nuw i32 %354, 16
  %356 = zext i32 %352 to i64
  %357 = zext i32 %355 to i64
  %358 = mul nuw i64 %357, %356
  %359 = lshr i64 %358, 32
  %360 = trunc i64 %359 to i32
  %361 = add i32 %351, %360
  store i32 %361, ptr %242, align 4
  %362 = load i8, ptr %236, align 4, !range !11
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %483, label %253

364:                                              ; preds = %234
  br i1 %235, label %365, label %486

365:                                              ; preds = %364
  %366 = getelementptr inbounds %struct.codel_params, ptr %158, i32 0, i32 4
  %367 = load i8, ptr %366, align 4, !range !11
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %375, label %369

369:                                              ; preds = %365
  %370 = call fastcc i32 @INET_ECN_set_ce(ptr noundef nonnull %193) #16
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %375, label %372

372:                                              ; preds = %369
  %373 = load i32, ptr %85, align 4
  %374 = add i32 %373, 1
  store i32 %374, ptr %85, align 4
  br label %433

375:                                              ; preds = %369, %365
  %376 = load i32, ptr %201, align 8
  %377 = load i32, ptr %83, align 4
  %378 = add i32 %377, %376
  store i32 %378, ptr %83, align 4
  %379 = load ptr, ptr %1, align 4
  %380 = getelementptr i8, ptr %379, i32 -1908
  %381 = load ptr, ptr %380, align 4
  call void @ieee80211_free_txskb(ptr noundef %381, ptr noundef nonnull %193) #16
  %382 = load i32, ptr %84, align 4
  %383 = add i32 %382, 1
  store i32 %383, ptr %84, align 4
  %384 = load ptr, ptr %1, align 4
  %385 = getelementptr i8, ptr %384, i32 -1908
  %386 = load ptr, ptr %385, align 4
  %387 = getelementptr inbounds %struct.ieee80211_local, ptr %386, i32 0, i32 1
  br i1 %188, label %397, label %388

388:                                              ; preds = %375
  %389 = load ptr, ptr %387, align 4
  %390 = getelementptr inbounds %struct.ieee80211_local, ptr %386, i32 0, i32 2
  %391 = load ptr, ptr %390, align 8
  %392 = ptrtoint ptr %190 to i32
  %393 = ptrtoint ptr %391 to i32
  %394 = sub i32 %392, %393
  %395 = sdiv exact i32 %394, 24
  %396 = getelementptr %struct.fq_flow, ptr %389, i32 %395
  br label %397

397:                                              ; preds = %388, %375
  %398 = phi ptr [ %396, %388 ], [ %79, %375 ]
  %399 = call fastcc ptr @fq_flow_dequeue(ptr noundef %387, ptr noundef %398) #16
  %400 = icmp eq ptr %399, null
  br i1 %400, label %401, label %403

401:                                              ; preds = %397
  %402 = getelementptr inbounds %struct.codel_vars, ptr %190, i32 0, i32 4
  store i32 0, ptr %402, align 4
  br label %433

403:                                              ; preds = %397
  %404 = getelementptr inbounds %struct.sk_buff, ptr %399, i32 0, i32 5
  %405 = load i32, ptr %404, align 8
  %406 = getelementptr inbounds %struct.sk_buff, ptr %399, i32 0, i32 3, i32 36
  %407 = load i32, ptr %406, align 4
  %408 = sub i32 %200, %407
  store i32 %408, ptr %206, align 4
  %409 = load i32, ptr %82, align 4
  %410 = icmp ugt i32 %405, %409
  br i1 %410, label %411, label %413, !prof !10

411:                                              ; preds = %403
  store i32 %405, ptr %82, align 4
  %412 = load i32, ptr %206, align 4
  br label %413

413:                                              ; preds = %411, %403
  %414 = phi i32 [ %412, %411 ], [ %408, %403 ]
  %415 = load i32, ptr %158, align 4
  %416 = sub i32 %415, %414
  %417 = icmp sgt i32 %416, 0
  br i1 %417, label %423, label %418

418:                                              ; preds = %413
  %419 = load i32, ptr %192, align 4
  %420 = getelementptr inbounds %struct.codel_params, ptr %158, i32 0, i32 3
  %421 = load i32, ptr %420, align 4
  %422 = icmp ugt i32 %419, %421
  br i1 %422, label %425, label %423

423:                                              ; preds = %418, %413
  %424 = getelementptr inbounds %struct.codel_vars, ptr %190, i32 0, i32 4
  store i32 0, ptr %424, align 4
  br label %433

425:                                              ; preds = %418
  %426 = getelementptr inbounds %struct.codel_vars, ptr %190, i32 0, i32 4
  %427 = load i32, ptr %426, align 4
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %425
  %430 = getelementptr inbounds %struct.codel_params, ptr %158, i32 0, i32 2
  %431 = load i32, ptr %430, align 4
  %432 = add i32 %431, %200
  store i32 %432, ptr %426, align 4
  br label %433

433:                                              ; preds = %429, %425, %423, %401, %372
  %434 = phi ptr [ %193, %372 ], [ null, %401 ], [ %399, %423 ], [ %399, %429 ], [ %399, %425 ]
  store i8 1, ptr %236, align 4
  %435 = load i32, ptr %190, align 4
  %436 = getelementptr inbounds %struct.codel_vars, ptr %190, i32 0, i32 1
  %437 = load i32, ptr %436, align 4
  %438 = sub i32 %435, %437
  %439 = icmp ugt i32 %438, 1
  br i1 %439, label %440, label %466

440:                                              ; preds = %433
  %441 = getelementptr inbounds %struct.codel_params, ptr %158, i32 0, i32 2
  %442 = load i32, ptr %441, align 4
  %443 = shl i32 %442, 4
  %444 = getelementptr inbounds %struct.codel_vars, ptr %190, i32 0, i32 5
  %445 = load i32, ptr %444, align 4
  %446 = sub i32 %445, %200
  %447 = add i32 %446, %443
  %448 = icmp sgt i32 %447, 0
  br i1 %448, label %449, label %466

449:                                              ; preds = %440
  store i32 %438, ptr %190, align 4
  %450 = getelementptr inbounds %struct.codel_vars, ptr %190, i32 0, i32 3
  %451 = load i16, ptr %450, align 2
  %452 = zext i16 %451 to i32
  %453 = shl nuw i32 %452, 16
  %454 = zext i32 %453 to i64
  %455 = mul nuw i64 %454, %454
  %456 = lshr exact i64 %455, 32
  %457 = zext i32 %438 to i64
  %458 = mul nuw i64 %456, %457
  %459 = sub i64 12884901888, %458
  %460 = lshr i64 %459, 2
  %461 = mul i64 %460, %454
  %462 = lshr i64 %461, 47
  %463 = trunc i64 %462 to i16
  store i16 %463, ptr %450, align 2
  %464 = trunc i64 %462 to i32
  %465 = shl i32 %464, 16
  br label %468

466:                                              ; preds = %440, %433
  store i32 1, ptr %190, align 4
  %467 = getelementptr inbounds %struct.codel_vars, ptr %190, i32 0, i32 3
  store i16 -1, ptr %467, align 2
  br label %468

468:                                              ; preds = %466, %449
  %469 = phi i32 [ -65536, %466 ], [ %465, %449 ]
  %470 = phi i32 [ 1, %466 ], [ %438, %449 ]
  store i32 %470, ptr %436, align 4
  %471 = getelementptr inbounds %struct.codel_params, ptr %158, i32 0, i32 2
  %472 = load i32, ptr %471, align 4
  %473 = zext i32 %472 to i64
  %474 = zext i32 %469 to i64
  %475 = mul nuw i64 %473, %474
  %476 = lshr i64 %475, 32
  %477 = trunc i64 %476 to i32
  %478 = add i32 %477, %200
  %479 = getelementptr inbounds %struct.codel_vars, ptr %190, i32 0, i32 5
  store i32 %478, ptr %479, align 4
  br label %480

480:                                              ; preds = %468, %349
  %481 = phi ptr [ %434, %468 ], [ %317, %349 ]
  %482 = icmp eq ptr %481, null
  br i1 %482, label %635, label %483

483:                                              ; preds = %480, %350, %279, %253
  %484 = phi ptr [ %481, %480 ], [ %255, %279 ], [ %255, %253 ], [ %317, %350 ]
  %485 = load i32, ptr %206, align 4
  br label %486

486:                                              ; preds = %483, %364, %241, %240
  %487 = phi i32 [ %485, %483 ], [ %212, %241 ], [ %212, %240 ], [ %212, %364 ]
  %488 = phi ptr [ %484, %483 ], [ %193, %241 ], [ %193, %240 ], [ %193, %364 ]
  %489 = getelementptr inbounds %struct.codel_params, ptr %158, i32 0, i32 1
  %490 = load i32, ptr %489, align 4
  %491 = sub i32 %487, %490
  %492 = icmp sgt i32 %491, 0
  br i1 %492, label %493, label %652

493:                                              ; preds = %486
  %494 = getelementptr inbounds %struct.codel_params, ptr %158, i32 0, i32 6
  %495 = load i8, ptr %494, align 2
  %496 = icmp eq i8 %495, 0
  br i1 %496, label %627, label %497

497:                                              ; preds = %493
  %498 = getelementptr inbounds %struct.sk_buff, ptr %488, i32 0, i32 13, i32 0, i32 16
  %499 = load i16, ptr %498, align 8
  %500 = getelementptr inbounds %struct.sk_buff, ptr %488, i32 0, i32 7
  %501 = load i16, ptr %500, align 8
  %502 = zext i16 %501 to i32
  switch i16 %499, label %542 [
    i16 -22392, label %503
    i16 129, label %503
  ]

503:                                              ; preds = %497, %497
  %504 = icmp eq i16 %501, 0
  br i1 %504, label %510, label %505

505:                                              ; preds = %503
  %506 = icmp ult i16 %501, 4
  br i1 %506, label %507, label %508, !prof !10

507:                                              ; preds = %505
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 598, i32 noundef 9, ptr noundef null) #16
  br label %652

508:                                              ; preds = %505
  %509 = add nsw i32 %502, -4
  br label %510

510:                                              ; preds = %508, %503
  %511 = phi i32 [ %509, %508 ], [ 14, %503 ]
  %512 = getelementptr inbounds %struct.sk_buff, ptr %488, i32 0, i32 5
  %513 = getelementptr inbounds %struct.sk_buff, ptr %488, i32 0, i32 6
  %514 = getelementptr inbounds %struct.sk_buff, ptr %488, i32 0, i32 17
  br label %515

515:                                              ; preds = %540, %510
  %516 = phi i32 [ %511, %510 ], [ %541, %540 ]
  %517 = phi i32 [ 8, %510 ], [ %533, %540 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !12
  %518 = load i32, ptr %512, align 8
  %519 = load i32, ptr %513, align 4
  %520 = add i32 %516, %519
  %521 = sub i32 %518, %520
  %522 = icmp sgt i32 %521, 3
  br i1 %522, label %523, label %526, !prof !9

523:                                              ; preds = %515
  %524 = load ptr, ptr %514, align 4
  %525 = getelementptr i8, ptr %524, i32 %516
  br label %530

526:                                              ; preds = %515
  %527 = call i32 @skb_copy_bits(ptr noundef nonnull %488, i32 noundef %516, ptr noundef nonnull %3, i32 noundef 4) #16
  %528 = icmp slt i32 %527, 0
  %529 = select i1 %528, ptr null, ptr %3, !prof !10
  br label %530

530:                                              ; preds = %526, %523
  %531 = phi ptr [ %525, %523 ], [ %529, %526 ]
  %532 = icmp eq ptr %531, null
  %533 = add nsw i32 %517, -1
  %534 = icmp eq i32 %533, 0
  %535 = select i1 %532, i1 true, i1 %534, !prof !10
  br i1 %535, label %536, label %537, !prof !10

536:                                              ; preds = %530
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %633

537:                                              ; preds = %530
  %538 = getelementptr inbounds %struct.vlan_hdr, ptr %531, i32 0, i32 1
  %539 = load i16, ptr %538, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  switch i16 %539, label %542 [
    i16 -22392, label %540
    i16 129, label %540
  ]

540:                                              ; preds = %537, %537
  %541 = add nsw i32 %516, 4
  br label %515

542:                                              ; preds = %537, %497
  %543 = phi i16 [ %499, %497 ], [ %539, %537 ]
  switch i16 %543, label %633 [
    i16 8, label %544
    i16 -8826, label %580
  ]

544:                                              ; preds = %542
  %545 = getelementptr inbounds %struct.sk_buff, ptr %488, i32 0, i32 16
  %546 = load ptr, ptr %545, align 8
  %547 = getelementptr inbounds %struct.sk_buff, ptr %488, i32 0, i32 13, i32 0, i32 18
  %548 = load i16, ptr %547, align 4
  %549 = zext i16 %548 to i32
  %550 = getelementptr i8, ptr %546, i32 %549
  %551 = getelementptr inbounds %struct.sk_buff, ptr %488, i32 0, i32 17
  %552 = load ptr, ptr %551, align 4
  %553 = ptrtoint ptr %550 to i32
  %554 = ptrtoint ptr %552 to i32
  %555 = sub i32 %553, %554
  %556 = add i32 %555, 20
  %557 = getelementptr inbounds %struct.sk_buff, ptr %488, i32 0, i32 5
  %558 = load i32, ptr %557, align 8
  %559 = getelementptr inbounds %struct.sk_buff, ptr %488, i32 0, i32 6
  %560 = load i32, ptr %559, align 4
  %561 = sub i32 %558, %560
  %562 = icmp ugt i32 %556, %561
  br i1 %562, label %563, label %573, !prof !10

563:                                              ; preds = %544
  %564 = icmp ult i32 %558, %556
  br i1 %564, label %633, label %565, !prof !10

565:                                              ; preds = %563
  %566 = sub i32 %556, %561
  %567 = call ptr @__pskb_pull_tail(ptr noundef nonnull %488, i32 noundef %566) #16
  %568 = icmp eq ptr %567, null
  br i1 %568, label %633, label %569

569:                                              ; preds = %565
  %570 = load ptr, ptr %545, align 8
  %571 = load i16, ptr %547, align 4
  %572 = zext i16 %571 to i32
  br label %573

573:                                              ; preds = %569, %544
  %574 = phi i32 [ %572, %569 ], [ %549, %544 ]
  %575 = phi ptr [ %570, %569 ], [ %546, %544 ]
  %576 = getelementptr i8, ptr %575, i32 %574
  %577 = getelementptr inbounds %struct.iphdr, ptr %576, i32 0, i32 1
  %578 = load i8, ptr %577, align 1
  %579 = zext i8 %578 to i32
  br label %618

580:                                              ; preds = %542
  %581 = getelementptr inbounds %struct.sk_buff, ptr %488, i32 0, i32 16
  %582 = load ptr, ptr %581, align 8
  %583 = getelementptr inbounds %struct.sk_buff, ptr %488, i32 0, i32 13, i32 0, i32 18
  %584 = load i16, ptr %583, align 4
  %585 = zext i16 %584 to i32
  %586 = getelementptr i8, ptr %582, i32 %585
  %587 = getelementptr inbounds %struct.sk_buff, ptr %488, i32 0, i32 17
  %588 = load ptr, ptr %587, align 4
  %589 = ptrtoint ptr %586 to i32
  %590 = ptrtoint ptr %588 to i32
  %591 = sub i32 %589, %590
  %592 = add i32 %591, 40
  %593 = getelementptr inbounds %struct.sk_buff, ptr %488, i32 0, i32 5
  %594 = load i32, ptr %593, align 8
  %595 = getelementptr inbounds %struct.sk_buff, ptr %488, i32 0, i32 6
  %596 = load i32, ptr %595, align 4
  %597 = sub i32 %594, %596
  %598 = icmp ugt i32 %592, %597
  br i1 %598, label %599, label %609, !prof !10

599:                                              ; preds = %580
  %600 = icmp ult i32 %594, %592
  br i1 %600, label %633, label %601, !prof !10

601:                                              ; preds = %599
  %602 = sub i32 %592, %597
  %603 = call ptr @__pskb_pull_tail(ptr noundef nonnull %488, i32 noundef %602) #16
  %604 = icmp eq ptr %603, null
  br i1 %604, label %633, label %605

605:                                              ; preds = %601
  %606 = load ptr, ptr %581, align 8
  %607 = load i16, ptr %583, align 4
  %608 = zext i16 %607 to i32
  br label %609

609:                                              ; preds = %605, %580
  %610 = phi i32 [ %608, %605 ], [ %585, %580 ]
  %611 = phi ptr [ %606, %605 ], [ %582, %580 ]
  %612 = getelementptr i8, ptr %611, i32 %610
  %613 = load i16, ptr %612, align 2
  %614 = call i16 @llvm.bswap.i16(i16 %613) #16
  %615 = lshr i16 %614, 4
  %616 = and i16 %615, 255
  %617 = zext i16 %616 to i32
  br label %618

618:                                              ; preds = %609, %573
  %619 = phi i32 [ %617, %609 ], [ %579, %573 ]
  %620 = load i8, ptr %494, align 2
  %621 = zext i8 %620 to i32
  %622 = and i32 %619, %621
  %623 = getelementptr inbounds %struct.codel_params, ptr %158, i32 0, i32 5
  %624 = load i8, ptr %623, align 1
  %625 = zext i8 %624 to i32
  %626 = icmp eq i32 %622, %625
  br i1 %626, label %627, label %633

627:                                              ; preds = %618, %493
  %628 = call fastcc i32 @INET_ECN_set_ce(ptr noundef nonnull %488) #16
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %633, label %630

630:                                              ; preds = %627
  %631 = load i32, ptr %86, align 4
  %632 = add i32 %631, 1
  store i32 %632, ptr %86, align 4
  br label %633

633:                                              ; preds = %630, %627, %618, %601, %599, %565, %563, %542, %536
  %634 = icmp eq ptr %488, null
  br i1 %634, label %635, label %652

635:                                              ; preds = %633, %480, %195
  %636 = icmp eq ptr %141, %5
  br i1 %636, label %637, label %646

637:                                              ; preds = %635
  %638 = load volatile ptr, ptr %77, align 4
  %639 = icmp eq ptr %638, %77
  br i1 %639, label %646, label %640

640:                                              ; preds = %637
  %641 = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  %642 = load ptr, ptr %641, align 4
  %643 = load ptr, ptr %140, align 4
  %644 = getelementptr inbounds %struct.list_head, ptr %643, i32 0, i32 1
  store ptr %642, ptr %644, align 4
  store volatile ptr %643, ptr %642, align 4
  %645 = load ptr, ptr %87, align 4
  store ptr %140, ptr %87, align 4
  store ptr %77, ptr %140, align 4
  store ptr %645, ptr %641, align 4
  store volatile ptr %140, ptr %645, align 4
  br label %651

646:                                              ; preds = %637, %635
  %647 = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  %648 = load ptr, ptr %647, align 4
  %649 = load ptr, ptr %140, align 4
  %650 = getelementptr inbounds %struct.list_head, ptr %649, i32 0, i32 1
  store ptr %648, ptr %650, align 4
  store volatile ptr %649, ptr %648, align 4
  store volatile ptr %140, ptr %140, align 4
  store ptr %140, ptr %647, align 4
  store ptr null, ptr %142, align 4
  br label %651

651:                                              ; preds = %646, %640, %146
  br label %133

652:                                              ; preds = %633, %507, %486
  %653 = getelementptr inbounds %struct.sk_buff, ptr %488, i32 0, i32 5
  %654 = load i32, ptr %653, align 8
  %655 = load i32, ptr %143, align 4
  %656 = sub i32 %655, %654
  store i32 %656, ptr %143, align 4
  %657 = load i32, ptr %653, align 8
  %658 = load i32, ptr %89, align 4
  %659 = add i32 %658, %657
  store i32 %659, ptr %89, align 4
  %660 = load i32, ptr %90, align 4
  %661 = add i32 %660, 1
  store i32 %661, ptr %90, align 4
  br label %662

662:                                              ; preds = %652, %131
  %663 = phi ptr [ %488, %652 ], [ %116, %131 ]
  call void @_raw_spin_unlock_bh(ptr noundef %68) #16
  %664 = getelementptr inbounds %struct.sk_buff, ptr %663, i32 0, i32 17
  %665 = load ptr, ptr %664, align 4
  %666 = getelementptr inbounds %struct.sk_buff, ptr %663, i32 0, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %102, i8 0, i32 28, i1 false)
  store ptr %91, ptr %91, align 4
  store ptr %91, ptr %92, align 4
  store i32 0, ptr %93, align 4
  store ptr %0, ptr %94, align 4
  store ptr %663, ptr %4, align 4
  %667 = getelementptr inbounds %struct.sk_buff, ptr %663, i32 0, i32 3, i32 24
  %668 = load ptr, ptr %667, align 8
  %669 = getelementptr i8, ptr %668, i32 -2264
  store ptr %669, ptr %95, align 4
  %670 = load ptr, ptr %18, align 4
  %671 = icmp eq ptr %670, null
  br i1 %671, label %719, label %672

672:                                              ; preds = %662
  %673 = getelementptr i8, ptr %670, i32 -1952
  store ptr %673, ptr %96, align 4
  %674 = load i32, ptr %666, align 8
  %675 = and i32 %674, 128
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %677, label %719

677:                                              ; preds = %672
  %678 = load i16, ptr %665, align 2
  %679 = and i16 %678, 12
  %680 = icmp eq i16 %679, 8
  br i1 %680, label %681, label %719

681:                                              ; preds = %677
  %682 = load i32, ptr %668, align 8
  %683 = icmp eq i32 %682, 11
  br i1 %683, label %719, label %684

684:                                              ; preds = %681
  %685 = getelementptr inbounds %struct.ieee80211_hdr, ptr %665, i32 0, i32 2
  %686 = load i32, ptr %685, align 4
  %687 = and i32 %686, 1
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %689, label %719

689:                                              ; preds = %684
  %690 = getelementptr i8, ptr %670, i32 -1796
  %691 = load volatile i32, ptr %690, align 4
  %692 = and i32 %691, 8
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %694, label %719

694:                                              ; preds = %689
  %695 = getelementptr inbounds %struct.sk_buff, ptr %663, i32 0, i32 3, i32 32
  %696 = load i32, ptr %695, align 8
  %697 = and i32 %696, 1
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %713, label %699

699:                                              ; preds = %694
  %700 = getelementptr i8, ptr %668, i32 800
  %701 = getelementptr inbounds %struct.ieee80211_hdr, ptr %665, i32 0, i32 3
  %702 = load i32, ptr %700, align 4
  %703 = load i32, ptr %701, align 4
  %704 = xor i32 %703, %702
  %705 = getelementptr i8, ptr %668, i32 804
  %706 = load i16, ptr %705, align 2
  %707 = getelementptr %struct.ieee80211_hdr, ptr %665, i32 0, i32 3, i32 4
  %708 = load i16, ptr %707, align 2
  %709 = xor i16 %708, %706
  %710 = zext i16 %709 to i32
  %711 = or i32 %704, %710
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %719, label %713, !prof !9

713:                                              ; preds = %699, %694
  call void @ieee80211_free_txskb(ptr noundef %0, ptr noundef nonnull %663) #16
  br label %714

714:                                              ; preds = %847, %814, %766, %765, %739, %722, %713
  %715 = phi ptr [ %663, %713 ], [ %663, %722 ], [ %663, %739 ], [ %663, %765 ], [ %797, %847 ], [ %797, %814 ], [ %663, %766 ]
  call void @_raw_spin_lock_bh(ptr noundef %68) #16
  %716 = load volatile i32, ptr %69, align 4
  %717 = and i32 %716, 1
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %103, label %887

719:                                              ; preds = %699, %689, %684, %681, %677, %672, %662
  %720 = call fastcc i32 @ieee80211_tx_h_select_key(ptr noundef nonnull %4)
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %723, label %722

722:                                              ; preds = %719
  call void @ieee80211_free_txskb(ptr noundef %0, ptr noundef nonnull %663) #16
  br label %714

723:                                              ; preds = %719
  %724 = load volatile i32, ptr %69, align 4
  %725 = load i32, ptr %666, align 8
  %726 = and i32 %725, -65
  %727 = shl i32 %724, 5
  %728 = and i32 %727, 64
  %729 = or i32 %726, %728
  store i32 %729, ptr %666, align 8
  %730 = and i32 %725, 16384
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %740, label %732

732:                                              ; preds = %723
  %733 = load volatile i32, ptr %97, align 4
  %734 = and i32 %733, 1
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %736, label %855

736:                                              ; preds = %732
  %737 = call fastcc i32 @ieee80211_tx_h_rate_ctrl(ptr noundef nonnull %4)
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %855, label %739

739:                                              ; preds = %736
  call void @ieee80211_free_txskb(ptr noundef %0, ptr noundef nonnull %663) #16
  br label %714

740:                                              ; preds = %723
  %741 = getelementptr inbounds %struct.sk_buff, ptr %663, i32 0, i32 3, i32 32
  %742 = load i32, ptr %741, align 8
  %743 = and i32 %742, 16
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %766, label %745

745:                                              ; preds = %740
  %746 = load ptr, ptr %18, align 4
  %747 = getelementptr i8, ptr %746, i32 -1952
  %748 = load ptr, ptr %98, align 4
  %749 = icmp eq ptr %748, null
  br i1 %749, label %759, label %750

750:                                              ; preds = %745
  %751 = getelementptr inbounds %struct.ieee80211_key, ptr %748, i32 0, i32 7, i32 6
  %752 = load i16, ptr %751, align 8
  %753 = and i16 %752, 2
  %754 = icmp eq i16 %753, 0
  br i1 %754, label %759, label %755

755:                                              ; preds = %750
  %756 = load i16, ptr %665, align 2
  %757 = call i32 @ieee80211_hdrlen(i16 noundef zeroext %756) #19
  %758 = trunc i32 %757 to i8
  br label %759

759:                                              ; preds = %755, %750, %745
  %760 = phi i8 [ %758, %755 ], [ 0, %750 ], [ 0, %745 ]
  %761 = getelementptr i8, ptr %746, i32 -1908
  %762 = load ptr, ptr %761, align 4
  %763 = call fastcc i32 @ieee80211_xmit_fast_finish(ptr noundef %762, ptr noundef %747, i8 noundef zeroext %760, ptr noundef %748, ptr noundef nonnull %4)
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %796, label %765

765:                                              ; preds = %759
  call void @ieee80211_free_txskb(ptr noundef %0, ptr noundef nonnull %663) #16
  br label %714

766:                                              ; preds = %740
  %767 = call fastcc i32 @invoke_tx_handlers_late(ptr noundef nonnull %4)
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %769, label %714

769:                                              ; preds = %766
  %770 = load ptr, ptr %91, align 4
  %771 = icmp eq ptr %770, %91
  %772 = select i1 %771, ptr null, ptr %770
  %773 = icmp eq ptr %772, null
  br i1 %773, label %782, label %774

774:                                              ; preds = %769
  %775 = load i32, ptr %93, align 4
  %776 = add i32 %775, -1
  store volatile i32 %776, ptr %93, align 4
  %777 = load ptr, ptr %772, align 8
  %778 = getelementptr inbounds %struct.anon.42, ptr %772, i32 0, i32 1
  %779 = load ptr, ptr %778, align 4
  store ptr null, ptr %778, align 4
  store ptr null, ptr %772, align 8
  %780 = getelementptr inbounds %struct.anon.42, ptr %777, i32 0, i32 1
  store volatile ptr %779, ptr %780, align 4
  store volatile ptr %777, ptr %779, align 8
  %781 = load ptr, ptr %91, align 4
  br label %782

782:                                              ; preds = %774, %769
  %783 = phi ptr [ %770, %769 ], [ %781, %774 ]
  %784 = icmp eq ptr %783, %91
  br i1 %784, label %796, label %785

785:                                              ; preds = %782
  call void @_raw_spin_lock_bh(ptr noundef %68) #16
  %786 = load ptr, ptr %91, align 4
  %787 = icmp eq ptr %786, %91
  br i1 %787, label %795, label %788

788:                                              ; preds = %785
  %789 = load ptr, ptr %99, align 4
  %790 = load ptr, ptr %92, align 4
  %791 = getelementptr inbounds %struct.anon.42, ptr %786, i32 0, i32 1
  store volatile ptr %789, ptr %791, align 4
  store volatile ptr %786, ptr %789, align 8
  store volatile ptr %75, ptr %790, align 8
  store volatile ptr %790, ptr %99, align 4
  %792 = load i32, ptr %93, align 4
  %793 = load i32, ptr %76, align 4
  %794 = add i32 %793, %792
  store i32 %794, ptr %76, align 4
  br label %795

795:                                              ; preds = %788, %785
  call void @_raw_spin_unlock_bh(ptr noundef %68) #16
  br label %796

796:                                              ; preds = %795, %782, %759
  %797 = phi ptr [ %772, %782 ], [ %772, %795 ], [ %663, %759 ]
  %798 = getelementptr inbounds %struct.sk_buff, ptr %797, i32 0, i32 15
  %799 = load ptr, ptr %798, align 4
  %800 = getelementptr inbounds %struct.skb_shared_info, ptr %799, i32 0, i32 6
  %801 = load ptr, ptr %800, align 8
  %802 = icmp eq ptr %801, null
  br i1 %802, label %815, label %803

803:                                              ; preds = %796
  %804 = load volatile i32, ptr %100, align 4
  %805 = and i32 %804, 16
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %807, label %815

807:                                              ; preds = %803
  %808 = getelementptr inbounds %struct.sk_buff, ptr %797, i32 0, i32 6
  %809 = load i32, ptr %808, align 4
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %815, label %811

811:                                              ; preds = %807
  %812 = call ptr @__pskb_pull_tail(ptr noundef %797, i32 noundef %809) #16
  %813 = icmp eq ptr %812, null
  br i1 %813, label %814, label %815

814:                                              ; preds = %811
  call void @ieee80211_free_txskb(ptr noundef %0, ptr noundef %797) #16
  br label %714

815:                                              ; preds = %811, %807, %803, %796
  %816 = load ptr, ptr %95, align 4
  %817 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %816, i32 0, i32 58
  %818 = load i32, ptr %817, align 8
  switch i32 %818, label %852 [
    i32 6, label %819
    i32 4, label %848
  ]

819:                                              ; preds = %815
  %820 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %816, i32 0, i32 57
  %821 = load i32, ptr %820, align 8
  %822 = and i32 %821, 64
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %855

824:                                              ; preds = %819
  %825 = load volatile ptr, ptr %101, align 4
  store ptr %825, ptr %95, align 4
  %826 = icmp eq ptr %825, null
  br i1 %826, label %841, label %827

827:                                              ; preds = %824
  %828 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %825, i32 0, i32 58
  %829 = getelementptr inbounds %struct.sk_buff, ptr %797, i32 0, i32 9
  %830 = load i16, ptr %829, align 4
  %831 = zext i16 %830 to i32
  %832 = getelementptr %struct.ieee80211_sub_if_data, ptr %825, i32 0, i32 58, i32 7, i32 %831
  %833 = load i8, ptr %832, align 1
  %834 = getelementptr inbounds %struct.sk_buff, ptr %663, i32 0, i32 3, i32 4
  %835 = load i32, ptr %834, align 4
  %836 = and i8 %833, 15
  %837 = zext i8 %836 to i32
  %838 = shl nuw nsw i32 %837, 16
  %839 = and i32 %835, -983041
  %840 = or i32 %838, %839
  store i32 %840, ptr %834, align 4
  br label %855

841:                                              ; preds = %824
  %842 = load volatile i32, ptr %97, align 4
  %843 = and i32 %842, 262144
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %845, label %847

845:                                              ; preds = %841
  %846 = getelementptr inbounds %struct.sk_buff, ptr %797, i32 0, i32 3, i32 24
  store ptr null, ptr %846, align 8
  br label %889

847:                                              ; preds = %841
  call void @ieee80211_free_txskb(ptr noundef %0, ptr noundef %797) #16
  br label %714

848:                                              ; preds = %815
  %849 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %816, i32 0, i32 49
  %850 = load ptr, ptr %849, align 4
  %851 = getelementptr i8, ptr %850, i32 -1408
  store ptr %851, ptr %95, align 4
  br label %852

852:                                              ; preds = %848, %815
  %853 = phi ptr [ %851, %848 ], [ %816, %815 ]
  %854 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %853, i32 0, i32 58
  br label %855

855:                                              ; preds = %852, %827, %819, %736, %732
  %856 = phi ptr [ %854, %852 ], [ %828, %827 ], [ %7, %736 ], [ %7, %732 ], [ %817, %819 ]
  %857 = phi ptr [ %797, %852 ], [ %797, %827 ], [ %663, %736 ], [ %663, %732 ], [ %797, %819 ]
  %858 = getelementptr inbounds %struct.sk_buff, ptr %857, i32 0, i32 3, i32 24
  store ptr %856, ptr %858, align 8
  %859 = icmp eq ptr %856, null
  br i1 %859, label %889, label %860

860:                                              ; preds = %855
  %861 = load ptr, ptr %36, align 8
  %862 = getelementptr %struct.wiphy, ptr %861, i32 0, i32 14, i32 5
  %863 = load i8, ptr %862, align 1
  %864 = and i8 %863, 1
  %865 = icmp eq i8 %864, 0
  br i1 %865, label %889, label %866

866:                                              ; preds = %860
  %867 = load i8, ptr %74, align 1
  %868 = icmp ne i8 %867, 0
  %869 = load ptr, ptr %18, align 4
  %870 = getelementptr inbounds %struct.sk_buff, ptr %857, i32 0, i32 5
  %871 = load i32, ptr %870, align 8
  %872 = call i32 @ieee80211_calc_expected_tx_airtime(ptr noundef %0, ptr noundef nonnull %856, ptr noundef %869, i32 noundef %871, i1 noundef zeroext %868) #16
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %889, label %874

874:                                              ; preds = %866
  %875 = trunc i32 %872 to i16
  %876 = call i16 @llvm.umin.i16(i16 %875, i16 4095) #16
  %877 = lshr i16 %876, 2
  %878 = zext i16 %877 to i32
  %879 = getelementptr inbounds %struct.sk_buff, ptr %663, i32 0, i32 3, i32 4
  %880 = load i32, ptr %879, align 4
  %881 = shl nuw nsw i32 %878, 20
  %882 = and i32 %880, -1072693249
  %883 = or i32 %882, %881
  store i32 %883, ptr %879, align 4
  %884 = and i16 %876, 4092
  %885 = load ptr, ptr %96, align 4
  %886 = load i8, ptr %74, align 1
  call void @ieee80211_sta_update_pending_airtime(ptr noundef %0, ptr noundef %885, i8 noundef zeroext %886, i16 noundef zeroext %884, i1 noundef zeroext false) #16
  br label %889

887:                                              ; preds = %714, %136, %120, %114, %103, %67
  %888 = phi ptr [ %104, %114 ], [ null, %67 ], [ null, %136 ], [ %104, %103 ], [ %715, %714 ], [ %116, %120 ]
  call void @_raw_spin_unlock_bh(ptr noundef %68) #16
  br label %889

889:                                              ; preds = %887, %874, %866, %860, %855, %845, %62, %56
  %890 = phi ptr [ %888, %887 ], [ %857, %866 ], [ %857, %874 ], [ %857, %860 ], [ %857, %855 ], [ %797, %845 ], [ null, %56 ], [ null, %62 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #16
  ret ptr %890
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ieee80211_txq_airtime_check(ptr noundef %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -832
  %8 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr [4 x %struct.airtime_info], ptr %7, i32 0, i32 %10
  br label %19

12:                                               ; preds = %2
  %13 = load ptr, ptr %1, align 4
  %14 = getelementptr i8, ptr %13, i32 -2264
  %15 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 28, i32 %17
  br label %19

19:                                               ; preds = %12, %6
  %20 = phi ptr [ %11, %6 ], [ %18, %12 ]
  %21 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr %struct.wiphy, ptr %22, i32 0, i32 14, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %53, label %27

27:                                               ; preds = %19
  %28 = load volatile i32, ptr @aql_disable, align 4
  %29 = icmp sgt i32 %28, 0
  %30 = select i1 %29, i1 true, i1 %5
  br i1 %30, label %53, label %31, !prof !24

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 2
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 16
  br i1 %34, label %53, label %35, !prof !10

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.airtime_info, ptr %20, i32 0, i32 5
  %37 = load volatile i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.airtime_info, ptr %20, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 7
  %43 = load volatile i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = icmp ult i32 %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load volatile i32, ptr %36, align 4
  %49 = getelementptr inbounds %struct.airtime_info, ptr %20, i32 0, i32 7
  %50 = load i32, ptr %49, align 8
  %51 = icmp ult i32 %48, %50
  br i1 %51, label %53, label %52

52:                                               ; preds = %47, %41
  br label %53

53:                                               ; preds = %52, %47, %35, %31, %27, %19
  %54 = phi i1 [ false, %52 ], [ true, %19 ], [ true, %27 ], [ true, %31 ], [ true, %35 ], [ true, %47 ]
  ret i1 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ieee80211_tx_h_select_key(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  %4 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65536
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 5
  store ptr null, ptr %10, align 4
  br label %187

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sta_info, ptr %13, i32 0, i32 9
  %17 = load i8, ptr %16, align 8
  %18 = zext i8 %17 to i32
  %19 = getelementptr %struct.sta_info, ptr %13, i32 0, i32 8, i32 %18
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %84

22:                                               ; preds = %15, %11
  %23 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = icmp ult i32 %24, 25
  %26 = load i16, ptr %5, align 2
  %27 = xor i1 %25, true
  %28 = and i16 %26, 252
  %29 = icmp eq i16 %28, 208
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %47

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %5, i32 0, i32 6
  %38 = load i8, ptr %37, align 2
  %39 = add i8 %38, -13
  %40 = icmp ult i8 %39, 2
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %43, i32 0, i32 16
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %84

47:                                               ; preds = %41, %36, %31, %22
  %48 = and i16 %26, 12
  %49 = icmp eq i16 %48, 0
  %50 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  br i1 %49, label %52, label %71

52:                                               ; preds = %47
  %53 = and i32 %51, 1
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i1 true, i1 %25
  br i1 %55, label %71, label %56

56:                                               ; preds = %52
  %57 = trunc i16 %26 to i8
  %58 = and i8 %57, -4
  switch i8 %58, label %71 [
    i8 -96, label %65
    i8 -64, label %65
    i8 -48, label %59
  ]

59:                                               ; preds = %56
  %60 = and i16 %26, 16384
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = getelementptr i8, ptr %5, i32 24
  %64 = load i8, ptr %63, align 1
  switch i8 %64, label %65 [
    i8 4, label %71
    i8 7, label %71
    i8 11, label %71
    i8 15, label %71
    i8 20, label %71
    i8 21, label %71
    i8 127, label %71
  ]

65:                                               ; preds = %62, %59, %56, %56
  %66 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %67, i32 0, i32 17
  %69 = load volatile ptr, ptr %68, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %65, %62, %62, %62, %62, %62, %62, %62, %56, %52, %47
  %72 = and i32 %51, 1
  %73 = icmp eq i32 %72, 0
  %74 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  br i1 %73, label %80, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %75, i32 0, i32 16
  %78 = load volatile ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %175, label %84

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %75, i32 0, i32 15
  %82 = load volatile ptr, ptr %81, align 8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %175, label %84

84:                                               ; preds = %80, %76, %65, %41, %15
  %85 = phi ptr [ %20, %15 ], [ %45, %41 ], [ %69, %65 ], [ %78, %76 ], [ %82, %80 ]
  %86 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 5
  store ptr %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 5
  %88 = getelementptr inbounds %struct.ieee80211_key, ptr %85, i32 0, i32 7, i32 1
  %89 = load i32, ptr %88, align 8
  switch i32 %89, label %156 [
    i32 1027073, label %90
    i32 1027077, label %90
    i32 1027074, label %90
    i32 1027076, label %95
    i32 1027082, label %95
    i32 1027080, label %95
    i32 1027081, label %95
    i32 1027078, label %151
    i32 1027085, label %151
    i32 1027083, label %151
    i32 1027084, label %151
  ]

90:                                               ; preds = %84, %84, %84
  %91 = load i16, ptr %5, align 2
  %92 = and i16 %91, 76
  %93 = icmp eq i16 %92, 8
  br i1 %93, label %156, label %94

94:                                               ; preds = %90
  store ptr null, ptr %87, align 4
  br label %186

95:                                               ; preds = %84, %84, %84, %84
  %96 = load i16, ptr %5, align 2
  %97 = and i16 %96, 76
  %98 = icmp eq i16 %97, 8
  br i1 %98, label %143, label %99

99:                                               ; preds = %95
  %100 = and i16 %96, 12
  %101 = icmp ne i16 %100, 0
  %102 = or i1 %14, %101
  br i1 %102, label %123, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.sta_info, ptr %13, i32 0, i32 23
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %105, 128
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %110 = load i32, ptr %109, align 8
  %111 = icmp ult i32 %110, 25
  br i1 %111, label %123, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %4, align 4
  %114 = load i16, ptr %113, align 2
  %115 = trunc i16 %114 to i8
  %116 = and i8 %115, -4
  switch i8 %116, label %123 [
    i8 -96, label %143
    i8 -64, label %143
    i8 -48, label %117
  ]

117:                                              ; preds = %112
  %118 = and i16 %114, 16384
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %120, label %143

120:                                              ; preds = %117
  %121 = getelementptr i8, ptr %113, i32 24
  %122 = load i8, ptr %121, align 1
  switch i8 %122, label %143 [
    i8 4, label %123
    i8 7, label %123
    i8 11, label %123
    i8 15, label %123
    i8 20, label %123
    i8 21, label %123
    i8 127, label %123
  ]

123:                                              ; preds = %120, %120, %120, %120, %120, %120, %120, %112, %108, %103, %99
  %124 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %125 = load i32, ptr %124, align 8
  %126 = icmp ult i32 %125, 25
  br i1 %126, label %142, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %4, align 4
  %129 = load i16, ptr %128, align 2
  %130 = and i16 %129, 252
  %131 = icmp eq i16 %130, 208
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.ieee80211_hdr, ptr %128, i32 0, i32 2
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %128, i32 0, i32 6
  %139 = load i8, ptr %138, align 2
  %140 = add i8 %139, -13
  %141 = icmp ult i8 %140, 2
  br i1 %141, label %143, label %142

142:                                              ; preds = %137, %132, %127, %123
  store ptr null, ptr %87, align 4
  br label %186

143:                                              ; preds = %137, %120, %117, %112, %112, %95
  %144 = getelementptr inbounds %struct.ieee80211_key, ptr %85, i32 0, i32 7, i32 6
  %145 = load i16, ptr %144, align 8
  %146 = and i16 %145, 16
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %143
  %149 = and i16 %96, 12
  %150 = icmp eq i16 %149, 0
  br label %156

151:                                              ; preds = %84, %84, %84, %84
  %152 = load i16, ptr %5, align 2
  %153 = and i16 %152, 12
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %151
  store ptr null, ptr %87, align 4
  br label %186

156:                                              ; preds = %151, %148, %143, %90, %84
  %157 = phi i1 [ false, %84 ], [ %150, %148 ], [ false, %143 ], [ false, %90 ], [ false, %151 ]
  %158 = getelementptr inbounds %struct.ieee80211_key, ptr %85, i32 0, i32 4
  %159 = load i32, ptr %158, align 4
  %160 = and i32 %159, 2
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %156
  %163 = load i16, ptr %5, align 2
  %164 = and i16 %163, 252
  %165 = icmp eq i16 %164, 192
  br i1 %165, label %166, label %187, !prof !9

166:                                              ; preds = %162, %156
  br i1 %157, label %186, label %167

167:                                              ; preds = %166
  %168 = getelementptr inbounds %struct.ieee80211_key, ptr %85, i32 0, i32 4
  %169 = load i32, ptr %168, align 4
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %186, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.ieee80211_key, ptr %85, i32 0, i32 7
  %174 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 28
  store ptr %173, ptr %174, align 4
  br label %186

175:                                              ; preds = %80, %76
  %176 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 5
  store ptr null, ptr %176, align 4
  %177 = load i16, ptr %5, align 2
  %178 = and i16 %177, 76
  %179 = icmp ne i16 %178, 8
  %180 = select i1 %179, i1 true, i1 %14
  br i1 %180, label %186, label %181

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.sta_info, ptr %13, i32 0, i32 23
  %183 = load volatile i32, ptr %182, align 4
  %184 = and i32 %183, 67108864
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181, %175, %172, %167, %166, %155, %142, %94
  br label %187

187:                                              ; preds = %186, %181, %162, %9
  %188 = phi i32 [ 0, %9 ], [ 0, %186 ], [ 1, %181 ], [ 1, %162 ]
  ret i32 %188
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_tx_h_rate_ctrl(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.ieee80211_tx_rate_control, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #16
  %7 = load i32, ptr %4, align 8
  %8 = and i32 %7, 16384
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds i8, ptr %2, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %10, i8 0, i32 20, i1 false)
  %11 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 7
  %18 = getelementptr %struct.wiphy, ptr %14, i32 0, i32 53, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, 4
  %23 = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 35
  %24 = load i32, ptr %23, align 8
  %25 = tail call i32 @llvm.umin.i32(i32 %22, i32 %24)
  store ptr %12, ptr %2, align 4
  %26 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %2, i32 0, i32 1
  store ptr %19, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 58, i32 1
  %30 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %2, i32 0, i32 2
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %2, i32 0, i32 3
  store ptr %3, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %2, i32 0, i32 4
  store i8 -1, ptr %32, align 4
  %33 = getelementptr %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 50, i32 %17
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %2, i32 0, i32 7
  store i32 %34, ptr %35, align 4
  %36 = getelementptr %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 51, i32 %17
  %37 = load i8, ptr %36, align 1, !range !11
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %1
  %40 = getelementptr %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 52, i32 %17
  %41 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %2, i32 0, i32 8
  store ptr %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %39, %1
  %43 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 58
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, -1
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 31)
  %47 = icmp ult i32 %46, 6
  %48 = trunc i32 %46 to i6
  %49 = lshr i6 -21, %48
  %50 = and i6 %49, 1
  %51 = icmp ne i6 %50, 0
  %52 = select i1 %47, i1 %51, i1 false
  %53 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %2, i32 0, i32 9
  %54 = zext i1 %52 to i8
  store i8 %54, ptr %53, align 4
  %55 = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 36
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %25, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %42
  %59 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %2, i32 0, i32 5
  store i8 1, ptr %59, align 1
  br label %60

60:                                               ; preds = %58, %42
  %61 = phi i8 [ 1, %58 ], [ 0, %42 ]
  %62 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 8
  %63 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 21
  %64 = load i8, ptr %63, align 1
  %65 = and i8 %64, -2
  %66 = or i8 %65, %61
  store i8 %66, ptr %63, align 1
  %67 = load ptr, ptr %27, align 4
  %68 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %67, i32 0, i32 58, i32 1, i32 14
  %69 = load i8, ptr %68, align 4, !range !11
  %70 = shl nuw nsw i8 %69, 1
  %71 = and i8 %66, -3
  %72 = or i8 %70, %71
  store i8 %72, ptr %63, align 1
  %73 = load ptr, ptr %27, align 4
  %74 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %73, i32 0, i32 58, i32 1, i32 15
  %75 = load i8, ptr %74, align 1, !range !11
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %100, label %77

77:                                               ; preds = %60
  %78 = load ptr, ptr %0, align 4
  %79 = getelementptr inbounds %struct.sk_buff, ptr %78, i32 0, i32 3
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 16384
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.sk_buff, ptr %78, i32 0, i32 17
  %85 = load ptr, ptr %84, align 4
  %86 = load i16, ptr %85, align 2
  %87 = and i16 %86, 12
  %88 = icmp eq i16 %87, 8
  br i1 %88, label %98, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 4
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.sta_info, ptr %91, i32 0, i32 23
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %95, 16
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %93, %83, %77
  %99 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %2, i32 0, i32 6
  store i8 1, ptr %99, align 4
  br label %100

100:                                              ; preds = %98, %93, %89, %60
  %101 = phi i8 [ 4, %98 ], [ 0, %93 ], [ 0, %89 ], [ 0, %60 ]
  %102 = and i8 %72, -5
  %103 = or i8 %102, %101
  store i8 %103, ptr %63, align 1
  %104 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 32
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %241

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 4
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load ptr, ptr %11, align 4
  %114 = getelementptr inbounds %struct.ieee80211_local, ptr %113, i32 0, i32 67
  %115 = load volatile i32, ptr %114, align 4
  br label %157

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.sta_info, ptr %110, i32 0, i32 23
  %118 = load volatile i32, ptr %117, align 4
  %119 = and i32 %118, 2
  %120 = icmp eq i32 %119, 0
  %121 = load ptr, ptr %11, align 4
  %122 = getelementptr inbounds %struct.ieee80211_local, ptr %121, i32 0, i32 67
  %123 = load volatile i32, ptr %122, align 4
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %125, i1 true, i1 %120
  br i1 %126, label %157, label %127

127:                                              ; preds = %116
  %128 = getelementptr inbounds %struct.sta_info, ptr %110, i32 0, i32 46
  %129 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %19, i32 0, i32 4
  %130 = load i32, ptr %129, align 4
  %131 = icmp ne ptr %128, null
  %132 = icmp ne i32 %130, 0
  %133 = and i1 %131, %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %19, i32 0, i32 2
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr [6 x i32], ptr %128, i32 0, i32 %136
  %138 = load i32, ptr %137, align 4
  br label %142

139:                                              ; preds = %142
  %140 = add nuw i32 %143, 1
  %141 = icmp eq i32 %140, %130
  br i1 %141, label %148, label %142

142:                                              ; preds = %139, %134
  %143 = phi i32 [ 0, %134 ], [ %140, %139 ]
  %144 = shl nuw i32 1, %143
  %145 = and i32 %144, %138
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %139, label %157

147:                                              ; preds = %127
  br i1 %132, label %157, label %148, !prof !9

148:                                              ; preds = %147, %139
  %149 = load ptr, ptr %27, align 4
  %150 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %149, i32 0, i32 10
  %151 = getelementptr inbounds %struct.ieee80211_hdr, ptr %6, i32 0, i32 2
  %152 = select i1 %9, ptr %151, ptr %6
  %153 = load i32, ptr %15, align 4
  %154 = and i32 %153, 7
  %155 = icmp eq i32 %154, 0
  %156 = select i1 %155, i32 2, i32 5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 737, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %150, ptr noundef %152, i32 noundef %156) #16
  br label %241

157:                                              ; preds = %147, %142, %116, %112
  %158 = load ptr, ptr %27, align 4
  call void @rate_control_get_rate(ptr noundef %158, ptr noundef %110, ptr noundef nonnull %2) #16
  %159 = load ptr, ptr %109, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %168, label %161

161:                                              ; preds = %157
  %162 = load i8, ptr %63, align 1
  %163 = and i8 %162, 8
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.sta_info, ptr %159, i32 0, i32 46, i32 16
  %167 = load volatile ptr, ptr %166, align 8
  br label %168

168:                                              ; preds = %165, %161, %157
  %169 = phi ptr [ null, %161 ], [ %167, %165 ], [ null, %157 ]
  %170 = load i8, ptr %62, align 8
  %171 = icmp slt i8 %170, 0
  br i1 %171, label %172, label %189, !prof !10

172:                                              ; preds = %168
  %173 = icmp eq ptr %169, null
  br i1 %173, label %241, label %174

174:                                              ; preds = %172
  %175 = getelementptr inbounds %struct.ieee80211_sta_rates, ptr %169, i32 0, i32 1
  %176 = load i8, ptr %175, align 4
  %177 = icmp slt i8 %176, 0
  br i1 %177, label %241, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.ieee80211_sta_rates, ptr %169, i32 0, i32 1, i32 0, i32 1
  %180 = load i8, ptr %179, align 1
  %181 = and i8 %180, 31
  %182 = zext i8 %181 to i16
  %183 = getelementptr inbounds %struct.ieee80211_sta_rates, ptr %169, i32 0, i32 1, i32 0, i32 4
  %184 = load i16, ptr %183, align 4
  %185 = shl i16 %184, 5
  %186 = or i16 %185, %182
  %187 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 6
  store i8 %176, ptr %187, align 4
  %188 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 6, i32 1
  store i16 %186, ptr %188, align 1
  br label %191

189:                                              ; preds = %168
  %190 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(3) %190, ptr noundef align 8 dereferenceable(3) %62, i32 3, i1 false)
  br label %191

191:                                              ; preds = %189, %178
  %192 = load i8, ptr %32, align 4
  %193 = icmp slt i8 %192, 0
  br i1 %193, label %194, label %210

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(3) %32, ptr noundef align 4 dereferenceable(3) %195, i32 3, i1 false)
  br i1 %160, label %213, label %196

196:                                              ; preds = %194
  %197 = load ptr, ptr %0, align 4
  %198 = getelementptr inbounds %struct.sk_buff, ptr %197, i32 0, i32 3
  %199 = load i32, ptr %198, align 8
  %200 = and i32 %199, 16384
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.sk_buff, ptr %197, i32 0, i32 17
  %204 = load ptr, ptr %203, align 4
  %205 = load i16, ptr %204, align 2
  %206 = and i16 %205, 12
  %207 = icmp eq i16 %206, 8
  br i1 %207, label %208, label %213

208:                                              ; preds = %202, %196
  %209 = getelementptr inbounds %struct.sta_info, ptr %159, i32 0, i32 35, i32 2
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(3) %209, ptr noundef align 4 dereferenceable(3) %195, i32 3, i1 false)
  br label %213

210:                                              ; preds = %191
  br i1 %160, label %213, label %211

211:                                              ; preds = %210
  %212 = getelementptr inbounds %struct.sta_info, ptr %159, i32 0, i32 35, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(3) %212, ptr noundef align 4 dereferenceable(3) %32, i32 3, i1 false)
  br label %213

213:                                              ; preds = %211, %210, %208, %202, %194
  %214 = icmp eq ptr %169, null
  br i1 %214, label %215, label %241

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 9
  %217 = load i16, ptr %216, align 1
  %218 = and i16 %217, 31
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %220, label %223, !prof !10

220:                                              ; preds = %215
  %221 = and i16 %217, -32
  %222 = or i16 %221, 1
  store i16 %222, ptr %216, align 1
  br label %223

223:                                              ; preds = %220, %215
  %224 = phi i16 [ %222, %220 ], [ %217, %215 ]
  %225 = and i16 %224, 30
  %226 = icmp eq i16 %225, 0
  br i1 %226, label %241, label %227

227:                                              ; preds = %223
  %228 = load i32, ptr %4, align 8
  %229 = and i32 %228, 4
  %230 = icmp ne i32 %229, 0
  %231 = load i1, ptr @ieee80211_tx_h_rate_ctrl.__already_done, align 1
  %232 = xor i1 %231, true
  %233 = select i1 %230, i1 %232, i1 false
  br i1 %233, label %234, label %236, !prof !10

234:                                              ; preds = %227
  store i1 true, ptr @ieee80211_tx_h_rate_ctrl.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 782, i32 noundef 9, ptr noundef null) #16
  %235 = load i16, ptr %216, align 1
  br label %237

236:                                              ; preds = %227
  br i1 %230, label %237, label %241

237:                                              ; preds = %236, %234
  %238 = phi i16 [ %235, %234 ], [ %224, %236 ]
  %239 = and i16 %238, -32
  %240 = or i16 %239, 1
  store i16 %240, ptr %216, align 1
  br label %241

241:                                              ; preds = %237, %236, %223, %213, %174, %172, %148, %100
  %242 = phi i32 [ 1, %148 ], [ 0, %100 ], [ 1, %172 ], [ 0, %213 ], [ 0, %237 ], [ 0, %236 ], [ 1, %174 ], [ 0, %223 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #16
  ret i32 %242
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_xmit_fast_finish(ptr nocapture noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %4, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 4
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = tail call fastcc i32 @ieee80211_tx_h_rate_ctrl(ptr noundef %4)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %143

19:                                               ; preds = %16, %5
  %20 = icmp eq ptr %3, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 7
  %23 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 28
  store ptr %22, ptr %23, align 4
  br label %24

24:                                               ; preds = %21, %19
  %25 = getelementptr inbounds %struct.anon.42, ptr %6, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 110
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %30 to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %33 = inttoptr i32 %32 to ptr
  %34 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %33) #15, !srcloc !25
  %35 = add i32 %34, %31
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %36, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !26
  %40 = zext i32 %28 to i64
  %41 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %36, i32 0, i32 3
  %42 = load i64, ptr %41, align 8
  %43 = add i64 %42, %40
  store i64 %43, ptr %41, align 8
  %44 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %36, i32 0, i32 2
  %45 = load i64, ptr %44, align 16
  %46 = add i64 %45, 1
  store i64 %46, ptr %44, align 16
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !27
  %47 = load i32, ptr %37, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %37, align 4
  %49 = load i16, ptr %9, align 2
  %50 = and i16 %49, 128
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %24
  %53 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 13, i32 0, i32 5
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 7
  %56 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 36, i32 %55
  %57 = load i16, ptr %56, align 2
  %58 = add i16 %57, 16
  %59 = and i16 %58, -16
  store i16 %59, ptr %56, align 2
  %60 = getelementptr inbounds %struct.ieee80211_hdr, ptr %9, i32 0, i32 5
  store i16 %57, ptr %60, align 2
  br label %69

61:                                               ; preds = %24
  %62 = load i32, ptr %7, align 8
  %63 = or i32 %62, 2
  store i32 %63, ptr %7, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 19
  %65 = load i16, ptr %64, align 8
  %66 = getelementptr inbounds %struct.ieee80211_hdr, ptr %9, i32 0, i32 5
  store i16 %65, ptr %66, align 2
  %67 = load i16, ptr %64, align 8
  %68 = add i16 %67, 16
  store i16 %68, ptr %64, align 8
  br label %69

69:                                               ; preds = %61, %52
  %70 = phi i32 [ %55, %52 ], [ 16, %61 ]
  %71 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 15
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.skb_shared_info, ptr %72, i32 0, i32 4
  %74 = load i16, ptr %73, align 4
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %69
  %77 = load i32, ptr %27, align 8
  %78 = zext i16 %74 to i32
  %79 = add nsw i32 %78, -1
  %80 = add i32 %79, %77
  %81 = udiv i32 %80, %78
  %82 = zext i32 %81 to i64
  br label %83

83:                                               ; preds = %76, %69
  %84 = phi i64 [ %82, %76 ], [ 1, %69 ]
  %85 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 35, i32 4, i32 %70
  %86 = load i64, ptr %85, align 8
  %87 = add i64 %86, %84
  store i64 %87, ptr %85, align 8
  %88 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 9
  %89 = load i16, ptr %88, align 4
  %90 = zext i16 %89 to i32
  %91 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 7, i32 %90
  %92 = load i8, ptr %91, align 1
  %93 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = and i8 %92, 15
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 16
  %98 = and i32 %94, -983041
  %99 = or i32 %97, %98
  store i32 %99, ptr %93, align 4
  %100 = load i32, ptr %27, align 8
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 35
  %103 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 35, i32 1, i32 %90
  %104 = load i64, ptr %103, align 8
  %105 = add i64 %104, %101
  store i64 %105, ptr %103, align 8
  %106 = load i16, ptr %88, align 4
  %107 = zext i16 %106 to i32
  %108 = getelementptr [4 x i64], ptr %102, i32 0, i32 %107
  %109 = load i64, ptr %108, align 8
  %110 = add i64 %109, 1
  store i64 %110, ptr %108, align 8
  %111 = icmp eq i8 %2, 0
  br i1 %111, label %143, label %112

112:                                              ; preds = %83
  %113 = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 7, i32 1
  %114 = load i32, ptr %113, align 8
  switch i32 %114, label %143 [
    i32 1027076, label %115
    i32 1027082, label %115
    i32 1027080, label %115
    i32 1027081, label %115
  ]

115:                                              ; preds = %112, %112, %112, %112
  %116 = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 7
  %117 = load ptr, ptr %8, align 4
  %118 = zext i8 %2 to i32
  %119 = getelementptr i8, ptr %117, i32 %118
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %116) #16, !srcloc !29
  %120 = tail call { i64, i32 } asm sideeffect "@ atomic64_add_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %116, ptr %116, i64 1, ptr elementtype(i64) %116) #16, !srcloc !30
  %121 = extractvalue { i64, i32 } %120, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !31
  %122 = trunc i64 %121 to i8
  store i8 %122, ptr %119, align 1
  %123 = lshr i64 %121, 8
  %124 = trunc i64 %123 to i8
  %125 = getelementptr i8, ptr %119, i32 1
  store i8 %124, ptr %125, align 1
  %126 = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 7, i32 5
  %127 = load i8, ptr %126, align 1
  %128 = shl i8 %127, 6
  %129 = or i8 %128, 32
  %130 = getelementptr i8, ptr %119, i32 3
  store i8 %129, ptr %130, align 1
  %131 = lshr i64 %121, 16
  %132 = trunc i64 %131 to i8
  %133 = getelementptr i8, ptr %119, i32 4
  store i8 %132, ptr %133, align 1
  %134 = lshr i64 %121, 24
  %135 = trunc i64 %134 to i8
  %136 = getelementptr i8, ptr %119, i32 5
  store i8 %135, ptr %136, align 1
  %137 = lshr i64 %121, 32
  %138 = trunc i64 %137 to i8
  %139 = getelementptr i8, ptr %119, i32 6
  store i8 %138, ptr %139, align 1
  %140 = lshr i64 %121, 40
  %141 = trunc i64 %140 to i8
  %142 = getelementptr i8, ptr %119, i32 7
  store i8 %141, ptr %142, align 1
  br label %143

143:                                              ; preds = %115, %112, %83, %16
  %144 = phi i32 [ 1, %16 ], [ 0, %115 ], [ 0, %112 ], [ 0, %83 ]
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @invoke_tx_handlers_late(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  %4 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 4
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @ieee80211_tx_h_rate_ctrl(ptr noundef %0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %283

13:                                               ; preds = %10, %1
  %14 = load i32, ptr %3, align 8
  %15 = and i32 %14, 524288
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17, !prof !9

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  store volatile ptr %18, ptr %19, align 8
  %22 = getelementptr inbounds %struct.anon.42, ptr %19, i32 0, i32 1
  store volatile ptr %21, ptr %22, align 4
  store volatile ptr %19, ptr %20, align 4
  store volatile ptr %19, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store volatile i32 %25, ptr %23, align 4
  store ptr null, ptr %0, align 4
  br label %292

26:                                               ; preds = %13
  %27 = tail call i32 @ieee80211_tx_h_michael_mic_add(ptr noundef %0) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %283

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 3, i32 24
  %35 = load ptr, ptr %34, align 8
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 6
  br i1 %37, label %101, label %38, !prof !10

38:                                               ; preds = %29
  %39 = load i16, ptr %33, align 2
  %40 = and i16 %39, 12
  %41 = icmp eq i16 %40, 4
  br i1 %41, label %101, label %42, !prof !10

42:                                               ; preds = %38
  %43 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %39) #19
  %44 = icmp ult i32 %43, 24
  %45 = and i16 %39, 252
  %46 = icmp eq i16 %45, 200
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %101, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 3, i32 32
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 128
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %101

53:                                               ; preds = %48
  %54 = and i16 %39, 140
  %55 = icmp eq i16 %54, 136
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.ieee80211_hdr, ptr %33, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %80, label %61

61:                                               ; preds = %56, %53
  %62 = load i32, ptr %31, align 8
  %63 = or i32 %62, 2
  store i32 %63, ptr %31, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %65, i32 0, i32 19
  %67 = load i16, ptr %66, align 8
  %68 = getelementptr inbounds %struct.ieee80211_hdr, ptr %33, i32 0, i32 5
  store i16 %67, ptr %68, align 2
  %69 = load ptr, ptr %64, align 4
  %70 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %69, i32 0, i32 19
  %71 = load i16, ptr %70, align 8
  %72 = add i16 %71, 16
  store i16 %72, ptr %70, align 8
  %73 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %101, label %76

76:                                               ; preds = %61
  %77 = getelementptr %struct.sta_info, ptr %74, i32 0, i32 35, i32 4, i32 16
  %78 = load i64, ptr %77, align 8
  %79 = add i64 %78, 1
  store i64 %79, ptr %77, align 8
  br label %101

80:                                               ; preds = %56
  %81 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %101, label %84

84:                                               ; preds = %80
  %85 = and i16 %39, 768
  %86 = icmp eq i16 %85, 768
  %87 = select i1 %86, i32 30, i32 24
  %88 = getelementptr i8, ptr %33, i32 %87
  %89 = load i8, ptr %88, align 1
  %90 = and i8 %89, 15
  %91 = zext i8 %90 to i32
  %92 = getelementptr %struct.sta_info, ptr %82, i32 0, i32 35, i32 4, i32 %91
  %93 = load i64, ptr %92, align 8
  %94 = add i64 %93, 1
  store i64 %94, ptr %92, align 8
  %95 = load ptr, ptr %81, align 4
  %96 = getelementptr %struct.sta_info, ptr %95, i32 0, i32 36, i32 %91
  %97 = load i16, ptr %96, align 2
  %98 = add i16 %97, 16
  %99 = and i16 %98, -16
  store i16 %99, ptr %96, align 2
  %100 = getelementptr inbounds %struct.ieee80211_hdr, ptr %33, i32 0, i32 5
  store i16 %97, ptr %100, align 2
  br label %101

101:                                              ; preds = %84, %80, %76, %61, %48, %42, %38, %29
  %102 = load ptr, ptr %0, align 4
  %103 = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 17
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %4, align 4
  %107 = getelementptr inbounds %struct.ieee80211_hw, ptr %106, i32 0, i32 1
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.wiphy, ptr %108, i32 0, i32 35
  %110 = load i32, ptr %109, align 8
  %111 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1
  %112 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  store volatile ptr %111, ptr %102, align 8
  %114 = getelementptr inbounds %struct.anon.42, ptr %102, i32 0, i32 1
  store volatile ptr %113, ptr %114, align 4
  store volatile ptr %102, ptr %112, align 4
  store volatile ptr %102, ptr %113, align 4
  %115 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %116, 1
  store volatile i32 %117, ptr %115, align 4
  store ptr null, ptr %0, align 4
  %118 = load i32, ptr %103, align 8
  %119 = and i32 %118, 1073741824
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %231

121:                                              ; preds = %101
  %122 = load ptr, ptr %4, align 4
  %123 = getelementptr %struct.ieee80211_hw, ptr %122, i32 0, i32 4, i32 1
  %124 = load volatile i32, ptr %123, align 4
  %125 = and i32 %124, 64
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %231

127:                                              ; preds = %121
  %128 = and i32 %118, 64
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %229, !prof !9

130:                                              ; preds = %127
  %131 = load i16, ptr %105, align 2
  %132 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %131) #19
  %133 = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 5
  %134 = load i32, ptr %133, align 8
  %135 = add i32 %134, 4
  %136 = icmp ugt i32 %135, %110
  br i1 %136, label %137, label %229, !prof !9

137:                                              ; preds = %130
  %138 = add i32 %110, -4
  %139 = sub i32 %138, %132
  %140 = sub i32 %134, %138
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %229, label %142, !prof !10

142:                                              ; preds = %137
  %143 = icmp eq i32 %140, 0
  br i1 %143, label %198, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.ieee80211_local, ptr %122, i32 0, i32 41
  %146 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 3
  %147 = add i32 %110, 18
  %148 = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 9
  %149 = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 13, i32 0, i32 5
  %150 = getelementptr inbounds %struct.anon.42, ptr %102, i32 0, i32 2
  br label %151

151:                                              ; preds = %162, %144
  %152 = phi i32 [ %140, %144 ], [ %164, %162 ]
  %153 = phi i32 [ %138, %144 ], [ %197, %162 ]
  %154 = load i32, ptr %145, align 8
  %155 = load ptr, ptr %146, align 4
  %156 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %155, i32 0, i32 24
  %157 = load i32, ptr %156, align 8
  %158 = add i32 %147, %154
  %159 = add i32 %158, %157
  %160 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %159, i32 noundef 2592) #16
  %161 = icmp eq ptr %160, null
  br i1 %161, label %285, label %162

162:                                              ; preds = %151
  %163 = tail call i32 @llvm.smin.i32(i32 %139, i32 %152) #16
  %164 = sub i32 %152, %163
  %165 = load ptr, ptr %112, align 4
  store volatile ptr %111, ptr %160, align 8
  %166 = getelementptr inbounds %struct.anon.42, ptr %160, i32 0, i32 1
  store volatile ptr %165, ptr %166, align 4
  store volatile ptr %160, ptr %112, align 4
  store volatile ptr %160, ptr %165, align 4
  %167 = load i32, ptr %115, align 4
  %168 = add i32 %167, 1
  store volatile i32 %168, ptr %115, align 4
  %169 = load i32, ptr %145, align 8
  %170 = load ptr, ptr %146, align 4
  %171 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %170, i32 0, i32 24
  %172 = load i32, ptr %171, align 8
  %173 = add i32 %172, %169
  %174 = getelementptr inbounds %struct.sk_buff, ptr %160, i32 0, i32 17
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr i8, ptr %175, i32 %173
  store ptr %176, ptr %174, align 4
  %177 = getelementptr inbounds %struct.sk_buff, ptr %160, i32 0, i32 14
  %178 = load ptr, ptr %177, align 8
  %179 = getelementptr i8, ptr %178, i32 %173
  store ptr %179, ptr %177, align 8
  %180 = getelementptr inbounds %struct.sk_buff, ptr %160, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(48) %180, ptr noundef align 8 dereferenceable(48) %103, i32 48, i1 false) #16
  %181 = load i32, ptr %180, align 8
  %182 = and i32 %181, -25
  %183 = icmp eq i32 %164, 0
  %184 = or i32 %182, 262144
  %185 = select i1 %183, i32 %182, i32 %184
  store i32 %185, ptr %180, align 8
  %186 = load i16, ptr %148, align 4
  %187 = getelementptr inbounds %struct.sk_buff, ptr %160, i32 0, i32 9
  store i16 %186, ptr %187, align 4
  %188 = load i32, ptr %149, align 8
  %189 = getelementptr inbounds %struct.sk_buff, ptr %160, i32 0, i32 13, i32 0, i32 5
  store i32 %188, ptr %189, align 8
  %190 = load ptr, ptr %150, align 8
  %191 = getelementptr inbounds %struct.anon.42, ptr %160, i32 0, i32 2
  store ptr %190, ptr %191, align 8
  %192 = load ptr, ptr %104, align 4
  %193 = tail call ptr @skb_put(ptr noundef nonnull %160, i32 noundef %132) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %193, ptr align 1 %192, i32 %132, i1 false) #16
  %194 = load ptr, ptr %104, align 4
  %195 = getelementptr i8, ptr %194, i32 %153
  %196 = tail call ptr @skb_put(ptr noundef nonnull %160, i32 noundef %163) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %196, ptr align 1 %195, i32 %163, i1 false) #16
  %197 = add i32 %163, %153
  br i1 %183, label %198, label %151

198:                                              ; preds = %162, %142
  tail call void @skb_trim(ptr noundef %102, i32 noundef %138) #16
  %199 = load ptr, ptr %111, align 4
  %200 = icmp eq ptr %199, %111
  br i1 %200, label %231, label %201

201:                                              ; preds = %220, %198
  %202 = phi ptr [ %227, %220 ], [ %199, %198 ]
  %203 = phi i32 [ %226, %220 ], [ 0, %198 ]
  %204 = getelementptr inbounds %struct.sk_buff, ptr %202, i32 0, i32 17
  %205 = load ptr, ptr %204, align 4
  %206 = load ptr, ptr %202, align 8
  %207 = icmp eq ptr %206, %111
  br i1 %207, label %217, label %208

208:                                              ; preds = %201
  %209 = getelementptr inbounds %struct.sk_buff, ptr %202, i32 0, i32 3
  %210 = load i16, ptr %205, align 2
  %211 = or i16 %210, 1024
  store i16 %211, ptr %205, align 2
  %212 = getelementptr %struct.sk_buff, ptr %202, i32 0, i32 3, i32 11
  store i8 -1, ptr %212, align 1
  %213 = getelementptr %struct.sk_buff, ptr %202, i32 0, i32 3, i32 14
  store i8 -1, ptr %213, align 2
  %214 = getelementptr %struct.sk_buff, ptr %202, i32 0, i32 3, i32 17
  store i8 -1, ptr %214, align 1
  %215 = load i32, ptr %209, align 8
  %216 = and i32 %215, -4097
  store i32 %216, ptr %209, align 8
  br label %220

217:                                              ; preds = %201
  %218 = load i16, ptr %205, align 2
  %219 = and i16 %218, -1025
  store i16 %219, ptr %205, align 2
  br label %220

220:                                              ; preds = %217, %208
  %221 = getelementptr inbounds %struct.ieee80211_hdr, ptr %205, i32 0, i32 5
  %222 = load i16, ptr %221, align 2
  %223 = trunc i32 %203 to i16
  %224 = and i16 %223, 15
  %225 = or i16 %222, %224
  store i16 %225, ptr %221, align 2
  %226 = add i32 %203, 1
  %227 = load ptr, ptr %202, align 4
  %228 = icmp eq ptr %227, %111
  br i1 %228, label %231, label %201

229:                                              ; preds = %137, %130, %127
  %230 = phi i32 [ 946, %127 ], [ 952, %130 ], [ 872, %137 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %230, i32 noundef 9, ptr noundef null) #16
  br label %285

231:                                              ; preds = %220, %198, %121, %101
  %232 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 4
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %273, label %235

235:                                              ; preds = %231
  %236 = load ptr, ptr %111, align 4
  %237 = icmp eq ptr %236, %111
  br i1 %237, label %273, label %238

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.sk_buff, ptr %236, i32 0, i32 9
  %240 = load i16, ptr %239, align 4
  %241 = zext i16 %240 to i32
  %242 = getelementptr inbounds %struct.sk_buff, ptr %236, i32 0, i32 5
  %243 = load i32, ptr %242, align 8
  %244 = zext i32 %243 to i64
  %245 = getelementptr %struct.sta_info, ptr %233, i32 0, i32 35, i32 1, i32 %241
  %246 = load i64, ptr %245, align 8
  %247 = add i64 %246, %244
  store i64 %247, ptr %245, align 8
  %248 = load ptr, ptr %236, align 4
  %249 = icmp eq ptr %248, %111
  br i1 %249, label %266, label %250

250:                                              ; preds = %250, %238
  %251 = phi ptr [ %262, %250 ], [ %248, %238 ]
  %252 = load ptr, ptr %232, align 4
  %253 = getelementptr inbounds %struct.sk_buff, ptr %251, i32 0, i32 9
  %254 = load i16, ptr %253, align 4
  %255 = zext i16 %254 to i32
  %256 = getelementptr inbounds %struct.sk_buff, ptr %251, i32 0, i32 5
  %257 = load i32, ptr %256, align 8
  %258 = zext i32 %257 to i64
  %259 = getelementptr %struct.sta_info, ptr %252, i32 0, i32 35, i32 1, i32 %255
  %260 = load i64, ptr %259, align 8
  %261 = add i64 %260, %258
  store i64 %261, ptr %259, align 8
  %262 = load ptr, ptr %251, align 4
  %263 = icmp eq ptr %262, %111
  br i1 %263, label %264, label %250

264:                                              ; preds = %250
  %265 = zext i16 %254 to i32
  br label %266

266:                                              ; preds = %264, %238
  %267 = phi i32 [ %241, %238 ], [ %265, %264 ]
  %268 = load ptr, ptr %232, align 4
  %269 = getelementptr inbounds %struct.sta_info, ptr %268, i32 0, i32 35
  %270 = getelementptr [4 x i64], ptr %269, i32 0, i32 %267
  %271 = load i64, ptr %270, align 8
  %272 = add i64 %271, 1
  store i64 %272, ptr %270, align 8
  br label %273

273:                                              ; preds = %266, %235, %231
  %274 = tail call fastcc i32 @ieee80211_tx_h_encrypt(ptr noundef %0)
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %283

276:                                              ; preds = %273
  %277 = load ptr, ptr %4, align 4
  %278 = getelementptr inbounds %struct.ieee80211_hw, ptr %277, i32 0, i32 4
  %279 = load volatile i32, ptr %278, align 4
  %280 = and i32 %279, 1
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %292

282:                                              ; preds = %276
  tail call fastcc void @ieee80211_tx_h_calculate_duration(ptr noundef %0)
  br label %292

283:                                              ; preds = %273, %26, %10
  %284 = phi i32 [ %27, %26 ], [ %274, %273 ], [ %11, %10 ]
  switch i32 %284, label %292 [
    i32 1, label %285
    i32 2, label %293
  ], !prof !18

285:                                              ; preds = %283, %229, %151
  %286 = load ptr, ptr %0, align 4
  %287 = icmp eq ptr %286, null
  %288 = load ptr, ptr %4, align 4
  br i1 %287, label %290, label %289

289:                                              ; preds = %285
  tail call void @ieee80211_free_txskb(ptr noundef %288, ptr noundef nonnull %286) #16
  br label %293

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1
  tail call void @ieee80211_purge_tx_queue(ptr noundef %288, ptr noundef %291) #16
  br label %293

292:                                              ; preds = %283, %282, %276, %17
  br label %293

293:                                              ; preds = %292, %290, %289, %283
  %294 = phi i32 [ 0, %292 ], [ -1, %290 ], [ -1, %289 ], [ -1, %283 ]
  ret i32 %294
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_calc_expected_tx_airtime(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_update_pending_airtime(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_next_txq(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #16
  %4 = zext i8 %1 to i32
  %5 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %4
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #16
  %6 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %4, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %4, i32 1, i32 1
  %9 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %4, i32 6
  %10 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 7
  %12 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 6
  br label %13

13:                                               ; preds = %91, %2
  %14 = phi ptr [ %7, %2 ], [ %21, %91 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load ptr, ptr %8, align 4
  br label %20

18:                                               ; preds = %13
  %19 = tail call ptr @rb_next(ptr noundef nonnull %14) #16
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %19, %18 ], [ %17, %16 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %99, label %23

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %21, i32 32
  %25 = getelementptr i8, ptr %21, i32 36
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %26, i32 -832
  %30 = getelementptr i8, ptr %21, i32 41
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = getelementptr [4 x %struct.airtime_info], ptr %29, i32 0, i32 %32
  br label %41

34:                                               ; preds = %23
  %35 = load ptr, ptr %24, align 4
  %36 = getelementptr i8, ptr %35, i32 -2264
  %37 = getelementptr i8, ptr %21, i32 41
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr %struct.ieee80211_sub_if_data, ptr %36, i32 0, i32 28, i32 %39
  br label %41

41:                                               ; preds = %34, %28
  %42 = phi ptr [ %33, %28 ], [ %40, %34 ]
  %43 = getelementptr inbounds %struct.airtime_info, ptr %42, i32 0, i32 2
  %44 = load i64, ptr %43, align 8
  %45 = load i64, ptr %9, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  br i1 %15, label %48, label %99

48:                                               ; preds = %47
  store i64 %44, ptr %9, align 8
  %49 = load ptr, ptr %25, align 4
  br label %50

50:                                               ; preds = %48, %41
  %51 = phi ptr [ %49, %48 ], [ %26, %41 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = getelementptr i8, ptr %51, i32 -832
  %55 = getelementptr i8, ptr %21, i32 41
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = getelementptr [4 x %struct.airtime_info], ptr %54, i32 0, i32 %57
  br label %66

59:                                               ; preds = %50
  %60 = load ptr, ptr %24, align 4
  %61 = getelementptr i8, ptr %60, i32 -2264
  %62 = getelementptr i8, ptr %21, i32 41
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = getelementptr %struct.ieee80211_sub_if_data, ptr %61, i32 0, i32 28, i32 %64
  br label %66

66:                                               ; preds = %59, %53
  %67 = phi ptr [ %58, %53 ], [ %65, %59 ]
  %68 = load ptr, ptr %10, align 8
  %69 = getelementptr %struct.wiphy, ptr %68, i32 0, i32 14, i32 5
  %70 = load i8, ptr %69, align 1
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %97, label %73

73:                                               ; preds = %66
  %74 = load volatile i32, ptr @aql_disable, align 4
  %75 = icmp sgt i32 %74, 0
  %76 = select i1 %75, i1 true, i1 %52
  br i1 %76, label %97, label %77, !prof !24

77:                                               ; preds = %73
  %78 = getelementptr i8, ptr %21, i32 40
  %79 = load i8, ptr %78, align 4
  %80 = icmp eq i8 %79, 16
  br i1 %80, label %97, label %81, !prof !10

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.airtime_info, ptr %67, i32 0, i32 5
  %83 = load volatile i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.airtime_info, ptr %67, i32 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = icmp ult i32 %83, %85
  br i1 %86, label %97, label %87

87:                                               ; preds = %81
  %88 = load volatile i32, ptr %11, align 4
  %89 = load i32, ptr %12, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %92, label %91

91:                                               ; preds = %92, %87
  br label %13

92:                                               ; preds = %87
  %93 = load volatile i32, ptr %82, align 4
  %94 = getelementptr inbounds %struct.airtime_info, ptr %67, i32 0, i32 7
  %95 = load i32, ptr %94, align 8
  %96 = icmp ult i32 %93, %95
  br i1 %96, label %97, label %91

97:                                               ; preds = %92, %81, %77, %73, %66
  store ptr %21, ptr %6, align 4
  %98 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %4, i32 5
  store i64 %3, ptr %98, align 8
  br label %99

99:                                               ; preds = %97, %47, %20
  %100 = phi ptr [ %24, %97 ], [ null, %20 ], [ null, %47 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #16
  ret ptr %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_resort_txq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.ieee80211_txq, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -832
  %8 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr [4 x %struct.airtime_info], ptr %7, i32 0, i32 %10
  br label %19

12:                                               ; preds = %2
  %13 = load ptr, ptr %1, align 4
  %14 = getelementptr i8, ptr %13, i32 -2264
  %15 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 28, i32 %17
  br label %19

19:                                               ; preds = %12, %6
  %20 = phi i32 [ %10, %6 ], [ %17, %12 ]
  %21 = phi ptr [ %11, %6 ], [ %18, %12 ]
  %22 = getelementptr %struct.ieee80211_txq, ptr %1, i32 0, i32 3
  %23 = getelementptr i8, ptr %1, i32 -32
  %24 = load i32, ptr %23, align 4
  %25 = ptrtoint ptr %23 to i32
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %161, label %27

27:                                               ; preds = %19
  %28 = tail call ptr @rb_prev(ptr noundef %23) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %48, label %30

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %28, i32 36
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %32, i32 -832
  %36 = getelementptr i8, ptr %28, i32 41
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr [4 x %struct.airtime_info], ptr %35, i32 0, i32 %38
  br label %48

40:                                               ; preds = %30
  %41 = getelementptr i8, ptr %28, i32 32
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 -2264
  %44 = getelementptr i8, ptr %28, i32 41
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = getelementptr %struct.ieee80211_sub_if_data, ptr %43, i32 0, i32 28, i32 %46
  br label %48

48:                                               ; preds = %40, %34, %27
  %49 = phi ptr [ null, %27 ], [ %39, %34 ], [ %47, %40 ]
  %50 = tail call ptr @rb_next(ptr noundef %23) #16
  %51 = icmp eq ptr %50, null
  br i1 %51, label %70, label %52

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %50, i32 36
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = getelementptr i8, ptr %54, i32 -832
  %58 = getelementptr i8, ptr %50, i32 41
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr [4 x %struct.airtime_info], ptr %57, i32 0, i32 %60
  br label %70

62:                                               ; preds = %52
  %63 = getelementptr i8, ptr %50, i32 32
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 -2264
  %66 = getelementptr i8, ptr %50, i32 41
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr %struct.ieee80211_sub_if_data, ptr %65, i32 0, i32 28, i32 %68
  br label %70

70:                                               ; preds = %62, %56, %48
  %71 = phi ptr [ null, %48 ], [ %61, %56 ], [ %69, %62 ]
  %72 = icmp eq ptr %49, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.airtime_info, ptr %49, i32 0, i32 2
  %75 = load i64, ptr %74, align 8
  %76 = getelementptr inbounds %struct.airtime_info, ptr %21, i32 0, i32 2
  %77 = load i64, ptr %76, align 8
  %78 = icmp ugt i64 %75, %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %73, %70
  %80 = icmp eq ptr %71, null
  br i1 %80, label %161, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.airtime_info, ptr %71, i32 0, i32 2
  %83 = load i64, ptr %82, align 8
  %84 = getelementptr inbounds %struct.airtime_info, ptr %21, i32 0, i32 2
  %85 = load i64, ptr %84, align 8
  %86 = icmp ugt i64 %83, %85
  br i1 %86, label %161, label %87

87:                                               ; preds = %81, %73
  %88 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %20, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, %23
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store ptr %28, ptr %88, align 4
  br label %92

92:                                               ; preds = %91, %87
  %93 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %20, i32 1
  %94 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %20, i32 1, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %23
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = tail call ptr @rb_next(ptr noundef %23) #16
  store ptr %98, ptr %94, align 4
  br label %99

99:                                               ; preds = %97, %92
  tail call void @rb_erase(ptr noundef %23, ptr noundef %93) #16
  store i32 %25, ptr %23, align 4
  %100 = load ptr, ptr %93, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  store i32 0, ptr %23, align 4
  %103 = getelementptr i8, ptr %1, i32 -28
  store ptr null, ptr %103, align 4
  %104 = getelementptr i8, ptr %1, i32 -24
  store ptr null, ptr %104, align 4
  store ptr %23, ptr %93, align 4
  br label %159

105:                                              ; preds = %99
  %106 = load ptr, ptr %3, align 4
  %107 = icmp eq ptr %106, null
  %108 = getelementptr i8, ptr %106, i32 -832
  br label %109

109:                                              ; preds = %141, %105
  %110 = phi ptr [ %100, %105 ], [ %153, %141 ]
  %111 = phi i1 [ true, %105 ], [ %151, %141 ]
  %112 = getelementptr i8, ptr %110, i32 36
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = getelementptr i8, ptr %113, i32 -832
  %117 = getelementptr i8, ptr %110, i32 41
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = getelementptr [4 x %struct.airtime_info], ptr %116, i32 0, i32 %119
  br label %129

121:                                              ; preds = %109
  %122 = getelementptr i8, ptr %110, i32 32
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr i8, ptr %123, i32 -2264
  %125 = getelementptr i8, ptr %110, i32 41
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = getelementptr %struct.ieee80211_sub_if_data, ptr %124, i32 0, i32 28, i32 %127
  br label %129

129:                                              ; preds = %121, %115
  %130 = phi ptr [ %120, %115 ], [ %128, %121 ]
  br i1 %107, label %135, label %131

131:                                              ; preds = %129
  %132 = load i8, ptr %22, align 1
  %133 = zext i8 %132 to i32
  %134 = getelementptr [4 x %struct.airtime_info], ptr %108, i32 0, i32 %133
  br label %141

135:                                              ; preds = %129
  %136 = load ptr, ptr %1, align 4
  %137 = getelementptr i8, ptr %136, i32 -2264
  %138 = load i8, ptr %22, align 1
  %139 = zext i8 %138 to i32
  %140 = getelementptr %struct.ieee80211_sub_if_data, ptr %137, i32 0, i32 28, i32 %139
  br label %141

141:                                              ; preds = %135, %131
  %142 = phi ptr [ %134, %131 ], [ %140, %135 ]
  %143 = getelementptr inbounds %struct.airtime_info, ptr %142, i32 0, i32 2
  %144 = load i64, ptr %143, align 8
  %145 = getelementptr inbounds %struct.airtime_info, ptr %130, i32 0, i32 2
  %146 = load i64, ptr %145, align 8
  %147 = icmp ugt i64 %144, %146
  %148 = getelementptr inbounds %struct.rb_node, ptr %110, i32 0, i32 2
  %149 = getelementptr inbounds %struct.rb_node, ptr %110, i32 0, i32 1
  %150 = xor i1 %147, true
  %151 = select i1 %150, i1 %111, i1 false
  %152 = select i1 %147, ptr %149, ptr %148
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %109

155:                                              ; preds = %141
  %156 = ptrtoint ptr %110 to i32
  store i32 %156, ptr %23, align 4
  %157 = getelementptr i8, ptr %1, i32 -28
  store ptr null, ptr %157, align 4
  %158 = getelementptr i8, ptr %1, i32 -24
  store ptr null, ptr %158, align 4
  store ptr %23, ptr %152, align 4
  br i1 %151, label %159, label %160

159:                                              ; preds = %155, %102
  store ptr %23, ptr %94, align 4
  br label %160

160:                                              ; preds = %159, %155
  tail call void @rb_insert_color(ptr noundef %23, ptr noundef %93) #16
  br label %161

161:                                              ; preds = %160, %81, %79, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_update_airtime_weight(ptr nocapture readnone %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %8, !prof !10

6:                                                ; preds = %4
  %7 = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #16
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i64 [ %7, %6 ], [ %2, %4 ]
  br i1 %3, label %15, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.airtime_sched_info, ptr %1, i32 0, i32 4
  %12 = load i64, ptr %11, align 8
  %13 = add i64 %9, -100000000
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %58, label %15

15:                                               ; preds = %10, %8
  %16 = getelementptr inbounds %struct.airtime_sched_info, ptr %1, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %42, label %19

19:                                               ; preds = %15
  %20 = add i64 %9, -100000000
  br label %21

21:                                               ; preds = %37, %19
  %22 = phi ptr [ %17, %19 ], [ %24, %37 ]
  %23 = phi i64 [ 0, %19 ], [ %38, %37 ]
  %24 = load ptr, ptr %22, align 8
  %25 = getelementptr i8, ptr %22, i32 -8
  %26 = load i64, ptr %25, align 8
  %27 = icmp ult i64 %26, %20
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = getelementptr i8, ptr %22, i32 24
  %30 = load i16, ptr %29, align 8
  %31 = zext i16 %30 to i64
  %32 = add i64 %23, %31
  br label %37

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %24, ptr %35, align 4
  store volatile ptr %22, ptr %22, align 4
  store ptr %22, ptr %34, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i64 [ %32, %28 ], [ %23, %33 ]
  %39 = icmp eq ptr %24, %16
  br i1 %39, label %40, label %21

40:                                               ; preds = %37
  %41 = trunc i64 %38 to i32
  br label %42

42:                                               ; preds = %40, %15
  %43 = phi i32 [ 0, %15 ], [ %41, %40 ]
  %44 = getelementptr inbounds %struct.airtime_sched_info, ptr %1, i32 0, i32 7
  %45 = load i64, ptr %44, align 8
  %46 = sext i32 %43 to i64
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %42
  store i64 %46, ptr %44, align 8
  %49 = icmp eq i32 %43, 0
  %50 = getelementptr inbounds %struct.airtime_sched_info, ptr %1, i32 0, i32 8
  br i1 %49, label %54, label %51

51:                                               ; preds = %48
  %52 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %43, i64 4294967296) #20, !srcloc !32
  %53 = extractvalue { i64, i64 } %52, 1
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i64 [ %53, %51 ], [ 0, %48 ]
  store i64 %55, ptr %50, align 8
  br label %56

56:                                               ; preds = %54, %42
  %57 = getelementptr inbounds %struct.airtime_sched_info, ptr %1, i32 0, i32 4
  store i64 %9, ptr %57, align 8
  br label %58

58:                                               ; preds = %56, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_schedule_txq(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #16
  %4 = getelementptr %struct.ieee80211_txq, ptr %1, i32 0, i32 3
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6
  %8 = getelementptr %struct.ieee80211_txq, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %9, i32 -832
  %13 = getelementptr [4 x %struct.airtime_info], ptr %12, i32 0, i32 %6
  br label %18

14:                                               ; preds = %2
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr i8, ptr %15, i32 -2264
  %17 = getelementptr %struct.ieee80211_sub_if_data, ptr %16, i32 0, i32 28, i32 %6
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi ptr [ %13, %11 ], [ %17, %14 ]
  tail call void @_raw_spin_lock_bh(ptr noundef %7) #16
  %20 = getelementptr inbounds %struct.airtime_info, ptr %19, i32 0, i32 3
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %3, -100000000
  %23 = icmp ult i64 %21, %22
  store i64 %3, ptr %20, align 8
  %24 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 5
  store i64 %3, ptr %24, align 8
  %25 = getelementptr inbounds %struct.airtime_info, ptr %19, i32 0, i32 4
  %26 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 3
  %27 = getelementptr inbounds %struct.airtime_info, ptr %19, i32 0, i32 4, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %25, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  %31 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 3, i32 1
  %32 = load ptr, ptr %31, align 4
  store ptr %25, ptr %31, align 4
  store ptr %26, ptr %25, align 4
  store ptr %32, ptr %27, align 4
  store volatile ptr %25, ptr %32, align 4
  %33 = getelementptr i8, ptr %1, i32 -32
  %34 = load i32, ptr %33, align 4
  %35 = ptrtoint ptr %33 to i32
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %166

37:                                               ; preds = %18
  %38 = getelementptr inbounds %struct.airtime_info, ptr %19, i32 0, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 6
  %41 = load i64, ptr %40, align 8
  %42 = icmp ult i64 %39, %41
  %43 = select i1 %23, i1 %42, i1 false
  %44 = add i64 %41, -20000
  %45 = icmp ult i64 %39, %44
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.airtime_info, ptr %19, i32 0, i32 2
  store i64 %41, ptr %48, align 8
  br label %49

49:                                               ; preds = %47, %37
  %50 = icmp eq i64 %3, 0
  br i1 %50, label %51, label %53, !prof !10

51:                                               ; preds = %49
  %52 = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #16
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i64 [ %52, %51 ], [ %3, %49 ]
  br i1 %23, label %60, label %55

55:                                               ; preds = %53
  %56 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 4
  %57 = load i64, ptr %56, align 8
  %58 = add i64 %54, -100000000
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %102, label %60

60:                                               ; preds = %55, %53
  %61 = load ptr, ptr %26, align 8
  %62 = icmp eq ptr %61, %26
  br i1 %62, label %86, label %63

63:                                               ; preds = %60
  %64 = add i64 %54, -100000000
  br label %65

65:                                               ; preds = %81, %63
  %66 = phi ptr [ %61, %63 ], [ %68, %81 ]
  %67 = phi i64 [ 0, %63 ], [ %82, %81 ]
  %68 = load ptr, ptr %66, align 8
  %69 = getelementptr i8, ptr %66, i32 -8
  %70 = load i64, ptr %69, align 8
  %71 = icmp ult i64 %70, %64
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = getelementptr i8, ptr %66, i32 24
  %74 = load i16, ptr %73, align 8
  %75 = zext i16 %74 to i64
  %76 = add i64 %67, %75
  br label %81

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %79, ptr %80, align 4
  store volatile ptr %68, ptr %79, align 4
  store volatile ptr %66, ptr %66, align 4
  store ptr %66, ptr %78, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = phi i64 [ %76, %72 ], [ %67, %77 ]
  %83 = icmp eq ptr %68, %26
  br i1 %83, label %84, label %65

84:                                               ; preds = %81
  %85 = trunc i64 %82 to i32
  br label %86

86:                                               ; preds = %84, %60
  %87 = phi i32 [ 0, %60 ], [ %85, %84 ]
  %88 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 7
  %89 = load i64, ptr %88, align 8
  %90 = sext i32 %87 to i64
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %86
  store i64 %90, ptr %88, align 8
  %93 = icmp eq i32 %87, 0
  %94 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 8
  br i1 %93, label %98, label %95

95:                                               ; preds = %92
  %96 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %87, i64 4294967296) #20, !srcloc !32
  %97 = extractvalue { i64, i64 } %96, 1
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi i64 [ %97, %95 ], [ 0, %92 ]
  store i64 %99, ptr %94, align 8
  br label %100

100:                                              ; preds = %98, %86
  %101 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 4
  store i64 %54, ptr %101, align 8
  br label %102

102:                                              ; preds = %100, %55
  %103 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  store i32 0, ptr %33, align 4
  %107 = getelementptr i8, ptr %1, i32 -28
  store ptr null, ptr %107, align 4
  %108 = getelementptr i8, ptr %1, i32 -24
  store ptr null, ptr %108, align 4
  store ptr %33, ptr %103, align 4
  br label %163

109:                                              ; preds = %102
  %110 = load ptr, ptr %8, align 4
  %111 = icmp eq ptr %110, null
  %112 = getelementptr i8, ptr %110, i32 -832
  br label %113

113:                                              ; preds = %145, %109
  %114 = phi ptr [ %104, %109 ], [ %157, %145 ]
  %115 = phi i1 [ true, %109 ], [ %155, %145 ]
  %116 = getelementptr i8, ptr %114, i32 36
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %125, label %119

119:                                              ; preds = %113
  %120 = getelementptr i8, ptr %117, i32 -832
  %121 = getelementptr i8, ptr %114, i32 41
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = getelementptr [4 x %struct.airtime_info], ptr %120, i32 0, i32 %123
  br label %133

125:                                              ; preds = %113
  %126 = getelementptr i8, ptr %114, i32 32
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr i8, ptr %127, i32 -2264
  %129 = getelementptr i8, ptr %114, i32 41
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = getelementptr %struct.ieee80211_sub_if_data, ptr %128, i32 0, i32 28, i32 %131
  br label %133

133:                                              ; preds = %125, %119
  %134 = phi ptr [ %124, %119 ], [ %132, %125 ]
  br i1 %111, label %139, label %135

135:                                              ; preds = %133
  %136 = load i8, ptr %4, align 1
  %137 = zext i8 %136 to i32
  %138 = getelementptr [4 x %struct.airtime_info], ptr %112, i32 0, i32 %137
  br label %145

139:                                              ; preds = %133
  %140 = load ptr, ptr %1, align 4
  %141 = getelementptr i8, ptr %140, i32 -2264
  %142 = load i8, ptr %4, align 1
  %143 = zext i8 %142 to i32
  %144 = getelementptr %struct.ieee80211_sub_if_data, ptr %141, i32 0, i32 28, i32 %143
  br label %145

145:                                              ; preds = %139, %135
  %146 = phi ptr [ %138, %135 ], [ %144, %139 ]
  %147 = getelementptr inbounds %struct.airtime_info, ptr %146, i32 0, i32 2
  %148 = load i64, ptr %147, align 8
  %149 = getelementptr inbounds %struct.airtime_info, ptr %134, i32 0, i32 2
  %150 = load i64, ptr %149, align 8
  %151 = icmp ugt i64 %148, %150
  %152 = getelementptr inbounds %struct.rb_node, ptr %114, i32 0, i32 2
  %153 = getelementptr inbounds %struct.rb_node, ptr %114, i32 0, i32 1
  %154 = xor i1 %151, true
  %155 = select i1 %154, i1 %115, i1 false
  %156 = select i1 %151, ptr %153, ptr %152
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %113

159:                                              ; preds = %145
  %160 = ptrtoint ptr %114 to i32
  store i32 %160, ptr %33, align 4
  %161 = getelementptr i8, ptr %1, i32 -28
  store ptr null, ptr %161, align 4
  %162 = getelementptr i8, ptr %1, i32 -24
  store ptr null, ptr %162, align 4
  store ptr %33, ptr %156, align 4
  br i1 %155, label %163, label %165

163:                                              ; preds = %159, %106
  %164 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 1, i32 1
  store ptr %33, ptr %164, align 4
  br label %165

165:                                              ; preds = %163, %159
  tail call void @rb_insert_color(ptr noundef %33, ptr noundef %103) #16
  br label %166

166:                                              ; preds = %165, %18
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ieee80211_unschedule_txq(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 3
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %8, i32 -832
  %12 = getelementptr [4 x %struct.airtime_info], ptr %11, i32 0, i32 %6
  br label %17

13:                                               ; preds = %3
  %14 = load ptr, ptr %1, align 4
  %15 = getelementptr i8, ptr %14, i32 -2264
  %16 = getelementptr %struct.ieee80211_sub_if_data, ptr %15, i32 0, i32 28, i32 %6
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi ptr [ %12, %10 ], [ %16, %13 ]
  br i1 %2, label %19, label %68

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.airtime_info, ptr %18, i32 0, i32 4
  %21 = getelementptr inbounds %struct.airtime_info, ptr %18, i32 0, i32 4, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store volatile ptr %20, ptr %20, align 4
  store ptr %20, ptr %21, align 4
  %25 = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #16
  %26 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %52, label %29

29:                                               ; preds = %19
  %30 = add i64 %25, -100000000
  br label %31

31:                                               ; preds = %47, %29
  %32 = phi ptr [ %27, %29 ], [ %34, %47 ]
  %33 = phi i64 [ 0, %29 ], [ %48, %47 ]
  %34 = load ptr, ptr %32, align 8
  %35 = getelementptr i8, ptr %32, i32 -8
  %36 = load i64, ptr %35, align 8
  %37 = icmp ult i64 %36, %30
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = getelementptr i8, ptr %32, i32 24
  %40 = load i16, ptr %39, align 8
  %41 = zext i16 %40 to i64
  %42 = add i64 %33, %41
  br label %47

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  store volatile ptr %34, ptr %45, align 4
  store volatile ptr %32, ptr %32, align 4
  store ptr %32, ptr %44, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i64 [ %42, %38 ], [ %33, %43 ]
  %49 = icmp eq ptr %34, %26
  br i1 %49, label %50, label %31

50:                                               ; preds = %47
  %51 = trunc i64 %48 to i32
  br label %52

52:                                               ; preds = %50, %19
  %53 = phi i32 [ 0, %19 ], [ %51, %50 ]
  %54 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 7
  %55 = load i64, ptr %54, align 8
  %56 = sext i32 %53 to i64
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  store i64 %56, ptr %54, align 8
  %59 = icmp eq i32 %53, 0
  %60 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 8
  br i1 %59, label %64, label %61

61:                                               ; preds = %58
  %62 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %53, i64 4294967296) #20, !srcloc !32
  %63 = extractvalue { i64, i64 } %62, 1
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i64 [ %63, %61 ], [ 0, %58 ]
  store i64 %65, ptr %60, align 8
  br label %66

66:                                               ; preds = %64, %52
  %67 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 4
  store i64 %25, ptr %67, align 8
  br label %68

68:                                               ; preds = %66, %17
  %69 = getelementptr i8, ptr %1, i32 -32
  %70 = load i32, ptr %69, align 4
  %71 = ptrtoint ptr %69 to i32
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %100, label %73

73:                                               ; preds = %68
  %74 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %69
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = tail call ptr @rb_prev(ptr noundef %69) #16
  store ptr %78, ptr %74, align 4
  br label %79

79:                                               ; preds = %77, %73
  br i1 %2, label %92, label %80

80:                                               ; preds = %79
  %81 = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #16
  %82 = getelementptr inbounds %struct.airtime_info, ptr %18, i32 0, i32 3
  store i64 %81, ptr %82, align 8
  %83 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 5
  store i64 %81, ptr %83, align 8
  %84 = getelementptr inbounds %struct.airtime_info, ptr %18, i32 0, i32 4
  %85 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 3
  %86 = getelementptr inbounds %struct.airtime_info, ptr %18, i32 0, i32 4, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %84, align 4
  %89 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  store ptr %87, ptr %89, align 4
  store volatile ptr %88, ptr %87, align 4
  %90 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 3, i32 1
  %91 = load ptr, ptr %90, align 4
  store ptr %84, ptr %90, align 4
  store ptr %85, ptr %84, align 4
  store ptr %91, ptr %86, align 4
  store volatile ptr %84, ptr %91, align 4
  br label %92

92:                                               ; preds = %80, %79
  %93 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 1
  %94 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6, i32 1, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %69
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = tail call ptr @rb_next(ptr noundef %69) #16
  store ptr %98, ptr %94, align 4
  br label %99

99:                                               ; preds = %97, %92
  tail call void @rb_erase(ptr noundef %69, ptr noundef %93) #16
  store i32 %71, ptr %69, align 4
  br label %100

100:                                              ; preds = %99, %68
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_return_txq(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 3
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %6
  tail call void @_raw_spin_lock_bh(ptr noundef %7) #16
  %8 = getelementptr i8, ptr %1, i32 -32
  %9 = load i32, ptr %8, align 4
  %10 = ptrtoint ptr %8 to i32
  %11 = icmp eq i32 %9, %10
  %12 = or i1 %11, %2
  br i1 %12, label %22, label %13

13:                                               ; preds = %3
  %14 = getelementptr i8, ptr %1, i32 -20
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %1, i32 -100
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call fastcc void @__ieee80211_unschedule_txq(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  br label %22

22:                                               ; preds = %21, %17, %13, %3
  %23 = load i8, ptr %4, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %24
  tail call void @_raw_spin_unlock_bh(ptr noundef %25) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ieee80211_txq_may_transmit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -832
  %8 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr [4 x %struct.airtime_info], ptr %7, i32 0, i32 %10
  br label %19

12:                                               ; preds = %2
  %13 = load ptr, ptr %1, align 4
  %14 = getelementptr i8, ptr %13, i32 -2264
  %15 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 28, i32 %17
  br label %19

19:                                               ; preds = %12, %6
  %20 = phi i8 [ %9, %6 ], [ %16, %12 ]
  %21 = phi ptr [ %11, %6 ], [ %18, %12 ]
  %22 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr %struct.wiphy, ptr %23, i32 0, i32 14, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %19
  %29 = load volatile i32, ptr @aql_disable, align 4
  %30 = icmp sgt i32 %29, 0
  %31 = select i1 %30, i1 true, i1 %5
  br i1 %31, label %53, label %32, !prof !24

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 2
  %34 = load i8, ptr %33, align 4
  %35 = icmp eq i8 %34, 16
  br i1 %35, label %53, label %36, !prof !10

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.airtime_info, ptr %21, i32 0, i32 5
  %38 = load volatile i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.airtime_info, ptr %21, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %53, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 7
  %44 = load volatile i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %48, label %117

48:                                               ; preds = %42
  %49 = load volatile i32, ptr %37, align 4
  %50 = getelementptr inbounds %struct.airtime_info, ptr %21, i32 0, i32 7
  %51 = load i32, ptr %50, align 8
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %53, label %117

53:                                               ; preds = %48, %36, %32, %28, %19
  %54 = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 0, i32 3
  %55 = zext i8 %20 to i32
  %56 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %55
  tail call void @_raw_spin_lock_bh(ptr noundef %56) #16
  %57 = getelementptr i8, ptr %1, i32 -32
  %58 = load i32, ptr %57, align 4
  %59 = ptrtoint ptr %57 to i32
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %115, label %61

61:                                               ; preds = %53
  %62 = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #16
  %63 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %55, i32 1, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %92, label %66

66:                                               ; preds = %61
  %67 = getelementptr i8, ptr %64, i32 36
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = getelementptr i8, ptr %68, i32 -832
  %72 = getelementptr i8, ptr %64, i32 41
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = getelementptr [4 x %struct.airtime_info], ptr %71, i32 0, i32 %74
  br label %84

76:                                               ; preds = %66
  %77 = getelementptr i8, ptr %64, i32 32
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 -2264
  %80 = getelementptr i8, ptr %64, i32 41
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = getelementptr %struct.ieee80211_sub_if_data, ptr %79, i32 0, i32 28, i32 %82
  br label %84

84:                                               ; preds = %76, %70
  %85 = phi ptr [ %75, %70 ], [ %83, %76 ]
  %86 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %55, i32 6
  %87 = load i64, ptr %86, align 8
  %88 = getelementptr inbounds %struct.airtime_info, ptr %85, i32 0, i32 2
  %89 = load i64, ptr %88, align 8
  %90 = icmp ult i64 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  store i64 %89, ptr %86, align 8
  br label %92

92:                                               ; preds = %91, %84, %61
  %93 = load ptr, ptr %3, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = getelementptr i8, ptr %93, i32 -832
  %97 = load i8, ptr %54, align 1
  %98 = zext i8 %97 to i32
  %99 = getelementptr [4 x %struct.airtime_info], ptr %96, i32 0, i32 %98
  br label %106

100:                                              ; preds = %92
  %101 = load ptr, ptr %1, align 4
  %102 = getelementptr i8, ptr %101, i32 -2264
  %103 = load i8, ptr %54, align 1
  %104 = zext i8 %103 to i32
  %105 = getelementptr %struct.ieee80211_sub_if_data, ptr %102, i32 0, i32 28, i32 %104
  br label %106

106:                                              ; preds = %100, %95
  %107 = phi ptr [ %99, %95 ], [ %105, %100 ]
  %108 = getelementptr inbounds %struct.airtime_info, ptr %107, i32 0, i32 2
  %109 = load i64, ptr %108, align 8
  %110 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %55, i32 6
  %111 = load i64, ptr %110, align 8
  %112 = icmp ugt i64 %109, %111
  br i1 %112, label %115, label %113

113:                                              ; preds = %106
  %114 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %55, i32 5
  store i64 %62, ptr %114, align 8
  br label %115

115:                                              ; preds = %113, %106, %53
  %116 = phi i1 [ false, %53 ], [ true, %113 ], [ false, %106 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %56) #16
  br label %117

117:                                              ; preds = %115, %48, %42
  %118 = phi i1 [ %116, %115 ], [ false, %42 ], [ false, %48 ]
  ret i1 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_txq_schedule_start(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %3
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #16
  %5 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %3, i32 2
  store ptr null, ptr %5, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ieee80211_subif_start_xmit(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ethhdr, align 1
  %7 = alloca %struct.ieee80211_tx_data, align 4
  %8 = alloca ptr, align 4
  %9 = getelementptr i8, ptr %1, i32 1408
  %10 = getelementptr i8, ptr %1, i32 1764
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store ptr null, ptr %8, align 4, !annotation !12
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = icmp ult i32 %13, 14
  br i1 %14, label %15, label %16, !prof !10

15:                                               ; preds = %5
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #16
  br label %608

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %17 = call i32 @ieee80211_lookup_ra_sta(ptr noundef %9, ptr noundef %0, ptr noundef nonnull %8)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %606

19:                                               ; preds = %16
  %20 = load ptr, ptr %8, align 4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %22 = select i1 %21, ptr null, ptr %20
  store ptr %22, ptr %8, align 4
  %23 = getelementptr inbounds %struct.ieee80211_local, ptr %11, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ieee80211_ops, ptr %24, i32 0, i32 89
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %19
  %29 = tail call zeroext i16 @__ieee80211_select_queue(ptr noundef %9, ptr noundef %22, ptr noundef %0) #16
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  store i16 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %32 = load i16, ptr %31, align 8
  %33 = and i16 %32, 768
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  tail call void @__skb_get_hash(ptr noundef %0) #16
  br label %36

36:                                               ; preds = %35, %28, %19
  %37 = load ptr, ptr %10, align 4
  %38 = getelementptr inbounds %struct.ieee80211_local, ptr %37, i32 0, i32 58
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %79, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %39, align 4
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  %46 = icmp eq ptr %22, null
  %47 = or i1 %46, %45
  br i1 %47, label %79, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.sta_info, ptr %22, i32 0, i32 46
  %50 = getelementptr inbounds %struct.sta_info, ptr %22, i32 0, i32 46, i32 3, i32 1
  %51 = load i8, ptr %50, align 2, !range !11
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %79, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.sta_info, ptr %22, i32 0, i32 46, i32 10
  %55 = load i8, ptr %54, align 4, !range !11
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %59 = load i16, ptr %58, align 4
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %63 = load i16, ptr %62, align 8
  %64 = getelementptr i8, ptr %1, i32 2010
  %65 = load i16, ptr %64, align 2
  %66 = icmp eq i16 %63, %65
  br i1 %66, label %79, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 5
  %69 = load i32, ptr %68, align 8
  %70 = trunc i32 %69 to i16
  %71 = and i16 %70, 15
  %72 = zext i16 %71 to i32
  %73 = getelementptr %struct.sta_info, ptr %22, i32 0, i32 38, i32 9, i32 %72
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %79, !prof !10

76:                                               ; preds = %67
  %77 = tail call i32 @ieee80211_start_tx_ba_session(ptr noundef %49, i16 noundef zeroext %71, i16 noundef zeroext 0) #16
  %78 = load ptr, ptr %10, align 4
  br label %79

79:                                               ; preds = %76, %67, %61, %57, %53, %48, %41, %36
  %80 = phi ptr [ %37, %36 ], [ %37, %41 ], [ %37, %48 ], [ %37, %53 ], [ %37, %57 ], [ %37, %61 ], [ %37, %67 ], [ %78, %76 ]
  %81 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.ieee80211_hw, ptr %80, i32 0, i32 30
  %84 = load i8, ptr %83, align 1
  %85 = icmp eq ptr %82, null
  br i1 %85, label %98, label %86

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.sock_common, ptr %82, i32 0, i32 4
  %88 = load volatile i8, ptr %87, align 2
  %89 = zext i8 %88 to i32
  %90 = shl nuw i32 1, %89
  %91 = and i32 %90, -4161
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.sock, ptr %82, i32 0, i32 44
  %95 = load volatile i8, ptr %94, align 1
  %96 = icmp eq i8 %95, %84
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  store volatile i8 %84, ptr %94, align 1
  br label %98

98:                                               ; preds = %97, %93, %86, %79
  %99 = icmp eq ptr %22, null
  br i1 %99, label %520, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.sta_info, ptr %22, i32 0, i32 14
  %102 = load volatile ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %520, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %10, align 4
  %106 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %107, i32 12
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i16
  %111 = shl nuw i16 %110, 8
  %112 = getelementptr i8, ptr %107, i32 13
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i16
  %115 = or i16 %111, %114
  %116 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %102, i32 0, i32 1
  %117 = load i8, ptr %116, align 4
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %118, -12
  %120 = getelementptr inbounds %struct.ieee80211_hw, ptr %105, i32 0, i32 5
  %121 = load i32, ptr %120, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %6)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %6, i8 0, i32 14, i1 false)
  %122 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %102, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %7, i8 0, i32 44, i1 false) #16, !annotation !12
  %123 = tail call i16 @llvm.bswap.i16(i16 %115) #16
  %124 = getelementptr i8, ptr %1, i32 2010
  %125 = load i16, ptr %124, align 2
  %126 = icmp eq i16 %123, %125
  %127 = icmp ult i8 %109, 6
  %128 = select i1 %126, i1 true, i1 %127
  br i1 %128, label %518, label %129

129:                                              ; preds = %104
  %130 = load ptr, ptr %81, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %139, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.skb_shared_info, ptr %134, i32 0, i32 3
  %136 = load i8, ptr %135, align 1
  %137 = and i8 %136, 16
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %518

139:                                              ; preds = %132, %129
  %140 = load i16, ptr %122, align 2
  %141 = and i16 %140, 128
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %162, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 5
  %145 = load i32, ptr %144, align 8
  %146 = and i32 %145, 7
  %147 = getelementptr %struct.sta_info, ptr %22, i32 0, i32 38, i32 9, i32 %146
  %148 = load volatile ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %162, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %148, i32 0, i32 5
  %152 = load volatile i32, ptr %151, align 4
  %153 = and i32 %152, 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %518, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %148, i32 0, i32 7
  %157 = load i16, ptr %156, align 4
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = load volatile i32, ptr @jiffies, align 64
  %161 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %148, i32 0, i32 6
  store i32 %160, ptr %161, align 4
  br label %162

162:                                              ; preds = %159, %155, %143, %139
  %163 = phi ptr [ %148, %159 ], [ %148, %155 ], [ null, %143 ], [ null, %139 ]
  %164 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %165 = load volatile i32, ptr %164, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #16
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #16
  %169 = icmp eq ptr %168, null
  br i1 %169, label %519, label %170

170:                                              ; preds = %167, %162
  %171 = phi ptr [ %168, %167 ], [ %0, %162 ]
  %172 = load i16, ptr %122, align 2
  %173 = and i16 %172, 128
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %391, label %175

175:                                              ; preds = %170
  %176 = load ptr, ptr %10, align 4
  %177 = getelementptr inbounds %struct.ieee80211_local, ptr %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 13, i32 0, i32 5
  %179 = load i32, ptr %178, align 8
  %180 = and i32 %179, 7
  %181 = getelementptr %struct.sta_info, ptr %22, i32 0, i32 46, i32 28, i32 %180
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 5
  %184 = load i32, ptr %183, align 8
  %185 = getelementptr inbounds %struct.sta_info, ptr %22, i32 0, i32 46, i32 20
  %186 = load i8, ptr %185, align 1
  %187 = getelementptr inbounds %struct.ieee80211_hw, ptr %176, i32 0, i32 19
  %188 = load i8, ptr %187, align 8
  %189 = zext i8 %188 to i32
  %190 = getelementptr inbounds %struct.sta_info, ptr %22, i32 0, i32 46, i32 21
  %191 = load i16, ptr %190, align 8
  %192 = getelementptr %struct.ieee80211_hw, ptr %176, i32 0, i32 4, i32 1
  %193 = load volatile i32, ptr %192, align 4
  %194 = and i32 %193, 8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %391, label %196

196:                                              ; preds = %175
  %197 = getelementptr i8, ptr %1, i32 4500
  %198 = load i32, ptr %197, align 4
  %199 = and i32 %198, 1
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %391

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 15
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr inbounds %struct.skb_shared_info, ptr %203, i32 0, i32 4
  %205 = load i16, ptr %204, align 4
  %206 = icmp ne i16 %205, 0
  %207 = icmp eq ptr %182, null
  %208 = select i1 %206, i1 true, i1 %207
  br i1 %208, label %391, label %209

209:                                              ; preds = %201
  %210 = getelementptr i8, ptr %182, i32 -164
  %211 = getelementptr i8, ptr %182, i32 -4
  %212 = load volatile i32, ptr %211, align 4
  %213 = and i32 %212, 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %391

215:                                              ; preds = %209
  %216 = getelementptr inbounds %struct.sta_info, ptr %22, i32 0, i32 46, i32 24
  %217 = load i16, ptr %216, align 4
  %218 = icmp eq i16 %217, 0
  %219 = tail call i16 @llvm.umin.i16(i16 %191, i16 %217) #16
  %220 = select i1 %218, i16 %191, i16 %219
  %221 = zext i16 %220 to i32
  %222 = getelementptr %struct.sta_info, ptr %22, i32 0, i32 46, i32 25, i32 %180
  %223 = load i16, ptr %222, align 2
  %224 = icmp eq i16 %223, 0
  %225 = zext i16 %223 to i32
  %226 = tail call i32 @llvm.smin.i32(i32 %221, i32 %225) #16
  %227 = select i1 %224, i32 %221, i32 %226
  %228 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 13
  %229 = load i16, ptr %228, align 8
  %230 = and i16 %229, 768
  %231 = icmp eq i16 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %215
  tail call void @__skb_get_hash(ptr noundef %171) #16
  br label %233

233:                                              ; preds = %232, %215
  %234 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 13, i32 0, i32 7
  %235 = load i32, ptr %234, align 8
  %236 = getelementptr inbounds %struct.ieee80211_local, ptr %176, i32 0, i32 1, i32 4
  %237 = load i32, ptr %236, align 4
  %238 = zext i32 %235 to i64
  %239 = zext i32 %237 to i64
  %240 = mul nuw i64 %239, %238
  %241 = lshr i64 %240, 32
  %242 = trunc i64 %241 to i32
  %243 = getelementptr inbounds %struct.ieee80211_local, ptr %176, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %243) #16
  %244 = load ptr, ptr %177, align 4
  %245 = getelementptr %struct.fq_flow, ptr %244, i32 %242
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, null
  %248 = icmp eq ptr %246, %210
  %249 = or i1 %247, %248
  br i1 %249, label %259, label %250

250:                                              ; preds = %233
  %251 = getelementptr i8, ptr %182, i32 -140
  %252 = getelementptr i8, ptr %182, i32 -92
  %253 = load i32, ptr %252, align 4
  %254 = add i32 %253, 1
  store i32 %254, ptr %252, align 4
  %255 = getelementptr inbounds %struct.ieee80211_local, ptr %176, i32 0, i32 1, i32 12
  %256 = load i32, ptr %255, align 4
  %257 = add i32 %256, 1
  store i32 %257, ptr %255, align 4
  %258 = load ptr, ptr %251, align 4
  br label %259

259:                                              ; preds = %250, %233
  %260 = phi ptr [ %258, %250 ], [ %246, %233 ]
  %261 = phi ptr [ %251, %250 ], [ %245, %233 ]
  %262 = icmp eq ptr %260, null
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = getelementptr i8, ptr %182, i32 -88
  %265 = load i32, ptr %264, align 4
  %266 = add i32 %265, 1
  store i32 %266, ptr %264, align 4
  br label %267

267:                                              ; preds = %263, %259
  %268 = getelementptr inbounds %struct.fq_flow, ptr %261, i32 0, i32 2
  %269 = getelementptr inbounds %struct.fq_flow, ptr %261, i32 0, i32 2, i32 0, i32 0, i32 1
  %270 = load volatile ptr, ptr %269, align 4
  %271 = icmp eq ptr %270, %268
  %272 = icmp eq ptr %270, null
  %273 = or i1 %271, %272
  br i1 %273, label %389, label %274

274:                                              ; preds = %267
  %275 = getelementptr inbounds %struct.sk_buff, ptr %270, i32 0, i32 15
  %276 = load ptr, ptr %275, align 4
  %277 = getelementptr inbounds %struct.skb_shared_info, ptr %276, i32 0, i32 4
  %278 = load i16, ptr %277, align 4
  %279 = icmp eq i16 %278, 0
  br i1 %279, label %280, label %389

280:                                              ; preds = %274
  %281 = getelementptr inbounds %struct.sk_buff, ptr %270, i32 0, i32 18
  %282 = load i32, ptr %281, align 8
  %283 = getelementptr inbounds %struct.sk_buff, ptr %270, i32 0, i32 5
  %284 = load i32, ptr %283, align 8
  %285 = load i32, ptr %183, align 8
  %286 = add i32 %285, %284
  %287 = icmp ugt i32 %286, %227
  br i1 %287, label %389, label %288

288:                                              ; preds = %280
  %289 = load ptr, ptr %202, align 4
  %290 = getelementptr inbounds %struct.skb_shared_info, ptr %289, i32 0, i32 2
  %291 = load i8, ptr %290, align 2
  %292 = zext i8 %291 to i32
  %293 = getelementptr inbounds %struct.skb_shared_info, ptr %276, i32 0, i32 2
  %294 = load i8, ptr %293, align 2
  %295 = zext i8 %294 to i32
  %296 = add nuw nsw i32 %292, 2
  %297 = add nuw nsw i32 %296, %295
  %298 = getelementptr inbounds %struct.skb_shared_info, ptr %276, i32 0, i32 6
  %299 = load ptr, ptr %298, align 4
  %300 = icmp eq ptr %299, null
  br i1 %300, label %315, label %301

301:                                              ; preds = %301, %288
  %302 = phi ptr [ %313, %301 ], [ %299, %288 ]
  %303 = phi i32 [ %311, %301 ], [ %297, %288 ]
  %304 = phi i32 [ %312, %301 ], [ 2, %288 ]
  %305 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 15
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr inbounds %struct.skb_shared_info, ptr %306, i32 0, i32 2
  %308 = load i8, ptr %307, align 2
  %309 = zext i8 %308 to i32
  %310 = add i32 %303, 1
  %311 = add i32 %310, %309
  %312 = add i32 %304, 1
  %313 = load ptr, ptr %302, align 4
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %301

315:                                              ; preds = %301, %288
  %316 = phi ptr [ %298, %288 ], [ %302, %301 ]
  %317 = phi i32 [ 2, %288 ], [ %312, %301 ]
  %318 = phi i32 [ %297, %288 ], [ %311, %301 ]
  %319 = icmp ne i8 %186, 0
  %320 = zext i8 %186 to i32
  %321 = icmp sgt i32 %317, %320
  %322 = select i1 %319, i1 %321, i1 false
  br i1 %322, label %389, label %323

323:                                              ; preds = %315
  %324 = icmp ne i8 %188, 0
  %325 = icmp sgt i32 %318, %189
  %326 = select i1 %324, i1 %325, i1 false
  br i1 %326, label %389, label %327

327:                                              ; preds = %323
  %328 = getelementptr inbounds %struct.ieee80211_local, ptr %176, i32 0, i32 8
  %329 = load ptr, ptr %328, align 4
  %330 = getelementptr inbounds %struct.ieee80211_ops, ptr %329, i32 0, i32 96
  %331 = load ptr, ptr %330, align 4
  %332 = icmp eq ptr %331, null
  br i1 %332, label %335, label %333

333:                                              ; preds = %327
  %334 = tail call zeroext i1 %331(ptr noundef %176, ptr noundef %270, ptr noundef %171) #16
  br i1 %334, label %335, label %389

335:                                              ; preds = %333, %327
  %336 = tail call fastcc zeroext i1 @ieee80211_amsdu_prepare_head(ptr noundef %9, ptr noundef nonnull %102, ptr noundef nonnull %270) #16
  br i1 %336, label %337, label %389

337:                                              ; preds = %335
  %338 = icmp eq i32 %317, 2
  br i1 %338, label %339, label %342

339:                                              ; preds = %337
  %340 = load ptr, ptr %275, align 4
  %341 = getelementptr inbounds %struct.skb_shared_info, ptr %340, i32 0, i32 6
  br label %342

342:                                              ; preds = %339, %337
  %343 = phi ptr [ %341, %339 ], [ %316, %337 ]
  %344 = load i8, ptr %116, align 4
  %345 = zext i8 %344 to i32
  %346 = load i32, ptr %283, align 8
  %347 = sub nsw i32 2, %345
  %348 = add i32 %347, %346
  %349 = and i32 %348, 3
  %350 = icmp eq i32 %349, 0
  %351 = sub nuw nsw i32 4, %349
  %352 = select i1 %350, i32 0, i32 %351
  %353 = or i32 %352, 8
  %354 = tail call fastcc zeroext i1 @ieee80211_amsdu_realloc_pad(ptr noundef %176, ptr noundef %171, i32 noundef %353) #16
  br i1 %354, label %355, label %371

355:                                              ; preds = %342
  %356 = tail call ptr @skb_push(ptr noundef %171, i32 noundef 8) #16
  %357 = getelementptr i8, ptr %356, i32 8
  tail call void @llvm.memmove.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %356, ptr noundef align 1 dereferenceable(12) %357, i32 12, i1 false) #16
  %358 = getelementptr i8, ptr %356, i32 12
  %359 = trunc i32 %184 to i16
  %360 = add i16 %359, -6
  %361 = tail call i16 @llvm.bswap.i16(i16 %360) #16
  store i16 %361, ptr %358, align 1
  %362 = getelementptr i8, ptr %356, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %362, ptr noundef nonnull align 1 dereferenceable(6) @rfc1042_header, i32 6, i1 false) #16
  %363 = tail call ptr @skb_push(ptr noundef %171, i32 noundef %352) #16
  tail call void @llvm.memset.p0.i32(ptr align 1 %363, i8 0, i32 %352, i1 false) #16
  %364 = load i32, ptr %183, align 8
  %365 = load i32, ptr %283, align 8
  %366 = add i32 %365, %364
  store i32 %366, ptr %283, align 8
  %367 = load i32, ptr %183, align 8
  %368 = getelementptr inbounds %struct.sk_buff, ptr %270, i32 0, i32 6
  %369 = load i32, ptr %368, align 4
  %370 = add i32 %369, %367
  store i32 %370, ptr %368, align 4
  store ptr %171, ptr %343, align 4
  br label %371

371:                                              ; preds = %355, %342
  %372 = load i32, ptr %281, align 8
  %373 = sub i32 %372, %282
  %374 = getelementptr inbounds %struct.ieee80211_local, ptr %176, i32 0, i32 1, i32 7
  %375 = load i32, ptr %374, align 4
  %376 = add i32 %373, %375
  store i32 %376, ptr %374, align 4
  %377 = load i32, ptr %283, align 8
  %378 = icmp eq i32 %377, %284
  br i1 %378, label %390, label %379

379:                                              ; preds = %371
  %380 = sub i32 %377, %284
  %381 = getelementptr inbounds %struct.fq_flow, ptr %261, i32 0, i32 3
  %382 = load i32, ptr %381, align 4
  %383 = add i32 %380, %382
  store i32 %383, ptr %381, align 4
  %384 = load i32, ptr %283, align 8
  %385 = sub i32 %384, %284
  %386 = getelementptr i8, ptr %182, i32 -104
  %387 = load i32, ptr %386, align 4
  %388 = add i32 %385, %387
  store i32 %388, ptr %386, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %243) #16
  br i1 %354, label %519, label %391

389:                                              ; preds = %335, %333, %323, %315, %280, %274, %267
  tail call void @_raw_spin_unlock_bh(ptr noundef %243) #16
  br label %391

390:                                              ; preds = %371
  tail call void @_raw_spin_unlock_bh(ptr noundef %243) #16
  br i1 %354, label %519, label %391

391:                                              ; preds = %390, %389, %379, %209, %201, %196, %175, %170
  %392 = add i32 %119, %121
  %393 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 17
  %394 = load ptr, ptr %393, align 4
  %395 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 16
  %396 = load ptr, ptr %395, align 8
  %397 = ptrtoint ptr %394 to i32
  %398 = ptrtoint ptr %396 to i32
  %399 = sub i32 %398, %397
  %400 = add i32 %392, %399
  %401 = tail call i32 @llvm.smax.i32(i32 %400, i32 0) #16
  %402 = load ptr, ptr %10, align 4
  %403 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 11
  %404 = load i8, ptr %403, align 2
  %405 = and i8 %404, 1
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %434, label %407

407:                                              ; preds = %391
  %408 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 15
  %409 = load ptr, ptr %408, align 4
  %410 = getelementptr inbounds %struct.skb_shared_info, ptr %409, i32 0, i32 10
  %411 = load volatile i32, ptr %410, align 4
  %412 = and i32 %411, 65535
  %413 = icmp eq i32 %412, 1
  br i1 %413, label %434, label %414

414:                                              ; preds = %407
  %415 = getelementptr inbounds %struct.ieee80211_hw, ptr %402, i32 0, i32 4
  %416 = load volatile i32, ptr %415, align 4
  %417 = and i32 %416, 134217728
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %436, label %419

419:                                              ; preds = %414
  %420 = load volatile i32, ptr %410, align 4
  %421 = and i32 %420, 65535
  %422 = ashr i32 %420, 16
  %423 = sub nsw i32 %421, %422
  %424 = icmp eq i32 %423, 1
  br i1 %424, label %425, label %436

425:                                              ; preds = %419
  %426 = add i32 %397, 14
  %427 = sub i32 %426, %398
  %428 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 8
  %429 = load i16, ptr %428, align 2
  %430 = zext i16 %429 to i32
  %431 = icmp ugt i32 %427, %430
  %432 = icmp sgt i32 %400, 0
  %433 = select i1 %431, i1 true, i1 %432
  br i1 %433, label %436, label %445

434:                                              ; preds = %407, %391
  %435 = icmp slt i32 %400, 1
  br i1 %435, label %445, label %436

436:                                              ; preds = %434, %425, %419, %414
  %437 = tail call i32 @pskb_expand_head(ptr noundef %171, i32 noundef %401, i32 noundef 0, i32 noundef 2592) #16
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %441

439:                                              ; preds = %436
  %440 = load ptr, ptr %393, align 4
  br label %445

441:                                              ; preds = %436
  %442 = getelementptr inbounds %struct.ieee80211_hw, ptr %402, i32 0, i32 1
  %443 = load ptr, ptr %442, align 8
  %444 = getelementptr inbounds %struct.wiphy, ptr %443, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %444, ptr noundef nonnull @.str.9) #18
  tail call void @kfree_skb_reason(ptr noundef %171, i32 noundef 0) #16
  br label %519

445:                                              ; preds = %439, %434, %425
  %446 = phi ptr [ %440, %439 ], [ %394, %425 ], [ %394, %434 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %6, ptr noundef align 1 dereferenceable(12) %446, i32 12, i1 false) #16
  %447 = tail call ptr @skb_push(ptr noundef %171, i32 noundef %119) #16
  %448 = load ptr, ptr %393, align 4
  %449 = load i8, ptr %116, align 4
  %450 = zext i8 %449 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %448, ptr align 2 %122, i32 %450, i1 false) #16
  %451 = load ptr, ptr %393, align 4
  %452 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %102, i32 0, i32 3
  %453 = load i8, ptr %452, align 2
  %454 = zext i8 %453 to i32
  %455 = getelementptr i8, ptr %451, i32 %454
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %455, ptr noundef nonnull align 1 dereferenceable(6) %6, i32 6, i1 false) #16
  %456 = load ptr, ptr %393, align 4
  %457 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %102, i32 0, i32 2
  %458 = load i8, ptr %457, align 1
  %459 = zext i8 %458 to i32
  %460 = getelementptr i8, ptr %456, i32 %459
  %461 = getelementptr inbounds %struct.ethhdr, ptr %6, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %460, ptr noundef align 1 dereferenceable(6) %461, i32 6, i1 false) #16
  %462 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(48) %462, i8 0, i32 48, i1 false) #16
  %463 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %102, i32 0, i32 5
  %464 = load i8, ptr %463, align 4
  %465 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 3, i32 4
  %466 = and i8 %464, 7
  %467 = zext i8 %466 to i32
  store i32 %467, ptr %465, align 4
  %468 = getelementptr i8, ptr %1, i32 3672
  %469 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 3, i32 24
  store ptr %468, ptr %469, align 8
  %470 = icmp eq ptr %163, null
  %471 = select i1 %470, i32 1073741840, i32 1073741904
  store i32 %471, ptr %462, align 8
  %472 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 3, i32 32
  store i32 16, ptr %472, align 8
  %473 = load i16, ptr %447, align 2
  %474 = and i16 %473, 128
  %475 = icmp eq i16 %474, 0
  br i1 %475, label %485, label %476

476:                                              ; preds = %445
  %477 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 13, i32 0, i32 5
  %478 = load i32, ptr %477, align 8
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 7
  %481 = and i16 %473, 768
  %482 = icmp eq i16 %481, 768
  %483 = select i1 %482, i32 30, i32 24
  %484 = getelementptr i8, ptr %447, i32 %483
  store i8 %480, ptr %484, align 1
  br label %485

485:                                              ; preds = %476, %445
  %486 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %7, i32 0, i32 1
  store ptr %486, ptr %486, align 4
  %487 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %7, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %486, ptr %487, align 4
  %488 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %7, i32 0, i32 1, i32 1
  store i32 0, ptr %488, align 4
  %489 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %7, i32 0, i32 7
  store i32 2, ptr %489, align 4
  %490 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %7, i32 0, i32 2
  store ptr %105, ptr %490, align 4
  %491 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %7, i32 0, i32 3
  store ptr %9, ptr %491, align 4
  %492 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %7, i32 0, i32 4
  store ptr %22, ptr %492, align 4
  %493 = load ptr, ptr %102, align 4
  %494 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %7, i32 0, i32 5
  store ptr %493, ptr %494, align 4
  %495 = call fastcc zeroext i1 @ieee80211_queue_skb(ptr noundef %105, ptr noundef %9, ptr noundef nonnull %22, ptr noundef %171) #16
  br i1 %495, label %519, label %496

496:                                              ; preds = %485
  store ptr %171, ptr %7, align 4
  %497 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %102, i32 0, i32 4
  %498 = load i8, ptr %497, align 1
  %499 = load ptr, ptr %102, align 4
  %500 = call fastcc i32 @ieee80211_xmit_fast_finish(ptr noundef %9, ptr noundef nonnull %22, i8 noundef zeroext %498, ptr noundef %499, ptr noundef nonnull %7) #16
  store ptr null, ptr %7, align 4
  %501 = icmp eq i32 %500, 1
  br i1 %501, label %502, label %503

502:                                              ; preds = %496
  call void @kfree_skb_reason(ptr noundef %171, i32 noundef 0) #16
  br label %519

503:                                              ; preds = %496
  %504 = load i32, ptr %468, align 8
  %505 = icmp eq i32 %504, 4
  br i1 %505, label %506, label %510

506:                                              ; preds = %503
  %507 = getelementptr i8, ptr %1, i32 2588
  %508 = load ptr, ptr %507, align 4
  %509 = getelementptr i8, ptr %508, i32 -1408
  br label %510

510:                                              ; preds = %506, %503
  %511 = phi ptr [ %509, %506 ], [ %9, %503 ]
  %512 = load ptr, ptr %487, align 4
  store volatile ptr %486, ptr %171, align 8
  %513 = getelementptr inbounds %struct.anon.42, ptr %171, i32 0, i32 1
  store volatile ptr %512, ptr %513, align 4
  store volatile ptr %171, ptr %487, align 4
  store volatile ptr %171, ptr %512, align 4
  %514 = load i32, ptr %488, align 4
  %515 = add i32 %514, 1
  store volatile i32 %515, ptr %488, align 4
  %516 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %511, i32 0, i32 58
  %517 = call fastcc zeroext i1 @ieee80211_tx_frags(ptr noundef %105, ptr noundef %516, ptr noundef nonnull %22, ptr noundef %486, i1 noundef zeroext false) #16
  br label %519

518:                                              ; preds = %150, %132, %104
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %6)
  br label %520

519:                                              ; preds = %510, %502, %485, %441, %390, %379, %167
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %6)
  br label %607

520:                                              ; preds = %518, %100, %98
  %521 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %522 = load ptr, ptr %521, align 4
  %523 = getelementptr inbounds %struct.skb_shared_info, ptr %522, i32 0, i32 4
  %524 = load i16, ptr %523, align 4
  %525 = icmp eq i16 %524, 0
  br i1 %525, label %532, label %526

526:                                              ; preds = %520
  %527 = tail call ptr @__skb_gso_segment(ptr noundef %0, i64 noundef 0, i1 noundef zeroext true) #16
  %528 = icmp ugt ptr %527, inttoptr (i32 -4096 to ptr)
  br i1 %528, label %606, label %529

529:                                              ; preds = %526
  %530 = icmp eq ptr %527, null
  br i1 %530, label %563, label %531

531:                                              ; preds = %529
  tail call void @consume_skb(ptr noundef %0) #16
  br label %565

532:                                              ; preds = %520
  %533 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %534 = load i32, ptr %533, align 4
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %539, label %536

536:                                              ; preds = %532
  %537 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %534) #16
  %538 = icmp eq ptr %537, null
  br i1 %538, label %606, label %539

539:                                              ; preds = %536, %532
  %540 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %541 = load i16, ptr %540, align 8
  %542 = and i16 %541, 96
  %543 = icmp eq i16 %542, 96
  br i1 %543, label %544, label %563

544:                                              ; preds = %539
  %545 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %546 = load i16, ptr %545, align 4
  %547 = zext i16 %546 to i32
  %548 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %549 = load ptr, ptr %548, align 4
  %550 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %551 = load ptr, ptr %550, align 8
  %552 = ptrtoint ptr %549 to i32
  %553 = ptrtoint ptr %551 to i32
  %554 = sub i32 %547, %552
  %555 = add i32 %554, %553
  %556 = sub i32 %552, %553
  %557 = trunc i32 %556 to i16
  %558 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %559 = trunc i32 %555 to i16
  %560 = add i16 %557, %559
  store i16 %560, ptr %558, align 2
  %561 = tail call i32 @skb_checksum_help(ptr noundef %0) #16
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %563, label %606

563:                                              ; preds = %544, %539, %529
  %564 = icmp eq ptr %0, null
  br i1 %564, label %607, label %565

565:                                              ; preds = %563, %531
  %566 = phi ptr [ %527, %531 ], [ %0, %563 ]
  %567 = getelementptr i8, ptr %1, i32 2010
  %568 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 110
  br label %569

569:                                              ; preds = %583, %565
  %570 = phi ptr [ %566, %565 ], [ %572, %583 ]
  %571 = phi i32 [ %3, %565 ], [ %578, %583 ]
  %572 = load ptr, ptr %570, align 8
  store ptr null, ptr %570, align 8
  %573 = getelementptr inbounds %struct.sk_buff, ptr %570, i32 0, i32 13, i32 0, i32 16
  %574 = load i16, ptr %573, align 8
  %575 = load i16, ptr %567, align 2
  %576 = icmp eq i16 %574, %575
  %577 = or i32 %571, 32
  %578 = select i1 %576, i32 %577, i32 %571
  %579 = load ptr, ptr %8, align 4
  %580 = tail call fastcc ptr @ieee80211_build_hdr(ptr noundef %9, ptr noundef nonnull %570, i32 noundef %2, ptr noundef %579, i32 noundef %578, ptr noundef %4)
  %581 = icmp ugt ptr %580, inttoptr (i32 -4096 to ptr)
  br i1 %581, label %582, label %583

582:                                              ; preds = %569
  tail call void @kfree_skb_list(ptr noundef %572) #16
  br label %607

583:                                              ; preds = %569
  %584 = getelementptr inbounds %struct.sk_buff, ptr %580, i32 0, i32 5
  %585 = load i32, ptr %584, align 8
  %586 = load ptr, ptr %568, align 8
  %587 = ptrtoint ptr %586 to i32
  %588 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %589 = inttoptr i32 %588 to ptr
  %590 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %589) #15, !srcloc !25
  %591 = add i32 %590, %587
  %592 = inttoptr i32 %591 to ptr
  %593 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %592, i32 0, i32 4
  %594 = load i32, ptr %593, align 4
  %595 = add i32 %594, 1
  store i32 %595, ptr %593, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !26
  %596 = zext i32 %585 to i64
  %597 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %592, i32 0, i32 3
  %598 = load i64, ptr %597, align 8
  %599 = add i64 %598, %596
  store i64 %599, ptr %597, align 8
  %600 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %592, i32 0, i32 2
  %601 = load i64, ptr %600, align 16
  %602 = add i64 %601, 1
  store i64 %602, ptr %600, align 16
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !27
  %603 = load i32, ptr %593, align 4
  %604 = add i32 %603, 1
  store i32 %604, ptr %593, align 4
  tail call void @ieee80211_xmit(ptr noundef %9, ptr noundef %579, ptr noundef %580)
  %605 = icmp eq ptr %572, null
  br i1 %605, label %607, label %569

606:                                              ; preds = %544, %536, %526, %16
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #16
  br label %607

607:                                              ; preds = %606, %583, %582, %563, %519
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %608

608:                                              ; preds = %607, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__ieee80211_select_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_aggr_check(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 58
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %7, align 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq ptr %1, null
  %15 = or i1 %14, %13
  br i1 %15, label %46, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46
  %18 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 3, i32 1
  %19 = load i8, ptr %18, align 2, !range !11
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 10
  %23 = load i8, ptr %22, align 4, !range !11
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 9
  %27 = load i16, ptr %26, align 4
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 16
  %31 = load i16, ptr %30, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 20
  %33 = load i16, ptr %32, align 2
  %34 = icmp eq i16 %31, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 5
  %37 = load i32, ptr %36, align 8
  %38 = trunc i32 %37 to i16
  %39 = and i16 %38, 15
  %40 = zext i16 %39 to i32
  %41 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 38, i32 9, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46, !prof !10

44:                                               ; preds = %35
  %45 = tail call i32 @ieee80211_start_tx_ba_session(ptr noundef %17, i16 noundef zeroext %39, i16 noundef zeroext 0) #16
  br label %46

46:                                               ; preds = %44, %35, %29, %25, %21, %16, %9, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_build_hdr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_hdr, align 2
  store i32 %2, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %8)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(30) %8, i8 0, i32 30, i1 false)
  %11 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %12 = select i1 %11, ptr null, ptr %3
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 12
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i16
  %18 = shl nuw i16 %17, 8
  %19 = getelementptr i8, ptr %14, i32 13
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i16
  %22 = or i16 %18, %21
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %24 = load i32, ptr %23, align 8
  switch i32 %24, label %285 [
    i32 4, label %25
    i32 3, label %56
    i32 2, label %67
    i32 11, label %107
    i32 1, label %115
  ]

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 8
  %27 = load i8, ptr %26, align 8, !range !11
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 49
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 1676
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %285, label %60

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 2
  %37 = getelementptr inbounds %struct.sta_info, ptr %12, i32 0, i32 46, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %36, ptr noundef align 8 dereferenceable(6) %37, i32 6, i1 false)
  %38 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 3
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %38, ptr noundef align 8 dereferenceable(6) %39, i32 6, i1 false)
  %40 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %40, ptr noundef align 1 dereferenceable(6) %14, i32 6, i1 false)
  %41 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 6
  %42 = getelementptr i8, ptr %14, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %41, ptr noundef align 1 dereferenceable(6) %42, i32 6, i1 false)
  %43 = getelementptr inbounds %struct.sta_info, ptr %12, i32 0, i32 23
  %44 = load volatile i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.sta_info, ptr %12, i32 0, i32 46, i32 10
  %46 = load i8, ptr %45, align 4, !range !11
  %47 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 49
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 1676
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %285, label %52

52:                                               ; preds = %35
  %53 = and i32 %44, 8
  %54 = icmp ne i32 %53, 0
  %55 = icmp ne i8 %46, 0
  br label %125

56:                                               ; preds = %6
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %58 = load volatile ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %285, label %60

60:                                               ; preds = %56, %29
  %61 = phi ptr [ %58, %56 ], [ %33, %29 ]
  %62 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %62, ptr noundef align 1 dereferenceable(6) %14, i32 6, i1 false)
  %63 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 3
  %64 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %63, ptr noundef align 8 dereferenceable(6) %64, i32 6, i1 false)
  %65 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 4
  %66 = getelementptr i8, ptr %14, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %65, ptr noundef align 1 dereferenceable(6) %66, i32 6, i1 false)
  br label %125

67:                                               ; preds = %6
  %68 = getelementptr inbounds %struct.sta_info, ptr %12, i32 0, i32 23
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 2048
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %73, ptr noundef align 1 dereferenceable(6) %14, i32 6, i1 false)
  %74 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 3
  %75 = getelementptr i8, ptr %14, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %74, ptr noundef align 1 dereferenceable(6) %75, i32 6, i1 false)
  %76 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 4
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %76, ptr noundef align 4 dereferenceable(6) %77, i32 6, i1 false)
  br label %101

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 23
  %80 = load i8, ptr %79, align 4
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %78
  %83 = tail call i16 @llvm.bswap.i16(i16 %22)
  %84 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 20
  %85 = load i16, ptr %84, align 2
  %86 = icmp eq i16 %83, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 2
  %89 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %88, ptr noundef align 4 dereferenceable(6) %89, i32 6, i1 false)
  %90 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 3
  %91 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %90, ptr noundef align 8 dereferenceable(6) %91, i32 6, i1 false)
  %92 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %92, ptr noundef align 1 dereferenceable(6) %14, i32 6, i1 false)
  %93 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 6
  %94 = getelementptr i8, ptr %14, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %93, ptr noundef align 1 dereferenceable(6) %94, i32 6, i1 false)
  br label %101

95:                                               ; preds = %82, %78
  %96 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 2
  %97 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %96, ptr noundef align 4 dereferenceable(6) %97, i32 6, i1 false)
  %98 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 3
  %99 = getelementptr i8, ptr %14, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %98, ptr noundef align 1 dereferenceable(6) %99, i32 6, i1 false)
  %100 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %100, ptr noundef align 1 dereferenceable(6) %14, i32 6, i1 false)
  br label %101

101:                                              ; preds = %95, %87, %72
  %102 = phi i16 [ 8, %72 ], [ 776, %87 ], [ 264, %95 ]
  %103 = phi i16 [ 24, %72 ], [ 30, %87 ], [ 24, %95 ]
  %104 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %105 = load volatile ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %285, label %125

107:                                              ; preds = %6
  %108 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %108, ptr noundef align 1 dereferenceable(6) %14, i32 6, i1 false)
  %109 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 3
  %110 = getelementptr i8, ptr %14, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %109, ptr noundef align 1 dereferenceable(6) %110, i32 6, i1 false)
  %111 = getelementptr inbounds i8, ptr %8, i32 16
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(6) %111, i8 -1, i32 6, i1 false)
  %112 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %113 = load volatile ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %285, label %125

115:                                              ; preds = %6
  %116 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %116, ptr noundef align 1 dereferenceable(6) %14, i32 6, i1 false)
  %117 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 3
  %118 = getelementptr i8, ptr %14, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %117, ptr noundef align 1 dereferenceable(6) %118, i32 6, i1 false)
  %119 = getelementptr inbounds %struct.ieee80211_hdr, ptr %8, i32 0, i32 4
  %120 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %121 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %120, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %119, ptr noundef align 2 dereferenceable(6) %121, i32 6, i1 false)
  %122 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %123 = load volatile ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %285, label %125

125:                                              ; preds = %115, %107, %101, %60, %52
  %126 = phi ptr [ %61, %60 ], [ %105, %101 ], [ %113, %107 ], [ %123, %115 ], [ %50, %52 ]
  %127 = phi i1 [ false, %60 ], [ false, %101 ], [ false, %107 ], [ false, %115 ], [ %54, %52 ]
  %128 = phi i1 [ false, %60 ], [ false, %101 ], [ false, %107 ], [ false, %115 ], [ %55, %52 ]
  %129 = phi i16 [ 520, %60 ], [ %102, %101 ], [ 8, %107 ], [ 8, %115 ], [ 776, %52 ]
  %130 = phi i16 [ 24, %60 ], [ %103, %101 ], [ 24, %107 ], [ 24, %115 ], [ 30, %52 ]
  %131 = load ptr, ptr %126, align 4
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds i8, ptr %8, i32 4
  %134 = load i32, ptr %133, align 2
  %135 = and i32 %134, 1
  %136 = icmp ne i32 %135, 0
  %137 = icmp eq ptr %12, null
  br i1 %137, label %146, label %138

138:                                              ; preds = %125
  %139 = getelementptr inbounds %struct.sta_info, ptr %12, i32 0, i32 23
  %140 = load volatile i32, ptr %139, align 4
  %141 = and i32 %140, 8
  %142 = icmp ne i32 %141, 0
  %143 = getelementptr inbounds %struct.sta_info, ptr %12, i32 0, i32 46, i32 10
  %144 = load i8, ptr %143, align 4, !range !11
  %145 = icmp ne i8 %144, 0
  br label %146

146:                                              ; preds = %138, %125
  %147 = phi i1 [ %142, %138 ], [ %127, %125 ]
  %148 = phi i1 [ %145, %138 ], [ %128, %125 ]
  %149 = or i16 %129, 128
  %150 = add nuw nsw i16 %130, 2
  %151 = select i1 %148, i16 %149, i16 %129
  %152 = select i1 %148, i16 %150, i16 %130
  %153 = icmp eq i32 %24, 11
  %154 = select i1 %153, i1 true, i1 %136
  %155 = select i1 %154, i1 true, i1 %147
  br i1 %155, label %175, label %156

156:                                              ; preds = %146
  %157 = tail call i16 @llvm.bswap.i16(i16 %22)
  %158 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 20
  %159 = load i16, ptr %158, align 2
  %160 = icmp eq i16 %157, %159
  br i1 %160, label %161, label %285

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  %163 = getelementptr i8, ptr %14, i32 6
  %164 = load i32, ptr %162, align 4
  %165 = load i32, ptr %163, align 4
  %166 = xor i32 %165, %164
  %167 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2, i32 4
  %168 = load i16, ptr %167, align 2
  %169 = getelementptr i8, ptr %14, i32 10
  %170 = load i16, ptr %169, align 2
  %171 = xor i16 %170, %168
  %172 = zext i16 %171 to i32
  %173 = or i32 %166, %172
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %285, !prof !9

175:                                              ; preds = %161, %146
  br i1 %136, label %195, label %176

176:                                              ; preds = %175
  %177 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %190, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.skb_shared_info, ptr %182, i32 0, i32 3
  %184 = load i8, ptr %183, align 1
  %185 = and i8 %184, 16
  %186 = icmp ne i8 %185, 0
  %187 = and i32 %4, 1
  %188 = icmp ne i32 %187, 0
  %189 = or i1 %188, %186
  br i1 %189, label %193, label %195, !prof !24

190:                                              ; preds = %176
  %191 = and i32 %4, 1
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %195, label %193, !prof !9

193:                                              ; preds = %190, %180
  %194 = call fastcc zeroext i16 @ieee80211_store_ack_skb(ptr noundef %10, ptr noundef %1, ptr noundef nonnull %7, ptr noundef %5)
  br label %195

195:                                              ; preds = %193, %190, %180, %175
  %196 = phi i16 [ %194, %193 ], [ 0, %190 ], [ 0, %175 ], [ 0, %180 ]
  %197 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %198 = load volatile i32, ptr %197, align 4
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %206, label %200

200:                                              ; preds = %195
  %201 = icmp eq i16 %196, 0
  br i1 %201, label %203, label %202, !prof !9

202:                                              ; preds = %200
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2825, i32 noundef 9, ptr noundef null) #16
  br label %203

203:                                              ; preds = %202, %200
  %204 = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2592) #16
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #16
  %205 = icmp eq ptr %204, null
  br i1 %205, label %285, label %206

206:                                              ; preds = %203, %195
  %207 = phi ptr [ %204, %203 ], [ %1, %195 ]
  store i16 %151, ptr %8, align 2
  %208 = getelementptr inbounds i8, ptr %8, i32 2
  store i16 0, ptr %208, align 2
  %209 = getelementptr inbounds i8, ptr %8, i32 22
  store i16 0, ptr %209, align 2
  switch i16 %22, label %210 [
    i16 -32457, label %216
    i16 -32525, label %216
  ]

210:                                              ; preds = %206
  %211 = icmp ugt i8 %16, 5
  %212 = select i1 %211, i32 12, i32 14
  %213 = select i1 %211, i32 6, i32 0
  %214 = xor i1 %211, true
  %215 = select i1 %211, ptr @rfc1042_header, ptr null
  br label %216

216:                                              ; preds = %210, %206, %206
  %217 = phi i32 [ 12, %206 ], [ 12, %206 ], [ %212, %210 ]
  %218 = phi i32 [ 6, %206 ], [ 6, %206 ], [ %213, %210 ]
  %219 = phi i1 [ false, %206 ], [ false, %206 ], [ %214, %210 ]
  %220 = phi ptr [ @bridge_tunnel_header, %206 ], [ @bridge_tunnel_header, %206 ], [ %215, %210 ]
  %221 = tail call ptr @skb_pull(ptr noundef %207, i32 noundef %217) #16
  %222 = zext i16 %152 to i32
  %223 = add nuw nsw i32 %218, %222
  %224 = getelementptr inbounds %struct.sk_buff, ptr %207, i32 0, i32 17
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.sk_buff, ptr %207, i32 0, i32 16
  %227 = load ptr, ptr %226, align 8
  %228 = ptrtoint ptr %225 to i32
  %229 = ptrtoint ptr %227 to i32
  %230 = sub i32 %229, %228
  %231 = add i32 %223, %230
  %232 = icmp sgt i32 %231, 0
  br i1 %232, label %245, label %233

233:                                              ; preds = %216
  %234 = getelementptr inbounds %struct.sk_buff, ptr %207, i32 0, i32 11
  %235 = load i8, ptr %234, align 2
  %236 = and i8 %235, 1
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %256, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.sk_buff, ptr %207, i32 0, i32 15
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr inbounds %struct.skb_shared_info, ptr %240, i32 0, i32 10
  %242 = load volatile i32, ptr %241, align 4
  %243 = and i32 %242, 65535
  %244 = icmp eq i32 %243, 1
  br i1 %244, label %256, label %245

245:                                              ; preds = %238, %216
  %246 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 24
  %247 = load i32, ptr %246, align 8
  %248 = add i32 %247, %231
  %249 = getelementptr inbounds %struct.ieee80211_local, ptr %10, i32 0, i32 41
  %250 = load i32, ptr %249, align 8
  %251 = add i32 %248, %250
  %252 = tail call i32 @llvm.smax.i32(i32 %251, i32 0)
  %253 = tail call fastcc i32 @ieee80211_skb_resize(ptr noundef %0, ptr noundef %207, i32 noundef %252, i32 noundef 2)
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %245
  tail call void @ieee80211_free_txskb(ptr noundef %10, ptr noundef %207) #16
  br label %288

256:                                              ; preds = %245, %238, %233
  br i1 %219, label %259, label %257

257:                                              ; preds = %256
  %258 = tail call ptr @skb_push(ptr noundef %207, i32 noundef %218) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %258, ptr align 1 %220, i32 %218, i1 false)
  br label %259

259:                                              ; preds = %257, %256
  %260 = and i16 %151, 140
  %261 = icmp eq i16 %260, 136
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  %263 = tail call ptr @skb_push(ptr noundef %207, i32 noundef 2) #16
  %264 = add nsw i32 %222, -2
  %265 = tail call ptr @skb_push(ptr noundef %207, i32 noundef %264) #16
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %265, ptr nonnull align 2 %8, i32 %264, i1 false)
  store i16 0, ptr %263, align 2
  br label %268

266:                                              ; preds = %259
  %267 = tail call ptr @skb_push(ptr noundef %207, i32 noundef %222) #16
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %267, ptr nonnull align 2 %8, i32 %222, i1 false)
  br label %268

268:                                              ; preds = %266, %262
  %269 = load ptr, ptr %224, align 4
  %270 = load ptr, ptr %226, align 8
  %271 = ptrtoint ptr %269 to i32
  %272 = ptrtoint ptr %270 to i32
  %273 = sub i32 %271, %272
  %274 = trunc i32 %273 to i16
  %275 = getelementptr inbounds %struct.sk_buff, ptr %207, i32 0, i32 13, i32 0, i32 19
  store i16 %274, ptr %275, align 2
  %276 = getelementptr inbounds %struct.sk_buff, ptr %207, i32 0, i32 3
  %277 = getelementptr inbounds %struct.sk_buff, ptr %207, i32 0, i32 3, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(48) %277, i8 0, i32 40, i1 false)
  %278 = load i32, ptr %7, align 4
  store i32 %278, ptr %276, align 8
  %279 = getelementptr inbounds %struct.sk_buff, ptr %207, i32 0, i32 3, i32 4
  %280 = shl i16 %196, 3
  %281 = zext i16 %280 to i32
  %282 = and i32 %132, 7
  %283 = or i32 %282, %281
  store i32 %283, ptr %279, align 4
  %284 = getelementptr inbounds %struct.sk_buff, ptr %207, i32 0, i32 3, i32 32
  store i32 %4, ptr %284, align 8
  br label %288

285:                                              ; preds = %203, %161, %156, %115, %107, %101, %56, %35, %29, %6
  %286 = phi ptr [ inttoptr (i32 -12 to ptr), %203 ], [ inttoptr (i32 -107 to ptr), %29 ], [ inttoptr (i32 -107 to ptr), %56 ], [ inttoptr (i32 -107 to ptr), %101 ], [ inttoptr (i32 -107 to ptr), %107 ], [ inttoptr (i32 -107 to ptr), %115 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -1 to ptr), %161 ], [ inttoptr (i32 -1 to ptr), %156 ], [ inttoptr (i32 -107 to ptr), %35 ]
  %287 = phi ptr [ null, %203 ], [ %1, %29 ], [ %1, %56 ], [ %1, %101 ], [ %1, %107 ], [ %1, %115 ], [ %1, %6 ], [ %1, %161 ], [ %1, %156 ], [ %1, %35 ]
  tail call void @kfree_skb_reason(ptr noundef %287, i32 noundef 0) #16
  br label %288

288:                                              ; preds = %285, %268, %255
  %289 = phi ptr [ %286, %285 ], [ inttoptr (i32 -12 to ptr), %255 ], [ %207, %268 ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %8)
  ret ptr %289
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_subif_start_xmit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.sk_buff_head, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %60, label %9, !prof !9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %1, i32 3672
  %11 = load i32, ptr %10, align 8
  switch i32 %11, label %60 [
    i32 4, label %12
    i32 3, label %20
  ]

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %1, i32 2824
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %1, i32 1472
  %18 = load i8, ptr %17, align 8, !range !11
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %16, %9
  %21 = getelementptr i8, ptr %1, i32 2588
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ieee80211_if_ap, ptr %22, i32 0, i32 8
  %24 = load i8, ptr %23, align 4, !range !11
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %60, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ethhdr, ptr %5, i32 0, i32 2
  %28 = load i16, ptr %27, align 1
  %29 = icmp eq i16 %28, 129
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = icmp ugt i32 %32, 17
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.vlan_ethhdr, ptr %5, i32 0, i32 3
  %36 = load i16, ptr %35, align 2
  br label %37

37:                                               ; preds = %34, %26
  %38 = phi i16 [ %36, %34 ], [ %28, %26 ]
  switch i16 %38, label %60 [
    i16 1544, label %39
    i16 8, label %39
    i16 -8826, label %39
  ]

39:                                               ; preds = %37, %37, %37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %40 = getelementptr inbounds i8, ptr %3, i32 12
  store i32 0, ptr %40, align 4, !annotation !12
  store ptr %3, ptr %3, align 4
  %41 = getelementptr inbounds %struct.anon.70, ptr %3, i32 0, i32 1
  store ptr %3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.sk_buff_head, ptr %3, i32 0, i32 1
  store i32 0, ptr %42, align 4
  call fastcc void @ieee80211_convert_to_unicast(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %43 = load ptr, ptr %3, align 4
  %44 = icmp eq ptr %43, %3
  %45 = icmp eq ptr %43, null
  %46 = or i1 %44, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %47, %39
  %48 = phi ptr [ %55, %47 ], [ %43, %39 ]
  %49 = load i32, ptr %42, align 4
  %50 = add i32 %49, -1
  store volatile i32 %50, ptr %42, align 4
  %51 = load ptr, ptr %48, align 8
  %52 = getelementptr inbounds %struct.anon.42, ptr %48, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  store ptr null, ptr %52, align 4
  store ptr null, ptr %48, align 8
  %54 = getelementptr inbounds %struct.anon.42, ptr %51, i32 0, i32 1
  store volatile ptr %53, ptr %54, align 4
  store volatile ptr %51, ptr %53, align 8
  call void @__ieee80211_subif_start_xmit(ptr noundef nonnull %48, ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %55 = load ptr, ptr %3, align 4
  %56 = icmp eq ptr %55, %3
  %57 = icmp eq ptr %55, null
  %58 = or i1 %56, %57
  br i1 %58, label %59, label %47

59:                                               ; preds = %47, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  br label %61

60:                                               ; preds = %37, %30, %20, %16, %12, %9, %2
  tail call void @__ieee80211_subif_start_xmit(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef null)
  br label %61

61:                                               ; preds = %60, %59
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_convert_to_unicast(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = getelementptr i8, ptr %1, i32 1764
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 49
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %76, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ethhdr, ptr %8, i32 0, i32 1
  %14 = getelementptr %struct.ethhdr, ptr %8, i32 0, i32 1, i32 4
  %15 = getelementptr inbounds %struct.sk_buff_list, ptr %2, i32 0, i32 1
  %16 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 1
  br label %17

17:                                               ; preds = %54, %12
  %18 = phi ptr [ %10, %12 ], [ %56, %54 ]
  %19 = phi ptr [ null, %12 ], [ %55, %54 ]
  %20 = getelementptr inbounds %struct.sta_info, ptr %18, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %4, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.sta_info, ptr %18, i32 0, i32 46, i32 1
  %25 = load i32, ptr %13, align 4
  %26 = load i32, ptr %24, align 4
  %27 = xor i32 %26, %25
  %28 = load i16, ptr %14, align 2
  %29 = getelementptr %struct.sta_info, ptr %18, i32 0, i32 46, i32 1, i32 4
  %30 = load i16, ptr %29, align 2
  %31 = xor i16 %30, %28
  %32 = zext i16 %31 to i32
  %33 = or i32 %27, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %54, label %35, !prof !10

35:                                               ; preds = %23
  %36 = icmp eq ptr %19, null
  br i1 %36, label %54, label %37

37:                                               ; preds = %35
  %38 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %77, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @skb_ensure_writable(ptr noundef nonnull %38, i32 noundef 14) #16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43, !prof !9

43:                                               ; preds = %40
  tail call void @consume_skb(ptr noundef nonnull %38) #16
  br label %77

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 17
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %24, align 4
  store i32 %47, ptr %46, align 4
  %48 = load i16, ptr %29, align 2
  %49 = getelementptr i8, ptr %46, i32 4
  store i16 %48, ptr %49, align 2
  %50 = load ptr, ptr %15, align 4
  store volatile ptr %2, ptr %38, align 8
  %51 = getelementptr inbounds %struct.anon.42, ptr %38, i32 0, i32 1
  store volatile ptr %50, ptr %51, align 4
  store volatile ptr %38, ptr %15, align 4
  store volatile ptr %38, ptr %50, align 4
  %52 = load i32, ptr %16, align 4
  %53 = add i32 %52, 1
  store volatile i32 %53, ptr %16, align 4
  br label %54

54:                                               ; preds = %44, %35, %23, %17
  %55 = phi ptr [ %19, %17 ], [ %19, %23 ], [ %19, %44 ], [ %18, %35 ]
  %56 = load volatile ptr, ptr %18, align 4
  %57 = icmp eq ptr %56, %9
  br i1 %57, label %58, label %17

58:                                               ; preds = %54
  %59 = icmp eq ptr %55, null
  br i1 %59, label %76, label %60, !prof !10

60:                                               ; preds = %58
  %61 = tail call i32 @skb_ensure_writable(ptr noundef %0, i32 noundef 14) #16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %77, !prof !9

63:                                               ; preds = %60
  %64 = load ptr, ptr %7, align 4
  %65 = getelementptr inbounds %struct.sta_info, ptr %55, i32 0, i32 46, i32 1
  %66 = load i32, ptr %65, align 4
  store i32 %66, ptr %64, align 4
  %67 = getelementptr %struct.sta_info, ptr %55, i32 0, i32 46, i32 1, i32 4
  %68 = load i16, ptr %67, align 2
  %69 = getelementptr i8, ptr %64, i32 4
  store i16 %68, ptr %69, align 2
  %70 = getelementptr inbounds %struct.sk_buff_list, ptr %2, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  store volatile ptr %2, ptr %0, align 8
  %72 = getelementptr inbounds %struct.anon.42, ptr %0, i32 0, i32 1
  store volatile ptr %71, ptr %72, align 4
  store volatile ptr %0, ptr %70, align 4
  store volatile ptr %0, ptr %71, align 4
  %73 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, 1
  store volatile i32 %75, ptr %73, align 4
  br label %103

76:                                               ; preds = %58, %3
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #16
  br label %103

77:                                               ; preds = %60, %43, %37
  %78 = load ptr, ptr %2, align 4
  %79 = icmp eq ptr %78, %2
  %80 = icmp eq ptr %78, null
  %81 = or i1 %79, %80
  br i1 %81, label %96, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 1
  br label %84

84:                                               ; preds = %84, %82
  %85 = phi ptr [ %78, %82 ], [ %92, %84 ]
  %86 = load i32, ptr %83, align 4
  %87 = add i32 %86, -1
  store volatile i32 %87, ptr %83, align 4
  %88 = load ptr, ptr %85, align 8
  %89 = getelementptr inbounds %struct.anon.42, ptr %85, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  store ptr null, ptr %89, align 4
  store ptr null, ptr %85, align 8
  %91 = getelementptr inbounds %struct.anon.42, ptr %88, i32 0, i32 1
  store volatile ptr %90, ptr %91, align 4
  store volatile ptr %88, ptr %90, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %85, i32 noundef 0) #16
  %92 = load ptr, ptr %2, align 4
  %93 = icmp eq ptr %92, %2
  %94 = icmp eq ptr %92, null
  %95 = or i1 %93, %94
  br i1 %95, label %96, label %84

96:                                               ; preds = %84, %77
  %97 = getelementptr inbounds %struct.sk_buff_list, ptr %2, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  store volatile ptr %2, ptr %0, align 8
  %99 = getelementptr inbounds %struct.anon.42, ptr %0, i32 0, i32 1
  store volatile ptr %98, ptr %99, align 4
  store volatile ptr %0, ptr %97, align 4
  store volatile ptr %0, ptr %98, align 4
  %100 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %101, 1
  store volatile i32 %102, ptr %100, align 4
  br label %103

103:                                              ; preds = %96, %76, %63
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_subif_start_xmit_8023(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4, !annotation !12
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = icmp ult i32 %8, 14
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %2
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #16
  br label %234

11:                                               ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %12 = call i32 @ieee80211_lookup_ra_sta(ptr noundef %4, ptr noundef %0, ptr noundef nonnull %3)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #16
  br label %233

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 4
  %17 = icmp eq ptr %16, null
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %19 = or i1 %17, %18
  br i1 %19, label %231, label %20, !prof !10

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.sta_info, ptr %16, i32 0, i32 21
  %22 = load i8, ptr %21, align 4, !range !11
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %231, label %24, !prof !10

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.sta_info, ptr %16, i32 0, i32 23
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %231, label %29, !prof !10

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %1, i32 2010
  %31 = load i16, ptr %30, align 2
  %32 = getelementptr inbounds %struct.ethhdr, ptr %6, i32 0, i32 2
  %33 = load i16, ptr %32, align 1
  %34 = icmp eq i16 %31, %33
  br i1 %34, label %231, label %35, !prof !10

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.sta_info, ptr %16, i32 0, i32 9
  %37 = load i8, ptr %36, align 8
  %38 = zext i8 %37 to i32
  %39 = getelementptr %struct.sta_info, ptr %16, i32 0, i32 8, i32 %38
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = getelementptr i8, ptr %1, i32 1992
  %44 = load volatile ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %42, %35
  %47 = phi ptr [ %44, %42 ], [ %40, %35 ]
  %48 = getelementptr inbounds %struct.ieee80211_key, ptr %47, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %231, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.ieee80211_key, ptr %47, i32 0, i32 7, i32 1
  %54 = load i32, ptr %53, align 8
  %55 = icmp eq i32 %54, 1027074
  br i1 %55, label %231, label %56

56:                                               ; preds = %52, %42
  %57 = phi i1 [ false, %52 ], [ true, %42 ]
  %58 = phi ptr [ %47, %52 ], [ null, %42 ]
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %60 = getelementptr i8, ptr %1, i32 1764
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.ieee80211_local, ptr %61, i32 0, i32 8
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.ieee80211_ops, ptr %63, i32 0, i32 89
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %56
  %68 = tail call zeroext i16 @__ieee80211_select_queue(ptr noundef %4, ptr noundef nonnull %16, ptr noundef %0) #16
  %69 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  store i16 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %71 = load i16, ptr %70, align 8
  %72 = and i16 %71, 768
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  tail call void @__skb_get_hash(ptr noundef %0) #16
  br label %75

75:                                               ; preds = %74, %67, %56
  %76 = getelementptr inbounds %struct.ieee80211_local, ptr %61, i32 0, i32 67
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80, !prof !9

80:                                               ; preds = %75
  %81 = getelementptr i8, ptr %1, i32 1772
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %82, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %230

85:                                               ; preds = %80, %75
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(48) %59, i8 0, i32 48, i1 false) #16
  %86 = load ptr, ptr %60, align 4
  %87 = getelementptr inbounds %struct.ieee80211_local, ptr %86, i32 0, i32 58
  %88 = load ptr, ptr %87, align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %124, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr %88, align 4
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, 2
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %124, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.sta_info, ptr %16, i32 0, i32 46
  %97 = getelementptr inbounds %struct.sta_info, ptr %16, i32 0, i32 46, i32 3, i32 1
  %98 = load i8, ptr %97, align 2, !range !11
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %124, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.sta_info, ptr %16, i32 0, i32 46, i32 10
  %102 = load i8, ptr %101, align 4, !range !11
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %124, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %106 = load i16, ptr %105, align 4
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %124, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %110 = load i16, ptr %109, align 8
  %111 = load i16, ptr %30, align 2
  %112 = icmp eq i16 %110, %111
  br i1 %112, label %124, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 5
  %115 = load i32, ptr %114, align 8
  %116 = trunc i32 %115 to i16
  %117 = and i16 %116, 15
  %118 = zext i16 %117 to i32
  %119 = getelementptr %struct.sta_info, ptr %16, i32 0, i32 38, i32 9, i32 %118
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %124, !prof !10

122:                                              ; preds = %113
  %123 = tail call i32 @ieee80211_start_tx_ba_session(ptr noundef %96, i16 noundef zeroext %117, i16 noundef zeroext 0) #16
  br label %124

124:                                              ; preds = %122, %113, %108, %104, %100, %95, %90, %85
  %125 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 5
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, 7
  %128 = getelementptr %struct.sta_info, ptr %16, i32 0, i32 38, i32 9, i32 %127
  %129 = load volatile ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %146, label %131

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %129, i32 0, i32 5
  %133 = load volatile i32, ptr %132, align 4
  %134 = and i32 %133, 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  tail call void @__ieee80211_subif_start_xmit(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  br label %233

137:                                              ; preds = %131
  %138 = load i32, ptr %59, align 8
  %139 = or i32 %138, 64
  store i32 %139, ptr %59, align 8
  %140 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %129, i32 0, i32 7
  %141 = load i16, ptr %140, align 4
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %137
  %144 = load volatile i32, ptr @jiffies, align 64
  %145 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %129, i32 0, i32 6
  store i32 %144, ptr %145, align 4
  br label %146

146:                                              ; preds = %143, %137, %124
  %147 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %165, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.skb_shared_info, ptr %152, i32 0, i32 3
  %154 = load i8, ptr %153, align 1
  %155 = and i8 %154, 16
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %165, label %157, !prof !9

157:                                              ; preds = %150
  %158 = tail call fastcc zeroext i16 @ieee80211_store_ack_skb(ptr noundef %61, ptr noundef %0, ptr noundef %59, ptr noundef null) #16
  %159 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  %160 = load i32, ptr %159, align 4
  %161 = shl i16 %158, 3
  %162 = zext i16 %161 to i32
  %163 = and i32 %160, -65529
  %164 = or i32 %163, %162
  store i32 %164, ptr %159, align 4
  br label %165

165:                                              ; preds = %157, %150, %146
  %166 = getelementptr i8, ptr %1, i32 3672
  %167 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %168 = load i16, ptr %167, align 4
  %169 = zext i16 %168 to i32
  %170 = getelementptr %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 58, i32 7, i32 %169
  %171 = load i8, ptr %170, align 1
  %172 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  %173 = load i32, ptr %172, align 4
  %174 = and i8 %171, 15
  %175 = zext i8 %174 to i32
  %176 = shl nuw nsw i32 %175, 16
  %177 = and i32 %173, -983041
  %178 = or i32 %176, %177
  store i32 %178, ptr %172, align 4
  %179 = load i32, ptr %7, align 8
  %180 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 110
  %181 = load ptr, ptr %180, align 8
  %182 = ptrtoint ptr %181 to i32
  %183 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %184 = inttoptr i32 %183 to ptr
  %185 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %184) #15, !srcloc !25
  %186 = add i32 %185, %182
  %187 = inttoptr i32 %186 to ptr
  %188 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %187, i32 0, i32 4
  %189 = load i32, ptr %188, align 4
  %190 = add i32 %189, 1
  store i32 %190, ptr %188, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !26
  %191 = zext i32 %179 to i64
  %192 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %187, i32 0, i32 3
  %193 = load i64, ptr %192, align 8
  %194 = add i64 %193, %191
  store i64 %194, ptr %192, align 8
  %195 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %187, i32 0, i32 2
  %196 = load i64, ptr %195, align 16
  %197 = add i64 %196, 1
  store i64 %197, ptr %195, align 16
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !27
  %198 = load i32, ptr %188, align 4
  %199 = add i32 %198, 1
  store i32 %199, ptr %188, align 4
  %200 = load i32, ptr %7, align 8
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.sta_info, ptr %16, i32 0, i32 35
  %203 = load i16, ptr %167, align 4
  %204 = zext i16 %203 to i32
  %205 = getelementptr %struct.sta_info, ptr %16, i32 0, i32 35, i32 1, i32 %204
  %206 = load i64, ptr %205, align 8
  %207 = add i64 %206, %201
  store i64 %207, ptr %205, align 8
  %208 = load i16, ptr %167, align 4
  %209 = zext i16 %208 to i32
  %210 = getelementptr [4 x i64], ptr %202, i32 0, i32 %209
  %211 = load i64, ptr %210, align 8
  %212 = add i64 %211, 1
  store i64 %212, ptr %210, align 8
  %213 = load i32, ptr %166, align 8
  %214 = icmp eq i32 %213, 4
  br i1 %214, label %215, label %219

215:                                              ; preds = %165
  %216 = getelementptr i8, ptr %1, i32 2588
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr i8, ptr %217, i32 -1408
  br label %219

219:                                              ; preds = %215, %165
  %220 = phi ptr [ %218, %215 ], [ %4, %165 ]
  %221 = load i32, ptr %59, align 8
  %222 = or i32 %221, 16384
  store i32 %222, ptr %59, align 8
  %223 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %220, i32 0, i32 58
  %224 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store ptr %223, ptr %224, align 8
  br i1 %57, label %228, label %225

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.ieee80211_key, ptr %58, i32 0, i32 7
  %227 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  store ptr %226, ptr %227, align 4
  br label %228

228:                                              ; preds = %225, %219
  %229 = tail call fastcc zeroext i1 @ieee80211_tx_8023(ptr noundef %220, ptr noundef %0, ptr noundef nonnull %16, i1 noundef zeroext false) #16
  br label %233

230:                                              ; preds = %80
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #16
  br label %233

231:                                              ; preds = %52, %46, %29, %24, %20, %15
  %232 = tail call i32 @ieee80211_subif_start_xmit(ptr noundef %0, ptr noundef %1)
  br label %233

233:                                              ; preds = %231, %230, %228, %136, %14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %234

234:                                              ; preds = %233, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_build_data_template(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ieee80211_tx_data, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #16
  %6 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %4, i32 0, i32 2
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  %9 = load ptr, ptr %7, align 4
  store ptr %9, ptr %6, align 4
  %10 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %4, i32 0, i32 3
  store ptr %0, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %11 = call i32 @ieee80211_lookup_ra_sta(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #16
  br label %27

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 4
  %16 = tail call fastcc ptr @ieee80211_build_hdr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %15, i32 noundef 0, ptr noundef null)
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ieee80211_hdr, ptr %20, i32 0, i32 2
  %22 = tail call ptr @sta_info_get(ptr noundef %0, ptr noundef %21) #16
  %23 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %4, i32 0, i32 4
  store ptr %22, ptr %23, align 4
  store ptr %16, ptr %4, align 4
  %24 = call fastcc i32 @ieee80211_tx_h_select_key(ptr noundef nonnull %4)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  tail call void @kfree_skb_reason(ptr noundef %16, i32 noundef 0) #16
  br label %29

27:                                               ; preds = %18, %14, %13
  %28 = phi ptr [ inttoptr (i32 -22 to ptr), %13 ], [ %16, %14 ], [ %16, %18 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi ptr [ %28, %27 ], [ inttoptr (i32 -22 to ptr), %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #16
  ret ptr %30
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_clear_tx_pending(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %14, %1
  %6 = phi i32 [ %15, %14 ], [ 0, %1 ]
  %7 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 53, i32 %6
  %8 = tail call ptr @skb_dequeue(ptr noundef %7) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %12, %10 ], [ %8, %5 ]
  tail call void @ieee80211_free_txskb(ptr noundef %0, ptr noundef nonnull %11) #16
  %12 = tail call ptr @skb_dequeue(ptr noundef %7) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %10

14:                                               ; preds = %10, %5
  %15 = add nuw nsw i32 %6, 1
  %16 = load i16, ptr %2, align 4
  %17 = zext i16 %16 to i32
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %5, label %19

19:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_tx_pending(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.sk_buff_head, align 4
  %4 = getelementptr i8, ptr %0, i32 -1892
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %5 = getelementptr i8, ptr %0, i32 -584
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #16
  %7 = getelementptr i8, ptr %0, i32 -1792
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %112, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -1352
  %12 = getelementptr i8, ptr %0, i32 -256
  %13 = getelementptr inbounds i8, ptr %3, i32 12
  %14 = getelementptr inbounds %struct.anon.70, ptr %3, i32 0, i32 1
  %15 = getelementptr inbounds %struct.sk_buff_head, ptr %3, i32 0, i32 1
  br label %16

16:                                               ; preds = %106, %10
  %17 = phi i32 [ %6, %10 ], [ %107, %106 ]
  %18 = phi i32 [ 0, %10 ], [ %108, %106 ]
  %19 = getelementptr [16 x i32], ptr %11, i32 0, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %106

22:                                               ; preds = %16
  %23 = getelementptr [16 x %struct.sk_buff_head], ptr %12, i32 0, i32 %18
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %106, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sk_buff_head, ptr %23, i32 0, i32 1
  br label %28

28:                                               ; preds = %97, %26
  %29 = phi ptr [ %24, %26 ], [ %99, %97 ]
  %30 = phi i32 [ %17, %26 ], [ %98, %97 ]
  %31 = icmp eq ptr %29, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %27, align 4
  %34 = add i32 %33, -1
  store volatile i32 %34, ptr %27, align 4
  %35 = load ptr, ptr %29, align 8
  %36 = getelementptr inbounds %struct.anon.42, ptr %29, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  store ptr null, ptr %36, align 4
  store ptr null, ptr %29, align 8
  %38 = getelementptr inbounds %struct.anon.42, ptr %35, i32 0, i32 1
  store volatile ptr %37, ptr %38, align 4
  store volatile ptr %35, ptr %37, align 8
  br label %39

39:                                               ; preds = %32, %28
  %40 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 3
  %41 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 3, i32 24
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45, !prof !10

44:                                               ; preds = %39
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4679, i32 noundef 9, ptr noundef null) #16
  call void @ieee80211_free_txskb(ptr noundef %4, ptr noundef %29) #16
  br label %97

45:                                               ; preds = %39
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %30) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store ptr null, ptr %2, align 4, !annotation !12
  %46 = load ptr, ptr %41, align 8
  %47 = getelementptr i8, ptr %46, i32 -2264
  %48 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 3, i32 32
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 64
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %45
  %53 = getelementptr i8, ptr %46, i32 820
  %54 = load volatile ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %87, label %56, !prof !10

56:                                               ; preds = %52
  %57 = load ptr, ptr %54, align 4
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 3, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %58, 7
  %62 = and i32 %60, -8
  %63 = or i32 %62, %61
  store i32 %63, ptr %59, align 4
  %64 = call fastcc zeroext i1 @ieee80211_tx(ptr noundef %47, ptr noundef null, ptr noundef %29, i1 noundef zeroext true) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %65 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #16
  br i1 %64, label %97, label %101

66:                                               ; preds = %45
  %67 = load i32, ptr %40, align 8
  %68 = and i32 %67, 16384
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %89, label %70

70:                                               ; preds = %66
  %71 = call i32 @ieee80211_lookup_ra_sta(ptr noundef %47, ptr noundef %29, ptr noundef nonnull %2) #16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = load ptr, ptr %2, align 4
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = icmp eq ptr %74, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.sta_info, ptr %74, i32 0, i32 21
  %80 = load i8, ptr %79, align 4, !range !11
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %73
  br label %83

83:                                               ; preds = %82, %78, %76
  %84 = phi ptr [ null, %82 ], [ %74, %78 ], [ null, %76 ]
  %85 = call fastcc zeroext i1 @ieee80211_tx_8023(ptr noundef %47, ptr noundef %29, ptr noundef %84, i1 noundef zeroext true) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %86 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #16
  br i1 %85, label %97, label %101

87:                                               ; preds = %70, %52
  call void @consume_skb(ptr noundef %29) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %88 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #16
  br label %97

89:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  store i32 0, ptr %13, align 4, !annotation !12
  store volatile ptr %3, ptr %29, align 8
  %90 = getelementptr inbounds %struct.anon.42, ptr %29, i32 0, i32 1
  store volatile ptr %3, ptr %90, align 4
  store volatile ptr %29, ptr %14, align 4
  store volatile ptr %29, ptr %3, align 4
  store volatile i32 1, ptr %15, align 4
  %91 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 17
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.ieee80211_hdr, ptr %92, i32 0, i32 2
  %94 = call ptr @sta_info_get(ptr noundef %47, ptr noundef %93) #16
  %95 = call fastcc zeroext i1 @__ieee80211_tx(ptr noundef %4, ptr noundef nonnull %3, ptr noundef %94, i1 noundef zeroext true) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %96 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #16
  br i1 %95, label %97, label %101

97:                                               ; preds = %89, %87, %83, %56, %44
  %98 = phi i32 [ %30, %44 ], [ %88, %87 ], [ %96, %89 ], [ %65, %56 ], [ %86, %83 ]
  %99 = load ptr, ptr %23, align 4
  %100 = icmp eq ptr %99, %23
  br i1 %100, label %101, label %28

101:                                              ; preds = %97, %89, %83, %56
  %102 = phi i32 [ %98, %97 ], [ %96, %89 ], [ %65, %56 ], [ %86, %83 ]
  %103 = load ptr, ptr %23, align 4
  %104 = icmp eq ptr %103, %23
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  call void @ieee80211_propagate_queue_wake(ptr noundef %4, i32 noundef %18) #16
  br label %106

106:                                              ; preds = %105, %101, %22, %16
  %107 = phi i32 [ %17, %16 ], [ %17, %22 ], [ %102, %105 ], [ %102, %101 ]
  %108 = add nuw nsw i32 %18, 1
  %109 = load i16, ptr %7, align 4
  %110 = zext i16 %109 to i32
  %111 = icmp ult i32 %108, %110
  br i1 %111, label %16, label %112

112:                                              ; preds = %106, %1
  %113 = phi i32 [ %6, %1 ], [ %107, %106 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %113) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_propagate_queue_wake(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @ieee80211_beacon_update_cntdwn(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %2 = load i32, ptr %0, align 8
  switch i32 %2, label %19 [
    i32 3, label %4
    i32 1, label %3
  ]

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3, %1
  %5 = phi i32 [ -728, %3 ], [ -856, %1 ]
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = load volatile ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.beacon_data, ptr %7, i32 0, i32 6
  %11 = load i8, ptr %10, align 4
  %12 = add i8 %11, -1
  store i8 %12, ptr %10, align 4
  %13 = icmp eq i8 %12, 0
  %14 = load i1, ptr @__ieee80211_beacon_update_cntdwn.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %19, !prof !10

17:                                               ; preds = %9
  store i1 true, ptr @__ieee80211_beacon_update_cntdwn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4850, i32 noundef 9, ptr noundef null) #16
  %18 = load i8, ptr %10, align 4
  br label %19

19:                                               ; preds = %17, %9, %4, %1
  %20 = phi i8 [ 0, %4 ], [ %18, %17 ], [ %12, %9 ], [ 0, %1 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  ret i8 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_beacon_set_cntdwn(ptr noundef %0, i8 noundef zeroext %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %3 = load i32, ptr %0, align 8
  switch i32 %3, label %15 [
    i32 3, label %5
    i32 1, label %4
  ]

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %2
  %6 = phi i32 [ -728, %4 ], [ -856, %2 ]
  %7 = getelementptr i8, ptr %0, i32 %6
  %8 = load volatile ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.beacon_data, ptr %8, i32 0, i32 6
  %12 = load i8, ptr %11, align 4
  %13 = icmp ugt i8 %12, %1
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i8 %1, ptr %11, align 4
  br label %15

15:                                               ; preds = %14, %10, %5, %2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ieee80211_beacon_cntdwn_is_complete(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1900
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %58, label %6

6:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %7 = load i32, ptr %0, align 8
  switch i32 %7, label %33 [
    i32 3, label %8
    i32 1, label %19
    i32 7, label %26
  ]

8:                                                ; preds = %6
  %9 = getelementptr i8, ptr %0, i32 -856
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.beacon_data, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !10

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.beacon_data, ptr %10, i32 0, i32 3
  br label %34

18:                                               ; preds = %12, %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4922, i32 noundef 9, ptr noundef null) #16
  br label %56

19:                                               ; preds = %6
  %20 = getelementptr i8, ptr %0, i32 -728
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %56, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr inbounds %struct.beacon_data, ptr %21, i32 0, i32 2
  br label %34

26:                                               ; preds = %6
  %27 = getelementptr i8, ptr %0, i32 -568
  %28 = load volatile ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %56, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr inbounds %struct.beacon_data, ptr %28, i32 0, i32 2
  br label %34

33:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4945, i32 noundef 9, ptr noundef null) #16
  br label %56

34:                                               ; preds = %30, %23, %16
  %35 = phi ptr [ %17, %16 ], [ %25, %23 ], [ %32, %30 ]
  %36 = phi ptr [ %14, %16 ], [ %24, %23 ], [ %31, %30 ]
  %37 = phi ptr [ %10, %16 ], [ %21, %23 ], [ %28, %30 ]
  %38 = getelementptr inbounds %struct.beacon_data, ptr %37, i32 0, i32 5
  %39 = load i16, ptr %38, align 4
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %34
  %42 = load i32, ptr %35, align 4
  %43 = zext i16 %39 to i32
  %44 = icmp ult i32 %42, %43
  %45 = load i1, ptr @ieee80211_beacon_cntdwn_is_complete.__already_done, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !10

48:                                               ; preds = %41
  store i1 true, ptr @ieee80211_beacon_cntdwn_is_complete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4952, i32 noundef 9, ptr noundef null) #16
  br label %49

49:                                               ; preds = %48, %41
  br i1 %44, label %56, label %50

50:                                               ; preds = %49
  %51 = load i16, ptr %38, align 4
  %52 = zext i16 %51 to i32
  %53 = getelementptr i8, ptr %36, i32 %52
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 1
  br label %56

56:                                               ; preds = %50, %49, %34, %33, %26, %19, %18
  %57 = phi i1 [ false, %49 ], [ false, %34 ], [ false, %18 ], [ false, %33 ], [ %55, %50 ], [ false, %19 ], [ false, %26 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %58

58:                                               ; preds = %56, %1
  %59 = phi i1 [ %57, %56 ], [ false, %1 ]
  ret i1 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_beacon_get_template(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc ptr @__ieee80211_beacon_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true)
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__ieee80211_beacon_get(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.ieee80211_tx_rate_control, align 4
  %6 = alloca %struct.ieee80211_tx_rate_control, align 4
  %7 = alloca %struct.ieee80211_tx_data, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %8 = getelementptr i8, ptr %1, i32 -2264
  %9 = getelementptr i8, ptr %1, i32 820
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %1, i32 -1900
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  %15 = icmp ne ptr %10, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %284

17:                                               ; preds = %4
  %18 = icmp eq ptr %2, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  store i64 0, ptr %2, align 2
  br label %20

20:                                               ; preds = %19, %17
  %21 = load i32, ptr %1, align 8
  switch i32 %21, label %283 [
    i32 3, label %22
    i32 1, label %193
  ]

22:                                               ; preds = %20
  %23 = getelementptr i8, ptr %1, i32 -856
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %284, label %26

26:                                               ; preds = %22
  %27 = getelementptr %struct.beacon_data, ptr %24, i32 0, i32 5
  %28 = load i16, ptr %27, align 4
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %26
  br i1 %3, label %49, label %31

31:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %32 = load i32, ptr %1, align 8
  switch i32 %32, label %48 [
    i32 3, label %34
    i32 1, label %33
  ]

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ -728, %33 ], [ -856, %31 ]
  %36 = getelementptr i8, ptr %1, i32 %35
  %37 = load volatile ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.beacon_data, ptr %37, i32 0, i32 6
  %41 = load i8, ptr %40, align 4
  %42 = add i8 %41, -1
  store i8 %42, ptr %40, align 4
  %43 = icmp eq i8 %42, 0
  %44 = load i1, ptr @__ieee80211_beacon_update_cntdwn.__already_done, align 1
  %45 = xor i1 %44, true
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %48, !prof !10

47:                                               ; preds = %39
  store i1 true, ptr @__ieee80211_beacon_update_cntdwn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4850, i32 noundef 9, ptr noundef null) #16
  br label %48

48:                                               ; preds = %47, %39, %34, %31
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %49

49:                                               ; preds = %48, %30
  tail call fastcc void @ieee80211_set_beacon_cntdwn(ptr noundef %8, ptr noundef nonnull %24) #16
  br label %50

50:                                               ; preds = %49, %26
  %51 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 41
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.beacon_data, ptr %24, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.beacon_data, ptr %24, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 6
  %58 = load i32, ptr %57, align 8
  %59 = add i32 %52, 256
  %60 = add i32 %59, %54
  %61 = add i32 %60, %56
  %62 = add i32 %61, %58
  %63 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %62, i32 noundef 2592) #16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %284, label %65

65:                                               ; preds = %50
  %66 = load i32, ptr %51, align 8
  %67 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 17
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 %66
  store ptr %69, ptr %67, align 4
  %70 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 14
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr i8, ptr %71, i32 %66
  store ptr %72, ptr %70, align 8
  %73 = load ptr, ptr %24, align 4
  %74 = load i32, ptr %53, align 4
  %75 = tail call ptr @skb_put(ptr noundef nonnull %63, i32 noundef %74) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %75, ptr align 1 %73, i32 %74, i1 false) #16
  %76 = getelementptr i8, ptr %1, i32 -828
  %77 = getelementptr i8, ptr %1, i32 -1908
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.ieee80211_local, ptr %78, i32 0, i32 30
  %80 = load i8, ptr %79, align 4, !range !11
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %65
  tail call fastcc void @__ieee80211_beacon_add_tim(ptr noundef %8, ptr noundef %76, ptr noundef nonnull %63, i1 noundef zeroext %3) #16
  br label %85

83:                                               ; preds = %65
  %84 = getelementptr inbounds %struct.ieee80211_local, ptr %78, i32 0, i32 47
  tail call void @_raw_spin_lock_bh(ptr noundef %84) #16
  tail call fastcc void @__ieee80211_beacon_add_tim(ptr noundef %8, ptr noundef %76, ptr noundef nonnull %63, i1 noundef zeroext %3) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %84) #16
  br label %85

85:                                               ; preds = %83, %82
  br i1 %18, label %99, label %86

86:                                               ; preds = %85
  %87 = load i32, ptr %53, align 4
  %88 = trunc i32 %87 to i16
  store i16 %88, ptr %2, align 2
  %89 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 5
  %90 = load i32, ptr %89, align 8
  %91 = load i32, ptr %53, align 4
  %92 = sub i32 %90, %91
  %93 = trunc i32 %92 to i16
  %94 = getelementptr inbounds %struct.ieee80211_mutable_offsets, ptr %2, i32 0, i32 1
  store i16 %93, ptr %94, align 2
  %95 = load i16, ptr %27, align 4
  %96 = getelementptr inbounds %struct.ieee80211_mutable_offsets, ptr %2, i32 0, i32 2
  store i16 %95, ptr %96, align 2
  %97 = load i32, ptr %89, align 8
  %98 = trunc i32 %97 to i16
  br label %99

99:                                               ; preds = %86, %85
  %100 = phi i16 [ %98, %86 ], [ 0, %85 ]
  %101 = getelementptr inbounds %struct.beacon_data, ptr %24, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32, ptr %55, align 4
  %106 = tail call ptr @skb_put(ptr noundef nonnull %63, i32 noundef %105) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %106, ptr nonnull align 1 %102, i32 %105, i1 false) #16
  br label %107

107:                                              ; preds = %104, %99
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %7) #16
  %108 = getelementptr i8, ptr %1, i32 -1668
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %7, i8 0, i64 44, i1 false) #16
  %109 = load volatile ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %7, i32 0, i32 5
  store ptr %109, ptr %110, align 4
  %111 = icmp eq ptr %109, null
  br i1 %111, label %142, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %7, i32 0, i32 2
  store ptr %0, ptr %113, align 4
  %114 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %7, i32 0, i32 3
  store ptr %8, ptr %114, align 4
  %115 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %7, i32 0, i32 1
  %116 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %7, i32 0, i32 1, i32 0, i32 0, i32 1
  %117 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %7, i32 0, i32 1, i32 1
  store volatile ptr %115, ptr %63, align 8
  %118 = getelementptr inbounds %struct.anon.42, ptr %63, i32 0, i32 1
  store volatile ptr %115, ptr %118, align 4
  store volatile ptr %63, ptr %116, align 4
  store volatile ptr %63, ptr %115, align 4
  store volatile i32 1, ptr %117, align 4
  %119 = call fastcc i32 @ieee80211_tx_h_encrypt(ptr noundef nonnull %7) #16
  %120 = load ptr, ptr %115, align 4
  %121 = icmp eq ptr %120, %115
  %122 = select i1 %121, ptr null, ptr %120
  %123 = icmp eq ptr %122, null
  br i1 %123, label %131, label %124

124:                                              ; preds = %112
  %125 = load i32, ptr %117, align 4
  %126 = add i32 %125, -1
  store volatile i32 %126, ptr %117, align 4
  %127 = load ptr, ptr %122, align 8
  %128 = getelementptr inbounds %struct.anon.42, ptr %122, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  store ptr null, ptr %128, align 4
  store ptr null, ptr %122, align 8
  %130 = getelementptr inbounds %struct.anon.42, ptr %127, i32 0, i32 1
  store volatile ptr %129, ptr %130, align 4
  store volatile ptr %127, ptr %129, align 8
  br label %131

131:                                              ; preds = %124, %112
  %132 = icmp eq ptr %122, %63
  br i1 %132, label %134, label %133, !prof !9

133:                                              ; preds = %131
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4984, i32 noundef 9, ptr noundef null) #16
  br label %134

134:                                              ; preds = %133, %131
  %135 = icmp ne i32 %119, 0
  %136 = load i1, ptr @ieee80211_beacon_protect.__already_done, align 1
  %137 = xor i1 %136, true
  %138 = select i1 %135, i1 %137, i1 false
  br i1 %138, label %139, label %140, !prof !10

139:                                              ; preds = %134
  store i1 true, ptr @ieee80211_beacon_protect.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4985, i32 noundef 9, ptr noundef null) #16
  br label %140

140:                                              ; preds = %139, %134
  br i1 %135, label %141, label %142

141:                                              ; preds = %140
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %7) #16
  br label %284

142:                                              ; preds = %140, %107
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #16
  br i1 %18, label %156, label %143

143:                                              ; preds = %142
  %144 = load i16, ptr %27, align 2
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = add i16 %144, %100
  %148 = getelementptr %struct.ieee80211_mutable_offsets, ptr %2, i32 0, i32 2, i32 0
  store i16 %147, ptr %148, align 2
  br label %149

149:                                              ; preds = %146, %143
  %150 = getelementptr %struct.beacon_data, ptr %24, i32 0, i32 5, i32 1
  %151 = load i16, ptr %150, align 2
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = add i16 %151, %100
  %155 = getelementptr %struct.ieee80211_mutable_offsets, ptr %2, i32 0, i32 2, i32 1
  store i16 %154, ptr %155, align 2
  br label %156

156:                                              ; preds = %153, %149, %142
  %157 = load ptr, ptr %10, align 4
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 3
  %160 = load i32, ptr %159, align 8
  %161 = or i32 %160, 65540
  store i32 %161, ptr %159, align 8
  %162 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 3, i32 4
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %158, 7
  %165 = and i32 %163, -8
  %166 = or i32 %165, %164
  store i32 %166, ptr %162, align 4
  %167 = getelementptr inbounds i8, ptr %5, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %167, i8 0, i32 20, i1 false) #16
  store ptr %0, ptr %5, align 4
  %168 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %169 = load ptr, ptr %168, align 8
  %170 = getelementptr %struct.wiphy, ptr %169, i32 0, i32 53, i32 %158
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %5, i32 0, i32 1
  store ptr %171, ptr %172, align 4
  %173 = getelementptr i8, ptr %1, i32 8
  %174 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %5, i32 0, i32 2
  store ptr %173, ptr %174, align 4
  %175 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %5, i32 0, i32 3
  store ptr %63, ptr %175, align 4
  store i8 -1, ptr %167, align 4
  %176 = getelementptr i8, ptr %1, i32 -864
  %177 = load i8, ptr %176, align 8, !range !11
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %156
  %180 = getelementptr %struct.ieee80211_sub_if_data, ptr %8, i32 0, i32 55, i32 %158
  %181 = load i32, ptr %180, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %179, %156
  %184 = getelementptr %struct.ieee80211_sub_if_data, ptr %8, i32 0, i32 50, i32 %158
  %185 = load i32, ptr %184, align 4
  br label %186

186:                                              ; preds = %183, %179
  %187 = phi i32 [ %185, %183 ], [ %181, %179 ]
  %188 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %5, i32 0, i32 7
  store i32 %187, ptr %188, align 4
  %189 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %5, i32 0, i32 9
  store i8 1, ptr %189, align 4
  call void @rate_control_get_rate(ptr noundef %8, ptr noundef null, ptr noundef nonnull %5) #16
  %190 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 3, i32 24
  store ptr %1, ptr %190, align 8
  %191 = load i32, ptr %159, align 8
  %192 = or i32 %191, 26
  store i32 %192, ptr %159, align 8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #16
  br label %284

193:                                              ; preds = %20
  %194 = getelementptr i8, ptr %1, i32 -728
  %195 = load volatile ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %284, label %197

197:                                              ; preds = %193
  %198 = getelementptr %struct.beacon_data, ptr %195, i32 0, i32 5
  %199 = load i16, ptr %198, align 4
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %212, label %201

201:                                              ; preds = %197
  br i1 %3, label %211, label %202

202:                                              ; preds = %201
  %203 = getelementptr inbounds %struct.beacon_data, ptr %195, i32 0, i32 6
  %204 = load i8, ptr %203, align 4
  %205 = add i8 %204, -1
  store i8 %205, ptr %203, align 4
  %206 = icmp eq i8 %205, 0
  %207 = load i1, ptr @__ieee80211_beacon_update_cntdwn.__already_done, align 1
  %208 = xor i1 %207, true
  %209 = select i1 %206, i1 %208, i1 false
  br i1 %209, label %210, label %211, !prof !10

210:                                              ; preds = %202
  store i1 true, ptr @__ieee80211_beacon_update_cntdwn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4850, i32 noundef 9, ptr noundef null) #16
  br label %211

211:                                              ; preds = %210, %202, %201
  tail call fastcc void @ieee80211_set_beacon_cntdwn(ptr noundef %8, ptr noundef nonnull %195)
  br label %212

212:                                              ; preds = %211, %197
  %213 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 41
  %214 = load i32, ptr %213, align 8
  %215 = getelementptr inbounds %struct.beacon_data, ptr %195, i32 0, i32 2
  %216 = load i32, ptr %215, align 4
  %217 = add i32 %216, %214
  %218 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 6
  %219 = load i32, ptr %218, align 8
  %220 = add i32 %217, %219
  %221 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %220, i32 noundef 2592) #16
  %222 = icmp eq ptr %221, null
  br i1 %222, label %284, label %223

223:                                              ; preds = %212
  %224 = load i32, ptr %213, align 8
  %225 = getelementptr inbounds %struct.sk_buff, ptr %221, i32 0, i32 17
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr i8, ptr %226, i32 %224
  store ptr %227, ptr %225, align 4
  %228 = getelementptr inbounds %struct.sk_buff, ptr %221, i32 0, i32 14
  %229 = load ptr, ptr %228, align 8
  %230 = getelementptr i8, ptr %229, i32 %224
  store ptr %230, ptr %228, align 8
  %231 = load ptr, ptr %195, align 4
  %232 = load i32, ptr %215, align 4
  %233 = tail call ptr @skb_put(ptr noundef nonnull %221, i32 noundef %232) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %233, ptr align 1 %231, i32 %232, i1 false) #16
  %234 = load ptr, ptr %225, align 4
  store i16 128, ptr %234, align 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #16
  br i1 %18, label %246, label %235

235:                                              ; preds = %223
  %236 = load i16, ptr %198, align 2
  %237 = icmp eq i16 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %235
  %239 = getelementptr %struct.ieee80211_mutable_offsets, ptr %2, i32 0, i32 2, i32 0
  store i16 %236, ptr %239, align 2
  br label %240

240:                                              ; preds = %238, %235
  %241 = getelementptr %struct.beacon_data, ptr %195, i32 0, i32 5, i32 1
  %242 = load i16, ptr %241, align 2
  %243 = icmp eq i16 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %240
  %245 = getelementptr %struct.ieee80211_mutable_offsets, ptr %2, i32 0, i32 2, i32 1
  store i16 %242, ptr %245, align 2
  br label %246

246:                                              ; preds = %244, %240, %223
  %247 = load ptr, ptr %10, align 4
  %248 = load i32, ptr %247, align 4
  %249 = getelementptr inbounds %struct.sk_buff, ptr %221, i32 0, i32 3
  %250 = load i32, ptr %249, align 8
  %251 = or i32 %250, 65540
  store i32 %251, ptr %249, align 8
  %252 = getelementptr inbounds %struct.sk_buff, ptr %221, i32 0, i32 3, i32 4
  %253 = load i32, ptr %252, align 4
  %254 = and i32 %248, 7
  %255 = and i32 %253, -8
  %256 = or i32 %255, %254
  store i32 %256, ptr %252, align 4
  %257 = getelementptr inbounds i8, ptr %6, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %257, i8 0, i32 20, i1 false) #16
  store ptr %0, ptr %6, align 4
  %258 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %259 = load ptr, ptr %258, align 8
  %260 = getelementptr %struct.wiphy, ptr %259, i32 0, i32 53, i32 %248
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %6, i32 0, i32 1
  store ptr %261, ptr %262, align 4
  %263 = getelementptr i8, ptr %1, i32 8
  %264 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %6, i32 0, i32 2
  store ptr %263, ptr %264, align 4
  %265 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %6, i32 0, i32 3
  store ptr %221, ptr %265, align 4
  store i8 -1, ptr %257, align 4
  %266 = getelementptr i8, ptr %1, i32 -864
  %267 = load i8, ptr %266, align 8, !range !11
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %246
  %270 = getelementptr %struct.ieee80211_sub_if_data, ptr %8, i32 0, i32 55, i32 %248
  %271 = load i32, ptr %270, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %269, %246
  %274 = getelementptr %struct.ieee80211_sub_if_data, ptr %8, i32 0, i32 50, i32 %248
  %275 = load i32, ptr %274, align 4
  br label %276

276:                                              ; preds = %273, %269
  %277 = phi i32 [ %275, %273 ], [ %271, %269 ]
  %278 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %6, i32 0, i32 7
  store i32 %277, ptr %278, align 4
  %279 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %6, i32 0, i32 9
  store i8 1, ptr %279, align 4
  call void @rate_control_get_rate(ptr noundef %8, ptr noundef null, ptr noundef nonnull %6) #16
  %280 = getelementptr inbounds %struct.sk_buff, ptr %221, i32 0, i32 3, i32 24
  store ptr %1, ptr %280, align 8
  %281 = load i32, ptr %249, align 8
  %282 = or i32 %281, 26
  store i32 %282, ptr %249, align 8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #16
  br label %284

283:                                              ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5202, i32 noundef 9, ptr noundef null) #16
  br label %284

284:                                              ; preds = %283, %276, %212, %193, %186, %141, %50, %22, %4
  %285 = phi ptr [ null, %283 ], [ null, %4 ], [ null, %22 ], [ %63, %186 ], [ null, %50 ], [ null, %141 ], [ %221, %276 ], [ null, %193 ], [ null, %212 ]
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  ret ptr %285
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_beacon_get_tim(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) #0 {
  %5 = alloca %struct.ieee80211_mutable_offsets, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8
  %6 = call fastcc ptr @__ieee80211_beacon_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i1 noundef zeroext false)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %55, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %2, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = load i16, ptr %5, align 8
  store i16 %11, ptr %2, align 2
  br label %12

12:                                               ; preds = %10, %8
  %13 = icmp eq ptr %3, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ieee80211_mutable_offsets, ptr %5, i32 0, i32 1
  %16 = load i16, ptr %15, align 2
  store i16 %16, ptr %3, align 2
  br label %17

17:                                               ; preds = %14, %12
  %18 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 14
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %55, label %25

25:                                               ; preds = %21
  %26 = call ptr @skb_copy(ptr noundef nonnull %6, i32 noundef 2592) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %55, label %28

28:                                               ; preds = %25
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %29 = getelementptr %struct.ieee80211_vif, ptr %1, i32 0, i32 9
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %30, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 7
  %36 = zext i1 %35 to i32
  %37 = icmp eq i32 %34, 6
  %38 = select i1 %37, i32 2, i32 %36
  br label %39

39:                                               ; preds = %32, %28
  %40 = phi i32 [ %38, %32 ], [ 0, %28 ]
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %41 = getelementptr i8, ptr %1, i32 -1908
  %42 = load ptr, ptr %41, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %43 = load volatile ptr, ptr %29, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %55

46:                                               ; preds = %39
  %47 = load ptr, ptr %43, align 4
  %48 = load i32, ptr %47, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %49 = getelementptr inbounds %struct.ieee80211_hw, ptr %42, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr %struct.wiphy, ptr %50, i32 0, i32 53, i32 %48
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  call void @ieee80211_tx_monitor(ptr noundef %0, ptr noundef nonnull %26, ptr noundef nonnull %52, i32 noundef 1, i32 noundef %40, i1 noundef zeroext false, ptr noundef null) #16
  br label %55

55:                                               ; preds = %54, %46, %45, %25, %21, %17, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_monitor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_proberesp_get(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %1, align 8
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %23

5:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %6 = getelementptr i8, ptr %1, i32 -852
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.probe_resp, ptr %7, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %11, i32 noundef 2592) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.probe_resp, ptr %7, i32 0, i32 3
  %16 = load i32, ptr %10, align 4
  %17 = tail call ptr @skb_put(ptr noundef nonnull %12, i32 noundef %16) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 1 %15, i32 %16, i1 false) #16
  %18 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ieee80211_hdr, ptr %19, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(6) %20, i8 0, i32 6, i1 false)
  br label %21

21:                                               ; preds = %14, %9, %5
  %22 = phi ptr [ %12, %14 ], [ null, %9 ], [ null, %5 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %23

23:                                               ; preds = %21, %2
  %24 = phi ptr [ %22, %21 ], [ null, %2 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_get_fils_discovery_tmpl(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %1, align 8
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %34

5:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %6 = getelementptr i8, ptr %1, i32 -848
  %7 = load volatile ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %34

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %1, i32 -1908
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.fils_discovery_data, ptr %7, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %17, i32 noundef 2592) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %10
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 %23
  store ptr %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 14
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr i8, ptr %28, i32 %23
  store ptr %29, ptr %27, align 8
  %30 = getelementptr inbounds %struct.fils_discovery_data, ptr %7, i32 0, i32 2
  %31 = load i32, ptr %15, align 4
  %32 = tail call ptr @skb_put(ptr noundef nonnull %18, i32 noundef %31) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr align 1 %30, i32 %31, i1 false) #16
  br label %33

33:                                               ; preds = %20, %10
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %34

34:                                               ; preds = %33, %9, %2
  %35 = phi ptr [ %18, %33 ], [ null, %9 ], [ null, %2 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_get_unsol_bcast_probe_resp_tmpl(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %1, align 8
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %34

5:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %6 = getelementptr i8, ptr %1, i32 -844
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %34

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %1, i32 -1908
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.unsol_bcast_probe_resp_data, ptr %7, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %17, i32 noundef 2592) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %10
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 %23
  store ptr %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 14
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr i8, ptr %28, i32 %23
  store ptr %29, ptr %27, align 8
  %30 = getelementptr inbounds %struct.unsol_bcast_probe_resp_data, ptr %7, i32 0, i32 2
  %31 = load i32, ptr %15, align 4
  %32 = tail call ptr @skb_put(ptr noundef nonnull %18, i32 noundef %31) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr align 1 %30, i32 %31, i1 false) #16
  br label %33

33:                                               ; preds = %20, %10
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %34

34:                                               ; preds = %33, %9, %2
  %35 = phi ptr [ %18, %33 ], [ null, %9 ], [ null, %2 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_pspoll_get(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %1, align 8
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5361, i32 noundef 9, ptr noundef null) #16
  br label %32

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %1, i32 -1908
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 16
  %12 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %11, i32 noundef 2592) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %6
  %15 = load i32, ptr %9, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 %15
  store ptr %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 14
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i32 %15
  store ptr %21, ptr %19, align 8
  %22 = tail call ptr @skb_put(ptr noundef nonnull %12, i32 noundef 16) #16
  %23 = getelementptr inbounds i8, ptr %22, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %23, i8 0, i32 14, i1 false) #16
  store i16 164, ptr %22, align 2
  %24 = getelementptr i8, ptr %1, i32 26
  %25 = load i16, ptr %24, align 2
  %26 = getelementptr inbounds %struct.ieee80211_pspoll, ptr %22, i32 0, i32 1
  %27 = or i16 %25, -16384
  store i16 %27, ptr %26, align 2
  %28 = getelementptr inbounds %struct.ieee80211_pspoll, ptr %22, i32 0, i32 2
  %29 = getelementptr i8, ptr %1, i32 -684
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %28, ptr noundef align 4 dereferenceable(6) %29, i32 6, i1 false)
  %30 = getelementptr inbounds %struct.ieee80211_pspoll, ptr %22, i32 0, i32 3
  %31 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %30, ptr noundef align 8 dereferenceable(6) %31, i32 6, i1 false)
  br label %32

32:                                               ; preds = %14, %6, %5
  %33 = phi ptr [ null, %5 ], [ %12, %14 ], [ null, %6 ]
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_nullfunc_get(ptr nocapture readnone %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = load i32, ptr %1, align 8
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5400, i32 noundef 9, ptr noundef null) #16
  br label %48

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %1, i32 -1908
  %9 = load ptr, ptr %8, align 4
  br i1 %2, label %10, label %21

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %1, i32 -2264
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %12 = getelementptr i8, ptr %1, i32 -684
  %13 = tail call ptr @sta_info_get(ptr noundef %11, ptr noundef %12) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sta_info, ptr %13, i32 0, i32 46, i32 10
  %17 = load i8, ptr %16, align 4, !range !11
  %18 = icmp ne i8 %17, 0
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i1 [ false, %10 ], [ %18, %15 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi i1 [ %20, %19 ], [ false, %7 ]
  %23 = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 26
  %26 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %25, i32 noundef 2592) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %48, label %28

28:                                               ; preds = %21
  %29 = load i32, ptr %23, align 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 %29
  store ptr %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 14
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr i8, ptr %34, i32 %29
  store ptr %35, ptr %33, align 8
  %36 = tail call ptr @skb_put(ptr noundef nonnull %26, i32 noundef 24) #16
  %37 = getelementptr inbounds i8, ptr %36, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(24) %37, i8 0, i32 22, i1 false) #16
  store i16 328, ptr %36, align 2
  br i1 %22, label %38, label %42

38:                                               ; preds = %28
  store i16 456, ptr %36, align 2
  %39 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 13, i32 0, i32 5
  store i32 7, ptr %39, align 8
  %40 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 9
  store i16 0, ptr %40, align 4
  %41 = tail call ptr @skb_put(ptr noundef nonnull %26, i32 noundef 2) #16
  store i16 7, ptr %41, align 1
  br label %42

42:                                               ; preds = %38, %28
  %43 = getelementptr inbounds %struct.ieee80211_hdr_3addr, ptr %36, i32 0, i32 2
  %44 = getelementptr i8, ptr %1, i32 -684
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %43, ptr noundef align 4 dereferenceable(6) %44, i32 6, i1 false)
  %45 = getelementptr inbounds %struct.ieee80211_hdr_3addr, ptr %36, i32 0, i32 3
  %46 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %45, ptr noundef align 8 dereferenceable(6) %46, i32 6, i1 false)
  %47 = getelementptr inbounds %struct.ieee80211_hdr_3addr, ptr %36, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %47, ptr noundef align 4 dereferenceable(6) %44, i32 6, i1 false)
  br label %48

48:                                               ; preds = %42, %21, %6
  %49 = phi ptr [ null, %6 ], [ %26, %42 ], [ null, %21 ]
  ret ptr %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_probereq_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %3, 26
  %9 = add i32 %8, %4
  %10 = add i32 %9, %7
  %11 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %10, i32 noundef 2592) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %5
  %14 = add i32 %3, 2
  %15 = load i32, ptr %6, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 %15
  store ptr %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 14
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i32 %15
  store ptr %21, ptr %19, align 8
  %22 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef 24) #16
  %23 = getelementptr inbounds i8, ptr %22, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(24) %23, i8 0, i32 22, i1 false) #16
  store i16 64, ptr %22, align 2
  %24 = getelementptr inbounds %struct.ieee80211_hdr_3addr, ptr %22, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %24, i8 -1, i32 6, i1 false) #16
  %25 = getelementptr inbounds %struct.ieee80211_hdr_3addr, ptr %22, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %25, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false)
  %26 = getelementptr inbounds %struct.ieee80211_hdr_3addr, ptr %22, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %26, i8 -1, i32 6, i1 false) #16
  %27 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef %14) #16
  %28 = getelementptr i8, ptr %27, i32 1
  store i8 0, ptr %27, align 1
  %29 = trunc i32 %3 to i8
  store i8 %29, ptr %28, align 1
  %30 = icmp eq i32 %3, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %13
  %32 = getelementptr i8, ptr %27, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr align 1 %2, i32 %3, i1 false)
  br label %33

33:                                               ; preds = %31, %13, %5
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_rts_get(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) #0 {
  store i16 180, ptr %5, align 2
  %7 = tail call zeroext i16 @ieee80211_rts_duration(ptr noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef %4) #16
  %8 = getelementptr inbounds %struct.ieee80211_rts, ptr %5, i32 0, i32 1
  store i16 %7, ptr %8, align 2
  %9 = getelementptr inbounds %struct.ieee80211_rts, ptr %5, i32 0, i32 2
  %10 = getelementptr inbounds %struct.ieee80211_hdr, ptr %2, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %9, ptr noundef align 2 dereferenceable(6) %10, i32 6, i1 false)
  %11 = getelementptr inbounds %struct.ieee80211_rts, ptr %5, i32 0, i32 3
  %12 = getelementptr inbounds %struct.ieee80211_hdr, ptr %2, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %11, ptr noundef align 2 dereferenceable(6) %12, i32 6, i1 false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_rts_duration(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_ctstoself_get(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) #0 {
  store i16 196, ptr %5, align 2
  %7 = tail call zeroext i16 @ieee80211_ctstoself_duration(ptr noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef %4) #16
  %8 = getelementptr inbounds %struct.ieee80211_cts, ptr %5, i32 0, i32 1
  store i16 %7, ptr %8, align 2
  %9 = getelementptr inbounds %struct.ieee80211_cts, ptr %5, i32 0, i32 2
  %10 = getelementptr inbounds %struct.ieee80211_hdr, ptr %2, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %9, ptr noundef align 2 dereferenceable(6) %10, i32 6, i1 false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_ctstoself_duration(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_get_buffered_bc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.ieee80211_tx_data, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false), !annotation !12
  %4 = getelementptr i8, ptr %1, i32 -2264
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %5 = getelementptr i8, ptr %1, i32 820
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %77, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 8
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %77

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %1, i32 -856
  %13 = load volatile ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %77, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %77, label %18

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %1, i32 -556
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %77

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %1, i32 -552
  %24 = load i8, ptr %23, align 4, !range !11
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %77, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %1, i32 -576
  %28 = call ptr @skb_dequeue(ptr noundef %27) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %77, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 90
  br label %32

32:                                               ; preds = %60, %30
  %33 = phi ptr [ %28, %30 ], [ %61, %60 ]
  %34 = phi ptr [ %4, %30 ], [ %57, %60 ]
  %35 = load i32, ptr %31, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %31, align 4
  %37 = load ptr, ptr %27, align 4
  %38 = icmp eq ptr %37, %27
  br i1 %38, label %48, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 5
  %41 = load i32, ptr %40, align 8
  %42 = icmp ugt i32 %41, 1
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 17
  %45 = load ptr, ptr %44, align 4
  %46 = load i16, ptr %45, align 2
  %47 = or i16 %46, 8192
  store i16 %47, ptr %45, align 2
  br label %48

48:                                               ; preds = %43, %39, %32
  %49 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %34, i32 0, i32 58
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.anon.42, ptr %33, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr i8, ptr %54, i32 1408
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi ptr [ %55, %52 ], [ %34, %48 ]
  %58 = call fastcc i32 @ieee80211_tx_prepare(ptr noundef %57, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %33)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  call void @ieee80211_free_txskb(ptr noundef %0, ptr noundef nonnull %33) #16
  %61 = call ptr @skb_dequeue(ptr noundef %27) #16
  %62 = icmp eq ptr %61, null
  br i1 %62, label %77, label %32

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %3, i32 0, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = or i32 %65, 4
  store i32 %66, ptr %64, align 4
  %67 = load ptr, ptr %6, align 4
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 3, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %68, 7
  %72 = and i32 %70, -8
  %73 = or i32 %72, %71
  store i32 %73, ptr %69, align 4
  %74 = call fastcc i32 @invoke_tx_handlers(ptr noundef nonnull %3)
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, ptr %33, ptr null
  br label %77

77:                                               ; preds = %63, %60, %26, %22, %18, %15, %11, %8, %2
  %78 = phi ptr [ null, %18 ], [ null, %22 ], [ null, %2 ], [ %76, %63 ], [ null, %8 ], [ null, %11 ], [ null, %15 ], [ null, %26 ], [ null, %60 ]
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #16
  ret ptr %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_reserve_tid(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -1952
  %4 = getelementptr i8, ptr %0, i32 -1908
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 58
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, -2
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5608, i32 noundef 9, ptr noundef null) #16
  br label %47

13:                                               ; preds = %2
  %14 = zext i8 %1 to i32
  %15 = icmp ugt i8 %1, 7
  br i1 %15, label %16, label %17, !prof !10

16:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5612, i32 noundef 9, ptr noundef null) #16
  br label %47

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 -196
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, %1
  br i1 %20, label %47, label %21

21:                                               ; preds = %17
  %22 = icmp eq i8 %19, -1
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 10
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %24) #18
  br label %47

26:                                               ; preds = %21
  tail call void @ieee80211_stop_vif_queues(ptr noundef %7, ptr noundef %5, i32 noundef 9) #16
  tail call void @synchronize_net() #16
  %27 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 4
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 128
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = getelementptr i8, ptr %0, i32 -1796
  tail call void @_set_bit(i32 noundef 8, ptr noundef %32) #16
  %33 = zext i8 %1 to i16
  %34 = tail call i32 @__ieee80211_stop_tx_ba_session(ptr noundef %3, i16 noundef zeroext %33, i32 noundef 1) #16
  br label %35

35:                                               ; preds = %31, %26
  %36 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %14
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 58, i32 7, i32 %37
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl nuw i32 1, %40
  tail call void @__ieee80211_flush_queues(ptr noundef %7, ptr noundef %5, i32 noundef %41, i1 noundef zeroext false) #16
  store i8 %1, ptr %18, align 4
  tail call void @ieee80211_wake_vif_queues(ptr noundef %7, ptr noundef %5, i32 noundef 9) #16
  %42 = load volatile i32, ptr %27, align 4
  %43 = and i32 %42, 128
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %35
  %46 = getelementptr i8, ptr %0, i32 -1796
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %46) #16
  br label %47

47:                                               ; preds = %45, %35, %23, %17, %16, %12
  %48 = phi i32 [ -22, %12 ], [ -22, %16 ], [ -114, %23 ], [ 0, %17 ], [ 0, %45 ], [ 0, %35 ]
  ret i32 %48
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_vif_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ieee80211_stop_tx_ba_session(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_flush_queues(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_vif_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_unreserve_tid(ptr nocapture noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -1908
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 58
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, -2
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5669, i32 noundef 9, ptr noundef null) #16
  br label %19

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %0, i32 -196
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, %1
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = zext i8 %1 to i32
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 10
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %16, i32 noundef %15) #18
  br label %19

18:                                               ; preds = %10
  store i8 -1, ptr %11, align 4
  br label %19

19:                                               ; preds = %18, %14, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = and i32 %2, 7
  %6 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %9 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = trunc i32 %14 to i16
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  store i16 %15, ptr %16, align 2
  %17 = trunc i32 %7 to i16
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 9
  store i16 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 5
  store i32 %2, ptr %19, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.anon.42, ptr %1, i32 0, i32 2
  store ptr %21, ptr %22, align 8
  %23 = tail call ptr @llvm.thread.pointer() #16
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %25 = load volatile i32, ptr %24, align 4
  %26 = add i32 %25, 512
  store volatile i32 %26, ptr %24, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  %27 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %3, 7
  %30 = and i32 %28, -8
  %31 = or i32 %30, %29
  store i32 %31, ptr %27, align 4
  tail call void @ieee80211_xmit(ptr noundef %0, ptr noundef null, ptr noundef %1)
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #11 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_tx_control_port(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i16 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 4
  %10 = getelementptr i8, ptr %1, i32 1408
  %11 = getelementptr i8, ptr %1, i32 1764
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store ptr null, ptr %9, align 4, !annotation !12
  %13 = getelementptr i8, ptr %1, i32 2010
  %14 = load i16, ptr %13, align 2
  %15 = icmp ne i16 %14, %5
  %16 = icmp ne i16 %5, -14456
  %17 = and i1 %16, %15
  br i1 %17, label %76, label %18

18:                                               ; preds = %8
  %19 = icmp eq i16 %14, %5
  %20 = select i1 %19, i32 33, i32 0
  %21 = select i1 %6, i32 2162688, i32 2097152
  %22 = icmp ne ptr %7, null
  %23 = zext i1 %22 to i32
  %24 = or i32 %20, %23
  %25 = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %3, 14
  %28 = add i32 %27, %26
  %29 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %28, i32 noundef 2592) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %76, label %31

31:                                               ; preds = %18
  %32 = load i32, ptr %25, align 4
  %33 = add i32 %32, 14
  %34 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 %33
  store ptr %36, ptr %34, align 4
  %37 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 14
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr i8, ptr %38, i32 %33
  store ptr %39, ptr %37, align 8
  %40 = tail call ptr @skb_put(ptr noundef nonnull %29, i32 noundef %3) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %40, ptr align 1 %2, i32 %3, i1 false) #16
  %41 = tail call ptr @skb_push(ptr noundef nonnull %29, i32 noundef 14) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %41, ptr noundef align 1 dereferenceable(6) %4, i32 6, i1 false)
  %42 = getelementptr inbounds %struct.ethhdr, ptr %41, i32 0, i32 1
  %43 = getelementptr i8, ptr %1, i32 4472
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %42, ptr noundef align 8 dereferenceable(6) %43, i32 6, i1 false)
  %44 = getelementptr inbounds %struct.ethhdr, ptr %41, i32 0, i32 2
  store i16 %5, ptr %44, align 1
  %45 = getelementptr inbounds %struct.anon.42, ptr %29, i32 0, i32 2
  store ptr %1, ptr %45, align 8
  %46 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 13, i32 0, i32 16
  store i16 %5, ptr %46, align 8
  %47 = load ptr, ptr %34, align 4
  %48 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 16
  %49 = load ptr, ptr %48, align 8
  %50 = ptrtoint ptr %47 to i32
  %51 = ptrtoint ptr %49 to i32
  %52 = sub i32 %50, %51
  %53 = trunc i32 %52 to i16
  %54 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 13, i32 0, i32 18
  store i16 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 13, i32 0, i32 19
  store i16 %53, ptr %55, align 2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %56 = call i32 @ieee80211_lookup_ra_sta(ptr noundef %10, ptr noundef nonnull %29, ptr noundef nonnull %9)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %31
  %59 = load ptr, ptr %9, align 4
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = tail call zeroext i16 @__ieee80211_select_queue(ptr noundef %10, ptr noundef %59, ptr noundef nonnull %29) #16
  %63 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 9
  store i16 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 13
  %65 = load i16, ptr %64, align 8
  %66 = and i16 %65, 768
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  tail call void @__skb_get_hash(ptr noundef nonnull %29) #16
  br label %69

69:                                               ; preds = %68, %61, %58, %31
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %70 = getelementptr inbounds %struct.ieee80211_local, ptr %12, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %70) #16
  %71 = tail call ptr @llvm.thread.pointer() #16
  %72 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %73 = load volatile i32, ptr %72, align 4
  %74 = add i32 %73, 512
  store volatile i32 %74, ptr %72, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  %75 = load ptr, ptr %45, align 8
  tail call void @__ieee80211_subif_start_xmit(ptr noundef nonnull %29, ptr noundef %75, i32 noundef %21, i32 noundef %24, ptr noundef %7)
  tail call fastcc void @local_bh_enable()
  tail call void @mutex_unlock(ptr noundef %70) #16
  br label %76

76:                                               ; preds = %69, %18, %8
  %77 = phi i32 [ 0, %69 ], [ -22, %8 ], [ -12, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_probe_mesh_link(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr i8, ptr %1, i32 1764
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %3, 48
  %10 = add i32 %9, %8
  %11 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %10, i32 noundef 2592) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %4
  %14 = load i32, ptr %7, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %14
  store ptr %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 %14
  store ptr %20, ptr %18, align 8
  %21 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef %3) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %21, ptr align 1 %2, i32 %3, i1 false) #16
  %22 = getelementptr inbounds %struct.anon.42, ptr %11, i32 0, i32 2
  store ptr %1, ptr %22, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 13, i32 0, i32 16
  store i16 256, ptr %23, align 8
  %24 = load ptr, ptr %15, align 4
  %25 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 16
  %26 = load ptr, ptr %25, align 8
  %27 = ptrtoint ptr %24 to i32
  %28 = ptrtoint ptr %26 to i32
  %29 = sub i32 %27, %28
  %30 = trunc i32 %29 to i16
  %31 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 13, i32 0, i32 18
  store i16 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 13, i32 0, i32 19
  store i16 %30, ptr %32, align 2
  %33 = tail call ptr @llvm.thread.pointer() #16
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %35 = load volatile i32, ptr %34, align 4
  %36 = add i32 %35, 512
  store volatile i32 %36, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  %37 = load ptr, ptr %22, align 8
  tail call void @__ieee80211_subif_start_xmit(ptr noundef nonnull %11, ptr noundef %37, i32 noundef 0, i32 noundef 32, ptr noundef null)
  tail call fastcc void @local_bh_enable()
  br label %38

38:                                               ; preds = %13, %4
  %39 = phi i32 [ 0, %13 ], [ -12, %4 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fq_flow_filter(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.fq_flow, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %72, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fq_flow, ptr %1, i32 0, i32 2, i32 1
  %9 = getelementptr inbounds %struct.fq_flow, ptr %1, i32 0, i32 3
  %10 = getelementptr inbounds %struct.fq, ptr %0, i32 0, i32 9
  %11 = getelementptr inbounds %struct.fq, ptr %0, i32 0, i32 7
  %12 = ptrtoint ptr %1 to i32
  %13 = getelementptr inbounds %struct.fq, ptr %0, i32 0, i32 1
  %14 = getelementptr i8, ptr %0, i32 -152
  br label %15

15:                                               ; preds = %70, %7
  %16 = phi ptr [ %5, %7 ], [ %17, %70 ]
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 24
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %21, label %70

21:                                               ; preds = %15
  %22 = load i32, ptr %8, align 4
  %23 = add i32 %22, -1
  store volatile i32 %23, ptr %8, align 4
  %24 = load ptr, ptr %16, align 8
  %25 = getelementptr inbounds %struct.anon.42, ptr %16, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  store ptr null, ptr %25, align 4
  store ptr null, ptr %16, align 8
  %27 = getelementptr inbounds %struct.anon.42, ptr %24, i32 0, i32 1
  store volatile ptr %26, ptr %27, align 4
  store volatile ptr %24, ptr %26, align 8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 18
  %31 = load i32, ptr %30, align 8
  %32 = load ptr, ptr %1, align 4
  %33 = getelementptr inbounds %struct.fq_tin, ptr %32, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %34, %29
  store i32 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.fq_tin, ptr %32, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, -1
  store i32 %38, ptr %36, align 4
  %39 = load i32, ptr %9, align 4
  %40 = sub i32 %39, %29
  store i32 %40, ptr %9, align 4
  %41 = load i32, ptr %10, align 4
  %42 = add i32 %41, -1
  store i32 %42, ptr %10, align 4
  %43 = load i32, ptr %11, align 4
  %44 = sub i32 %43, %31
  store i32 %44, ptr %11, align 4
  %45 = load i32, ptr %9, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %21
  %48 = getelementptr inbounds %struct.fq_tin, ptr %32, i32 0, i32 3
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.fq_tin, ptr %32, i32 0, i32 2
  %52 = getelementptr inbounds %struct.fq_tin, ptr %32, i32 0, i32 2, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %51, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %53, ptr %55, align 4
  store volatile ptr %54, ptr %53, align 4
  store volatile ptr %51, ptr %51, align 4
  store ptr %51, ptr %52, align 4
  br label %69

56:                                               ; preds = %47
  %57 = load ptr, ptr %0, align 4
  %58 = ptrtoint ptr %57 to i32
  %59 = sub i32 %12, %58
  %60 = sdiv exact i32 %59, 36
  %61 = load ptr, ptr %13, align 4
  %62 = and i32 %60, 31
  %63 = shl nuw i32 1, %62
  %64 = lshr i32 %60, 5
  %65 = getelementptr i32, ptr %61, i32 %64
  %66 = xor i32 %63, -1
  %67 = load i32, ptr %65, align 4
  %68 = and i32 %67, %66
  store i32 %68, ptr %65, align 4
  br label %69

69:                                               ; preds = %56, %50, %21
  tail call void @ieee80211_free_txskb(ptr noundef %14, ptr noundef %16) #16
  br label %70

70:                                               ; preds = %69, %15
  %71 = icmp eq ptr %17, %4
  br i1 %71, label %72, label %15

72:                                               ; preds = %70, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fq_flow_reset(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = tail call fastcc ptr @fq_flow_dequeue(ptr noundef %0, ptr noundef %1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -152
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %4, %6 ], [ %10, %8 ]
  tail call void @ieee80211_free_txskb(ptr noundef %7, ptr noundef nonnull %9) #16
  %10 = tail call fastcc ptr @fq_flow_dequeue(ptr noundef %0, ptr noundef %1)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.fq_flow, ptr %1, i32 0, i32 1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.fq_flow, ptr %1, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %14, ptr %18, align 4
  store volatile ptr %13, ptr %13, align 4
  store ptr %13, ptr %17, align 4
  %20 = load volatile ptr, ptr %3, align 4
  %21 = icmp eq ptr %20, %3
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.fq_tin, ptr %3, i32 0, i32 1
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.fq_tin, ptr %3, i32 0, i32 2
  %28 = getelementptr inbounds %struct.fq_tin, ptr %3, i32 0, i32 2, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %27, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %29, ptr %31, align 4
  store volatile ptr %30, ptr %29, align 4
  store volatile ptr %27, ptr %27, align 4
  store ptr %27, ptr %28, align 4
  br label %32

32:                                               ; preds = %26, %22, %16, %12
  store ptr null, ptr %1, align 4
  %33 = getelementptr inbounds %struct.fq_flow, ptr %1, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = load i1, ptr @fq_flow_reset.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !10

39:                                               ; preds = %32
  store i1 true, ptr @fq_flow_reset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 304, i32 noundef 9, ptr noundef null) #16
  br label %40

40:                                               ; preds = %39, %32
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @fq_flow_dequeue(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.fq_flow, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  %6 = icmp eq ptr %4, null
  %7 = or i1 %5, %6
  br i1 %7, label %62, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.fq_flow, ptr %1, i32 0, i32 2, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  store volatile i32 %11, ptr %9, align 4
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.anon.42, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr null, ptr %13, align 4
  store ptr null, ptr %4, align 8
  %15 = getelementptr inbounds %struct.anon.42, ptr %12, i32 0, i32 1
  store volatile ptr %14, ptr %15, align 4
  store volatile ptr %12, ptr %14, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %19 = load i32, ptr %18, align 8
  %20 = load ptr, ptr %1, align 4
  %21 = getelementptr inbounds %struct.fq_tin, ptr %20, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %22, %17
  store i32 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.fq_tin, ptr %20, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -1
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.fq_flow, ptr %1, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 %28, %17
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.fq, ptr %0, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.fq, ptr %0, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %34, %19
  store i32 %35, ptr %33, align 4
  %36 = load i32, ptr %27, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %8
  %39 = getelementptr inbounds %struct.fq_tin, ptr %20, i32 0, i32 3
  %40 = icmp eq ptr %39, %1
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.fq_tin, ptr %20, i32 0, i32 2
  %43 = getelementptr inbounds %struct.fq_tin, ptr %20, i32 0, i32 2, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %42, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store volatile ptr %42, ptr %42, align 4
  store ptr %42, ptr %43, align 4
  br label %62

47:                                               ; preds = %38
  %48 = load ptr, ptr %0, align 4
  %49 = ptrtoint ptr %1 to i32
  %50 = ptrtoint ptr %48 to i32
  %51 = sub i32 %49, %50
  %52 = sdiv exact i32 %51, 36
  %53 = getelementptr inbounds %struct.fq, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = and i32 %52, 31
  %56 = shl nuw i32 1, %55
  %57 = lshr i32 %52, 5
  %58 = getelementptr i32, ptr %54, i32 %57
  %59 = xor i32 %56, -1
  %60 = load i32, ptr %58, align 4
  %61 = and i32 %60, %59
  store i32 %61, ptr %58, align 4
  br label %62

62:                                               ; preds = %47, %41, %8, %2
  %63 = phi ptr [ %4, %8 ], [ %4, %41 ], [ %4, %47 ], [ null, %2 ]
  ret ptr %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @invoke_tx_handlers_early(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 4
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %73, label %10

10:                                               ; preds = %1
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 1024
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %73

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %73, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 67
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %73

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 92
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %73, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 34
  %28 = load i8, ptr %27, align 8, !range !11
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %32, i32 0, i32 58
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %73

36:                                               ; preds = %30
  %37 = load i32, ptr %5, align 8
  %38 = and i32 %37, 8192
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %73, !prof !9

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %32, i32 0, i32 57, i32 0, i32 24, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 128
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %32, i32 0, i32 57, i32 0, i32 24, i32 15
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 9
  %52 = load i16, ptr %51, align 4
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %73, label %54

54:                                               ; preds = %50, %45, %40
  %55 = load i32, ptr %3, align 8
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  tail call void @ieee80211_stop_queues_by_reason(ptr noundef %3, i32 noundef 65535, i32 noundef 1, i1 noundef zeroext false) #16
  %59 = load i32, ptr %41, align 4
  %60 = and i32 %59, -257
  store i32 %60, ptr %41, align 4
  %61 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 94
  tail call void @ieee80211_queue_work(ptr noundef %3, ptr noundef %61) #16
  br label %62

62:                                               ; preds = %58, %54
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %32, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 95
  %68 = load volatile i32, ptr @jiffies, align 64
  %69 = load i32, ptr %15, align 8
  %70 = tail call i32 @__msecs_to_jiffies(i32 noundef %69) #16
  %71 = add i32 %70, %68
  %72 = tail call i32 @mod_timer(ptr noundef %67, i32 noundef %71) #16
  br label %73

73:                                               ; preds = %66, %62, %50, %36, %30, %26, %22, %18, %14, %10, %1
  %74 = load ptr, ptr %0, align 4
  %75 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 17
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 3
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 128
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %146, !prof !9

81:                                               ; preds = %73
  %82 = load ptr, ptr %2, align 4
  %83 = getelementptr inbounds %struct.ieee80211_local, ptr %82, i32 0, i32 67
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  %87 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  br i1 %86, label %101, label %89, !prof !9

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %88, i32 0, i32 9
  %91 = load volatile i32, ptr %90, align 4
  %92 = and i32 %91, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %89
  %95 = load i16, ptr %76, align 2
  %96 = and i16 %95, 252
  %97 = icmp eq i16 %96, 64
  %98 = and i16 %95, 124
  %99 = icmp eq i16 %98, 72
  %100 = or i1 %97, %99
  br i1 %100, label %101, label %343

101:                                              ; preds = %94, %89, %81
  %102 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %88, i32 0, i32 58
  %103 = load i32, ptr %102, align 8
  %104 = icmp eq i32 %103, 11
  br i1 %104, label %146, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 7
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %146

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 4
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.sta_info, ptr %112, i32 0, i32 23
  %116 = load volatile i32, ptr %115, align 4
  %117 = and i32 %107, 2
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %129, label %122, !prof !10

119:                                              ; preds = %110
  %120 = and i32 %107, 2
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %129, label %125, !prof !10

122:                                              ; preds = %114
  %123 = and i32 %116, 2
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %146

125:                                              ; preds = %122, %119
  %126 = load i16, ptr %76, align 2
  %127 = and i16 %126, 12
  %128 = icmp eq i16 %127, 8
  br i1 %128, label %343, label %146, !prof !10

129:                                              ; preds = %119, %114
  %130 = load i16, ptr %76, align 2
  %131 = and i16 %130, 12
  %132 = icmp eq i16 %131, 8
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  switch i32 %103, label %146 [
    i32 3, label %134
    i32 4, label %136
  ]

134:                                              ; preds = %133
  %135 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %88, i32 0, i32 57, i32 0, i32 34
  br label %142

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %88, i32 0, i32 57, i32 0, i32 0, i32 1
  %138 = load ptr, ptr %137, align 8
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %88, i32 0, i32 57, i32 0, i32 0, i32 2
  br label %142

142:                                              ; preds = %140, %134
  %143 = phi ptr [ %141, %140 ], [ %135, %134 ]
  %144 = load volatile i32, ptr %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %343, label %146, !prof !10

146:                                              ; preds = %142, %136, %133, %129, %125, %122, %105, %101, %73
  %147 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 7
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %148, 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %318, !prof !9

151:                                              ; preds = %146
  %152 = and i32 %148, 2
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %250, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 4
  %156 = load ptr, ptr %155, align 4
  %157 = load ptr, ptr %2, align 4
  %158 = icmp eq ptr %156, null
  br i1 %158, label %318, label %159, !prof !10

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.sta_info, ptr %156, i32 0, i32 23
  %161 = load volatile i32, ptr %160, align 4
  %162 = and i32 %161, 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %159
  %165 = load volatile i32, ptr %160, align 4
  %166 = and i32 %165, 512
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %164
  %169 = load volatile i32, ptr %160, align 4
  %170 = and i32 %169, 33554432
  %171 = icmp ne i32 %170, 0
  %172 = and i32 %78, 131072
  %173 = icmp eq i32 %172, 0
  %174 = select i1 %171, i1 %173, i1 false
  br i1 %174, label %178, label %248, !prof !34

175:                                              ; preds = %164, %159
  %176 = and i32 %78, 131072
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %248, !prof !10

178:                                              ; preds = %175, %168
  %179 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 9
  %180 = load i16, ptr %179, align 4
  %181 = zext i16 %180 to i32
  %182 = load i16, ptr %76, align 2
  %183 = and i16 %182, 12
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %178
  %186 = trunc i16 %182 to i8
  %187 = and i8 %186, -4
  switch i8 %187, label %188 [
    i8 -48, label %190
    i8 -96, label %190
    i8 -64, label %190
  ]

188:                                              ; preds = %185
  %189 = or i32 %78, 131072
  store i32 %189, ptr %77, align 8
  br label %318

190:                                              ; preds = %185, %185, %185, %178
  %191 = getelementptr inbounds %struct.ieee80211_local, ptr %157, i32 0, i32 90
  %192 = load i32, ptr %191, align 4
  %193 = icmp sgt i32 %192, 511
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  tail call fastcc void @purge_old_ps_buffers(ptr noundef %157) #16
  br label %195

195:                                              ; preds = %194, %190
  %196 = getelementptr inbounds %struct.sta_info, ptr %156, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %196) #16
  %197 = load volatile i32, ptr %160, align 4
  %198 = and i32 %197, 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %211

200:                                              ; preds = %195
  %201 = load volatile i32, ptr %160, align 4
  %202 = and i32 %201, 512
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %200
  %205 = load volatile i32, ptr %160, align 4
  %206 = and i32 %205, 33554432
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  %209 = load i16, ptr %196, align 4
  %210 = add i16 %209, 1
  store i16 %210, ptr %196, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br label %318

211:                                              ; preds = %204, %200, %195
  %212 = getelementptr %struct.sta_info, ptr %156, i32 0, i32 25, i32 %181
  %213 = getelementptr %struct.sta_info, ptr %156, i32 0, i32 25, i32 %181, i32 1
  %214 = load i32, ptr %213, align 4
  %215 = icmp ugt i32 %214, 63
  br i1 %215, label %216, label %218

216:                                              ; preds = %211
  %217 = tail call ptr @skb_dequeue(ptr noundef %212) #16
  tail call void @ieee80211_free_txskb(ptr noundef %157, ptr noundef %217) #16
  br label %223

218:                                              ; preds = %211
  %219 = load ptr, ptr %2, align 4
  %220 = getelementptr inbounds %struct.ieee80211_local, ptr %219, i32 0, i32 90
  %221 = load i32, ptr %220, align 4
  %222 = add i32 %221, 1
  store i32 %222, ptr %220, align 4
  br label %223

223:                                              ; preds = %218, %216
  %224 = load volatile i32, ptr @jiffies, align 64
  %225 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 3, i32 8
  store i32 %224, ptr %225, align 8
  %226 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 3
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %227, i32 0, i32 58
  %229 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 3, i32 24
  store ptr %228, ptr %229, align 8
  %230 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 3, i32 32
  %231 = load i32, ptr %230, align 8
  %232 = or i32 %231, 64
  store i32 %232, ptr %230, align 8
  %233 = load i32, ptr %77, align 8
  %234 = and i32 %233, -298196861
  store i32 %234, ptr %77, align 8
  %235 = load ptr, ptr %0, align 4
  tail call void @skb_queue_tail(ptr noundef %212, ptr noundef %235) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  %236 = load i16, ptr %196, align 4
  %237 = add i16 %236, 1
  store i16 %237, ptr %196, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  %238 = getelementptr inbounds %struct.ieee80211_local, ptr %157, i32 0, i32 51, i32 0, i32 1
  %239 = load volatile ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %247

241:                                              ; preds = %223
  %242 = getelementptr inbounds %struct.ieee80211_local, ptr %157, i32 0, i32 51
  %243 = load volatile i32, ptr @jiffies, align 64
  %244 = add i32 %243, 1000
  %245 = tail call i32 @round_jiffies(i32 noundef %244) #16
  %246 = tail call i32 @mod_timer(ptr noundef %242, i32 noundef %245) #16
  br label %247

247:                                              ; preds = %241, %223
  tail call void @sta_info_recalc_tim(ptr noundef nonnull %156) #16
  br label %351

248:                                              ; preds = %175, %168
  %249 = load volatile i32, ptr %160, align 4
  br label %318

250:                                              ; preds = %151
  %251 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 3
  %252 = load ptr, ptr %251, align 4
  %253 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %252, i32 0, i32 58
  %254 = load i32, ptr %253, align 8
  %255 = add i32 %254, -3
  %256 = icmp ult i32 %255, 2
  br i1 %256, label %257, label %318

257:                                              ; preds = %250
  %258 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %252, i32 0, i32 49
  %259 = load ptr, ptr %258, align 4
  %260 = icmp eq ptr %259, null
  br i1 %260, label %318, label %261

261:                                              ; preds = %257
  %262 = load i16, ptr %76, align 2
  %263 = icmp slt i16 %262, 0
  %264 = and i16 %262, 252
  %265 = icmp eq i16 %264, 64
  %266 = or i1 %263, %265
  br i1 %266, label %318, label %267

267:                                              ; preds = %261
  %268 = load ptr, ptr %2, align 4
  %269 = getelementptr inbounds %struct.ieee80211_hw, ptr %268, i32 0, i32 4
  %270 = load volatile i32, ptr %269, align 4
  %271 = and i32 %270, 262144
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %283, label %273

273:                                              ; preds = %267
  %274 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %252, i32 0, i32 58, i32 6
  %275 = load i8, ptr %274, align 1
  %276 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 3, i32 4
  %277 = load i32, ptr %276, align 4
  %278 = and i8 %275, 15
  %279 = zext i8 %278 to i32
  %280 = shl nuw nsw i32 %279, 16
  %281 = and i32 %277, -983041
  %282 = or i32 %280, %281
  store i32 %282, ptr %276, align 4
  br label %283

283:                                              ; preds = %273, %267
  %284 = getelementptr inbounds %struct.ieee80211_if_ap, ptr %259, i32 0, i32 6, i32 2
  %285 = load volatile i32, ptr %284, align 4
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.ieee80211_if_ap, ptr %259, i32 0, i32 6, i32 1
  %289 = load ptr, ptr %288, align 4
  %290 = icmp eq ptr %289, %288
  br i1 %290, label %318, label %291

291:                                              ; preds = %287, %283
  %292 = or i32 %78, 32
  store i32 %292, ptr %77, align 8
  %293 = load ptr, ptr %2, align 4
  %294 = getelementptr inbounds %struct.ieee80211_hw, ptr %293, i32 0, i32 4
  %295 = load volatile i32, ptr %294, align 4
  %296 = and i32 %295, 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %318, label %298

298:                                              ; preds = %291
  %299 = getelementptr inbounds %struct.ieee80211_local, ptr %293, i32 0, i32 90
  %300 = load i32, ptr %299, align 4
  %301 = icmp sgt i32 %300, 511
  br i1 %301, label %302, label %304

302:                                              ; preds = %298
  tail call fastcc void @purge_old_ps_buffers(ptr noundef %293) #16
  %303 = load ptr, ptr %2, align 4
  br label %304

304:                                              ; preds = %302, %298
  %305 = phi ptr [ %303, %302 ], [ %293, %298 ]
  %306 = getelementptr inbounds %struct.ieee80211_if_ap, ptr %259, i32 0, i32 6, i32 1
  %307 = getelementptr inbounds %struct.ieee80211_if_ap, ptr %259, i32 0, i32 6, i32 1, i32 1
  %308 = load i32, ptr %307, align 4
  %309 = icmp ugt i32 %308, 127
  br i1 %309, label %310, label %312

310:                                              ; preds = %304
  %311 = tail call ptr @skb_dequeue(ptr noundef %306) #16
  tail call void @ieee80211_free_txskb(ptr noundef %305, ptr noundef %311) #16
  br label %316

312:                                              ; preds = %304
  %313 = getelementptr inbounds %struct.ieee80211_local, ptr %305, i32 0, i32 90
  %314 = load i32, ptr %313, align 4
  %315 = add i32 %314, 1
  store i32 %315, ptr %313, align 4
  br label %316

316:                                              ; preds = %312, %310
  %317 = load ptr, ptr %0, align 4
  tail call void @skb_queue_tail(ptr noundef %306, ptr noundef %317) #16
  br label %351

318:                                              ; preds = %291, %287, %261, %257, %250, %248, %208, %188, %154, %146
  %319 = load ptr, ptr %0, align 4
  %320 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 3
  %321 = load ptr, ptr %320, align 4
  %322 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %321, i32 0, i32 20
  %323 = load i16, ptr %322, align 2
  %324 = getelementptr inbounds %struct.sk_buff, ptr %319, i32 0, i32 13, i32 0, i32 16
  %325 = load i16, ptr %324, align 8
  %326 = icmp eq i16 %323, %325
  br i1 %326, label %327, label %339, !prof !10

327:                                              ; preds = %318
  %328 = getelementptr inbounds %struct.sk_buff, ptr %319, i32 0, i32 3
  %329 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %321, i32 0, i32 21
  %330 = load i8, ptr %329, align 4, !range !11
  %331 = icmp eq i8 %330, 0
  %332 = load i32, ptr %328, align 8
  %333 = or i32 %332, 65536
  %334 = select i1 %331, i32 %332, i32 %333
  %335 = getelementptr inbounds %struct.sk_buff, ptr %319, i32 0, i32 3, i32 32
  %336 = load i32, ptr %335, align 8
  %337 = or i32 %336, 1
  store i32 %337, ptr %335, align 8
  %338 = or i32 %334, 536870912
  store i32 %338, ptr %328, align 8
  br label %339

339:                                              ; preds = %327, %318
  %340 = tail call fastcc i32 @ieee80211_tx_h_select_key(ptr noundef %0)
  switch i32 %340, label %350 [
    i32 1, label %341
    i32 2, label %351
  ], !prof !18

341:                                              ; preds = %339
  %342 = load ptr, ptr %0, align 4
  br label %343

343:                                              ; preds = %341, %142, %125, %94
  %344 = phi ptr [ %342, %341 ], [ %74, %94 ], [ %74, %142 ], [ %74, %125 ]
  %345 = icmp eq ptr %344, null
  %346 = load ptr, ptr %2, align 4
  br i1 %345, label %348, label %347

347:                                              ; preds = %343
  tail call void @ieee80211_free_txskb(ptr noundef %346, ptr noundef nonnull %344) #16
  br label %351

348:                                              ; preds = %343
  %349 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1
  tail call void @ieee80211_purge_tx_queue(ptr noundef %346, ptr noundef %349) #16
  br label %351

350:                                              ; preds = %339
  br label %351

351:                                              ; preds = %350, %348, %347, %339, %316, %247
  %352 = phi i32 [ 0, %350 ], [ -1, %348 ], [ -1, %347 ], [ -1, %339 ], [ -1, %247 ], [ -1, %316 ]
  ret i32 %352
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues_by_reason(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @purge_old_ps_buffers(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %3 = load volatile ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %24, label %5

5:                                                ; preds = %20, %1
  %6 = phi ptr [ %22, %20 ], [ %3, %1 ]
  %7 = phi i32 [ %21, %20 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 58
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 57, i32 0, i32 27
  %13 = tail call ptr @skb_dequeue(ptr noundef %12) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @ieee80211_free_txskb(ptr noundef %0, ptr noundef nonnull %13) #16
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 57, i32 0, i32 29
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %7
  br label %20

20:                                               ; preds = %16, %5
  %21 = phi i32 [ %19, %16 ], [ %7, %5 ]
  %22 = load volatile ptr, ptr %6, align 8
  %23 = icmp eq ptr %22, %2
  br i1 %23, label %24, label %5

24:                                               ; preds = %20, %1
  %25 = phi i32 [ 0, %1 ], [ %21, %20 ]
  %26 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 49
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %66, label %29

29:                                               ; preds = %62, %24
  %30 = phi ptr [ %64, %62 ], [ %27, %24 ]
  %31 = phi i32 [ %63, %62 ], [ %25, %24 ]
  %32 = getelementptr %struct.sta_info, ptr %30, i32 0, i32 25, i32 3
  %33 = tail call ptr @skb_dequeue(ptr noundef %32) #16
  %34 = getelementptr %struct.sta_info, ptr %30, i32 0, i32 25, i32 3, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %31
  %37 = icmp eq ptr %33, null
  br i1 %37, label %38, label %59

38:                                               ; preds = %29
  %39 = getelementptr %struct.sta_info, ptr %30, i32 0, i32 25, i32 2
  %40 = tail call ptr @skb_dequeue(ptr noundef %39) #16
  %41 = getelementptr %struct.sta_info, ptr %30, i32 0, i32 25, i32 2, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %36
  %44 = icmp eq ptr %40, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = getelementptr %struct.sta_info, ptr %30, i32 0, i32 25, i32 1
  %47 = tail call ptr @skb_dequeue(ptr noundef %46) #16
  %48 = getelementptr %struct.sta_info, ptr %30, i32 0, i32 25, i32 1, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, %43
  %51 = icmp eq ptr %47, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = getelementptr %struct.sta_info, ptr %30, i32 0, i32 25, i32 0
  %54 = tail call ptr @skb_dequeue(ptr noundef %53) #16
  %55 = getelementptr %struct.sta_info, ptr %30, i32 0, i32 25, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %50
  %58 = icmp eq ptr %54, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %52, %45, %38, %29
  %60 = phi ptr [ %33, %29 ], [ %40, %38 ], [ %47, %45 ], [ %54, %52 ]
  %61 = phi i32 [ %36, %29 ], [ %43, %38 ], [ %50, %45 ], [ %57, %52 ]
  tail call void @ieee80211_free_txskb(ptr noundef %0, ptr noundef nonnull %60) #16
  br label %62

62:                                               ; preds = %59, %52
  %63 = phi i32 [ %61, %59 ], [ %57, %52 ]
  %64 = load volatile ptr, ptr %30, align 4
  %65 = icmp eq ptr %64, %26
  br i1 %65, label %66, label %29

66:                                               ; preds = %62, %24
  %67 = phi i32 [ %25, %24 ], [ %63, %62 ]
  %68 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 90
  store i32 %67, ptr %68, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sta_info_recalc_tim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_queue_skb(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_ops, ptr %6, i32 0, i32 89
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %396, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %12 = load i32, ptr %11, align 8
  switch i32 %12, label %17 [
    i32 6, label %396
    i32 4, label %13
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 49
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 -1408
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi ptr [ %16, %13 ], [ %1, %10 ]
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %18, i32 0, i32 58
  %20 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %396

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 32
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %396

31:                                               ; preds = %26
  %32 = and i32 %23, 16384
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  %35 = load i16, ptr %21, align 2
  %36 = and i16 %35, 76
  %37 = icmp eq i16 %36, 8
  br i1 %37, label %57, label %38, !prof !9

38:                                               ; preds = %34
  %39 = and i16 %35, 12
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = trunc i16 %35 to i8
  %43 = and i8 %42, -4
  switch i8 %43, label %44 [
    i8 -48, label %49
    i8 -96, label %49
    i8 -64, label %49
  ]

44:                                               ; preds = %41
  %45 = load i32, ptr %19, align 8
  %46 = icmp eq i32 %45, 2
  %47 = icmp ne ptr %2, null
  %48 = and i1 %47, %46
  br i1 %48, label %51, label %396

49:                                               ; preds = %41, %41, %41, %38
  %50 = icmp eq ptr %2, null
  br i1 %50, label %396, label %51

51:                                               ; preds = %49, %44
  %52 = getelementptr inbounds %struct.sta_info, ptr %2, i32 0, i32 21
  %53 = load i8, ptr %52, align 4, !range !11
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %396, label %55

55:                                               ; preds = %51
  %56 = getelementptr %struct.sta_info, ptr %2, i32 0, i32 46, i32 28, i32 16
  br label %72

57:                                               ; preds = %34, %31
  %58 = icmp eq ptr %2, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.sta_info, ptr %2, i32 0, i32 21
  %61 = load i8, ptr %60, align 4, !range !11
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %396, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 5
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 15
  %67 = getelementptr %struct.sta_info, ptr %2, i32 0, i32 46, i32 28, i32 %66
  br label %72

68:                                               ; preds = %57
  %69 = icmp eq ptr %19, null
  br i1 %69, label %396, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %18, i32 0, i32 58, i32 8
  br label %72

72:                                               ; preds = %70, %63, %55
  %73 = phi ptr [ %67, %63 ], [ %71, %70 ], [ %56, %55 ]
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  %76 = getelementptr i8, ptr %74, i32 -164
  %77 = icmp eq ptr %76, null
  %78 = or i1 %75, %77
  br i1 %78, label %396, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1
  %81 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13
  %82 = load i16, ptr %81, align 8
  %83 = and i16 %82, 768
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  tail call void @__skb_get_hash(ptr noundef %3) #16
  br label %86

86:                                               ; preds = %85, %79
  %87 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 7
  %88 = load i32, ptr %87, align 8
  %89 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = zext i32 %88 to i64
  %92 = zext i32 %90 to i64
  %93 = mul nuw i64 %92, %91
  %94 = lshr i64 %93, 32
  %95 = trunc i64 %94 to i32
  %96 = tail call i64 @ktime_get() #16
  %97 = lshr i64 %96, 10
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 36
  store i32 %98, ptr %99, align 4
  %100 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %100) #16
  %101 = getelementptr i8, ptr %74, i32 8
  %102 = load i8, ptr %101, align 4
  %103 = icmp eq i8 %102, 16
  br i1 %103, label %104, label %114, !prof !10

104:                                              ; preds = %86
  %105 = load i32, ptr %27, align 8
  %106 = or i32 %105, 64
  store i32 %106, ptr %27, align 8
  %107 = getelementptr i8, ptr %74, i32 -20
  %108 = getelementptr i8, ptr %74, i32 -16
  %109 = load ptr, ptr %108, align 4
  store volatile ptr %107, ptr %3, align 8
  %110 = getelementptr inbounds %struct.anon.42, ptr %3, i32 0, i32 1
  store volatile ptr %109, ptr %110, align 4
  store volatile ptr %3, ptr %108, align 4
  store volatile ptr %3, ptr %109, align 4
  %111 = getelementptr i8, ptr %74, i32 -12
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, 1
  store volatile i32 %113, ptr %111, align 4
  br label %353

114:                                              ; preds = %86
  %115 = load ptr, ptr %80, align 4
  %116 = getelementptr %struct.fq_flow, ptr %115, i32 %95
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  %119 = icmp eq ptr %117, %76
  %120 = or i1 %118, %119
  br i1 %120, label %130, label %121

121:                                              ; preds = %114
  %122 = getelementptr i8, ptr %74, i32 -140
  %123 = getelementptr i8, ptr %74, i32 -92
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 4
  %126 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 12
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, 1
  store i32 %128, ptr %126, align 4
  %129 = load ptr, ptr %122, align 4
  br label %130

130:                                              ; preds = %121, %114
  %131 = phi ptr [ %129, %121 ], [ %117, %114 ]
  %132 = phi ptr [ %122, %121 ], [ %116, %114 ]
  %133 = icmp eq ptr %131, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = getelementptr i8, ptr %74, i32 -88
  %136 = load i32, ptr %135, align 4
  %137 = add i32 %136, 1
  store i32 %137, ptr %135, align 4
  br label %138

138:                                              ; preds = %134, %130
  %139 = getelementptr inbounds %struct.fq_flow, ptr %132, i32 0, i32 3
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %163

142:                                              ; preds = %138
  %143 = getelementptr i8, ptr %74, i32 -140
  %144 = icmp eq ptr %132, %143
  br i1 %144, label %154, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = and i32 %95, 31
  %149 = shl nuw i32 1, %148
  %150 = lshr i32 %95, 5
  %151 = getelementptr i32, ptr %147, i32 %150
  %152 = load i32, ptr %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, ptr %151, align 4
  br label %163

154:                                              ; preds = %142
  %155 = getelementptr i8, ptr %74, i32 -148
  %156 = load volatile ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, %155
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 2
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.list_head, ptr %160, i32 0, i32 1
  store ptr %155, ptr %161, align 4
  store ptr %160, ptr %155, align 4
  %162 = getelementptr i8, ptr %74, i32 -144
  store ptr %159, ptr %162, align 4
  store volatile ptr %155, ptr %159, align 4
  br label %163

163:                                              ; preds = %158, %154, %145, %138
  store ptr %76, ptr %132, align 4
  %164 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %165 = load i32, ptr %164, align 8
  %166 = load i32, ptr %139, align 4
  %167 = add i32 %166, %165
  store i32 %167, ptr %139, align 4
  %168 = load i32, ptr %164, align 8
  %169 = getelementptr i8, ptr %74, i32 -104
  %170 = load i32, ptr %169, align 4
  %171 = add i32 %170, %168
  store i32 %171, ptr %169, align 4
  %172 = getelementptr i8, ptr %74, i32 -100
  %173 = load i32, ptr %172, align 4
  %174 = add i32 %173, 1
  store i32 %174, ptr %172, align 4
  %175 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 18
  %176 = load i32, ptr %175, align 8
  %177 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 7
  %178 = load i32, ptr %177, align 4
  %179 = add i32 %178, %176
  store i32 %179, ptr %177, align 4
  %180 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 9
  %181 = load i32, ptr %180, align 4
  %182 = add i32 %181, 1
  store i32 %182, ptr %180, align 4
  %183 = getelementptr inbounds %struct.fq_flow, ptr %132, i32 0, i32 1
  %184 = load volatile ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, %183
  br i1 %185, label %186, label %193

186:                                              ; preds = %163
  %187 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 8
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr inbounds %struct.fq_flow, ptr %132, i32 0, i32 4
  store i32 %188, ptr %189, align 4
  %190 = getelementptr i8, ptr %74, i32 -160
  %191 = load ptr, ptr %190, align 4
  store ptr %183, ptr %190, align 4
  store ptr %76, ptr %183, align 4
  %192 = getelementptr inbounds %struct.fq_flow, ptr %132, i32 0, i32 1, i32 1
  store ptr %191, ptr %192, align 4
  store volatile ptr %183, ptr %191, align 4
  br label %193

193:                                              ; preds = %186, %163
  %194 = getelementptr inbounds %struct.fq_flow, ptr %132, i32 0, i32 2
  %195 = getelementptr inbounds %struct.fq_flow, ptr %132, i32 0, i32 2, i32 0, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  store volatile ptr %194, ptr %3, align 8
  %197 = getelementptr inbounds %struct.anon.42, ptr %3, i32 0, i32 1
  store volatile ptr %196, ptr %197, align 4
  store volatile ptr %3, ptr %195, align 4
  store volatile ptr %3, ptr %196, align 4
  %198 = getelementptr inbounds %struct.fq_flow, ptr %132, i32 0, i32 2, i32 1
  %199 = load i32, ptr %198, align 4
  %200 = add i32 %199, 1
  store volatile i32 %200, ptr %198, align 4
  %201 = load i32, ptr %177, align 4
  %202 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 6
  %203 = load i32, ptr %202, align 4
  %204 = icmp ugt i32 %201, %203
  %205 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 5
  %206 = load i32, ptr %180, align 4
  %207 = load i32, ptr %205, align 4
  %208 = icmp ugt i32 %206, %207
  %209 = select i1 %208, i1 true, i1 %204
  br i1 %209, label %210, label %353

210:                                              ; preds = %193
  %211 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 1
  %212 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 2
  %213 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 10
  %214 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 11
  br label %215

215:                                              ; preds = %347, %210
  %216 = phi i1 [ %204, %210 ], [ %348, %347 ]
  %217 = load ptr, ptr %211, align 4
  %218 = load i32, ptr %89, align 4
  %219 = tail call i32 @_find_next_bit_le(ptr noundef %217, i32 noundef %218, i32 noundef 0) #16
  %220 = load i32, ptr %89, align 4
  %221 = icmp ult i32 %219, %220
  br i1 %221, label %222, label %239

222:                                              ; preds = %222, %215
  %223 = phi i32 [ %237, %222 ], [ %220, %215 ]
  %224 = phi ptr [ %233, %222 ], [ null, %215 ]
  %225 = phi i32 [ %232, %222 ], [ 0, %215 ]
  %226 = phi i32 [ %236, %222 ], [ %219, %215 ]
  %227 = load ptr, ptr %80, align 4
  %228 = getelementptr %struct.fq_flow, ptr %227, i32 %226, i32 3
  %229 = load i32, ptr %228, align 4
  %230 = icmp ugt i32 %229, %225
  %231 = getelementptr %struct.fq_flow, ptr %227, i32 %226
  %232 = tail call i32 @llvm.umax.i32(i32 %229, i32 %225) #16
  %233 = select i1 %230, ptr %231, ptr %224
  %234 = load ptr, ptr %211, align 4
  %235 = add nuw i32 %226, 1
  %236 = tail call i32 @_find_next_bit_le(ptr noundef %234, i32 noundef %223, i32 noundef %235) #16
  %237 = load i32, ptr %89, align 4
  %238 = icmp ult i32 %236, %237
  br i1 %238, label %222, label %239

239:                                              ; preds = %222, %215
  %240 = phi i32 [ 0, %215 ], [ %232, %222 ]
  %241 = phi ptr [ null, %215 ], [ %233, %222 ]
  %242 = load ptr, ptr %212, align 4
  %243 = icmp eq ptr %242, %212
  br i1 %243, label %256, label %244

244:                                              ; preds = %244, %239
  %245 = phi ptr [ %254, %244 ], [ %242, %239 ]
  %246 = phi ptr [ %253, %244 ], [ %241, %239 ]
  %247 = phi i32 [ %252, %244 ], [ %240, %239 ]
  %248 = getelementptr i8, ptr %245, i32 36
  %249 = load i32, ptr %248, align 4
  %250 = icmp ugt i32 %249, %247
  %251 = getelementptr i8, ptr %245, i32 8
  %252 = tail call i32 @llvm.umax.i32(i32 %249, i32 %247) #16
  %253 = select i1 %250, ptr %251, ptr %246
  %254 = load ptr, ptr %245, align 4
  %255 = icmp eq ptr %254, %212
  br i1 %255, label %256, label %244

256:                                              ; preds = %244, %239
  %257 = phi ptr [ %241, %239 ], [ %253, %244 ]
  %258 = icmp eq ptr %257, null
  br i1 %258, label %353, label %259

259:                                              ; preds = %256
  %260 = getelementptr inbounds %struct.fq_flow, ptr %257, i32 0, i32 2
  %261 = getelementptr inbounds %struct.fq_flow, ptr %257, i32 0, i32 2, i32 1
  %262 = load i32, ptr %261, align 4
  %263 = lshr i32 %262, 1
  %264 = tail call i32 @llvm.umin.i32(i32 %263, i32 32) #16
  %265 = tail call i32 @llvm.umax.i32(i32 %264, i32 1) #16
  br label %266

266:                                              ; preds = %274, %259
  %267 = phi i32 [ 0, %259 ], [ %287, %274 ]
  %268 = phi i32 [ 0, %259 ], [ %284, %274 ]
  %269 = phi i32 [ 0, %259 ], [ %281, %274 ]
  %270 = load ptr, ptr %260, align 4
  %271 = icmp eq ptr %270, %260
  %272 = icmp eq ptr %270, null
  %273 = or i1 %271, %272
  br i1 %273, label %289, label %274

274:                                              ; preds = %266
  %275 = load i32, ptr %261, align 4
  %276 = add i32 %275, -1
  store volatile i32 %276, ptr %261, align 4
  %277 = load ptr, ptr %270, align 8
  %278 = getelementptr inbounds %struct.anon.42, ptr %270, i32 0, i32 1
  %279 = load ptr, ptr %278, align 4
  store ptr null, ptr %278, align 4
  store ptr null, ptr %270, align 8
  %280 = getelementptr inbounds %struct.anon.42, ptr %277, i32 0, i32 1
  store volatile ptr %279, ptr %280, align 4
  store volatile ptr %277, ptr %279, align 8
  %281 = add nuw nsw i32 %269, 1
  %282 = getelementptr inbounds %struct.sk_buff, ptr %270, i32 0, i32 5
  %283 = load i32, ptr %282, align 8
  %284 = add i32 %283, %268
  %285 = getelementptr inbounds %struct.sk_buff, ptr %270, i32 0, i32 18
  %286 = load i32, ptr %285, align 8
  %287 = add i32 %286, %267
  tail call void @ieee80211_free_txskb(ptr noundef %0, ptr noundef nonnull %270) #16
  %288 = icmp eq i32 %281, %265
  br i1 %288, label %289, label %266

289:                                              ; preds = %274, %266
  %290 = phi i32 [ %287, %274 ], [ %267, %266 ]
  %291 = phi i32 [ %284, %274 ], [ %268, %266 ]
  %292 = phi i32 [ %265, %274 ], [ %269, %266 ]
  %293 = load ptr, ptr %257, align 4
  %294 = getelementptr inbounds %struct.fq_tin, ptr %293, i32 0, i32 4
  %295 = load i32, ptr %294, align 4
  %296 = sub i32 %295, %291
  store i32 %296, ptr %294, align 4
  %297 = getelementptr inbounds %struct.fq_tin, ptr %293, i32 0, i32 5
  %298 = load i32, ptr %297, align 4
  %299 = sub i32 %298, %292
  store i32 %299, ptr %297, align 4
  %300 = getelementptr inbounds %struct.fq_flow, ptr %257, i32 0, i32 3
  %301 = load i32, ptr %300, align 4
  %302 = sub i32 %301, %291
  store i32 %302, ptr %300, align 4
  %303 = load i32, ptr %180, align 4
  %304 = sub i32 %303, %292
  store i32 %304, ptr %180, align 4
  %305 = load i32, ptr %177, align 4
  %306 = sub i32 %305, %290
  store i32 %306, ptr %177, align 4
  %307 = load i32, ptr %300, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %332

309:                                              ; preds = %289
  %310 = getelementptr inbounds %struct.fq_tin, ptr %293, i32 0, i32 3
  %311 = icmp eq ptr %310, %257
  br i1 %311, label %312, label %318

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.fq_tin, ptr %293, i32 0, i32 2
  %314 = getelementptr inbounds %struct.fq_tin, ptr %293, i32 0, i32 2, i32 1
  %315 = load ptr, ptr %314, align 4
  %316 = load ptr, ptr %313, align 4
  %317 = getelementptr inbounds %struct.list_head, ptr %316, i32 0, i32 1
  store ptr %315, ptr %317, align 4
  store volatile ptr %316, ptr %315, align 4
  store volatile ptr %313, ptr %313, align 4
  store ptr %313, ptr %314, align 4
  br label %332

318:                                              ; preds = %309
  %319 = load ptr, ptr %80, align 4
  %320 = ptrtoint ptr %257 to i32
  %321 = ptrtoint ptr %319 to i32
  %322 = sub i32 %320, %321
  %323 = sdiv exact i32 %322, 36
  %324 = load ptr, ptr %211, align 4
  %325 = and i32 %323, 31
  %326 = shl nuw i32 1, %325
  %327 = lshr i32 %323, 5
  %328 = getelementptr i32, ptr %324, i32 %327
  %329 = xor i32 %326, -1
  %330 = load i32, ptr %328, align 4
  %331 = and i32 %330, %329
  store i32 %331, ptr %328, align 4
  br label %332

332:                                              ; preds = %318, %312, %289
  %333 = icmp eq i32 %292, 0
  br i1 %333, label %353, label %334

334:                                              ; preds = %332
  %335 = load ptr, ptr %257, align 4
  %336 = getelementptr inbounds %struct.fq_tin, ptr %335, i32 0, i32 6
  %337 = load i32, ptr %336, align 4
  %338 = add i32 %337, 1
  store i32 %338, ptr %336, align 4
  %339 = load i32, ptr %213, align 4
  %340 = add i32 %339, 1
  store i32 %340, ptr %213, align 4
  br i1 %216, label %341, label %347

341:                                              ; preds = %334
  %342 = load i32, ptr %214, align 4
  %343 = add i32 %342, 1
  store i32 %343, ptr %214, align 4
  %344 = load i32, ptr %177, align 4
  %345 = load i32, ptr %202, align 4
  %346 = icmp ugt i32 %344, %345
  br label %347

347:                                              ; preds = %341, %334
  %348 = phi i1 [ %346, %341 ], [ false, %334 ]
  %349 = load i32, ptr %180, align 4
  %350 = load i32, ptr %205, align 4
  %351 = icmp ugt i32 %349, %350
  %352 = select i1 %351, i1 true, i1 %348
  br i1 %352, label %215, label %353

353:                                              ; preds = %347, %332, %256, %193, %104
  tail call void @_raw_spin_unlock_bh(ptr noundef %100) #16
  tail call void @ieee80211_schedule_txq(ptr noundef %0, ptr noundef %74) #16
  %354 = load ptr, ptr %74, align 4
  %355 = getelementptr i8, ptr %354, i32 -2264
  %356 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 36
  %357 = load i8, ptr %356, align 2, !range !11
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %361, label %359

359:                                              ; preds = %353
  %360 = getelementptr i8, ptr %74, i32 -4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %360) #16
  br label %396

361:                                              ; preds = %353
  %362 = getelementptr i8, ptr %354, i32 -1904
  %363 = load i32, ptr %362, align 8
  %364 = and i32 %363, 32
  %365 = icmp eq i32 %364, 0
  %366 = load i1, ptr @drv_wake_tx_queue.__already_done, align 1
  %367 = xor i1 %366, true
  %368 = select i1 %365, i1 %367, i1 false
  br i1 %368, label %369, label %375, !prof !10

369:                                              ; preds = %361
  store i1 true, ptr @drv_wake_tx_queue.__already_done, align 1
  %370 = getelementptr i8, ptr %354, i32 -1912
  %371 = load ptr, ptr %370, align 8
  %372 = icmp eq ptr %371, null
  %373 = getelementptr i8, ptr %354, i32 -1896
  %374 = select i1 %372, ptr %373, ptr %371
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1228, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %374, i32 noundef %363) #16
  br label %375

375:                                              ; preds = %369, %361
  br i1 %365, label %396, label %376

376:                                              ; preds = %375
  %377 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_wake_tx_queue, i32 0, i32 1), align 4
  %378 = icmp sgt i32 %377, 0
  br i1 %378, label %379, label %392

379:                                              ; preds = %376
  %380 = tail call ptr @llvm.thread.pointer() #16
  %381 = getelementptr inbounds %struct.thread_info, ptr %380, i32 0, i32 2
  %382 = load i32, ptr %381, align 8
  %383 = lshr i32 %382, 5
  %384 = getelementptr i32, ptr @__cpu_online_mask, i32 %383
  %385 = load volatile i32, ptr %384, align 4
  %386 = and i32 %382, 31
  %387 = shl nuw i32 1, %386
  %388 = and i32 %387, %385
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %392, label %390

390:                                              ; preds = %379
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !35
  %391 = tail call i32 @__traceiter_drv_wake_tx_queue(ptr noundef null, ptr noundef %0, ptr noundef %355, ptr noundef %76) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !36
  br label %392

392:                                              ; preds = %390, %379, %376
  %393 = load ptr, ptr %5, align 4
  %394 = getelementptr inbounds %struct.ieee80211_ops, ptr %393, i32 0, i32 89
  %395 = load ptr, ptr %394, align 4
  tail call void %395(ptr noundef %0, ptr noundef %74) #16
  br label %396

396:                                              ; preds = %392, %375, %359, %72, %68, %59, %51, %49, %44, %26, %17, %10, %4
  %397 = phi i1 [ false, %10 ], [ false, %4 ], [ true, %359 ], [ true, %375 ], [ true, %392 ], [ false, %26 ], [ false, %17 ], [ false, %59 ], [ false, %68 ], [ false, %51 ], [ false, %49 ], [ false, %44 ], [ false, %72 ]
  ret i1 %397
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__ieee80211_tx(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %8, !prof !10

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1733, i32 noundef 9, ptr noundef null) #16
  br label %66

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 24
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 -2264
  %12 = icmp eq ptr %2, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.sta_info, ptr %2, i32 0, i32 21
  %15 = load i8, ptr %14, align 4, !range !11
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, ptr null, ptr %2
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi ptr [ %17, %13 ], [ null, %8 ]
  %20 = load i32, ptr %10, align 8
  switch i32 %20, label %54 [
    i32 6, label %21
    i32 4, label %50
  ]

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %10, i32 -856
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 64
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 111
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 58
  %32 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 9
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = getelementptr %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 58, i32 7, i32 %34
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = and i8 %36, 15
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 16
  %42 = and i32 %38, -983041
  %43 = or i32 %41, %42
  store i32 %43, ptr %37, align 4
  br label %57

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %46, 262144
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  tail call void @ieee80211_purge_tx_queue(ptr noundef %0, ptr noundef %1) #16
  br label %66

50:                                               ; preds = %18
  %51 = getelementptr i8, ptr %10, i32 -1084
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 -1408
  br label %54

54:                                               ; preds = %50, %18
  %55 = phi ptr [ %11, %18 ], [ %53, %50 ]
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %55, i32 0, i32 58
  br label %57

57:                                               ; preds = %54, %44, %30, %21
  %58 = phi ptr [ %56, %54 ], [ %31, %30 ], [ %10, %21 ], [ null, %44 ]
  %59 = tail call fastcc zeroext i1 @ieee80211_tx_frags(ptr noundef %0, ptr noundef %58, ptr noundef %19, ptr noundef %1, i1 noundef zeroext %3)
  %60 = load ptr, ptr %1, align 4
  %61 = icmp ne ptr %60, %1
  %62 = load i1, ptr @__ieee80211_tx.__already_done, align 1
  %63 = xor i1 %62, true
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %66, !prof !10

65:                                               ; preds = %57
  store i1 true, ptr @__ieee80211_tx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1770, i32 noundef 9, ptr noundef null) #16
  br label %66

66:                                               ; preds = %65, %57, %49, %7
  %67 = phi i1 [ true, %7 ], [ true, %49 ], [ %59, %65 ], [ %59, %57 ]
  ret i1 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_wake_tx_queue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_tx_frags(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.ieee80211_tx_control, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %84, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 12
  %11 = icmp eq ptr %2, null
  %12 = getelementptr inbounds %struct.sta_info, ptr %2, i32 0, i32 46
  %13 = select i1 %11, ptr null, ptr %12
  %14 = getelementptr inbounds %struct.sk_buff_head, ptr %3, i32 0, i32 1
  %15 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  br label %16

16:                                               ; preds = %73, %9
  %17 = phi ptr [ %7, %9 ], [ %18, %73 ]
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3
  %20 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 15
  %24 = call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #16
  %25 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 10, i32 %23
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  br i1 %4, label %73, label %29

29:                                               ; preds = %28
  %30 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 53, i32 %23
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %73, label %37

33:                                               ; preds = %16
  %34 = load i32, ptr %19, align 8
  %35 = and i32 %34, 8192
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %41, !prof !9

37:                                               ; preds = %29
  %38 = load i32, ptr %19, align 8
  %39 = and i32 %38, 8192
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %56, label %73, !prof !9

41:                                               ; preds = %33
  %42 = and i32 %26, -65
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %73, label %44

44:                                               ; preds = %41
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %24) #16
  call void @ieee80211_purge_tx_queue(ptr noundef %0, ptr noundef %3) #16
  br label %84

45:                                               ; preds = %33
  br i1 %4, label %46, label %56

46:                                               ; preds = %45
  %47 = load ptr, ptr %3, align 4
  %48 = icmp eq ptr %47, %3
  br i1 %48, label %72, label %49

49:                                               ; preds = %46
  %50 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 53, i32 %23
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.anon.70, ptr %3, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.anon.42, ptr %47, i32 0, i32 1
  store volatile ptr %50, ptr %54, align 4
  store volatile ptr %47, ptr %50, align 8
  store volatile ptr %51, ptr %53, align 8
  %55 = getelementptr inbounds %struct.anon.42, ptr %51, i32 0, i32 1
  store volatile ptr %53, ptr %55, align 4
  br label %66

56:                                               ; preds = %45, %37
  %57 = load ptr, ptr %3, align 4
  %58 = icmp eq ptr %57, %3
  br i1 %58, label %72, label %59

59:                                               ; preds = %56
  %60 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 53, i32 %23
  %61 = getelementptr inbounds %struct.anon.70, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.anon.70, ptr %3, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.anon.42, ptr %57, i32 0, i32 1
  store volatile ptr %62, ptr %65, align 4
  store volatile ptr %57, ptr %62, align 8
  store volatile ptr %60, ptr %64, align 8
  store volatile ptr %64, ptr %61, align 4
  br label %66

66:                                               ; preds = %59, %49
  %67 = phi ptr [ %63, %59 ], [ %52, %49 ]
  %68 = load i32, ptr %14, align 4
  %69 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 53, i32 %23, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, %68
  store i32 %71, ptr %69, align 4
  store ptr %3, ptr %3, align 4
  store ptr %3, ptr %67, align 4
  store i32 0, ptr %14, align 4
  br label %72

72:                                               ; preds = %66, %56, %46
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %24) #16
  br label %84

73:                                               ; preds = %41, %37, %29, %28
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %24) #16
  %74 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 24
  store ptr %1, ptr %74, align 8
  store ptr %13, ptr %6, align 4
  %75 = load i32, ptr %14, align 4
  %76 = add i32 %75, -1
  store volatile i32 %76, ptr %14, align 4
  %77 = load ptr, ptr %17, align 8
  %78 = getelementptr inbounds %struct.anon.42, ptr %17, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  store ptr null, ptr %78, align 4
  store ptr null, ptr %17, align 8
  %80 = getelementptr inbounds %struct.anon.42, ptr %77, i32 0, i32 1
  store volatile ptr %79, ptr %80, align 4
  store volatile ptr %77, ptr %79, align 8
  %81 = load ptr, ptr %15, align 4
  %82 = load ptr, ptr %81, align 4
  call void %82(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %17) #16
  %83 = icmp eq ptr %18, %3
  br i1 %83, label %84, label %16

84:                                               ; preds = %73, %72, %44, %5
  %85 = phi i1 [ false, %72 ], [ true, %44 ], [ true, %5 ], [ true, %73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret i1 %85
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @INET_ECN_set_ce(ptr noundef %0) unnamed_addr #11 {
  %2 = alloca %struct.vlan_hdr, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %4 = load i16, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %6 = load i16, ptr %5, align 8
  %7 = zext i16 %6 to i32
  switch i16 %4, label %49 [
    i16 -22392, label %8
    i16 129, label %8
  ]

8:                                                ; preds = %1, %1
  %9 = icmp eq i16 %6, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = icmp ult i16 %6, 4
  br i1 %11, label %12, label %13, !prof !10

12:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 598, i32 noundef 9, ptr noundef null) #16
  br label %117

13:                                               ; preds = %10
  %14 = add nsw i32 %7, -4
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 14, %8 ]
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %19 = icmp eq ptr %0, null
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  br label %21

21:                                               ; preds = %47, %15
  %22 = phi i32 [ %16, %15 ], [ %48, %47 ]
  %23 = phi i32 [ 8, %15 ], [ %40, %47 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !12
  %24 = load i32, ptr %17, align 8
  %25 = load i32, ptr %18, align 4
  %26 = add i32 %22, %25
  %27 = sub i32 %24, %26
  %28 = icmp sgt i32 %27, 3
  br i1 %28, label %29, label %32, !prof !9

29:                                               ; preds = %21
  %30 = load ptr, ptr %20, align 4
  %31 = getelementptr i8, ptr %30, i32 %22
  br label %37

32:                                               ; preds = %21
  br i1 %19, label %43, label %33

33:                                               ; preds = %32
  %34 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %22, ptr noundef nonnull %2, i32 noundef 4) #16
  %35 = icmp slt i32 %34, 0
  %36 = select i1 %35, ptr null, ptr %2, !prof !10
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi ptr [ %31, %29 ], [ %36, %33 ]
  %39 = icmp eq ptr %38, null
  %40 = add nsw i32 %23, -1
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %39, i1 true, i1 %41, !prof !10
  br i1 %42, label %43, label %44, !prof !10

43:                                               ; preds = %37, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br label %117

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.vlan_hdr, ptr %38, i32 0, i32 1
  %46 = load i16, ptr %45, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  switch i16 %46, label %49 [
    i16 -22392, label %47
    i16 129, label %47
  ]

47:                                               ; preds = %44, %44
  %48 = add nsw i32 %22, 4
  br label %21

49:                                               ; preds = %44, %1
  %50 = phi i16 [ %4, %1 ], [ %46, %44 ]
  switch i16 %50, label %117 [
    i16 8, label %51
    i16 -8826, label %83
  ]

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %55 = load i16, ptr %54, align 4
  %56 = zext i16 %55 to i32
  %57 = getelementptr i8, ptr %53, i32 %56
  %58 = getelementptr i8, ptr %57, i32 20
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %60 = load ptr, ptr %59, align 8
  %61 = icmp ugt ptr %58, %60
  br i1 %61, label %117, label %62

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.iphdr, ptr %57, i32 0, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = add i8 %64, 1
  %66 = and i8 %65, 3
  %67 = and i8 %65, 2
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = icmp eq i8 %66, 0
  %71 = zext i1 %70 to i32
  br label %117

72:                                               ; preds = %62
  %73 = zext i8 %66 to i16
  %74 = shl nuw nsw i16 %73, 8
  %75 = add nuw nsw i16 %74, -1025
  %76 = getelementptr inbounds %struct.iphdr, ptr %57, i32 0, i32 7
  %77 = load i16, ptr %76, align 2
  %78 = add i16 %77, %75
  %79 = icmp ult i16 %78, %75
  %80 = zext i1 %79 to i16
  %81 = add i16 %78, %80
  store i16 %81, ptr %76, align 2
  %82 = or i8 %64, 3
  store i8 %82, ptr %63, align 1
  br label %117

83:                                               ; preds = %49
  %84 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %87 = load i16, ptr %86, align 4
  %88 = zext i16 %87 to i32
  %89 = getelementptr i8, ptr %85, i32 %88
  %90 = getelementptr i8, ptr %89, i32 40
  %91 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %92 = load ptr, ptr %91, align 8
  %93 = icmp ugt ptr %90, %92
  br i1 %93, label %117, label %94

94:                                               ; preds = %83
  %95 = load i16, ptr %89, align 2
  %96 = and i16 %95, 12288
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %117, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %89, align 4
  %100 = or i32 %99, 12288
  store i32 %100, ptr %89, align 4
  %101 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %102 = load i16, ptr %101, align 8
  %103 = and i16 %102, 96
  %104 = icmp eq i16 %103, 64
  br i1 %104, label %105, label %117

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %107 = load i32, ptr %106, align 4
  %108 = xor i32 %99, -1
  %109 = add i32 %107, %108
  %110 = icmp ult i32 %109, %108
  %111 = zext i1 %110 to i32
  %112 = add i32 %109, %100
  %113 = add i32 %112, %111
  %114 = icmp ult i32 %113, %100
  %115 = zext i1 %114 to i32
  %116 = add i32 %113, %115
  store i32 %116, ptr %106, align 4
  br label %117

117:                                              ; preds = %105, %98, %94, %83, %72, %69, %51, %49, %43, %12
  %118 = phi i32 [ 0, %83 ], [ 0, %51 ], [ 0, %49 ], [ 1, %72 ], [ %71, %69 ], [ 0, %94 ], [ 1, %105 ], [ 1, %98 ], [ 0, %12 ], [ 0, %43 ]
  ret i32 %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rate_control_get_rate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_tx_h_michael_mic_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_tx_h_encrypt(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 7, i32 1
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %24 [
    i32 1027073, label %8
    i32 1027077, label %8
    i32 1027074, label %10
    i32 1027076, label %12
    i32 1027082, label %14
    i32 1027078, label %16
    i32 1027085, label %18
    i32 1027083, label %20
    i32 1027084, label %20
    i32 1027080, label %22
    i32 1027081, label %22
  ]

8:                                                ; preds = %5, %5
  %9 = tail call i32 @ieee80211_crypto_wep_encrypt(ptr noundef %0) #16
  br label %26

10:                                               ; preds = %5
  %11 = tail call i32 @ieee80211_crypto_tkip_encrypt(ptr noundef %0) #16
  br label %26

12:                                               ; preds = %5
  %13 = tail call i32 @ieee80211_crypto_ccmp_encrypt(ptr noundef %0, i32 noundef 8) #16
  br label %26

14:                                               ; preds = %5
  %15 = tail call i32 @ieee80211_crypto_ccmp_encrypt(ptr noundef %0, i32 noundef 16) #16
  br label %26

16:                                               ; preds = %5
  %17 = tail call i32 @ieee80211_crypto_aes_cmac_encrypt(ptr noundef %0) #16
  br label %26

18:                                               ; preds = %5
  %19 = tail call i32 @ieee80211_crypto_aes_cmac_256_encrypt(ptr noundef %0) #16
  br label %26

20:                                               ; preds = %5, %5
  %21 = tail call i32 @ieee80211_crypto_aes_gmac_encrypt(ptr noundef %0) #16
  br label %26

22:                                               ; preds = %5, %5
  %23 = tail call i32 @ieee80211_crypto_gcmp_encrypt(ptr noundef %0) #16
  br label %26

24:                                               ; preds = %5
  %25 = tail call i32 @ieee80211_crypto_hw_encrypt(ptr noundef %0) #16
  br label %26

26:                                               ; preds = %24, %22, %20, %18, %16, %14, %12, %10, %8, %1
  %27 = phi i32 [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ %9, %8 ], [ 0, %1 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_tx_h_calculate_duration(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %200, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 6, i32 1
  %9 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 3
  br label %10

10:                                               ; preds = %195, %5
  %11 = phi ptr [ %3, %5 ], [ %198, %195 ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = load i16, ptr %13, align 2
  %15 = and i16 %14, 252
  %16 = icmp eq i16 %15, 164
  br i1 %16, label %200, label %17, !prof !10

17:                                               ; preds = %10
  %18 = load ptr, ptr %11, align 8
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 5
  %22 = load i32, ptr %21, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %22, %20 ], [ 0, %17 ]
  %25 = getelementptr inbounds %struct.ieee80211_hdr, ptr %13, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = load ptr, ptr %6, align 4
  %29 = load i16, ptr %8, align 1
  %30 = and i16 %29, 8448
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %195

32:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %33, i32 0, i32 58, i32 9
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %35, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 7
  %41 = zext i1 %40 to i32
  %42 = icmp eq i32 %39, 6
  %43 = select i1 %42, i32 2, i32 %41
  %44 = select i1 %40, i32 64, i32 0
  %45 = select i1 %42, i32 32, i32 %44
  br label %46

46:                                               ; preds = %37, %32
  %47 = phi i32 [ %43, %37 ], [ 0, %32 ]
  %48 = phi i32 [ %45, %37 ], [ 0, %32 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %49 = load i8, ptr %7, align 4
  %50 = icmp slt i8 %49, 0
  %51 = load i1, ptr @ieee80211_duration.__already_done, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %55, !prof !10

54:                                               ; preds = %46
  store i1 true, ptr @ieee80211_duration.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef null) #16
  br label %55

55:                                               ; preds = %54, %46
  br i1 %50, label %195, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 7
  %62 = getelementptr %struct.wiphy, ptr %58, i32 0, i32 53, i32 %61
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = load i8, ptr %7, align 4
  %67 = sext i8 %66 to i32
  %68 = getelementptr %struct.ieee80211_rate, ptr %65, i32 %67
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 16
  %71 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %63, i32 0, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 4
  br i1 %73, label %195, label %74

74:                                               ; preds = %56
  %75 = load ptr, ptr %12, align 4
  %76 = load i16, ptr %75, align 2
  %77 = and i16 %76, 12
  %78 = icmp ne i16 %77, 4
  %79 = icmp eq i32 %27, 0
  %80 = and i1 %79, %78
  br i1 %80, label %81, label %195

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.ieee80211_rate, ptr %65, i32 0, i32 1
  %83 = load i16, ptr %82, align 4
  %84 = zext i16 %83 to i32
  %85 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %63, i32 0, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %81
  %89 = shl nuw nsw i32 1, %47
  %90 = add nsw i32 %89, -1
  br label %151

91:                                               ; preds = %81
  %92 = getelementptr %struct.ieee80211_rate, ptr %65, i32 %67, i32 1
  %93 = shl nuw nsw i32 1, %47
  %94 = add nsw i32 %93, -1
  %95 = load i16, ptr %92, align 4
  %96 = icmp ugt i16 %83, %95
  br i1 %96, label %151, label %97

97:                                               ; preds = %143, %91
  %98 = phi i16 [ %146, %143 ], [ %83, %91 ]
  %99 = phi i32 [ %141, %143 ], [ 0, %91 ]
  %100 = phi i32 [ %139, %143 ], [ %84, %91 ]
  %101 = phi i32 [ %140, %143 ], [ -1, %91 ]
  %102 = phi ptr [ %144, %143 ], [ %65, %91 ]
  %103 = phi i32 [ %138, %143 ], [ %86, %91 ]
  %104 = zext i16 %98 to i32
  %105 = getelementptr %struct.ieee80211_rate, ptr %102, i32 %99
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, %48
  %108 = icmp eq i32 %107, %48
  br i1 %108, label %109, label %137

109:                                              ; preds = %97
  %110 = load ptr, ptr %9, align 4
  %111 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %110, i32 0, i32 58, i32 1, i32 24
  %112 = load i32, ptr %111, align 8
  %113 = shl nuw i32 1, %99
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %109
  %117 = add i32 %94, %104
  %118 = sdiv i32 %117, %93
  br label %119

119:                                              ; preds = %116, %109
  %120 = phi i32 [ %118, %116 ], [ %101, %109 ]
  %121 = load i32, ptr %71, align 4
  switch i32 %121, label %137 [
    i32 0, label %122
    i32 5, label %122
    i32 1, label %131
    i32 3, label %131
    i32 4, label %135
    i32 2, label %135
    i32 6, label %135
  ]

122:                                              ; preds = %119, %119
  %123 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %110, i32 0, i32 8
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 4
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %126, i32 4, i32 8
  %128 = and i32 %127, %106
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, i32 %100, i32 %104
  br label %137

131:                                              ; preds = %119, %119
  %132 = and i32 %106, 2
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %133, i32 %100, i32 %104
  br label %137

135:                                              ; preds = %119, %119, %119
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef null) #16
  %136 = load i32, ptr %85, align 4
  br label %137

137:                                              ; preds = %135, %131, %122, %119, %97
  %138 = phi i32 [ %136, %135 ], [ %103, %119 ], [ %103, %97 ], [ %103, %122 ], [ %103, %131 ]
  %139 = phi i32 [ %100, %135 ], [ %100, %119 ], [ %100, %97 ], [ %130, %122 ], [ %134, %131 ]
  %140 = phi i32 [ %120, %135 ], [ %120, %119 ], [ %101, %97 ], [ %120, %122 ], [ %120, %131 ]
  %141 = add nuw nsw i32 %99, 1
  %142 = icmp slt i32 %141, %138
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load ptr, ptr %64, align 4
  %145 = getelementptr %struct.ieee80211_rate, ptr %144, i32 %141, i32 1
  %146 = load i16, ptr %145, align 4
  %147 = load i16, ptr %92, align 4
  %148 = icmp ugt i16 %146, %147
  br i1 %148, label %149, label %97

149:                                              ; preds = %143, %137
  %150 = icmp eq i32 %140, -1
  br i1 %150, label %151, label %157

151:                                              ; preds = %149, %91, %88
  %152 = phi i32 [ %90, %88 ], [ %94, %149 ], [ %94, %91 ]
  %153 = phi i32 [ %89, %88 ], [ %93, %149 ], [ %93, %91 ]
  %154 = phi i32 [ %84, %88 ], [ %139, %149 ], [ %84, %91 ]
  %155 = add i32 %152, %154
  %156 = sdiv i32 %155, %153
  br label %157

157:                                              ; preds = %151, %149
  %158 = phi i32 [ %156, %151 ], [ %140, %149 ]
  %159 = load i16, ptr %75, align 2
  %160 = and i16 %159, 140
  %161 = icmp eq i16 %160, 136
  br i1 %161, label %162, label %170

162:                                              ; preds = %157
  %163 = and i16 %159, 768
  %164 = icmp eq i16 %163, 768
  %165 = select i1 %164, i32 30, i32 24
  %166 = getelementptr i8, ptr %75, i32 %165
  %167 = load i8, ptr %166, align 1
  %168 = and i8 %167, 32
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %162, %157
  %171 = load i32, ptr %71, align 4
  %172 = load ptr, ptr %9, align 4
  %173 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %172, i32 0, i32 58, i32 1, i32 15
  %174 = load i8, ptr %173, align 1, !range !11
  %175 = zext i8 %174 to i32
  %176 = tail call i32 @ieee80211_frame_duration(i32 noundef %171, i32 noundef 10, i32 noundef %158, i32 noundef %70, i32 noundef %175, i32 noundef %47) #16
  br label %177

177:                                              ; preds = %170, %162
  %178 = phi i32 [ %176, %170 ], [ 0, %162 ]
  %179 = icmp eq i32 %24, 0
  br i1 %179, label %192, label %180

180:                                              ; preds = %177
  %181 = shl i32 %178, 1
  %182 = load i32, ptr %71, align 4
  %183 = getelementptr %struct.ieee80211_rate, ptr %65, i32 %67, i32 1
  %184 = load i16, ptr %183, align 4
  %185 = zext i16 %184 to i32
  %186 = load ptr, ptr %9, align 4
  %187 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %186, i32 0, i32 58, i32 1, i32 15
  %188 = load i8, ptr %187, align 1, !range !11
  %189 = zext i8 %188 to i32
  %190 = tail call i32 @ieee80211_frame_duration(i32 noundef %182, i32 noundef %24, i32 noundef %185, i32 noundef %70, i32 noundef %189, i32 noundef %47) #16
  %191 = add i32 %190, %181
  br label %192

192:                                              ; preds = %180, %177
  %193 = phi i32 [ %191, %180 ], [ %178, %177 ]
  %194 = trunc i32 %193 to i16
  br label %195

195:                                              ; preds = %192, %74, %56, %55, %23
  %196 = phi i16 [ %194, %192 ], [ 0, %23 ], [ 0, %55 ], [ 0, %56 ], [ 0, %74 ]
  %197 = getelementptr inbounds %struct.ieee80211_hdr, ptr %13, i32 0, i32 1
  store i16 %196, ptr %197, align 2
  %198 = load ptr, ptr %11, align 4
  %199 = icmp eq ptr %198, %2
  br i1 %199, label %200, label %10

200:                                              ; preds = %195, %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_crypto_wep_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_crypto_tkip_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_crypto_ccmp_encrypt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_crypto_aes_cmac_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_crypto_aes_cmac_256_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_crypto_aes_gmac_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_crypto_gcmp_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_crypto_hw_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_frame_duration(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_coarse_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_start_tx_ba_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_amsdu_prepare_head(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  %7 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = add nsw i32 %9, -6
  %11 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = sub i32 %12, %10
  %14 = load i32, ptr %6, align 8
  %15 = and i32 %14, 4096
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %101

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 32
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %101

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 14
  %26 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %29 = load ptr, ptr %28, align 8
  %30 = ptrtoint ptr %27 to i32
  %31 = ptrtoint ptr %29 to i32
  %32 = sub i32 %30, %31
  %33 = icmp ult i32 %32, %25
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = tail call i32 @pskb_expand_head(ptr noundef %2, i32 noundef %25, i32 noundef 0, i32 noundef 2592) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.wiphy, ptr %39, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %40, ptr noundef nonnull @.str.9) #18
  br label %101

41:                                               ; preds = %34, %22
  %42 = tail call ptr @skb_push(ptr noundef %2, i32 noundef 14) #16
  %43 = getelementptr i8, ptr %42, i32 14
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %42, ptr align 1 %43, i32 %10, i1 false)
  %44 = getelementptr i8, ptr %42, i32 %10
  %45 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %1, i32 0, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = getelementptr i8, ptr %42, i32 %47
  %49 = getelementptr inbounds %struct.ieee80211_fast_tx, ptr %1, i32 0, i32 3
  %50 = load i8, ptr %49, align 2
  %51 = zext i8 %50 to i32
  %52 = getelementptr i8, ptr %42, i32 %51
  %53 = trunc i32 %13 to i16
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  %55 = getelementptr inbounds %struct.ethhdr, ptr %44, i32 0, i32 2
  store i16 %54, ptr %55, align 1
  %56 = getelementptr inbounds %struct.ethhdr, ptr %44, i32 0, i32 1
  %57 = load i32, ptr %48, align 4
  store i32 %57, ptr %56, align 4
  %58 = getelementptr i8, ptr %48, i32 4
  %59 = load i16, ptr %58, align 2
  %60 = getelementptr i8, ptr %56, i32 4
  store i16 %59, ptr %60, align 2
  %61 = load i32, ptr %52, align 4
  store i32 %61, ptr %44, align 4
  %62 = getelementptr i8, ptr %52, i32 4
  %63 = load i16, ptr %62, align 2
  %64 = getelementptr i8, ptr %44, i32 4
  store i16 %63, ptr %64, align 2
  %65 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %66 = load i32, ptr %65, align 8
  switch i32 %66, label %91 [
    i32 2, label %67
    i32 3, label %69
    i32 4, label %69
  ]

67:                                               ; preds = %41
  %68 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  br label %71

69:                                               ; preds = %41, %41
  %70 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi ptr [ %70, %69 ], [ %68, %67 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %91, label %74

74:                                               ; preds = %71
  %75 = load i16, ptr %42, align 2
  %76 = and i16 %75, 512
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr %72, align 4
  store i32 %79, ptr %48, align 4
  %80 = getelementptr i8, ptr %72, i32 4
  %81 = load i16, ptr %80, align 2
  store i16 %81, ptr %58, align 2
  %82 = load i16, ptr %42, align 2
  br label %83

83:                                               ; preds = %78, %74
  %84 = phi i16 [ %75, %74 ], [ %82, %78 ]
  %85 = and i16 %84, 256
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i32, ptr %72, align 4
  store i32 %88, ptr %52, align 4
  %89 = getelementptr i8, ptr %72, i32 4
  %90 = load i16, ptr %89, align 2
  store i16 %90, ptr %62, align 2
  br label %91

91:                                               ; preds = %87, %83, %71, %41
  %92 = load i16, ptr %42, align 2
  %93 = and i16 %92, 768
  %94 = icmp eq i16 %93, 768
  %95 = select i1 %94, i32 30, i32 24
  %96 = getelementptr i8, ptr %42, i32 %95
  %97 = load i8, ptr %96, align 1
  %98 = or i8 %97, -128
  store i8 %98, ptr %96, align 1
  %99 = load i32, ptr %18, align 8
  %100 = or i32 %99, 8
  store i32 %100, ptr %18, align 8
  br label %101

101:                                              ; preds = %91, %37, %17, %3
  %102 = phi i1 [ true, %91 ], [ false, %3 ], [ true, %17 ], [ false, %37 ]
  ret i1 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_amsdu_realloc_pad(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %5 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = icmp ult i32 %10, %2
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = tail call i32 @pskb_expand_head(ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 2592) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %18, ptr noundef nonnull @.str.9) #18
  br label %19

19:                                               ; preds = %15, %12, %3
  %20 = phi i1 [ false, %15 ], [ true, %12 ], [ true, %3 ]
  ret i1 %20
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @ieee80211_store_ack_skb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @skb_clone_sk(ptr noundef %1) #16
  br label %12

10:                                               ; preds = %4
  %11 = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2592) #16
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 109
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #16
  %18 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 108
  %19 = tail call i32 @idr_alloc(ptr noundef %18, ptr noundef nonnull %13, i32 noundef 1, i32 noundef 8192, i32 noundef 2592) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #16
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = trunc i32 %19 to i16
  %23 = load i32, ptr %2, align 4
  %24 = or i32 %23, 1
  store i32 %24, ptr %2, align 4
  %25 = icmp eq ptr %3, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = tail call i64 @ieee80211_mgmt_tx_cookie(ptr noundef %0) #16
  store i64 %27, ptr %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 8
  store i64 %27, ptr %28, align 8
  br label %30

29:                                               ; preds = %15
  tail call void @kfree_skb_reason(ptr noundef nonnull %13, i32 noundef 0) #16
  br label %30

30:                                               ; preds = %29, %26, %21, %12
  %31 = phi i16 [ 0, %12 ], [ %22, %26 ], [ %22, %21 ], [ 0, %29 ]
  ret i16 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone_sk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ieee80211_mgmt_tx_cookie(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_tx_8023(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.ieee80211_tx_control, align 4
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 15
  %12 = icmp eq ptr %2, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 30
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq ptr %15, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 4
  %21 = load volatile i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, -4161
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 44
  %28 = load volatile i8, ptr %27, align 1
  %29 = icmp eq i8 %28, %17
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store volatile i8 %17, ptr %27, align 1
  br label %31

31:                                               ; preds = %30, %26, %19, %13, %4
  %32 = tail call fastcc zeroext i1 @ieee80211_queue_skb(ptr noundef %7, ptr noundef %0, ptr noundef %2, ptr noundef %1)
  br i1 %32, label %62, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 12
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #16
  %36 = getelementptr %struct.ieee80211_local, ptr %7, i32 0, i32 10, i32 %11
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  br i1 %3, label %50, label %40

40:                                               ; preds = %39
  %41 = getelementptr %struct.ieee80211_local, ptr %7, i32 0, i32 53, i32 %11
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %50, label %47

44:                                               ; preds = %33
  br i1 %3, label %45, label %47

45:                                               ; preds = %44
  %46 = getelementptr %struct.ieee80211_local, ptr %7, i32 0, i32 53, i32 %11
  tail call void @skb_queue_head(ptr noundef %46, ptr noundef %1) #16
  br label %49

47:                                               ; preds = %44, %40
  %48 = getelementptr %struct.ieee80211_local, ptr %7, i32 0, i32 53, i32 %11
  tail call void @skb_queue_tail(ptr noundef %48, ptr noundef %1) #16
  br label %49

49:                                               ; preds = %47, %45
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #16
  br label %62

50:                                               ; preds = %40, %39
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #16
  br i1 %12, label %57, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.sta_info, ptr %2, i32 0, i32 21
  %53 = load i8, ptr %52, align 4, !range !11
  %54 = icmp eq i8 %53, 0
  %55 = getelementptr inbounds %struct.sta_info, ptr %2, i32 0, i32 46
  %56 = select i1 %54, ptr null, ptr %55
  br label %57

57:                                               ; preds = %51, %50
  %58 = phi ptr [ null, %50 ], [ %56, %51 ]
  store ptr %58, ptr %5, align 4
  %59 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 8
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %60, align 4
  call void %61(ptr noundef %7, ptr noundef nonnull %5, ptr noundef %1) #16
  br label %62

62:                                               ; preds = %57, %49, %31
  %63 = phi i1 [ false, %49 ], [ true, %57 ], [ true, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i1 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_set_beacon_cntdwn(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %4 = load i32, ptr %3, align 8
  switch i32 %4, label %59 [
    i32 3, label %5
    i32 1, label %8
    i32 7, label %10
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.beacon_data, ptr %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.beacon_data, ptr %1, i32 0, i32 3
  br label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.beacon_data, ptr %1, i32 0, i32 2
  br label %12

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.beacon_data, ptr %1, i32 0, i32 2
  br label %12

12:                                               ; preds = %10, %8, %5
  %13 = phi ptr [ %11, %10 ], [ %9, %8 ], [ %7, %5 ]
  %14 = phi ptr [ %1, %10 ], [ %1, %8 ], [ %6, %5 ]
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %18 = load volatile ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.beacon_data, ptr %1, i32 0, i32 5
  %20 = getelementptr inbounds %struct.beacon_data, ptr %1, i32 0, i32 6
  %21 = load i8, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 4
  %23 = load i8, ptr %22, align 1, !range !11
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i32 1, i32 2
  %26 = icmp ne ptr %18, null
  %27 = getelementptr inbounds %struct.probe_resp, ptr %18, i32 0, i32 2
  br label %28

28:                                               ; preds = %55, %12
  %29 = phi i32 [ 0, %12 ], [ %56, %55 ]
  %30 = getelementptr i16, ptr %19, i32 %29
  %31 = load i16, ptr %30, align 2
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %28
  %34 = zext i16 %31 to i32
  %35 = icmp ule i32 %16, %34
  %36 = load i1, ptr @ieee80211_set_beacon_cntdwn.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !10

39:                                               ; preds = %33
  store i1 true, ptr @ieee80211_set_beacon_cntdwn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4829, i32 noundef 9, ptr noundef null) #16
  br label %40

40:                                               ; preds = %39, %33
  br i1 %35, label %41, label %42

41:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %59

42:                                               ; preds = %40
  %43 = load i16, ptr %30, align 2
  %44 = zext i16 %43 to i32
  %45 = getelementptr i8, ptr %15, i32 %44
  store i8 %21, ptr %45, align 1
  br label %46

46:                                               ; preds = %42, %28
  %47 = load i32, ptr %3, align 8
  %48 = icmp eq i32 %47, 3
  %49 = select i1 %48, i1 %26, i1 false
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = getelementptr i16, ptr %27, i32 %29
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = getelementptr %struct.probe_resp, ptr %18, i32 0, i32 3, i32 %53
  store i8 %21, ptr %54, align 1
  br label %55

55:                                               ; preds = %50, %46
  %56 = add nuw nsw i32 %29, 1
  %57 = icmp eq i32 %56, %25
  br i1 %57, label %58, label %28

58:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %59

59:                                               ; preds = %58, %41, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ieee80211_beacon_add_tim(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ps_data, ptr %1, i32 0, i32 2
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = tail call i32 @_find_first_bit_le(ptr noundef %1, i32 noundef 2008) #16
  %10 = icmp ne i32 %9, 2008
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %11, %8 ], [ 0, %4 ]
  br i1 %3, label %25, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ps_data, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 18
  %20 = load i8, ptr %19, align 8
  %21 = zext i8 %20 to i32
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %21, %18 ], [ %16, %14 ]
  %24 = add i32 %23, -1
  store i32 %24, ptr %15, align 4
  br label %25

25:                                               ; preds = %22, %12
  %26 = tail call ptr @skb_put(ptr noundef %2, i32 noundef 6) #16
  %27 = getelementptr i8, ptr %26, i32 1
  store i8 5, ptr %26, align 1
  %28 = getelementptr i8, ptr %26, i32 2
  store i8 4, ptr %27, align 1
  %29 = getelementptr inbounds %struct.ps_data, ptr %1, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = trunc i32 %30 to i8
  %32 = getelementptr i8, ptr %26, i32 3
  store i8 %31, ptr %28, align 1
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 18
  %34 = load i8, ptr %33, align 8
  %35 = getelementptr i8, ptr %26, i32 4
  store i8 %34, ptr %32, align 1
  %36 = load i32, ptr %29, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.ps_data, ptr %1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp ne ptr %40, %39
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %38, %25
  %44 = phi i1 [ false, %25 ], [ %41, %38 ]
  %45 = phi i32 [ 0, %25 ], [ %42, %38 ]
  %46 = getelementptr inbounds %struct.ps_data, ptr %1, i32 0, i32 4
  %47 = zext i1 %44 to i8
  store i8 %47, ptr %46, align 4
  %48 = icmp eq i32 %13, 0
  br i1 %48, label %82, label %49

49:                                               ; preds = %54, %43
  %50 = phi i32 [ %55, %54 ], [ 0, %43 ]
  %51 = getelementptr [252 x i8], ptr %1, i32 0, i32 %50
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = add nuw nsw i32 %50, 1
  %56 = icmp eq i32 %55, 251
  br i1 %56, label %60, label %49

57:                                               ; preds = %49
  %58 = and i32 %50, 254
  %59 = icmp ugt i32 %58, 250
  br i1 %59, label %70, label %60

60:                                               ; preds = %57, %54
  %61 = phi i32 [ %58, %57 ], [ 0, %54 ]
  br label %62

62:                                               ; preds = %67, %60
  %63 = phi i32 [ %68, %67 ], [ 250, %60 ]
  %64 = getelementptr [252 x i8], ptr %1, i32 0, i32 %63
  %65 = load i8, ptr %64, align 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = add nsw i32 %63, -1
  %69 = icmp sgt i32 %63, %61
  br i1 %69, label %62, label %70

70:                                               ; preds = %67, %62, %57
  %71 = phi i32 [ %58, %57 ], [ %61, %62 ], [ %61, %67 ]
  %72 = phi i32 [ %58, %57 ], [ %61, %67 ], [ %63, %62 ]
  %73 = or i32 %71, %45
  %74 = trunc i32 %73 to i8
  %75 = getelementptr i8, ptr %26, i32 5
  store i8 %74, ptr %35, align 1
  %76 = sub i32 %72, %71
  %77 = tail call ptr @skb_put(ptr noundef %2, i32 noundef %76) #16
  %78 = getelementptr i8, ptr %1, i32 %71
  %79 = add i32 %76, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %75, ptr align 1 %78, i32 %79, i1 false)
  %80 = trunc i32 %76 to i8
  %81 = add i8 %80, 4
  store i8 %81, ptr %27, align 1
  br label %85

82:                                               ; preds = %43
  %83 = trunc i32 %45 to i8
  %84 = getelementptr i8, ptr %26, i32 5
  store i8 %83, ptr %35, align 1
  store i8 0, ptr %84, align 1
  br label %85

85:                                               ; preds = %82, %70
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nounwind readonly }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone willreturn }
attributes #20 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i8 0, i8 2}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 2000, i32 2002}
!14 = !{i64 2149079876}
!15 = !{i64 2149075700}
!16 = !{i64 2149075775, i64 2149075802, i64 2149075849, i64 2149075871, i64 2149075899, i64 2149075919}
!17 = !{i64 2149102879}
!18 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!19 = !{i64 2155875813, i64 2155876301, i64 2155875850, i64 2155875906, i64 2155875940, i64 2155875964, i64 2155876005, i64 2155876026, i64 2155876054, i64 2155876088}
!20 = !{i64 2155870904, i64 2155871392, i64 2155870941, i64 2155870997, i64 2155871031, i64 2155871055, i64 2155871096, i64 2155871117, i64 2155871145, i64 2155871179}
!21 = !{i64 2149478648}
!22 = !{i64 2149478865}
!23 = !{i64 2160923119}
!24 = !{!"branch_weights", i32 2002, i32 2000}
!25 = !{i64 480417}
!26 = !{i64 2149322980}
!27 = !{i64 2149323281}
!28 = !{i64 2148205919}
!29 = !{i64 566478, i64 2148056449, i64 2148056475, i64 2148056522, i64 2148056544, i64 2148056572, i64 2148056592}
!30 = !{i64 2148080644, i64 2148080678, i64 2148080712, i64 2148080746, i64 2148080780, i64 2148080816, i64 2148080839}
!31 = !{i64 2148206124}
!32 = !{i64 2148481841, i64 2148482121, i64 2148482455, i64 2148482789}
!33 = !{i64 2148909905}
!34 = !{!"branch_weights", i32 1, i32 4001}
!35 = !{i64 2160389133}
!36 = !{i64 2160389313}
