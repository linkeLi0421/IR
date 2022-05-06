; ModuleID = '/llk/IR/net/mac80211/offchannel.c_pt.bc'
source_filename = "../net/mac80211/offchannel.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_ready_on_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_ready_on_channel\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_ready_on_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_remain_on_channel_expired:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_remain_on_channel_expired\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_remain_on_channel_expired:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.sk_buff_head = type { %union.anon.119, i32, %struct.spinlock }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { ptr, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.132, i32 }
%union.anon.132 = type { ptr }
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
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.144, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%union.anon.144 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_roc_work = type { %struct.list_head, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, ptr, i64, i64, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.117, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
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
%struct.anon.117 = type { i64, i64, i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_mgmt_tx_params = type { ptr, i8, i32, ptr, i32, i8, i8, i32, ptr }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.145 }
%union.anon.145 = type { %struct.anon.151, [16 x i8] }
%struct.anon.151 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
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
%struct.beacon_data = type { ptr, ptr, i32, i32, ptr, [2 x i16], i8, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@.str = private unnamed_addr constant [26 x i8] c"net/mac80211/offchannel.c\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_ieee80211_ready_on_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_ready_on_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_ready_on_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_ready_on_channel to i32), ptr @__kstrtab_ieee80211_ready_on_channel, ptr @__kstrtabns_ieee80211_ready_on_channel }, section "___ksymtab_gpl+ieee80211_ready_on_channel", align 4
@ieee80211_start_next_roc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ieee80211_remain_on_channel_expired = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_remain_on_channel_expired = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_remain_on_channel_expired = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_remain_on_channel_expired to i32), ptr @__kstrtab_ieee80211_remain_on_channel_expired, ptr @__kstrtabns_ieee80211_remain_on_channel_expired }, section "___ksymtab_gpl+ieee80211_remain_on_channel_expired", align 4
@__tracepoint_api_ready_on_channel = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to start next HW ROC (%d)\0A\00", align 1
@__tracepoint_drv_remain_on_channel = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@__tracepoint_api_remain_on_channel_expired = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ieee80211_cancel_roc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"net/mac80211/ieee80211_i.h\00", align 1
@__tracepoint_drv_cancel_remain_on_channel = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ieee80211_ready_on_channel, ptr @__ksymtab_ieee80211_remain_on_channel_expired], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_offchannel_stop_vifs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 26
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 87, i32 noundef 9, ptr noundef null) #9
  br label %59

6:                                                ; preds = %1
  tail call void @ieee80211_stop_queues_by_reason(ptr noundef %0, i32 noundef 65535, i32 noundef 6, i1 noundef zeroext false) #9
  tail call void @ieee80211_flush_queues(ptr noundef %0, ptr noundef null, i1 noundef zeroext false) #9
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %58, label %11

11:                                               ; preds = %55, %6
  %12 = phi ptr [ %56, %55 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 9
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %55, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 58
  %19 = load i32, ptr %18, align 8
  switch i32 %19, label %20 [
    i32 10, label %55
    i32 12, label %55
    i32 6, label %21
  ]

20:                                               ; preds = %17
  tail call void @_set_bit(i32 noundef 1, ptr noundef %13) #9
  br label %21

21:                                               ; preds = %20, %17
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 58, i32 1, i32 17
  %23 = load i8, ptr %22, align 1, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @_set_bit(i32 noundef 2, ptr noundef %13) #9
  store i8 0, ptr %22, align 1
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %12, i32 noundef 512) #9
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32, ptr %18, align 8
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %55, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ieee80211_local, ptr %35, i32 0, i32 95
  %37 = tail call i32 @del_timer_sync(ptr noundef %36) #9
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 57, i32 0, i32 2
  %39 = tail call i32 @del_timer_sync(ptr noundef %38) #9
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 57, i32 0, i32 1
  %41 = tail call i32 @del_timer_sync(ptr noundef %40) #9
  %42 = getelementptr inbounds %struct.ieee80211_local, ptr %35, i32 0, i32 93
  %43 = tail call zeroext i1 @cancel_work_sync(ptr noundef %42) #9
  %44 = load i32, ptr %35, align 8
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %33
  %48 = and i32 %44, -3
  store i32 %48, ptr %35, align 8
  %49 = tail call i32 @ieee80211_hw_config(ptr noundef %35, i32 noundef 16) #9
  %50 = getelementptr inbounds %struct.ieee80211_hw, ptr %35, i32 0, i32 4
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 512
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47, %33
  tail call void @ieee80211_send_nullfunc(ptr noundef %35, ptr noundef %12, i1 noundef zeroext true) #9
  br label %55

55:                                               ; preds = %54, %47, %29, %26, %17, %17, %11
  %56 = load ptr, ptr %12, align 8
  %57 = icmp eq ptr %56, %8
  br i1 %57, label %58, label %11

58:                                               ; preds = %55, %6
  tail call void @mutex_unlock(ptr noundef %7) #9
  br label %59

59:                                               ; preds = %58, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues_by_reason(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_flush_queues(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_bss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_offchannel_return(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 26
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef null) #9
  br label %57

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %56, label %11

11:                                               ; preds = %53, %6
  %12 = phi ptr [ %54, %53 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 58
  %14 = load i32, ptr %13, align 8
  switch i32 %14, label %15 [
    i32 10, label %53
    i32 6, label %17
  ]

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %16) #9
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 9
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %13, align 8
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ieee80211_local, ptr %31, i32 0, i32 92
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  tail call void @ieee80211_send_nullfunc(ptr noundef %31, ptr noundef %12, i1 noundef zeroext false) #9
  br label %47

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.ieee80211_conf, ptr %31, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  tail call void @ieee80211_send_nullfunc(ptr noundef %31, ptr noundef %12, i1 noundef zeroext false) #9
  %41 = getelementptr inbounds %struct.ieee80211_local, ptr %31, i32 0, i32 95
  %42 = load volatile i32, ptr @jiffies, align 64
  %43 = load i32, ptr %37, align 8
  %44 = tail call i32 @__msecs_to_jiffies(i32 noundef %43) #9
  %45 = add i32 %44, %42
  %46 = tail call i32 @mod_timer(ptr noundef %41, i32 noundef %45) #9
  br label %47

47:                                               ; preds = %40, %36, %35
  tail call void @ieee80211_sta_reset_beacon_monitor(ptr noundef %12) #9
  tail call void @ieee80211_sta_reset_conn_monitor(ptr noundef %12) #9
  br label %48

48:                                               ; preds = %47, %25, %22
  %49 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %18) #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 58, i32 1, i32 17
  store i8 1, ptr %52, align 1
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %12, i32 noundef 512) #9
  br label %53

53:                                               ; preds = %51, %48, %17, %11
  %54 = load ptr, ptr %12, align 8
  %55 = icmp eq ptr %54, %8
  br i1 %55, label %56, label %11

56:                                               ; preds = %53, %6
  tail call void @mutex_unlock(ptr noundef %7) #9
  tail call void @ieee80211_wake_queues_by_reason(ptr noundef %0, i32 noundef 65535, i32 noundef 6, i1 noundef zeroext false) #9
  br label %57

57:                                               ; preds = %56, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues_by_reason(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_ready_on_channel(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 106
  store i32 %2, ptr %3, align 4
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_ready_on_channel, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %18 = tail call i32 @__traceiter_api_ready_on_channel(ptr noundef null, ptr noundef %0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  br label %19

19:                                               ; preds = %17, %6, %1
  %20 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 104
  tail call void @ieee80211_queue_work(ptr noundef %0, ptr noundef %20) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_start_next_roc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 103
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @ieee80211_run_deferred_scan(ptr noundef %0) #9
  br label %29

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 36
  %8 = load i8, ptr %7, align 2, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %3, i32 0, i32 3
  %12 = load i8, ptr %11, align 8, !range !8
  %13 = icmp ne i8 %12, 0
  %14 = load i1, ptr @ieee80211_start_next_roc.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !12

17:                                               ; preds = %10
  store i1 true, ptr @ieee80211_start_next_roc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 401, i32 noundef 9, ptr noundef null) #9
  br label %18

18:                                               ; preds = %17, %10
  br i1 %13, label %29, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ieee80211_ops, ptr %21, i32 0, i32 54
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call fastcc void @_ieee80211_start_next_roc(ptr noundef %0)
  br label %29

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 102
  %28 = tail call i32 @round_jiffies_relative(i32 noundef 50) #9
  tail call void @ieee80211_queue_delayed_work(ptr noundef %0, ptr noundef %27, i32 noundef %28) #9
  br label %29

29:                                               ; preds = %26, %25, %18, %6, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_run_deferred_scan(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_ieee80211_start_next_roc(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 103
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %5, label %6, !prof !12

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 298, i32 noundef 9, ptr noundef null) #9
  br label %188

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %3, i32 0, i32 3
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10, !prof !9

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 304, i32 noundef 9, ptr noundef null) #9
  br label %188

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %3, i32 0, i32 14
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %3, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %3, i32 0, i32 1
  %17 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %3, i32 0, i32 2
  br label %18

18:                                               ; preds = %42, %11
  %19 = phi ptr [ %3, %11 ], [ %46, %42 ]
  %20 = phi i32 [ %13, %11 ], [ %45, %42 ]
  %21 = phi i32 [ %15, %11 ], [ %44, %42 ]
  %22 = phi i32 [ %15, %11 ], [ %43, %42 ]
  %23 = icmp eq ptr %19, %3
  br i1 %23, label %42, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %19, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = load ptr, ptr %16, align 8
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %19, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %17, align 4
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %19, i32 0, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @llvm.umax.i32(i32 %36, i32 %22)
  %38 = tail call i32 @llvm.umin.i32(i32 %36, i32 %21)
  %39 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %19, i32 0, i32 14
  %40 = load i32, ptr %39, align 8
  %41 = tail call i32 @llvm.umax.i32(i32 %40, i32 %20)
  br label %42

42:                                               ; preds = %34, %18
  %43 = phi i32 [ %22, %18 ], [ %37, %34 ]
  %44 = phi i32 [ %21, %18 ], [ %38, %34 ]
  %45 = phi i32 [ %20, %18 ], [ %41, %34 ]
  %46 = load ptr, ptr %19, align 4
  %47 = icmp eq ptr %46, %2
  br i1 %47, label %48, label %18

48:                                               ; preds = %42, %29, %24
  %49 = phi i32 [ %43, %42 ], [ %22, %29 ], [ %22, %24 ]
  %50 = phi i32 [ %44, %42 ], [ %21, %29 ], [ %21, %24 ]
  %51 = phi i32 [ %45, %42 ], [ %20, %29 ], [ %20, %24 ]
  %52 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ieee80211_ops, ptr %53, i32 0, i32 54
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %143, label %57

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %3, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %3, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_remain_on_channel, i32 0, i32 1), align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %57
  %65 = tail call ptr @llvm.thread.pointer() #9
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 5
  %69 = getelementptr i32, ptr @__cpu_online_mask, i32 %68
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %67, 31
  %72 = shl nuw i32 1, %71
  %73 = and i32 %72, %70
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %64
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %76 = tail call i32 @__traceiter_drv_remain_on_channel(ptr noundef null, ptr noundef %0, ptr noundef %59, ptr noundef %61, i32 noundef %49, i32 noundef %51) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %77 = load ptr, ptr %52, align 4
  %78 = getelementptr inbounds %struct.ieee80211_ops, ptr %77, i32 0, i32 54
  %79 = load ptr, ptr %78, align 4
  br label %80

80:                                               ; preds = %75, %64, %57
  %81 = phi ptr [ %79, %75 ], [ %55, %64 ], [ %55, %57 ]
  %82 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %59, i32 0, i32 58
  %83 = tail call i32 %81(ptr noundef %0, ptr noundef %82, ptr noundef %61, i32 noundef %49, i32 noundef %51) #9
  %84 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = tail call ptr @llvm.thread.pointer() #9
  %88 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %89 = load i32, ptr %88, align 8
  %90 = lshr i32 %89, 5
  %91 = getelementptr i32, ptr @__cpu_online_mask, i32 %90
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %89, 31
  %94 = shl nuw i32 1, %93
  %95 = and i32 %94, %92
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %86
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %98 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %83) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %99

99:                                               ; preds = %97, %86, %80
  %100 = icmp eq i32 %83, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = load ptr, ptr %2, align 4
  %103 = icmp eq ptr %102, %2
  br i1 %103, label %188, label %128

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.wiphy, ptr %106, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %107, ptr noundef nonnull @.str.2, i32 noundef %83) #10
  %108 = load ptr, ptr %2, align 4
  %109 = icmp eq ptr %108, %2
  br i1 %109, label %126, label %110

110:                                              ; preds = %121, %104
  %111 = phi ptr [ %124, %121 ], [ %108, %104 ]
  %112 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %111, i32 0, i32 1
  %113 = load ptr, ptr %112, align 8
  %114 = load ptr, ptr %58, align 8
  %115 = icmp eq ptr %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %111, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = load ptr, ptr %60, align 4
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %111, i32 0, i32 3
  store i8 1, ptr %122, align 8
  %123 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %111, i32 0, i32 4
  store i8 1, ptr %123, align 1
  %124 = load ptr, ptr %111, align 4
  %125 = icmp eq ptr %124, %2
  br i1 %125, label %126, label %110

126:                                              ; preds = %121, %116, %110, %104
  %127 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 105
  tail call void @ieee80211_queue_work(ptr noundef %0, ptr noundef %127) #9
  br label %188

128:                                              ; preds = %139, %101
  %129 = phi ptr [ %141, %139 ], [ %102, %101 ]
  %130 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 8
  %132 = load ptr, ptr %58, align 8
  %133 = icmp eq ptr %131, %132
  br i1 %133, label %134, label %188

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %129, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  %137 = load ptr, ptr %60, align 4
  %138 = icmp eq ptr %136, %137
  br i1 %138, label %139, label %188

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %129, i32 0, i32 3
  store i8 1, ptr %140, align 8
  %141 = load ptr, ptr %129, align 4
  %142 = icmp eq ptr %141, %2
  br i1 %142, label %188, label %128

143:                                              ; preds = %48
  %144 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %3, i32 0, i32 2
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86
  %147 = load ptr, ptr %146, align 8
  %148 = icmp eq ptr %145, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86, i32 1
  %151 = load i32, ptr %150, align 4
  %152 = add i32 %151, -8
  %153 = icmp ult i32 %152, -2
  br label %154

154:                                              ; preds = %149, %143
  %155 = phi i1 [ false, %143 ], [ %153, %149 ]
  %156 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %3, i32 0, i32 7
  %157 = zext i1 %155 to i8
  store i8 %157, ptr %156, align 4
  tail call void @ieee80211_recalc_idle(ptr noundef %0) #9
  %158 = load i8, ptr %156, align 4, !range !8
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  tail call void @ieee80211_offchannel_stop_vifs(ptr noundef %0)
  %161 = load ptr, ptr %144, align 4
  %162 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 87
  store ptr %161, ptr %162, align 4
  %163 = tail call i32 @ieee80211_hw_config(ptr noundef %0, i32 noundef 0) #9
  br label %164

164:                                              ; preds = %160, %154
  %165 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 102
  %166 = tail call i32 @__msecs_to_jiffies(i32 noundef %50) #9
  tail call void @ieee80211_queue_delayed_work(ptr noundef %0, ptr noundef %165, i32 noundef %166) #9
  %167 = load ptr, ptr %2, align 4
  %168 = icmp eq ptr %167, %2
  br i1 %168, label %188, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %3, i32 0, i32 1
  br label %171

171:                                              ; preds = %182, %169
  %172 = phi ptr [ %167, %169 ], [ %186, %182 ]
  %173 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %172, i32 0, i32 1
  %174 = load ptr, ptr %173, align 8
  %175 = load ptr, ptr %170, align 8
  %176 = icmp eq ptr %174, %175
  br i1 %176, label %177, label %188

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %172, i32 0, i32 2
  %179 = load ptr, ptr %178, align 4
  %180 = load ptr, ptr %144, align 4
  %181 = icmp eq ptr %179, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load i8, ptr %156, align 4, !range !8
  %184 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %172, i32 0, i32 7
  store i8 %183, ptr %184, align 4
  %185 = load volatile i32, ptr @jiffies, align 64
  tail call fastcc void @ieee80211_handle_roc_started(ptr noundef %172, i32 noundef %185)
  %186 = load ptr, ptr %172, align 4
  %187 = icmp eq ptr %186, %2
  br i1 %187, label %188, label %171

188:                                              ; preds = %182, %177, %171, %164, %139, %134, %128, %126, %101, %10, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_remain_on_channel_expired(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_remain_on_channel_expired, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %16 = tail call i32 @__traceiter_api_remain_on_channel_expired(ptr noundef null, ptr noundef %0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %17

17:                                               ; preds = %15, %4, %1
  %18 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 105
  tail call void @ieee80211_queue_work(ptr noundef %0, ptr noundef %18) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_remain_on_channel(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr i8, ptr %1, i32 -8
  %7 = getelementptr i8, ptr %1, i32 348
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %8, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %9) #9
  %10 = tail call fastcc i32 @ieee80211_start_roc_work(ptr noundef %8, ptr noundef %6, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef null, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %9) #9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_start_roc_work(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.ieee80211_channel, ptr %2, i32 0, i32 2
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %202

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 26
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ieee80211_ops, ptr %17, i32 0, i32 54
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %202, label %21

21:                                               ; preds = %15, %11
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 64) #11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %202, label %25

25:                                               ; preds = %21
  %26 = icmp eq i32 %3, 0
  %27 = select i1 %26, i32 10, i32 %3
  %28 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %23, i32 0, i32 2
  store ptr %2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %23, i32 0, i32 9
  store i32 %27, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %23, i32 0, i32 10
  store i32 %27, ptr %30, align 8
  %31 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %23, i32 0, i32 11
  store ptr %5, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %23, i32 0, i32 14
  store i32 %6, ptr %32, align 8
  %33 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %23, i32 0, i32 1
  store ptr %1, ptr %33, align 8
  %34 = icmp eq ptr %5, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = tail call i64 @ieee80211_mgmt_tx_cookie(ptr noundef %0) #9
  %37 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %23, i32 0, i32 12
  store i64 %36, ptr %37, align 8
  store i64 %36, ptr %4, align 8
  br label %41

38:                                               ; preds = %25
  %39 = load i64, ptr %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %23, i32 0, i32 13
  store i64 %39, ptr %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 103
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 67
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %198

49:                                               ; preds = %45
  %50 = tail call zeroext i1 @ieee80211_is_radar_required(ptr noundef %0) #9
  br i1 %50, label %51, label %53

51:                                               ; preds = %49
  %52 = load ptr, ptr %42, align 4
  br label %73

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.ieee80211_ops, ptr %55, i32 0, i32 54
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 103, i32 1
  %61 = load ptr, ptr %60, align 4
  store ptr %23, ptr %60, align 4
  store ptr %42, ptr %23, align 8
  %62 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %61, ptr %62, align 4
  store volatile ptr %23, ptr %61, align 4
  %63 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 102
  tail call void @ieee80211_queue_delayed_work(ptr noundef %0, ptr noundef %63, i32 noundef 0) #9
  br label %202

64:                                               ; preds = %53
  %65 = tail call fastcc i32 @drv_remain_on_channel(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %27, i32 noundef %6)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  tail call void @kfree(ptr noundef nonnull %23) #9
  br label %202

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %23, i32 0, i32 3
  store i8 1, ptr %69, align 8
  %70 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 103, i32 1
  %71 = load ptr, ptr %70, align 4
  store ptr %23, ptr %70, align 4
  store ptr %42, ptr %23, align 8
  %72 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %71, ptr %72, align 4
  store volatile ptr %23, ptr %71, align 4
  br label %202

73:                                               ; preds = %51, %41
  %74 = phi ptr [ %52, %51 ], [ %43, %41 ]
  %75 = icmp eq ptr %74, %42
  br i1 %75, label %198, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %78 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  br label %79

79:                                               ; preds = %194, %76
  %80 = phi ptr [ %74, %76 ], [ %196, %194 ]
  %81 = phi i1 [ true, %76 ], [ %195, %194 ]
  %82 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %80, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %2
  br i1 %84, label %85, label %194

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %80, i32 0, i32 1
  %87 = load ptr, ptr %86, align 8
  %88 = icmp eq ptr %87, %1
  br i1 %88, label %89, label %194

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %80, i32 0, i32 3
  %91 = load i8, ptr %90, align 8, !range !8
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load ptr, ptr %80, align 4
  %95 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  store ptr %23, ptr %95, align 4
  store ptr %94, ptr %23, align 8
  %96 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %80, ptr %96, align 4
  store volatile ptr %23, ptr %80, align 4
  br label %202

97:                                               ; preds = %89
  br i1 %81, label %98, label %194

98:                                               ; preds = %97
  %99 = load ptr, ptr %77, align 4
  %100 = getelementptr inbounds %struct.ieee80211_ops, ptr %99, i32 0, i32 54
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  %103 = load volatile i32, ptr @jiffies, align 64
  br i1 %102, label %104, label %163

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %80, i32 0, i32 8
  %106 = load i32, ptr %105, align 8
  %107 = sub i32 %103, %106
  %108 = tail call i32 @jiffies_to_msecs(i32 noundef %107) #9
  %109 = load ptr, ptr %78, align 8
  %110 = getelementptr inbounds %struct.wiphy, ptr %109, i32 0, i32 42
  %111 = load i16, ptr %110, align 32
  %112 = zext i16 %111 to i32
  %113 = load i32, ptr %29, align 4
  %114 = add i32 %113, %108
  %115 = icmp ugt i32 %114, %112
  br i1 %115, label %194, label %116

116:                                              ; preds = %104
  %117 = load ptr, ptr %80, align 4
  %118 = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  store ptr %23, ptr %118, align 4
  store ptr %117, ptr %23, align 8
  %119 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %80, ptr %119, align 4
  store volatile ptr %23, ptr %80, align 4
  %120 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %80, i32 0, i32 7
  %121 = load i8, ptr %120, align 4, !range !8
  %122 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %23, i32 0, i32 7
  store i8 %121, ptr %122, align 4
  tail call fastcc void @ieee80211_handle_roc_started(ptr noundef nonnull %23, i32 noundef %103)
  %123 = load ptr, ptr %42, align 4
  %124 = icmp eq ptr %123, %42
  br i1 %124, label %202, label %125

125:                                              ; preds = %152, %116
  %126 = phi ptr [ %128, %152 ], [ %123, %116 ]
  %127 = phi i32 [ %153, %152 ], [ 2147483647, %116 ]
  %128 = load ptr, ptr %126, align 8
  %129 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %126, i32 0, i32 3
  %130 = load i8, ptr %129, align 8, !range !8
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %155, label %132

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %126, i32 0, i32 8
  %134 = load i32, ptr %133, align 8
  %135 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %126, i32 0, i32 9
  %136 = load i32, ptr %135, align 4
  %137 = tail call i32 @__msecs_to_jiffies(i32 noundef %136) #9
  %138 = sub i32 %134, %103
  %139 = add i32 %137, %138
  %140 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %126, i32 0, i32 4
  %141 = load i8, ptr %140, align 1, !range !8
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %132
  %144 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %126, i32 0, i32 5
  %145 = load i8, ptr %144, align 2, !range !8
  %146 = icmp ne i8 %145, 0
  %147 = icmp slt i32 %139, 1
  %148 = select i1 %146, i1 true, i1 %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143, %132
  tail call fastcc void @ieee80211_roc_notify_destroy(ptr noundef %126) #9
  br label %152

150:                                              ; preds = %143
  %151 = tail call i32 @llvm.smin.i32(i32 %127, i32 %139) #9
  br label %152

152:                                              ; preds = %150, %149
  %153 = phi i32 [ %127, %149 ], [ %151, %150 ]
  %154 = icmp eq ptr %128, %42
  br i1 %154, label %155, label %125

155:                                              ; preds = %152, %125
  %156 = phi i32 [ %127, %125 ], [ %153, %152 ]
  %157 = icmp eq i32 %156, 2147483647
  br i1 %157, label %202, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 9
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 102
  %162 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %160, ptr noundef %161, i32 noundef %156) #9
  br label %202

163:                                              ; preds = %98
  %164 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %80, i32 0, i32 5
  %165 = load i8, ptr %164, align 2, !range !8
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %80, i32 0, i32 9
  %169 = load i32, ptr %168, align 4
  br label %175

170:                                              ; preds = %163
  %171 = load i32, ptr %29, align 4
  %172 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %80, i32 0, i32 9
  %173 = load i32, ptr %172, align 4
  %174 = icmp ugt i32 %171, %173
  br i1 %174, label %194, label %175

175:                                              ; preds = %170, %167
  %176 = phi i32 [ %169, %167 ], [ %173, %170 ]
  %177 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %80, i32 0, i32 8
  %178 = load i32, ptr %177, align 8
  %179 = tail call i32 @__msecs_to_jiffies(i32 noundef %176) #9
  %180 = sub i32 %178, %103
  %181 = add i32 %180, %179
  %182 = load i32, ptr %29, align 4
  %183 = tail call i32 @jiffies_to_msecs(i32 noundef %181) #9
  %184 = icmp ugt i32 %182, %183
  br i1 %184, label %194, label %185

185:                                              ; preds = %175
  %186 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %80, i32 0, i32 5
  %187 = load ptr, ptr %80, align 4
  %188 = getelementptr inbounds %struct.list_head, ptr %187, i32 0, i32 1
  store ptr %23, ptr %188, align 4
  store ptr %187, ptr %23, align 8
  %189 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %80, ptr %189, align 4
  store volatile ptr %23, ptr %80, align 4
  %190 = load i8, ptr %186, align 2, !range !8
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %202, label %192

192:                                              ; preds = %185
  %193 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %23, i32 0, i32 5
  store i8 1, ptr %193, align 2
  tail call fastcc void @ieee80211_handle_roc_started(ptr noundef %23, i32 noundef %103) #9
  br label %202

194:                                              ; preds = %175, %170, %104, %97, %85, %79
  %195 = phi i1 [ %81, %79 ], [ %81, %85 ], [ false, %97 ], [ false, %170 ], [ false, %175 ], [ false, %104 ]
  %196 = load ptr, ptr %80, align 4
  %197 = icmp eq ptr %196, %42
  br i1 %197, label %198, label %79

198:                                              ; preds = %194, %73, %45
  %199 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 103, i32 1
  %200 = load ptr, ptr %199, align 4
  store ptr %23, ptr %199, align 4
  store ptr %42, ptr %23, align 8
  %201 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %200, ptr %201, align 4
  store volatile ptr %23, ptr %200, align 4
  br label %202

202:                                              ; preds = %198, %192, %185, %158, %155, %116, %93, %68, %67, %59, %21, %15, %7
  %203 = phi i32 [ %65, %67 ], [ -95, %7 ], [ -95, %15 ], [ -12, %21 ], [ 0, %68 ], [ 0, %59 ], [ 0, %93 ], [ 0, %198 ], [ 0, %116 ], [ 0, %155 ], [ 0, %158 ], [ 0, %192 ], [ 0, %185 ]
  ret i32 %203
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_cancel_remain_on_channel(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %1, i32 348
  %5 = load ptr, ptr %4, align 4
  %6 = tail call fastcc i32 @ieee80211_cancel_roc(ptr noundef %5, i64 noundef %2, i1 noundef zeroext false)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_cancel_roc(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %112, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 104
  %7 = tail call zeroext i1 @flush_work(ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 103
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %110, label %12

12:                                               ; preds = %23, %5
  %13 = phi ptr [ %14, %23 ], [ %10, %5 ]
  %14 = load ptr, ptr %13, align 8
  br i1 %2, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %13, i32 0, i32 12
  %17 = load i64, ptr %16, align 8
  %18 = icmp eq i64 %17, %1
  br i1 %18, label %25, label %23

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %13, i32 0, i32 13
  %21 = load i64, ptr %20, align 8
  %22 = icmp eq i64 %21, %1
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %15
  %24 = icmp eq ptr %14, %9
  br i1 %24, label %110, label %12

25:                                               ; preds = %19, %15
  %26 = icmp eq ptr %13, null
  br i1 %26, label %110, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %13, i32 0, i32 3
  %29 = load i8, ptr %28, align 8, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call fastcc void @ieee80211_roc_notify_destroy(ptr noundef nonnull %13)
  br label %110

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ieee80211_ops, ptr %34, i32 0, i32 54
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %104, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %13, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_cancel_remain_on_channel, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = tail call ptr @llvm.thread.pointer() #9
  %45 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = lshr i32 %46, 5
  %48 = getelementptr i32, ptr @__cpu_online_mask, i32 %47
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %46, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %49
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %55 = tail call i32 @__traceiter_drv_cancel_remain_on_channel(ptr noundef null, ptr noundef %0, ptr noundef %40) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %56 = load ptr, ptr %33, align 4
  br label %57

57:                                               ; preds = %54, %43, %38
  %58 = phi ptr [ %56, %54 ], [ %34, %43 ], [ %34, %38 ]
  %59 = getelementptr inbounds %struct.ieee80211_ops, ptr %58, i32 0, i32 55
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %40, i32 0, i32 58
  %62 = tail call i32 %60(ptr noundef %0, ptr noundef %61) #9
  %63 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %57
  %66 = tail call ptr @llvm.thread.pointer() #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %77 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %62) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %78

78:                                               ; preds = %76, %65, %57
  %79 = icmp ne i32 %62, 0
  %80 = load i1, ptr @ieee80211_cancel_roc.__already_done, align 1
  %81 = xor i1 %80, true
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %84, !prof !12

83:                                               ; preds = %78
  store i1 true, ptr @ieee80211_cancel_roc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 721, i32 noundef 9, ptr noundef null) #9
  br label %84

84:                                               ; preds = %83, %78
  br i1 %79, label %110, label %85

85:                                               ; preds = %84
  %86 = load ptr, ptr %9, align 4
  %87 = icmp eq ptr %86, %9
  br i1 %87, label %102, label %88

88:                                               ; preds = %94, %85
  %89 = phi ptr [ %95, %94 ], [ %86, %85 ]
  %90 = phi ptr [ %97, %94 ], [ %13, %85 ]
  %91 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %89, i32 0, i32 3
  %92 = load i8, ptr %91, align 8, !range !8
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %88
  %95 = load ptr, ptr %89, align 8
  %96 = icmp eq ptr %89, %90
  %97 = select i1 %96, ptr null, ptr %90
  tail call fastcc void @ieee80211_roc_notify_destroy(ptr noundef %89)
  %98 = icmp eq ptr %95, %9
  br i1 %98, label %99, label %88

99:                                               ; preds = %94, %88
  %100 = phi ptr [ %97, %94 ], [ %90, %88 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102, !prof !9

102:                                              ; preds = %99, %85
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 740, i32 noundef 9, ptr noundef null) #9
  br label %103

103:                                              ; preds = %102, %99
  tail call void @ieee80211_start_next_roc(ptr noundef %0)
  br label %110

104:                                              ; preds = %32
  %105 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %13, i32 0, i32 4
  store i8 1, ptr %105, align 1
  %106 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 9
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 102
  %109 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %107, ptr noundef %108, i32 noundef 0) #9
  br label %110

110:                                              ; preds = %104, %103, %84, %31, %25, %23, %5
  %111 = phi i32 [ -2, %5 ], [ -2, %25 ], [ %62, %84 ], [ 0, %103 ], [ 0, %104 ], [ 0, %31 ], [ -2, %23 ]
  tail call void @mutex_unlock(ptr noundef %8) #9
  br label %112

112:                                              ; preds = %110, %3
  %113 = phi i32 [ -2, %3 ], [ %111, %110 ]
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_mgmt_tx(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr i8, ptr %1, i32 -8
  %6 = getelementptr i8, ptr %1, i32 348
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %2, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %2, i32 0, i32 6
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 2097153, i32 4
  %14 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %2, i32 0, i32 5
  %15 = load i8, ptr %14, align 4, !range !8
  %16 = icmp eq i8 %15, 0
  %17 = or i32 %13, 134217728
  %18 = select i1 %16, i32 %13, i32 %17
  %19 = getelementptr i8, ptr %1, i32 2256
  %20 = load i32, ptr %19, align 8
  switch i32 %20, label %198 [
    i32 1, label %21
    i32 3, label %25
    i32 4, label %25
    i32 9, label %25
    i32 2, label %44
    i32 8, label %44
    i32 10, label %71
  ]

21:                                               ; preds = %4
  %22 = getelementptr i8, ptr %1, i32 2280
  %23 = load i8, ptr %22, align 8, !range !8
  %24 = xor i8 %23, 1
  br label %31

25:                                               ; preds = %4, %4, %4
  %26 = getelementptr i8, ptr %1, i32 1172
  %27 = load ptr, ptr %26, align 4
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  %30 = zext i1 %29 to i8
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi i8 [ %30, %25 ], [ %24, %21 ]
  %33 = load i16, ptr %9, align 2
  %34 = and i16 %33, 252
  %35 = icmp eq i16 %34, 208
  %36 = icmp eq i8 %32, 0
  br i1 %35, label %37, label %70

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %9, i32 0, i32 6
  %39 = load i8, ptr %38, align 2
  switch i8 %39, label %40 [
    i8 4, label %70
    i8 15, label %70
    i8 0, label %70
  ]

40:                                               ; preds = %37
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  %41 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %9, i32 0, i32 2
  %42 = tail call ptr @sta_info_get_bss(ptr noundef %5, ptr noundef %41) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  %43 = icmp eq ptr %42, null
  br i1 %43, label %198, label %70

44:                                               ; preds = %4, %4
  %45 = getelementptr i8, ptr %1, i32 36
  tail call void @mutex_lock(ptr noundef %45) #9
  %46 = getelementptr i8, ptr %1, i32 1560
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %69, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %2, i32 0, i32 1
  %51 = load i8, ptr %50, align 4, !range !8
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %2, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ieee80211_ops, ptr %59, i32 0, i32 54
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.cfg80211_bss, ptr %47, i32 0, i32 11
  %65 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %9, i32 0, i32 4
  %66 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %64, ptr noundef dereferenceable(6) %65, i32 6)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %57, %53, %49
  tail call void @mutex_unlock(ptr noundef %45) #9
  br label %76

69:                                               ; preds = %63, %44
  tail call void @mutex_unlock(ptr noundef %45) #9
  br label %71

70:                                               ; preds = %40, %37, %37, %37, %31
  br i1 %36, label %76, label %71

71:                                               ; preds = %70, %69, %4
  %72 = load ptr, ptr %2, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %198, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %75) #9
  br label %89

76:                                               ; preds = %70, %68
  %77 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %77) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  %78 = getelementptr i8, ptr %1, i32 3076
  %79 = load volatile ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  %81 = load ptr, ptr %2, align 4
  %82 = icmp eq ptr %81, null
  br i1 %80, label %85, label %83

83:                                               ; preds = %76
  br i1 %82, label %84, label %86

84:                                               ; preds = %83
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  br label %94

85:                                               ; preds = %76
  tail call void asm sideeffect "", "~{memory}"() #9
  br i1 %82, label %195, label %89

86:                                               ; preds = %83
  %87 = load ptr, ptr %79, align 4
  %88 = icmp eq ptr %81, %87
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  br i1 %88, label %94, label %89

89:                                               ; preds = %86, %85, %74
  %90 = phi ptr [ %75, %74 ], [ %77, %86 ], [ %77, %85 ]
  %91 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %2, i32 0, i32 1
  %92 = load i8, ptr %91, align 4, !range !8
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %195, label %94

94:                                               ; preds = %89, %86, %84
  %95 = phi i1 [ true, %89 ], [ false, %86 ], [ false, %84 ]
  %96 = phi ptr [ %90, %89 ], [ %77, %86 ], [ %77, %84 ]
  %97 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 5
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %2, i32 0, i32 4
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, %98
  %102 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %101, i32 noundef 2592) #9
  %103 = icmp eq ptr %102, null
  br i1 %103, label %195, label %104

104:                                              ; preds = %94
  %105 = load i32, ptr %97, align 4
  %106 = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 17
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %107, i32 %105
  store ptr %108, ptr %106, align 4
  %109 = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 14
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr i8, ptr %110, i32 %105
  store ptr %111, ptr %109, align 8
  %112 = load ptr, ptr %8, align 4
  %113 = load i32, ptr %99, align 4
  %114 = tail call ptr @skb_put(ptr noundef nonnull %102, i32 noundef %113) #9
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %114, ptr align 1 %112, i32 %113, i1 false) #9
  %115 = getelementptr i8, ptr %1, i32 3063
  %116 = load i8, ptr %115, align 1, !range !8
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %150, label %118

118:                                              ; preds = %104
  %119 = load i32, ptr %19, align 8
  switch i32 %119, label %150 [
    i32 3, label %120
    i32 7, label %120
    i32 1, label %120
  ]

120:                                              ; preds = %118, %118, %118
  %121 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %2, i32 0, i32 7
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %150, label %124

124:                                              ; preds = %120
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  %125 = load i32, ptr %19, align 8
  switch i32 %125, label %149 [
    i32 3, label %127
    i32 1, label %126
  ]

126:                                              ; preds = %124
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i32 [ 1528, %126 ], [ 1400, %124 ]
  %129 = getelementptr i8, ptr %1, i32 %128
  %130 = load volatile ptr, ptr %129, align 8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %149, label %132

132:                                              ; preds = %127
  %133 = load i32, ptr %121, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.beacon_data, ptr %130, i32 0, i32 6
  %137 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %2, i32 0, i32 8
  br label %138

138:                                              ; preds = %138, %135
  %139 = phi i32 [ 0, %135 ], [ %146, %138 ]
  %140 = load i8, ptr %136, align 4
  %141 = load ptr, ptr %137, align 4
  %142 = getelementptr i16, ptr %141, i32 %139
  %143 = load i16, ptr %142, align 2
  %144 = zext i16 %143 to i32
  %145 = getelementptr i8, ptr %114, i32 %144
  store i8 %140, ptr %145, align 1
  %146 = add nuw nsw i32 %139, 1
  %147 = load i32, ptr %121, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %138, label %149

149:                                              ; preds = %138, %132, %127, %124
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  br label %150

150:                                              ; preds = %149, %120, %118, %104
  %151 = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 3
  store i32 %18, ptr %151, align 8
  %152 = getelementptr i8, ptr %1, i32 344
  %153 = load ptr, ptr %152, align 8
  %154 = getelementptr inbounds %struct.anon.46, ptr %102, i32 0, i32 2
  store ptr %153, ptr %154, align 8
  %155 = load i8, ptr %10, align 1, !range !8
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = tail call i32 @ieee80211_attach_ack_skb(ptr noundef %7, ptr noundef nonnull %102, ptr noundef %3, i32 noundef 3264) #9
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %157
  tail call void @kfree_skb_reason(ptr noundef nonnull %102, i32 noundef 0) #9
  br label %195

161:                                              ; preds = %150
  store i64 4294967295, ptr %3, align 8
  br label %162

162:                                              ; preds = %161, %157
  br i1 %95, label %171, label %163

163:                                              ; preds = %162
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  %164 = getelementptr i8, ptr %1, i32 3076
  %165 = load volatile ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %168, !prof !12

167:                                              ; preds = %163
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2200, i32 noundef 9, ptr noundef null) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  tail call void @kfree_skb_reason(ptr noundef nonnull %102, i32 noundef 0) #9
  br label %195

168:                                              ; preds = %163
  %169 = load ptr, ptr %165, align 4
  %170 = load i32, ptr %169, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %5, ptr noundef nonnull %102, i32 noundef 7, i32 noundef %170) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  br label %195

171:                                              ; preds = %162
  %172 = load i32, ptr %151, align 8
  %173 = or i32 %172, 33562624
  store i32 %173, ptr %151, align 8
  %174 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 4
  %175 = load volatile i32, ptr %174, align 4
  %176 = and i32 %175, 262144
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %188, label %178

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 20
  %180 = load i8, ptr %179, align 1
  %181 = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 3, i32 4
  %182 = load i32, ptr %181, align 4
  %183 = and i8 %180, 15
  %184 = zext i8 %183 to i32
  %185 = shl nuw nsw i32 %184, 16
  %186 = and i32 %182, -983041
  %187 = or i32 %185, %186
  store i32 %187, ptr %181, align 4
  br label %188

188:                                              ; preds = %178, %171
  %189 = load ptr, ptr %2, align 4
  %190 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %2, i32 0, i32 2
  %191 = load i32, ptr %190, align 4
  %192 = tail call fastcc i32 @ieee80211_start_roc_work(ptr noundef %7, ptr noundef %5, ptr noundef %189, i32 noundef %191, ptr noundef %3, ptr noundef nonnull %102, i32 noundef 1)
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %188
  tail call void @ieee80211_free_txskb(ptr noundef %7, ptr noundef nonnull %102) #9
  br label %195

195:                                              ; preds = %194, %188, %168, %167, %160, %94, %89, %85
  %196 = phi ptr [ %96, %194 ], [ %96, %188 ], [ %96, %160 ], [ %90, %89 ], [ %96, %94 ], [ %96, %167 ], [ %96, %168 ], [ %77, %85 ]
  %197 = phi i32 [ %192, %194 ], [ 0, %188 ], [ %158, %160 ], [ -16, %89 ], [ -12, %94 ], [ 0, %167 ], [ 0, %168 ], [ -22, %85 ]
  tail call void @mutex_unlock(ptr noundef %196) #9
  br label %198

198:                                              ; preds = %195, %71, %40, %4
  %199 = phi i32 [ %197, %195 ], [ -67, %40 ], [ -95, %4 ], [ -22, %71 ]
  ret i32 %199
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get_bss(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_attach_ack_skb(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_mgmt_tx_cancel_wait(ptr noundef %0, ptr nocapture noundef readnone %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !12

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #9, !srcloc !23
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %8 = tail call fastcc i32 @ieee80211_cancel_roc(ptr noundef %7, i64 noundef %2, i1 noundef zeroext true)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_roc_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 104
  store i32 -32, ptr %2, align 4
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 104, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 104, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 104, i32 2
  store ptr @ieee80211_hw_roc_start, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 105
  store i32 -32, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 105, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 105, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 105, i32 2
  store ptr @ieee80211_hw_roc_done, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 102
  store i32 -32, ptr %10, align 8
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 102, i32 0, i32 1
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 102, i32 0, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 102, i32 0, i32 2
  store ptr @ieee80211_roc_work, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 102, i32 1
  tail call void @init_timer_key(ptr noundef %14, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #9
  %15 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 103
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 103, i32 1
  store ptr %15, ptr %16, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_hw_roc_start(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -452
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 32
  br label %8

8:                                                ; preds = %13, %6
  %9 = phi ptr [ %4, %6 ], [ %16, %13 ]
  %10 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %9, i32 0, i32 3
  %11 = load i8, ptr %10, align 8, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %9, i32 0, i32 5
  store i8 1, ptr %14, align 2
  %15 = load i32, ptr %7, align 4
  tail call fastcc void @ieee80211_handle_roc_started(ptr noundef %9, i32 noundef %15)
  %16 = load ptr, ptr %9, align 4
  %17 = icmp eq ptr %16, %3
  br i1 %17, label %18, label %8

18:                                               ; preds = %13, %8, %1
  tail call void @mutex_unlock(ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_hw_roc_done(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -468
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = getelementptr i8, ptr %0, i32 -24
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %33, label %7

7:                                                ; preds = %31, %1
  %8 = phi ptr [ %9, %31 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %8, i32 0, i32 3
  %11 = load i8, ptr %10, align 8, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %8, i32 0, i32 8
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %8, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @__msecs_to_jiffies(i32 noundef %17) #9
  %19 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %8, i32 0, i32 4
  %20 = load i8, ptr %19, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %13
  %23 = sub i32 %15, %3
  %24 = add i32 %18, %23
  %25 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %8, i32 0, i32 5
  %26 = load i8, ptr %25, align 2, !range !8
  %27 = icmp ne i8 %26, 0
  %28 = icmp slt i32 %24, 1
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22, %13
  tail call fastcc void @ieee80211_roc_notify_destroy(ptr noundef %8) #9
  br label %31

31:                                               ; preds = %30, %22
  %32 = icmp eq ptr %9, %4
  br i1 %32, label %33, label %7

33:                                               ; preds = %31, %7, %1
  %34 = getelementptr i8, ptr %0, i32 -4604
  tail call void @ieee80211_start_next_roc(ptr noundef %34)
  tail call void @mutex_unlock(ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_roc_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4536
  %3 = getelementptr i8, ptr %0, i32 -400
  tail call void @mutex_lock(ptr noundef %3) #9
  tail call fastcc void @__ieee80211_roc_work(ptr noundef %2)
  tail call void @mutex_unlock(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_roc_purge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 103
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %75, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  br label %11

11:                                               ; preds = %70, %7
  %12 = phi ptr [ %16, %70 ], [ %5, %7 ]
  %13 = phi i1 [ true, %70 ], [ false, %7 ]
  br label %14

14:                                               ; preds = %68, %11
  %15 = phi ptr [ %16, %68 ], [ %12, %11 ]
  %16 = load ptr, ptr %15, align 8
  br i1 %8, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %68

21:                                               ; preds = %17, %14
  %22 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %15, i32 0, i32 3
  %23 = load i8, ptr %22, align 8, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %67, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr inbounds %struct.ieee80211_ops, ptr %26, i32 0, i32 54
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %70, label %30

30:                                               ; preds = %25
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_cancel_remain_on_channel, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = tail call ptr @llvm.thread.pointer() #9
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %45 = tail call i32 @__traceiter_drv_cancel_remain_on_channel(ptr noundef null, ptr noundef %0, ptr noundef %1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %46 = load ptr, ptr %9, align 4
  br label %47

47:                                               ; preds = %44, %33, %30
  %48 = phi ptr [ %46, %44 ], [ %26, %33 ], [ %26, %30 ]
  %49 = getelementptr inbounds %struct.ieee80211_ops, ptr %48, i32 0, i32 55
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 %50(ptr noundef %0, ptr noundef %10) #9
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = tail call ptr @llvm.thread.pointer() #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %66 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %51) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %67

67:                                               ; preds = %65, %54, %47, %21
  tail call fastcc void @ieee80211_roc_notify_destroy(ptr noundef %15)
  br label %68

68:                                               ; preds = %67, %17
  %69 = icmp eq ptr %16, %4
  br i1 %69, label %73, label %14

70:                                               ; preds = %25
  %71 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %15, i32 0, i32 4
  store i8 1, ptr %71, align 1
  %72 = icmp eq ptr %16, %4
  br i1 %72, label %74, label %11

73:                                               ; preds = %68
  br i1 %13, label %74, label %75

74:                                               ; preds = %73, %70
  tail call fastcc void @__ieee80211_roc_work(ptr noundef %0)
  br label %75

75:                                               ; preds = %74, %73, %2
  tail call void @mutex_unlock(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_roc_notify_destroy(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 13
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  tail call void @cfg80211_mgmt_tx_status(ptr noundef %8, i64 noundef %10, ptr noundef %12, i32 noundef %14, i1 noundef zeroext false, i32 noundef 3264) #9
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %15, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %2, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %17, ptr noundef %18) #9
  br label %19

19:                                               ; preds = %5, %1
  %20 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 13
  %21 = load i64, ptr %20, align 8
  %22 = icmp eq i64 %21, 0
  %23 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %24, i32 0, i32 1
  br i1 %22, label %26, label %31

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 12
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  tail call void @cfg80211_remain_on_channel_expired(ptr noundef %25, i64 noundef %28, ptr noundef %30, i32 noundef 3264) #9
  br label %34

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  tail call void @cfg80211_tx_mgmt_expired(ptr noundef %25, i64 noundef %21, ptr noundef %33, i32 noundef 3264) #9
  br label %34

34:                                               ; preds = %31, %26
  %35 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store volatile ptr %37, ptr %36, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %35, align 4
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ieee80211_roc_work(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_ops, ptr %3, i32 0, i32 54
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 420, i32 noundef 9, ptr noundef null) #9
  br label %71

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 103
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  %12 = icmp eq ptr %10, null
  %13 = or i1 %11, %12
  br i1 %13, label %71, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %10, i32 0, i32 3
  %16 = load i8, ptr %15, align 8, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 26
  %20 = load i8, ptr %19, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22, !prof !9

22:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 429, i32 noundef 9, ptr noundef null) #9
  br label %23

23:                                               ; preds = %22, %18
  tail call fastcc void @_ieee80211_start_next_roc(ptr noundef %0)
  br label %71

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %10, i32 0, i32 7
  %26 = load i8, ptr %25, align 4, !range !8
  %27 = load volatile i32, ptr @jiffies, align 64
  br label %28

28:                                               ; preds = %54, %24
  %29 = phi i32 [ 2147483647, %24 ], [ %52, %54 ]
  %30 = phi ptr [ %10, %24 ], [ %31, %54 ]
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %30, i32 0, i32 8
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %30, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 @__msecs_to_jiffies(i32 noundef %35) #9
  %37 = sub i32 %33, %27
  %38 = add i32 %36, %37
  %39 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %30, i32 0, i32 4
  %40 = load i8, ptr %39, align 1, !range !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %30, i32 0, i32 5
  %44 = load i8, ptr %43, align 2, !range !8
  %45 = icmp ne i8 %44, 0
  %46 = icmp slt i32 %38, 1
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %28
  tail call fastcc void @ieee80211_roc_notify_destroy(ptr noundef %30) #9
  br label %51

49:                                               ; preds = %42
  %50 = tail call i32 @llvm.smin.i32(i32 %29, i32 %38) #9
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ %29, %48 ], [ %50, %49 ]
  %53 = icmp eq ptr %31, %9
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %31, i32 0, i32 3
  %56 = load i8, ptr %55, align 8, !range !8
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %28

58:                                               ; preds = %54, %51
  %59 = icmp eq i32 %52, 2147483647
  br i1 %59, label %65, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 9
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 102
  %64 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %62, ptr noundef %63, i32 noundef %52) #9
  br label %71

65:                                               ; preds = %58
  %66 = icmp eq i8 %26, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  tail call void @ieee80211_flush_queues(ptr noundef %0, ptr noundef null, i1 noundef zeroext false) #9
  %68 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 87
  store ptr null, ptr %68, align 4
  %69 = tail call i32 @ieee80211_hw_config(ptr noundef %0, i32 noundef 0) #9
  tail call void @ieee80211_offchannel_return(ptr noundef %0)
  br label %70

70:                                               ; preds = %67, %65
  tail call void @ieee80211_recalc_idle(ptr noundef %0) #9
  tail call void @ieee80211_start_next_roc(ptr noundef %0)
  br label %71

71:                                               ; preds = %70, %60, %23, %8, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_hw_config(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_nullfunc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_reset_beacon_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_reset_conn_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_ready_on_channel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drv_remain_on_channel(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 {
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_remain_on_channel, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = tail call ptr @llvm.thread.pointer() #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %20 = tail call i32 @__traceiter_drv_remain_on_channel(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %21

21:                                               ; preds = %19, %8, %5
  %22 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ieee80211_ops, ptr %23, i32 0, i32 54
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %27 = tail call i32 %25(ptr noundef %0, ptr noundef %26, ptr noundef %2, i32 noundef %3, i32 noundef %4) #9
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %21
  %31 = tail call ptr @llvm.thread.pointer() #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %42 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %27) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %43

43:                                               ; preds = %41, %30, %21
  ret i32 %27
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_handle_roc_started(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 6
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef null) #9
  br label %35

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 8
  store i32 %1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 3
  store i8 1, ptr %9, align 8
  %10 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 13
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !12

17:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 9, ptr noundef null) #9
  br label %34

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %20, ptr noundef nonnull %15, i32 noundef 7, i32 noundef %23) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  store ptr null, ptr %14, align 4
  br label %34

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 12
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %0, i32 0, i32 10
  %33 = load i32, ptr %32, align 8
  tail call void @cfg80211_ready_on_channel(ptr noundef %27, i64 noundef %29, ptr noundef %31, i32 noundef %33, i32 noundef 3264) #9
  br label %34

34:                                               ; preds = %24, %18, %17
  store i8 1, ptr %3, align 1
  br label %35

35:                                               ; preds = %34, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_remain_on_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ready_on_channel(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_remain_on_channel_expired(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ieee80211_mgmt_tx_cookie(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_is_radar_required(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_cancel_remain_on_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_mgmt_tx_status(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_remain_on_channel_expired(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_tx_mgmt_expired(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2158939527}
!11 = !{i64 2158939689}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2158216395}
!14 = !{i64 2158216617}
!15 = !{i64 2157404520}
!16 = !{i64 2157404680}
!17 = !{i64 2158953027}
!18 = !{i64 2158953207}
!19 = !{i64 2158230584}
!20 = !{i64 2158230776}
!21 = !{i64 2149630178}
!22 = !{i64 2149630395}
!23 = !{i64 2155927008, i64 2155927496, i64 2155927045, i64 2155927101, i64 2155927135, i64 2155927159, i64 2155927200, i64 2155927221, i64 2155927249, i64 2155927283}
