; ModuleID = '/llk/IR/net/wireless/chan.c_pt.bc'
source_filename = "../net/wireless/chan.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_chandef_create:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_chandef_create\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_chandef_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_chandef_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_chandef_valid\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_chandef_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_chandef_compatible:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_chandef_compatible\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_chandef_compatible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_chandef_dfs_required:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_chandef_dfs_required\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_chandef_dfs_required:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_chandef_usable:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_chandef_usable\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_chandef_usable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_reg_can_beacon:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_reg_can_beacon\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_reg_can_beacon:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_reg_can_beacon_relax:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_reg_can_beacon_relax\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_reg_can_beacon_relax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_any_usable_channels:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_any_usable_channels\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_any_usable_channels:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.119, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
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
%struct.anon.119 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cfg80211_registered_device = type { ptr, %struct.list_head, %struct.rfkill_ops, %struct.work_struct, [2 x i8], ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.rb_root, i32, i32, ptr, ptr, ptr, %struct.list_head, i64, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, %struct.delayed_work, %struct.work_struct, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.work_struct, %struct.spinlock, [24 x i8], %struct.wiphy }
%struct.rfkill_ops = type { ptr, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.44, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.83, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.44 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.ref_tracker_dir = type {}
%union.anon.83 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.cfg80211_internal_bss = type { %struct.list_head, %struct.list_head, %struct.rb_node, i64, i32, i32, %struct.atomic_t, i64, [6 x i8], %struct.cfg80211_bss }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }

@.str = private unnamed_addr constant [20 x i8] c"net/wireless/chan.c\00", align 1
@__kstrtab_cfg80211_chandef_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_chandef_create = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_chandef_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_chandef_create to i32), ptr @__kstrtab_cfg80211_chandef_create, ptr @__kstrtabns_cfg80211_chandef_create }, section "___ksymtab+cfg80211_chandef_create", align 4
@__kstrtab_cfg80211_chandef_valid = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_chandef_valid = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_chandef_valid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_chandef_valid to i32), ptr @__kstrtab_cfg80211_chandef_valid, ptr @__kstrtabns_cfg80211_chandef_valid }, section "___ksymtab+cfg80211_chandef_valid", align 4
@__kstrtab_cfg80211_chandef_compatible = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_chandef_compatible = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_chandef_compatible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_chandef_compatible to i32), ptr @__kstrtab_cfg80211_chandef_compatible, ptr @__kstrtabns_cfg80211_chandef_compatible }, section "___ksymtab+cfg80211_chandef_compatible", align 4
@__kstrtab_cfg80211_chandef_dfs_required = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_chandef_dfs_required = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_chandef_dfs_required = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_chandef_dfs_required to i32), ptr @__kstrtab_cfg80211_chandef_dfs_required, ptr @__kstrtabns_cfg80211_chandef_dfs_required }, section "___ksymtab+cfg80211_chandef_dfs_required", align 4
@cfg80211_any_wiphy_oper_chan.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@cfg80211_rdev_list = external dso_local global %struct.list_head, align 4
@cfg80211_chandef_usable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_cfg80211_chandef_usable = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_chandef_usable = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_chandef_usable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_chandef_usable to i32), ptr @__kstrtab_cfg80211_chandef_usable, ptr @__kstrtabns_cfg80211_chandef_usable }, section "___ksymtab+cfg80211_chandef_usable", align 4
@__kstrtab_cfg80211_reg_can_beacon = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_reg_can_beacon = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_reg_can_beacon = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_reg_can_beacon to i32), ptr @__kstrtab_cfg80211_reg_can_beacon, ptr @__kstrtabns_cfg80211_reg_can_beacon }, section "___ksymtab+cfg80211_reg_can_beacon", align 4
@__kstrtab_cfg80211_reg_can_beacon_relax = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_reg_can_beacon_relax = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_reg_can_beacon_relax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_reg_can_beacon_relax to i32), ptr @__kstrtab_cfg80211_reg_can_beacon_relax, ptr @__kstrtabns_cfg80211_reg_can_beacon_relax }, section "___ksymtab+cfg80211_reg_can_beacon_relax", align 4
@__kstrtab_cfg80211_any_usable_channels = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_any_usable_channels = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_any_usable_channels = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_any_usable_channels to i32), ptr @__kstrtab_cfg80211_any_usable_channels, ptr @__kstrtabns_cfg80211_any_usable_channels }, section "___ksymtab+cfg80211_any_usable_channels", align 4
@nl80211_chan_width_to_mhz.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@chandef_primary_freqs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__tracepoint_cfg80211_reg_can_beacon = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_cfg80211_return_bool = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_set_monitor_channel = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_return_int = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_cfg80211_any_usable_channels, ptr @__ksymtab_cfg80211_chandef_compatible, ptr @__ksymtab_cfg80211_chandef_create, ptr @__ksymtab_cfg80211_chandef_dfs_required, ptr @__ksymtab_cfg80211_chandef_usable, ptr @__ksymtab_cfg80211_chandef_valid, ptr @__ksymtab_cfg80211_reg_can_beacon, ptr @__ksymtab_cfg80211_reg_can_beacon_relax], section "llvm.metadata"
@switch.table.cfg80211_chandef_valid = private unnamed_addr constant [13 x i32] [i32 10000, i32 10000, i32 20000, i32 40000, i32 40000, i32 80000, i32 2500, i32 5000, i32 500, i32 1000, i32 2000, i32 4000, i32 8000], align 4
@switch.table.cfg80211_set_dfs_state = private unnamed_addr constant [13 x i32] [i32 10, i32 10, i32 20, i32 40, i32 40, i32 80, i32 2, i32 5, i32 0, i32 1, i32 2, i32 4, i32 8], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_chandef_create(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 27, i32 noundef 9, ptr noundef null) #5
  br label %36

6:                                                ; preds = %3
  store ptr %1, ptr %0, align 4
  %7 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 2
  %8 = load i16, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 5
  store i16 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 3
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 4
  %12 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 4, i32 1
  store i32 0, ptr %12, align 4
  store i8 0, ptr %11, align 4
  switch i32 %2, label %35 [
    i32 0, label %13
    i32 1, label %18
    i32 3, label %23
    i32 2, label %29
  ]

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  br label %36

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 1
  store i32 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  br label %36

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 1
  store i32 2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 10
  %28 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  br label %36

29:                                               ; preds = %6
  %30 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 1
  store i32 2, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -10
  %34 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  br label %36

35:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef null) #5
  br label %36

36:                                               ; preds = %35, %29, %23, %18, %13, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cfg80211_chandef_valid(ptr noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %155, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 5
  %6 = load i16, ptr %5, align 4
  %7 = icmp ugt i16 %6, 999
  br i1 %7, label %155, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ieee80211_channel, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %92 [
    i32 6, label %13
    i32 7, label %13
    i32 1, label %13
    i32 0, label %13
    i32 8, label %29
    i32 9, label %29
    i32 10, label %29
    i32 11, label %29
    i32 12, label %29
    i32 4, label %80
  ]

13:                                               ; preds = %8, %8, %8, %8
  %14 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, 1000
  %17 = zext i16 %6 to i32
  %18 = add i32 %16, %17
  %19 = mul i32 %10, 1000
  %20 = getelementptr inbounds %struct.ieee80211_channel, ptr %2, i32 0, i32 2
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = add i32 %19, %22
  %24 = icmp eq i32 %18, %23
  br i1 %24, label %25, label %155

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %96, label %155

29:                                               ; preds = %8, %8, %8, %8, %8
  %30 = load i32, ptr %2, align 4
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %155

32:                                               ; preds = %29
  %33 = mul i32 %10, 1000
  %34 = getelementptr inbounds %struct.ieee80211_channel, ptr %2, i32 0, i32 2
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = add i32 %33, %36
  %38 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, 1000
  %41 = zext i16 %6 to i32
  %42 = add i32 %40, %41
  %43 = tail call i32 @ieee80211_s1g_channel_width(ptr noundef nonnull %2) #5
  switch i32 %43, label %54 [
    i32 8, label %57
    i32 9, label %44
    i32 10, label %45
    i32 11, label %46
    i32 12, label %47
    i32 6, label %48
    i32 7, label %49
    i32 1, label %50
    i32 0, label %50
    i32 2, label %51
    i32 4, label %52
    i32 3, label %52
    i32 5, label %53
  ]

44:                                               ; preds = %32
  br label %57

45:                                               ; preds = %32
  br label %57

46:                                               ; preds = %32
  br label %57

47:                                               ; preds = %32
  br label %57

48:                                               ; preds = %32
  br label %57

49:                                               ; preds = %32
  br label %57

50:                                               ; preds = %32, %32
  br label %57

51:                                               ; preds = %32
  br label %57

52:                                               ; preds = %32, %32
  br label %57

53:                                               ; preds = %32
  br label %57

54:                                               ; preds = %32
  %55 = load i1, ptr @nl80211_chan_width_to_mhz.__already_done, align 1
  br i1 %55, label %57, label %56, !prof !9

56:                                               ; preds = %54
  store i1 true, ptr @nl80211_chan_width_to_mhz.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 185, i32 noundef 9, ptr noundef null) #5
  br label %57

57:                                               ; preds = %56, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %32
  %58 = phi i1 [ false, %32 ], [ false, %44 ], [ false, %45 ], [ false, %46 ], [ false, %47 ], [ false, %48 ], [ false, %49 ], [ false, %50 ], [ false, %51 ], [ false, %52 ], [ false, %53 ], [ true, %54 ], [ true, %56 ]
  %59 = phi i32 [ 500, %32 ], [ 1000, %44 ], [ 2000, %45 ], [ 4000, %46 ], [ 8000, %47 ], [ 2500, %48 ], [ 5000, %49 ], [ 10000, %50 ], [ 20000, %51 ], [ 40000, %52 ], [ 80000, %53 ], [ 2147483148, %54 ], [ 2147483148, %56 ]
  %60 = load i32, ptr %11, align 4
  %61 = icmp ult i32 %60, 13
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i1, ptr @nl80211_chan_width_to_mhz.__already_done, align 1
  br i1 %63, label %155, label %64, !prof !9

64:                                               ; preds = %62
  store i1 true, ptr @nl80211_chan_width_to_mhz.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 185, i32 noundef 9, ptr noundef null) #5
  br label %155

65:                                               ; preds = %57
  %66 = getelementptr inbounds [13 x i32], ptr @switch.table.cfg80211_chandef_valid, i32 0, i32 %60
  %67 = load i32, ptr %66, align 4
  br i1 %58, label %155, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %155

72:                                               ; preds = %68
  %73 = add i32 %59, %37
  %74 = add i32 %67, %42
  %75 = icmp ugt i32 %73, %74
  br i1 %75, label %155, label %76

76:                                               ; preds = %72
  %77 = sub i32 %37, %59
  %78 = sub i32 %42, %67
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %155, label %96

80:                                               ; preds = %8
  %81 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %155, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = sub i32 %86, %82
  %88 = icmp eq i32 %87, 80
  %89 = sub i32 %82, %86
  %90 = icmp eq i32 %89, 80
  %91 = or i1 %88, %90
  br i1 %91, label %155, label %116

92:                                               ; preds = %8
  %93 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %155

96:                                               ; preds = %92, %76, %25
  %97 = phi i32 [ %12, %92 ], [ %12, %25 ], [ %60, %76 ]
  %98 = phi i32 [ %10, %92 ], [ %10, %25 ], [ %37, %76 ]
  switch i32 %97, label %155 [
    i32 6, label %135
    i32 7, label %135
    i32 1, label %135
    i32 0, label %135
    i32 8, label %135
    i32 9, label %135
    i32 10, label %135
    i32 11, label %135
    i32 12, label %135
    i32 5, label %102
    i32 4, label %116
    i32 3, label %116
    i32 2, label %99
  ]

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  %101 = load i32, ptr %100, align 4
  br label %126

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %98, 70
  %106 = icmp eq i32 %104, %105
  %107 = add i32 %98, 50
  %108 = icmp eq i32 %104, %107
  %109 = or i1 %106, %108
  %110 = add i32 %98, -50
  %111 = icmp eq i32 %104, %110
  %112 = select i1 %109, i1 true, i1 %111
  %113 = add i32 %98, -70
  %114 = icmp eq i32 %104, %113
  %115 = select i1 %112, i1 true, i1 %114
  br i1 %115, label %142, label %116

116:                                              ; preds = %102, %96, %96, %84
  %117 = phi i32 [ %98, %102 ], [ %98, %96 ], [ %98, %96 ], [ %10, %84 ]
  %118 = phi i32 [ 5, %102 ], [ %97, %96 ], [ %97, %96 ], [ 4, %84 ]
  %119 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %117, 30
  %122 = icmp eq i32 %120, %121
  %123 = add i32 %117, -30
  %124 = icmp eq i32 %120, %123
  %125 = or i1 %122, %124
  br i1 %125, label %135, label %126

126:                                              ; preds = %116, %99
  %127 = phi i32 [ %98, %99 ], [ %117, %116 ]
  %128 = phi i32 [ 2, %99 ], [ %118, %116 ]
  %129 = phi i32 [ %101, %99 ], [ %120, %116 ]
  %130 = add i32 %127, 10
  %131 = icmp eq i32 %129, %130
  %132 = add i32 %127, -10
  %133 = icmp eq i32 %129, %132
  %134 = or i1 %131, %133
  br i1 %134, label %135, label %155

135:                                              ; preds = %126, %116, %96, %96, %96, %96, %96, %96, %96, %96, %96
  %136 = phi i32 [ %128, %126 ], [ %118, %116 ], [ %97, %96 ], [ %97, %96 ], [ %97, %96 ], [ %97, %96 ], [ %97, %96 ], [ %97, %96 ], [ %97, %96 ], [ %97, %96 ], [ %97, %96 ]
  %137 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  %138 = load i32, ptr %137, align 4
  %139 = icmp ne i32 %138, 2484
  %140 = icmp eq i32 %136, 0
  %141 = select i1 %139, i1 true, i1 %140
  br i1 %141, label %144, label %155

142:                                              ; preds = %102
  %143 = icmp eq i32 %104, 2484
  br i1 %143, label %155, label %144

144:                                              ; preds = %142, %135
  %145 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 4
  %146 = load i8, ptr %145, align 4
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 4, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %148, %144
  %153 = tail call fastcc zeroext i1 @cfg80211_edmg_chandef_valid(ptr noundef %0)
  br i1 %153, label %154, label %155

154:                                              ; preds = %152, %148
  br label %155

155:                                              ; preds = %154, %152, %142, %135, %126, %96, %92, %84, %80, %76, %72, %68, %65, %64, %62, %29, %25, %13, %4, %1
  %156 = phi i1 [ true, %154 ], [ false, %1 ], [ false, %4 ], [ false, %13 ], [ false, %25 ], [ false, %29 ], [ false, %65 ], [ false, %68 ], [ false, %72 ], [ false, %76 ], [ false, %80 ], [ false, %84 ], [ false, %92 ], [ false, %126 ], [ false, %96 ], [ false, %152 ], [ false, %64 ], [ false, %62 ], [ false, %142 ], [ false, %135 ]
  ret i1 %156
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_s1g_channel_width(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cfg80211_edmg_chandef_valid(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %79, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 4, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %79, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.ieee80211_channel, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -58320
  %14 = icmp ult i32 %13, 11881
  br i1 %14, label %15, label %79

15:                                               ; preds = %9
  %16 = zext i8 %3 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = xor i1 %18, true
  %22 = zext i1 %21 to i32
  %23 = and i32 %16, 2
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %18, i32 1, i32 2
  %26 = select i1 %24, i32 0, i32 %25
  %27 = xor i1 %24, true
  %28 = zext i1 %27 to i32
  %29 = add nuw nsw i32 %22, %28
  %30 = tail call i32 @llvm.smax.i32(i32 %26, i32 %20)
  %31 = and i32 %16, 4
  %32 = icmp eq i32 %31, 0
  %33 = add nuw nsw i32 %26, 1
  %34 = select i1 %32, i32 0, i32 %33
  %35 = xor i1 %32, true
  %36 = zext i1 %35 to i32
  %37 = add nuw nsw i32 %29, %36
  %38 = tail call i32 @llvm.smax.i32(i32 %34, i32 %30)
  %39 = and i32 %16, 8
  %40 = icmp eq i32 %39, 0
  %41 = add nuw nsw i32 %34, 1
  %42 = select i1 %40, i32 0, i32 %41
  %43 = xor i1 %40, true
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %37, %44
  %46 = tail call i32 @llvm.smax.i32(i32 %42, i32 %38)
  %47 = and i32 %16, 16
  %48 = icmp eq i32 %47, 0
  %49 = add nuw nsw i32 %42, 1
  %50 = select i1 %48, i32 0, i32 %49
  %51 = xor i1 %48, true
  %52 = zext i1 %51 to i32
  %53 = add nuw nsw i32 %45, %52
  %54 = tail call i32 @llvm.smax.i32(i32 %50, i32 %46)
  %55 = and i32 %16, 32
  %56 = icmp eq i32 %55, 0
  %57 = add nuw nsw i32 %50, 1
  %58 = select i1 %56, i32 0, i32 %57
  %59 = xor i1 %56, true
  %60 = zext i1 %59 to i32
  %61 = add nuw nsw i32 %53, %60
  %62 = tail call i32 @llvm.smax.i32(i32 %58, i32 %54)
  switch i32 %7, label %79 [
    i32 4, label %63
    i32 8, label %63
    i32 12, label %63
    i32 5, label %65
    i32 9, label %65
    i32 13, label %65
    i32 6, label %67
    i32 10, label %67
    i32 14, label %67
    i32 7, label %69
    i32 11, label %69
    i32 15, label %69
  ]

63:                                               ; preds = %15, %15, %15
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %79, label %71

65:                                               ; preds = %15, %15, %15
  %66 = icmp ult i32 %62, 2
  br i1 %66, label %79, label %71

67:                                               ; preds = %15, %15, %15
  %68 = icmp ult i32 %62, 3
  br i1 %68, label %79, label %71

69:                                               ; preds = %15, %15, %15
  %70 = icmp ult i32 %62, 4
  br i1 %70, label %79, label %71

71:                                               ; preds = %69, %67, %65, %63
  switch i32 %7, label %79 [
    i32 4, label %78
    i32 5, label %78
    i32 6, label %78
    i32 7, label %78
    i32 8, label %72
    i32 9, label %72
    i32 10, label %72
    i32 11, label %72
    i32 12, label %74
    i32 13, label %74
    i32 14, label %74
    i32 15, label %74
  ]

72:                                               ; preds = %71, %71, %71, %71
  %73 = icmp ult i32 %61, 2
  br i1 %73, label %79, label %78

74:                                               ; preds = %71, %71, %71, %71
  %75 = icmp ult i32 %61, 4
  %76 = icmp ult i32 %62, 2
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %74, %72, %71, %71, %71, %71
  br label %79

79:                                               ; preds = %78, %74, %72, %71, %69, %67, %65, %63, %15, %9, %5, %1
  %80 = phi i1 [ true, %78 ], [ false, %5 ], [ false, %1 ], [ false, %9 ], [ false, %63 ], [ false, %65 ], [ false, %67 ], [ false, %69 ], [ false, %15 ], [ false, %72 ], [ false, %74 ], [ false, %71 ]
  ret i1 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cfg80211_chandef_compatible(ptr noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %126

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 5
  %20 = load i16, ptr %19, align 4
  %21 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 5
  %22 = load i16, ptr %21, align 4
  %23 = icmp eq i16 %20, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %126, label %30

30:                                               ; preds = %24, %18, %12
  br label %126

31:                                               ; preds = %6
  %32 = and i32 %8, -2
  %33 = icmp eq i32 %32, 6
  %34 = or i1 %11, %33
  %35 = and i32 %10, -2
  %36 = icmp eq i32 %35, 6
  %37 = or i1 %34, %36
  br i1 %37, label %126, label %38

38:                                               ; preds = %31
  %39 = icmp ult i32 %8, 2
  br i1 %39, label %126, label %40

40:                                               ; preds = %38
  %41 = icmp ult i32 %10, 2
  br i1 %41, label %126, label %42

42:                                               ; preds = %40
  switch i32 %8, label %69 [
    i32 2, label %43
    i32 3, label %46
    i32 4, label %46
    i32 5, label %56
  ]

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  br label %73

46:                                               ; preds = %42, %42
  %47 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = sub i32 30, %48
  %52 = add i32 %51, %50
  %53 = urem i32 %52, 40
  %54 = add i32 %50, 10
  %55 = sub i32 %54, %53
  br label %73

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, 70
  %60 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = sub i32 %59, %61
  %63 = urem i32 %62, 40
  %64 = add i32 %58, 10
  %65 = sub i32 %64, %63
  %66 = urem i32 %62, 80
  %67 = add i32 %58, 30
  %68 = sub i32 %67, %66
  br label %73

69:                                               ; preds = %42
  %70 = load i1, ptr @chandef_primary_freqs.__already_done, align 1
  br i1 %70, label %73, label %71, !prof !9

71:                                               ; preds = %69
  store i1 true, ptr @chandef_primary_freqs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 341, i32 noundef 9, ptr noundef null) #5
  %72 = load i32, ptr %9, align 4
  br label %73

73:                                               ; preds = %71, %69, %56, %46, %43
  %74 = phi i32 [ %10, %69 ], [ %72, %71 ], [ %10, %56 ], [ %10, %46 ], [ %10, %43 ]
  %75 = phi i32 [ 0, %69 ], [ 0, %71 ], [ %65, %56 ], [ %55, %46 ], [ %45, %43 ]
  %76 = phi i32 [ 0, %69 ], [ 0, %71 ], [ %68, %56 ], [ %48, %46 ], [ 0, %43 ]
  switch i32 %74, label %105 [
    i32 2, label %77
    i32 3, label %80
    i32 4, label %80
    i32 5, label %91
  ]

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  br label %108

80:                                               ; preds = %73, %73
  %81 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = load ptr, ptr %1, align 4
  %84 = getelementptr inbounds %struct.ieee80211_channel, ptr %83, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = sub i32 30, %82
  %87 = add i32 %86, %85
  %88 = urem i32 %87, 40
  %89 = add i32 %85, 10
  %90 = sub i32 %89, %88
  br label %108

91:                                               ; preds = %73
  %92 = load ptr, ptr %1, align 4
  %93 = getelementptr inbounds %struct.ieee80211_channel, ptr %92, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, 70
  %96 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = sub i32 %95, %97
  %99 = urem i32 %98, 40
  %100 = add i32 %94, 10
  %101 = sub i32 %100, %99
  %102 = urem i32 %98, 80
  %103 = add i32 %94, 30
  %104 = sub i32 %103, %102
  br label %108

105:                                              ; preds = %73
  %106 = load i1, ptr @chandef_primary_freqs.__already_done, align 1
  br i1 %106, label %108, label %107, !prof !9

107:                                              ; preds = %105
  store i1 true, ptr @chandef_primary_freqs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 341, i32 noundef 9, ptr noundef null) #5
  br label %108

108:                                              ; preds = %107, %105, %91, %80, %77
  %109 = phi i32 [ 0, %105 ], [ 0, %107 ], [ %101, %91 ], [ %90, %80 ], [ %79, %77 ]
  %110 = phi i32 [ 0, %105 ], [ 0, %107 ], [ %104, %91 ], [ %82, %80 ], [ 0, %77 ]
  %111 = icmp eq i32 %75, %109
  br i1 %111, label %112, label %126

112:                                              ; preds = %108
  %113 = icmp eq i32 %76, 0
  %114 = icmp eq i32 %110, 0
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %116, label %117, !prof !8

116:                                              ; preds = %112
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 390, i32 noundef 9, ptr noundef null) #5
  br label %121

117:                                              ; preds = %112
  %118 = select i1 %113, i1 true, i1 %114
  %119 = icmp eq i32 %76, %110
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117, %116
  %122 = load i32, ptr %7, align 4
  %123 = load i32, ptr %9, align 4
  %124 = icmp ugt i32 %122, %123
  %125 = select i1 %124, ptr %0, ptr %1
  br label %126

126:                                              ; preds = %121, %117, %108, %40, %38, %31, %30, %24, %2
  %127 = phi ptr [ %0, %24 ], [ null, %31 ], [ %1, %38 ], [ %0, %40 ], [ null, %108 ], [ null, %117 ], [ %125, %121 ], [ null, %2 ], [ null, %30 ]
  ret ptr %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_set_dfs_state(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %1)
  br i1 %4, label %5, label %64, !prof !9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 13
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load i1, ptr @nl80211_chan_width_to_mhz.__already_done, align 1
  br i1 %10, label %66, label %11, !prof !9

11:                                               ; preds = %9
  store i1 true, ptr @nl80211_chan_width_to_mhz.__already_done, align 1
  br label %64

12:                                               ; preds = %5
  %13 = getelementptr inbounds [13 x i32], ptr @switch.table.cfg80211_set_dfs_state, i32 0, i32 %7
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = sub nsw i32 10, %14
  %18 = add i32 %17, %16
  %19 = add nsw i32 %14, -10
  %20 = add i32 %19, %16
  %21 = icmp ugt i32 %18, %20
  br i1 %21, label %39, label %22

22:                                               ; preds = %36, %12
  %23 = phi i32 [ %37, %36 ], [ %18, %12 ]
  %24 = mul i32 %23, 1000
  %25 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %0, i32 noundef %24) #5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ieee80211_channel, ptr %25, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ieee80211_channel, ptr %25, i32 0, i32 12
  store i32 %2, ptr %33, align 4
  %34 = load volatile i32, ptr @jiffies, align 64
  %35 = getelementptr inbounds %struct.ieee80211_channel, ptr %25, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %32, %27, %22
  %37 = add i32 %23, 20
  %38 = icmp ugt i32 %37, %20
  br i1 %38, label %39, label %22

39:                                               ; preds = %36, %12
  %40 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %66, label %43

43:                                               ; preds = %39
  %44 = add i32 %17, %41
  %45 = add i32 %19, %41
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %66, label %47

47:                                               ; preds = %61, %43
  %48 = phi i32 [ %62, %61 ], [ %44, %43 ]
  %49 = mul i32 %48, 1000
  %50 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %0, i32 noundef %49) #5
  %51 = icmp eq ptr %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ieee80211_channel, ptr %50, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.ieee80211_channel, ptr %50, i32 0, i32 12
  store i32 %2, ptr %58, align 4
  %59 = load volatile i32, ptr @jiffies, align 64
  %60 = getelementptr inbounds %struct.ieee80211_channel, ptr %50, i32 0, i32 13
  store i32 %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %57, %52, %47
  %62 = add i32 %48, 20
  %63 = icmp ugt i32 %62, %45
  br i1 %63, label %66, label %47

64:                                               ; preds = %11, %3
  %65 = phi i32 [ 185, %11 ], [ 425, %3 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %65, i32 noundef 9, ptr noundef null) #5
  br label %66

66:                                               ; preds = %64, %61, %43, %39, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_chandef_dfs_required(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %1)
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 498, i32 noundef 9, ptr noundef null) #5
  br label %82

6:                                                ; preds = %3
  switch i32 %2, label %82 [
    i32 1, label %7
    i32 3, label %7
    i32 9, label %7
    i32 7, label %7
    i32 13, label %81
    i32 0, label %81
    i32 5, label %81
  ]

7:                                                ; preds = %6, %6, %6, %6
  %8 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %12 [
    i32 8, label %27
    i32 9, label %27
    i32 10, label %27
    i32 11, label %27
    i32 12, label %27
    i32 6, label %27
    i32 7, label %27
    i32 1, label %27
    i32 0, label %27
    i32 2, label %15
    i32 4, label %10
    i32 3, label %10
    i32 5, label %11
  ]

10:                                               ; preds = %7, %7
  br label %15

11:                                               ; preds = %7
  br label %15

12:                                               ; preds = %7
  %13 = load i1, ptr @nl80211_chan_width_to_mhz.__already_done, align 1
  br i1 %13, label %82, label %14, !prof !9

14:                                               ; preds = %12
  store i1 true, ptr @nl80211_chan_width_to_mhz.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 185, i32 noundef 9, ptr noundef null) #5
  br label %82

15:                                               ; preds = %11, %10, %7
  %16 = phi i32 [ 80000, %11 ], [ 40000, %10 ], [ 20000, %7 ]
  %17 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = mul i32 %18, 1000
  %20 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 5
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = add i32 %19, %22
  %24 = sub nsw i32 10000, %16
  %25 = add i32 %23, %24
  %26 = add nsw i32 %16, -10000
  br label %35

27:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7
  %28 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = mul i32 %29, 1000
  %31 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 5
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = add i32 %30, %33
  br label %35

35:                                               ; preds = %27, %15
  %36 = phi i32 [ %34, %27 ], [ %25, %15 ]
  %37 = phi i32 [ 0, %27 ], [ %24, %15 ]
  %38 = phi i32 [ %34, %27 ], [ %23, %15 ]
  %39 = phi i32 [ 0, %27 ], [ %26, %15 ]
  %40 = add i32 %38, %39
  %41 = icmp ugt i32 %36, %40
  br i1 %41, label %57, label %45

42:                                               ; preds = %49
  %43 = add i32 %46, 20000
  %44 = icmp ugt i32 %43, %40
  br i1 %44, label %57, label %45

45:                                               ; preds = %42, %35
  %46 = phi i32 [ %43, %42 ], [ %36, %35 ]
  %47 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %0, i32 noundef %46) #5
  %48 = icmp eq ptr %47, null
  br i1 %48, label %82, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ieee80211_channel, ptr %47, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %42, label %54

54:                                               ; preds = %49
  %55 = load i32, ptr %8, align 4
  %56 = shl nuw i32 1, %55
  br label %82

57:                                               ; preds = %42, %35
  %58 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %82, label %61

61:                                               ; preds = %57
  %62 = mul i32 %59, 1000
  %63 = add i32 %62, %37
  %64 = add i32 %62, %39
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %82, label %69

66:                                               ; preds = %73
  %67 = add i32 %70, 20000
  %68 = icmp ugt i32 %67, %64
  br i1 %68, label %82, label %69

69:                                               ; preds = %66, %61
  %70 = phi i32 [ %67, %66 ], [ %63, %61 ]
  %71 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %0, i32 noundef %70) #5
  %72 = icmp eq ptr %71, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ieee80211_channel, ptr %71, i32 0, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %66, label %78

78:                                               ; preds = %73
  %79 = load i32, ptr %8, align 4
  %80 = shl nuw i32 1, %79
  br label %82

81:                                               ; preds = %6, %6, %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 541, i32 noundef 9, ptr noundef null) #5
  br label %82

82:                                               ; preds = %81, %78, %69, %66, %61, %57, %54, %45, %14, %12, %6, %5
  %83 = phi i32 [ -22, %5 ], [ %56, %54 ], [ %80, %78 ], [ 0, %57 ], [ 0, %81 ], [ 0, %6 ], [ -22, %12 ], [ -22, %14 ], [ 0, %61 ], [ 0, %66 ], [ -22, %69 ], [ -22, %45 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cfg80211_chandef_dfs_usable(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %1)
  br i1 %3, label %5, label %4, !prof !9

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 591, i32 noundef 9, ptr noundef null) #5
  br label %104

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %10 [
    i32 8, label %21
    i32 9, label %21
    i32 10, label %21
    i32 11, label %21
    i32 12, label %21
    i32 6, label %21
    i32 7, label %21
    i32 1, label %21
    i32 0, label %21
    i32 2, label %13
    i32 4, label %8
    i32 3, label %8
    i32 5, label %9
  ]

8:                                                ; preds = %5, %5
  br label %13

9:                                                ; preds = %5
  br label %13

10:                                               ; preds = %5
  %11 = load i1, ptr @nl80211_chan_width_to_mhz.__already_done, align 1
  br i1 %11, label %104, label %12, !prof !9

12:                                               ; preds = %10
  store i1 true, ptr @nl80211_chan_width_to_mhz.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 185, i32 noundef 9, ptr noundef null) #5
  br label %104

13:                                               ; preds = %9, %8, %5
  %14 = phi i32 [ 80000, %9 ], [ 40000, %8 ], [ 20000, %5 ]
  %15 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, 1000
  %18 = sub nsw i32 10000, %14
  %19 = add i32 %17, %18
  %20 = add nsw i32 %14, -10000
  br label %25

21:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5
  %22 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, 1000
  br label %25

25:                                               ; preds = %21, %13
  %26 = phi i32 [ %24, %21 ], [ %19, %13 ]
  %27 = phi i32 [ 0, %21 ], [ %18, %13 ]
  %28 = phi i32 [ %24, %21 ], [ %17, %13 ]
  %29 = phi i32 [ 0, %21 ], [ %20, %13 ]
  %30 = add i32 %28, %29
  %31 = icmp ugt i32 %26, %30
  br i1 %31, label %58, label %32

32:                                               ; preds = %50, %25
  %33 = phi i32 [ %51, %50 ], [ 0, %25 ]
  %34 = phi i32 [ %52, %50 ], [ %26, %25 ]
  %35 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %0, i32 noundef %34) #5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %104, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ieee80211_channel, ptr %35, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %104

42:                                               ; preds = %37
  %43 = and i32 %39, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.ieee80211_channel, ptr %35, i32 0, i32 12
  %47 = load i32, ptr %46, align 4
  switch i32 %47, label %50 [
    i32 1, label %104
    i32 0, label %48
  ]

48:                                               ; preds = %45
  %49 = add i32 %33, 1
  br label %50

50:                                               ; preds = %48, %45, %42
  %51 = phi i32 [ %49, %48 ], [ %33, %42 ], [ %33, %45 ]
  %52 = add i32 %34, 20000
  %53 = icmp ugt i32 %52, %30
  br i1 %53, label %54, label %32

54:                                               ; preds = %50
  %55 = icmp slt i32 %51, 0
  br i1 %55, label %104, label %56

56:                                               ; preds = %54
  %57 = load i32, ptr %6, align 4
  br label %58

58:                                               ; preds = %56, %25
  %59 = phi i32 [ %57, %56 ], [ %7, %25 ]
  %60 = phi i32 [ %51, %56 ], [ 0, %25 ]
  %61 = icmp eq i32 %59, 4
  %62 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %61, label %65, label %98

65:                                               ; preds = %58
  br i1 %64, label %66, label %68, !prof !8

66:                                               ; preds = %65
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 607, i32 noundef 9, ptr noundef null) #5
  %67 = load i32, ptr %62, align 4
  br label %68

68:                                               ; preds = %66, %65
  %69 = phi i32 [ %67, %66 ], [ %63, %65 ]
  %70 = mul i32 %69, 1000
  %71 = add i32 %70, %27
  %72 = add i32 %70, %29
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %100, label %74

74:                                               ; preds = %92, %68
  %75 = phi i32 [ %93, %92 ], [ 0, %68 ]
  %76 = phi i32 [ %94, %92 ], [ %71, %68 ]
  %77 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %0, i32 noundef %76) #5
  %78 = icmp eq ptr %77, null
  br i1 %78, label %104, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.ieee80211_channel, ptr %77, i32 0, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %79
  %85 = and i32 %81, 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.ieee80211_channel, ptr %77, i32 0, i32 12
  %89 = load i32, ptr %88, align 4
  switch i32 %89, label %92 [
    i32 1, label %104
    i32 0, label %90
  ]

90:                                               ; preds = %87
  %91 = add i32 %75, 1
  br label %92

92:                                               ; preds = %90, %87, %84
  %93 = phi i32 [ %91, %90 ], [ %75, %84 ], [ %75, %87 ]
  %94 = add i32 %76, 20000
  %95 = icmp ugt i32 %94, %72
  br i1 %95, label %96, label %74

96:                                               ; preds = %92
  %97 = icmp slt i32 %93, 0
  br i1 %97, label %104, label %100

98:                                               ; preds = %58
  br i1 %64, label %100, label %99, !prof !9

99:                                               ; preds = %98
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 615, i32 noundef 9, ptr noundef null) #5
  br label %100

100:                                              ; preds = %99, %98, %96, %68
  %101 = phi i32 [ %93, %96 ], [ 0, %99 ], [ 0, %98 ], [ 0, %68 ]
  %102 = add i32 %101, %60
  %103 = icmp sgt i32 %102, 0
  br label %104

104:                                              ; preds = %100, %96, %87, %79, %74, %54, %45, %37, %32, %12, %10, %4
  %105 = phi i1 [ false, %4 ], [ %103, %100 ], [ false, %54 ], [ false, %96 ], [ false, %10 ], [ false, %12 ], [ false, %87 ], [ false, %79 ], [ false, %74 ], [ false, %45 ], [ false, %37 ], [ false, %32 ]
  ret i1 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cfg80211_is_sub_chan(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %46, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %14 [
    i32 8, label %46
    i32 9, label %46
    i32 10, label %46
    i32 11, label %46
    i32 12, label %46
    i32 6, label %46
    i32 7, label %46
    i32 1, label %46
    i32 0, label %46
    i32 2, label %17
    i32 4, label %12
    i32 3, label %12
    i32 5, label %13
  ]

12:                                               ; preds = %9, %9
  br label %17

13:                                               ; preds = %9
  br label %17

14:                                               ; preds = %9
  %15 = load i1, ptr @nl80211_chan_width_to_mhz.__already_done, align 1
  br i1 %15, label %46, label %16, !prof !9

16:                                               ; preds = %14
  store i1 true, ptr @nl80211_chan_width_to_mhz.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 185, i32 noundef 9, ptr noundef null) #5
  br label %46

17:                                               ; preds = %13, %12, %9
  %18 = phi i32 [ 80, %13 ], [ 40, %12 ], [ 20, %9 ]
  %19 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = sub nsw i32 10, %18
  %22 = add i32 %21, %20
  %23 = add nsw i32 %18, -10
  %24 = add i32 %23, %20
  %25 = icmp ugt i32 %22, %24
  br i1 %25, label %32, label %29

26:                                               ; preds = %29
  %27 = add i32 %30, 20
  %28 = icmp ugt i32 %27, %24
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %17
  %30 = phi i32 [ %27, %26 ], [ %22, %17 ]
  %31 = icmp eq i32 %7, %30
  br i1 %31, label %46, label %26

32:                                               ; preds = %26, %17
  %33 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = add i32 %21, %34
  %38 = add i32 %23, %34
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %40, %36
  %41 = phi i32 [ %43, %40 ], [ %37, %36 ]
  %42 = icmp eq i32 %7, %41
  %43 = add i32 %41, 20
  %44 = icmp ugt i32 %43, %38
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %46, label %40

46:                                               ; preds = %40, %36, %32, %29, %16, %14, %9, %9, %9, %9, %9, %9, %9, %9, %9, %2
  %47 = phi i1 [ true, %2 ], [ false, %32 ], [ false, %16 ], [ false, %14 ], [ false, %9 ], [ false, %9 ], [ false, %9 ], [ false, %9 ], [ false, %9 ], [ false, %9 ], [ false, %9 ], [ false, %9 ], [ false, %9 ], [ false, %36 ], [ %42, %40 ], [ true, %29 ]
  ret i1 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cfg80211_beaconing_iface_active(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %21 [
    i32 3, label %8
    i32 9, label %8
    i32 1, label %12
    i32 7, label %16
    i32 13, label %20
    i32 5, label %20
    i32 0, label %20
  ]

8:                                                ; preds = %5, %5
  %9 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 32
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  br label %21

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 14
  %14 = load i8, ptr %13, align 2
  %15 = icmp ne i8 %14, 0
  br label %21

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 15
  %18 = load i8, ptr %17, align 1
  %19 = icmp ne i8 %18, 0
  br label %21

20:                                               ; preds = %5, %5, %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 689, i32 noundef 9, ptr noundef null) #5
  br label %21

21:                                               ; preds = %20, %16, %12, %8, %5, %1
  %22 = phi i1 [ false, %1 ], [ false, %5 ], [ false, %20 ], [ %19, %16 ], [ %15, %12 ], [ %11, %8 ]
  ret i1 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cfg80211_any_wiphy_oper_chan(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @rtnl_is_locked() #5
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @cfg80211_any_wiphy_oper_chan.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %2
  store i1 true, ptr @cfg80211_any_wiphy_oper_chan.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 735, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 735) #5
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  %14 = load ptr, ptr @cfg80211_rdev_list, align 4
  %15 = icmp eq ptr %14, @cfg80211_rdev_list
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %65, label %17

17:                                               ; preds = %62, %9
  %18 = phi ptr [ %63, %62 ], [ %14, %9 ]
  %19 = getelementptr i8, ptr %18, i32 540
  %20 = tail call zeroext i1 @reg_dfs_domain_same(ptr noundef %0, ptr noundef %19) #5
  br i1 %20, label %21, label %62

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %18, i32 1292
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %53, label %25

25:                                               ; preds = %49, %21
  %26 = phi ptr [ %50, %49 ], [ %23, %21 ]
  %27 = getelementptr i8, ptr %26, i32 28
  tail call void @mutex_lock(ptr noundef %27) #5
  %28 = getelementptr i8, ptr %26, i32 180
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %26, i32 -4
  %33 = load i32, ptr %32, align 4
  switch i32 %33, label %49 [
    i32 3, label %43
    i32 9, label %43
    i32 1, label %34
    i32 7, label %38
    i32 13, label %42
    i32 5, label %42
    i32 0, label %42
  ]

34:                                               ; preds = %31
  %35 = getelementptr i8, ptr %26, i32 90
  %36 = load i8, ptr %35, align 2
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %49, label %47

38:                                               ; preds = %31
  %39 = getelementptr i8, ptr %26, i32 91
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %49, label %47

42:                                               ; preds = %31, %31, %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 689, i32 noundef 9, ptr noundef null) #5
  br label %49

43:                                               ; preds = %31, %31
  %44 = getelementptr i8, ptr %26, i32 216
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43, %38, %34
  %48 = tail call zeroext i1 @cfg80211_is_sub_chan(ptr noundef %28, ptr noundef %1) #5
  br i1 %48, label %52, label %49

49:                                               ; preds = %47, %43, %42, %38, %34, %31, %25
  tail call void @mutex_unlock(ptr noundef %27) #5
  %50 = load ptr, ptr %26, align 4
  %51 = icmp eq ptr %50, %22
  br i1 %51, label %53, label %25

52:                                               ; preds = %47
  tail call void @mutex_unlock(ptr noundef %27) #5
  br label %65

53:                                               ; preds = %49, %21
  %54 = getelementptr i8, ptr %18, i32 260
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %18, i32 264
  %59 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %58) #5
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = tail call zeroext i1 @cfg80211_is_sub_chan(ptr noundef %58, ptr noundef %1) #5
  br i1 %61, label %65, label %62

62:                                               ; preds = %60, %57, %53, %17
  %63 = load ptr, ptr %18, align 4
  %64 = icmp eq ptr %63, @cfg80211_rdev_list
  br i1 %64, label %65, label %17

65:                                               ; preds = %62, %60, %52, %9
  %66 = phi i1 [ false, %9 ], [ true, %52 ], [ true, %60 ], [ false, %62 ]
  ret i1 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @reg_dfs_domain_same(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_chandef_dfs_cac_time(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %1)
  br i1 %3, label %5, label %4, !prof !9

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 862, i32 noundef 9, ptr noundef null) #5
  br label %87

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %10 [
    i32 8, label %21
    i32 9, label %21
    i32 10, label %21
    i32 11, label %21
    i32 12, label %21
    i32 6, label %21
    i32 7, label %21
    i32 1, label %21
    i32 0, label %21
    i32 2, label %13
    i32 4, label %8
    i32 3, label %8
    i32 5, label %9
  ]

8:                                                ; preds = %5, %5
  br label %13

9:                                                ; preds = %5
  br label %13

10:                                               ; preds = %5
  %11 = load i1, ptr @nl80211_chan_width_to_mhz.__already_done, align 1
  br i1 %11, label %87, label %12, !prof !9

12:                                               ; preds = %10
  store i1 true, ptr @nl80211_chan_width_to_mhz.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 185, i32 noundef 9, ptr noundef null) #5
  br label %87

13:                                               ; preds = %9, %8, %5
  %14 = phi i32 [ 80000, %9 ], [ 40000, %8 ], [ 20000, %5 ]
  %15 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, 1000
  %18 = sub nsw i32 10000, %14
  %19 = add i32 %17, %18
  %20 = add nsw i32 %14, -10000
  br label %25

21:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5
  %22 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, 1000
  br label %25

25:                                               ; preds = %21, %13
  %26 = phi i32 [ %24, %21 ], [ %19, %13 ]
  %27 = phi i32 [ 0, %21 ], [ %18, %13 ]
  %28 = phi i32 [ %24, %21 ], [ %17, %13 ]
  %29 = phi i32 [ 0, %21 ], [ %20, %13 ]
  %30 = add i32 %28, %29
  %31 = icmp ugt i32 %26, %30
  br i1 %31, label %53, label %32

32:                                               ; preds = %49, %25
  %33 = phi i32 [ %50, %49 ], [ 0, %25 ]
  %34 = phi i32 [ %51, %49 ], [ %26, %25 ]
  %35 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %0, i32 noundef %34) #5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %53, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ieee80211_channel, ptr %35, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = and i32 %39, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.ieee80211_channel, ptr %35, i32 0, i32 14
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @llvm.umax.i32(i32 %47, i32 %33) #5
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i32 [ %33, %42 ], [ %48, %45 ]
  %51 = add i32 %34, 20000
  %52 = icmp ugt i32 %51, %30
  br i1 %52, label %53, label %32

53:                                               ; preds = %49, %37, %32, %25
  %54 = phi i32 [ 0, %25 ], [ 0, %32 ], [ 0, %37 ], [ %50, %49 ]
  %55 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %87, label %58

58:                                               ; preds = %53
  %59 = mul i32 %56, 1000
  %60 = add i32 %59, %27
  %61 = add i32 %59, %29
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %84, label %63

63:                                               ; preds = %80, %58
  %64 = phi i32 [ %81, %80 ], [ 0, %58 ]
  %65 = phi i32 [ %82, %80 ], [ %60, %58 ]
  %66 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %0, i32 noundef %65) #5
  %67 = icmp eq ptr %66, null
  br i1 %67, label %84, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.ieee80211_channel, ptr %66, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = and i32 %70, 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.ieee80211_channel, ptr %66, i32 0, i32 14
  %78 = load i32, ptr %77, align 4
  %79 = tail call i32 @llvm.umax.i32(i32 %78, i32 %64) #5
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i32 [ %64, %73 ], [ %79, %76 ]
  %82 = add i32 %65, 20000
  %83 = icmp ugt i32 %82, %61
  br i1 %83, label %84, label %63

84:                                               ; preds = %80, %68, %63, %58
  %85 = phi i32 [ 0, %58 ], [ 0, %63 ], [ 0, %68 ], [ %81, %80 ]
  %86 = tail call i32 @llvm.umax.i32(i32 %54, i32 %85)
  br label %87

87:                                               ; preds = %84, %53, %12, %10, %4
  %88 = phi i32 [ 0, %4 ], [ %86, %84 ], [ %54, %53 ], [ 0, %10 ], [ 0, %12 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cfg80211_chandef_usable(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %1)
  br i1 %4, label %5, label %235, !prof !9

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 6
  %12 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 8
  %13 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 6, i32 2, i32 3
  %14 = load i16, ptr %13, align 2
  %15 = and i16 %14, 8192
  %16 = icmp eq i16 %15, 0
  %17 = load i8, ptr %12, align 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %83, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 4
  %21 = load i8, ptr %20, align 4
  %22 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 4, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ieee80211_channel, ptr %6, i32 0, i32 3
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp ne i8 %21, 0
  %28 = icmp ne i32 %23, 0
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %83

30:                                               ; preds = %19
  %31 = icmp eq i8 %21, 0
  %32 = and i1 %31, %28
  br i1 %32, label %237, label %33

33:                                               ; preds = %30
  %34 = zext i8 %21 to i32
  %35 = or i1 %31, %28
  br i1 %35, label %36, label %237

36:                                               ; preds = %33
  %37 = add nsw i32 %26, -1
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %34
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %237, label %41

41:                                               ; preds = %67, %36
  %42 = phi i32 [ %69, %67 ], [ 0, %36 ]
  %43 = phi i32 [ %68, %67 ], [ 0, %36 ]
  %44 = shl nuw nsw i32 1, %43
  %45 = and i32 %44, %34
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = add nuw nsw i32 %43, 1
  br label %67

49:                                               ; preds = %41
  %50 = load i8, ptr %12, align 4
  %51 = zext i8 %50 to i32
  %52 = and i32 %44, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %237, label %54

54:                                               ; preds = %49
  %55 = add nuw nsw i32 %43, 1
  %56 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %55, i32 noundef 2) #5
  %57 = urem i32 %56, 1000
  %58 = sub i32 %56, %57
  %59 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %0, i32 noundef %58) #5
  %60 = icmp eq ptr %59, null
  br i1 %60, label %237, label %61

61:                                               ; preds = %54
  %62 = add i32 %42, 1
  %63 = getelementptr inbounds %struct.ieee80211_channel, ptr %59, i32 0, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %237

67:                                               ; preds = %61, %47
  %68 = phi i32 [ %48, %47 ], [ %55, %61 ]
  %69 = phi i32 [ %42, %47 ], [ %62, %61 ]
  %70 = icmp eq i32 %68, 6
  br i1 %70, label %71, label %41

71:                                               ; preds = %67
  %72 = icmp sgt i32 %69, 4
  br i1 %72, label %237, label %73

73:                                               ; preds = %71
  %74 = and i32 %23, 3
  %75 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 8, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 3
  %78 = icmp ule i32 %74, %77
  %79 = icmp uge i32 %76, %23
  %80 = and i1 %79, %78
  br i1 %80, label %81, label %237

81:                                               ; preds = %73
  %82 = load ptr, ptr %1, align 4
  br label %83

83:                                               ; preds = %81, %19, %5
  %84 = phi ptr [ %82, %81 ], [ %6, %19 ], [ %6, %5 ]
  %85 = getelementptr inbounds %struct.ieee80211_channel, ptr %84, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  switch i32 %88, label %169 [
    i32 8, label %178
    i32 9, label %89
    i32 10, label %90
    i32 11, label %91
    i32 12, label %92
    i32 6, label %93
    i32 7, label %94
    i32 1, label %96
    i32 0, label %176
    i32 2, label %103
    i32 4, label %130
    i32 3, label %146
    i32 5, label %155
  ]

89:                                               ; preds = %83
  br label %178

90:                                               ; preds = %83
  br label %178

91:                                               ; preds = %83
  br label %178

92:                                               ; preds = %83
  br label %178

93:                                               ; preds = %83
  br label %178

94:                                               ; preds = %83
  %95 = or i32 %2, 4096
  br label %178

96:                                               ; preds = %83
  %97 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 5, i32 1
  %98 = load i8, ptr %97, align 2, !range !10
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %176

100:                                              ; preds = %96
  %101 = load i32, ptr %84, align 4
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %176, label %237

103:                                              ; preds = %83
  %104 = load i32, ptr %84, align 4
  %105 = icmp eq i32 %104, 3
  br i1 %105, label %172, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 5, i32 1
  %108 = load i8, ptr %107, align 2, !range !10
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %237, label %110

110:                                              ; preds = %106
  %111 = load i16, ptr %10, align 2
  %112 = and i16 %111, 16386
  %113 = icmp eq i16 %112, 2
  br i1 %113, label %114, label %237

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = icmp ult i32 %116, %86
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.ieee80211_channel, ptr %84, i32 0, i32 4
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %237

123:                                              ; preds = %118, %114
  %124 = icmp ugt i32 %116, %86
  br i1 %124, label %125, label %172

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.ieee80211_channel, ptr %84, i32 0, i32 4
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 16
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %172, label %237

130:                                              ; preds = %83
  %131 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 6, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, 8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %130
  %136 = and i32 %132, 4
  %137 = icmp ne i32 %136, 0
  %138 = icmp ugt i32 %132, 1073741823
  %139 = and i1 %138, %137
  %140 = select i1 %139, i1 true, i1 %16
  %141 = icmp slt i32 %132, 0
  %142 = select i1 %140, i1 %139, i1 %141
  %143 = load i32, ptr %84, align 4
  %144 = icmp eq i32 %143, 3
  %145 = select i1 %144, i1 true, i1 %142
  br i1 %145, label %148, label %237

146:                                              ; preds = %130, %83
  %147 = load i32, ptr %84, align 4
  br label %148

148:                                              ; preds = %146, %135
  %149 = phi i32 [ %147, %146 ], [ %143, %135 ]
  %150 = or i32 %2, 128
  %151 = icmp eq i32 %149, 3
  br i1 %151, label %172, label %152

152:                                              ; preds = %148
  %153 = load i8, ptr %11, align 4, !range !10
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %237, label %172

155:                                              ; preds = %83
  %156 = or i32 %2, 256
  %157 = load i32, ptr %84, align 4
  %158 = icmp eq i32 %157, 3
  br i1 %158, label %172, label %159

159:                                              ; preds = %155
  %160 = load i8, ptr %11, align 4, !range !10
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %237, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 6, i32 1
  %164 = load i32, ptr %163, align 4
  %165 = and i32 %164, 12
  switch i32 %165, label %166 [
    i32 8, label %172
    i32 4, label %172
  ]

166:                                              ; preds = %162
  %167 = icmp ult i32 %164, 1073741824
  %168 = select i1 %16, i1 true, i1 %167
  br i1 %168, label %237, label %172

169:                                              ; preds = %83
  %170 = load i1, ptr @cfg80211_chandef_usable.__already_done, align 1
  br i1 %170, label %237, label %171, !prof !9

171:                                              ; preds = %169
  store i1 true, ptr @cfg80211_chandef_usable.__already_done, align 1
  br label %235

172:                                              ; preds = %166, %162, %162, %155, %152, %148, %125, %123, %103
  %173 = phi i32 [ 160, %166 ], [ 160, %162 ], [ 40, %103 ], [ 40, %125 ], [ 40, %123 ], [ 80, %148 ], [ 80, %152 ], [ 160, %155 ], [ 160, %162 ]
  %174 = phi i32 [ %156, %166 ], [ %156, %162 ], [ %2, %103 ], [ %2, %125 ], [ %2, %123 ], [ %150, %148 ], [ %150, %152 ], [ %156, %155 ], [ %156, %162 ]
  %175 = or i32 %174, 64
  br label %182

176:                                              ; preds = %100, %96, %83
  %177 = or i32 %2, 2048
  br label %182

178:                                              ; preds = %94, %93, %92, %91, %90, %89, %83
  %179 = phi i32 [ 1, %83 ], [ 2, %89 ], [ 4, %90 ], [ 8, %91 ], [ 16, %92 ], [ 5, %93 ], [ 10, %94 ]
  %180 = phi i32 [ %2, %83 ], [ %2, %89 ], [ %2, %90 ], [ %2, %91 ], [ %2, %92 ], [ %2, %93 ], [ %95, %94 ]
  %181 = or i32 %180, 64
  br label %182

182:                                              ; preds = %178, %176, %172
  %183 = phi i32 [ %179, %178 ], [ 20, %176 ], [ %173, %172 ]
  %184 = phi i32 [ %181, %178 ], [ %177, %176 ], [ %175, %172 ]
  %185 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %186 = load i32, ptr %185, align 4
  %187 = mul i32 %186, 1000
  %188 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 5
  %189 = load i16, ptr %188, align 4
  %190 = zext i16 %189 to i32
  %191 = add i32 %187, %190
  %192 = mul nuw nsw i32 %183, 1000
  %193 = icmp ult i32 %192, 20001
  %194 = lshr exact i32 %192, 1
  %195 = sub nsw i32 10000, %194
  %196 = select i1 %193, i32 0, i32 %195
  %197 = add i32 %191, %196
  %198 = add nsw i32 %194, -10000
  %199 = select i1 %193, i32 0, i32 %198
  %200 = add i32 %191, %199
  %201 = icmp ugt i32 %197, %200
  br i1 %201, label %214, label %205

202:                                              ; preds = %209
  %203 = add i32 %206, 20000
  %204 = icmp ugt i32 %203, %200
  br i1 %204, label %214, label %205

205:                                              ; preds = %202, %182
  %206 = phi i32 [ %203, %202 ], [ %197, %182 ]
  %207 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %0, i32 noundef %206) #5
  %208 = icmp eq ptr %207, null
  br i1 %208, label %237, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.ieee80211_channel, ptr %207, i32 0, i32 4
  %211 = load i32, ptr %210, align 4
  %212 = and i32 %211, %184
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %202, label %237

214:                                              ; preds = %202, %182
  %215 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 3
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %237, label %218

218:                                              ; preds = %214
  %219 = mul i32 %216, 1000
  %220 = add i32 %219, %196
  %221 = add i32 %219, %199
  %222 = icmp ugt i32 %220, %221
  br i1 %222, label %237, label %226

223:                                              ; preds = %230
  %224 = add i32 %227, 20000
  %225 = icmp ugt i32 %224, %221
  br i1 %225, label %237, label %226

226:                                              ; preds = %223, %218
  %227 = phi i32 [ %224, %223 ], [ %220, %218 ]
  %228 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %0, i32 noundef %227) #5
  %229 = icmp eq ptr %228, null
  br i1 %229, label %237, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.ieee80211_channel, ptr %228, i32 0, i32 4
  %232 = load i32, ptr %231, align 4
  %233 = and i32 %232, %184
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %223, label %237

235:                                              ; preds = %171, %3
  %236 = phi i32 [ 1066, %171 ], [ 965, %3 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %236, i32 noundef 9, ptr noundef null) #5
  br label %237

237:                                              ; preds = %235, %230, %226, %223, %218, %214, %209, %205, %169, %166, %159, %152, %135, %125, %118, %110, %106, %100, %73, %71, %61, %54, %49, %36, %33, %30
  %238 = phi i1 [ false, %73 ], [ false, %100 ], [ false, %106 ], [ false, %110 ], [ false, %118 ], [ false, %125 ], [ false, %135 ], [ false, %152 ], [ false, %159 ], [ false, %166 ], [ false, %169 ], [ true, %214 ], [ true, %218 ], [ false, %33 ], [ false, %30 ], [ false, %36 ], [ false, %71 ], [ false, %235 ], [ false, %230 ], [ false, %226 ], [ true, %223 ], [ false, %205 ], [ false, %209 ], [ false, %49 ], [ false, %61 ], [ false, %54 ]
  ret i1 %238
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cfg80211_reg_can_beacon(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call fastcc zeroext i1 @_cfg80211_reg_can_beacon(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @_cfg80211_reg_can_beacon(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_reg_can_beacon, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #5
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
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  %18 = tail call i32 @__traceiter_cfg80211_reg_can_beacon(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  br label %19

19:                                               ; preds = %17, %6, %3
  %20 = tail call i32 @cfg80211_chandef_dfs_required(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %117

22:                                               ; preds = %19
  %23 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %1) #5
  br i1 %23, label %24, label %114, !prof !9

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %29 [
    i32 8, label %40
    i32 9, label %40
    i32 10, label %40
    i32 11, label %40
    i32 12, label %40
    i32 6, label %40
    i32 7, label %40
    i32 1, label %40
    i32 0, label %40
    i32 2, label %32
    i32 4, label %27
    i32 3, label %27
    i32 5, label %28
  ]

27:                                               ; preds = %24, %24
  br label %32

28:                                               ; preds = %24
  br label %32

29:                                               ; preds = %24
  %30 = load i1, ptr @nl80211_chan_width_to_mhz.__already_done, align 1
  br i1 %30, label %117, label %31, !prof !9

31:                                               ; preds = %29
  store i1 true, ptr @nl80211_chan_width_to_mhz.__already_done, align 1
  br label %114

32:                                               ; preds = %28, %27, %24
  %33 = phi i32 [ 80000, %28 ], [ 40000, %27 ], [ 20000, %24 ]
  %34 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = mul i32 %35, 1000
  %37 = sub nsw i32 10000, %33
  %38 = add i32 %36, %37
  %39 = add nsw i32 %33, -10000
  br label %44

40:                                               ; preds = %24, %24, %24, %24, %24, %24, %24, %24, %24
  %41 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = mul i32 %42, 1000
  br label %44

44:                                               ; preds = %40, %32
  %45 = phi i32 [ %43, %40 ], [ %38, %32 ]
  %46 = phi i32 [ 0, %40 ], [ %37, %32 ]
  %47 = phi i32 [ %43, %40 ], [ %36, %32 ]
  %48 = phi i32 [ 0, %40 ], [ %39, %32 ]
  %49 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 14, i32 3
  %50 = load i8, ptr %49, align 1
  %51 = and i8 %50, 2
  %52 = icmp eq i8 %51, 0
  %53 = add i32 %48, %47
  %54 = icmp ugt i32 %45, %53
  br i1 %54, label %76, label %55

55:                                               ; preds = %71, %44
  %56 = phi i32 [ %72, %71 ], [ %45, %44 ]
  %57 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %0, i32 noundef %56) #5
  %58 = icmp eq ptr %57, null
  br i1 %58, label %117, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ieee80211_channel, ptr %57, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %117

64:                                               ; preds = %59
  %65 = and i32 %61, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.ieee80211_channel, ptr %57, i32 0, i32 12
  %69 = load i32, ptr %68, align 4
  switch i32 %69, label %117 [
    i32 2, label %71
    i32 0, label %70
  ]

70:                                               ; preds = %67
  br i1 %52, label %117, label %71

71:                                               ; preds = %70, %67, %64
  %72 = add i32 %56, 20000
  %73 = icmp ugt i32 %72, %53
  br i1 %73, label %74, label %55

74:                                               ; preds = %71
  %75 = load i32, ptr %25, align 4
  br label %76

76:                                               ; preds = %74, %44
  %77 = phi i32 [ %75, %74 ], [ %26, %44 ]
  %78 = icmp eq i32 %77, 4
  %79 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %78, label %82, label %113

82:                                               ; preds = %76
  br i1 %81, label %83, label %85, !prof !8

83:                                               ; preds = %82
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 813, i32 noundef 9, ptr noundef null) #5
  %84 = load i32, ptr %79, align 4
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi i32 [ %84, %83 ], [ %80, %82 ]
  %87 = mul i32 %86, 1000
  %88 = load i8, ptr %49, align 1
  %89 = and i8 %88, 2
  %90 = icmp eq i8 %89, 0
  %91 = add i32 %87, %46
  %92 = add i32 %87, %48
  %93 = icmp ugt i32 %91, %92
  br i1 %93, label %117, label %94

94:                                               ; preds = %110, %85
  %95 = phi i32 [ %111, %110 ], [ %91, %85 ]
  %96 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %0, i32 noundef %95) #5
  %97 = icmp eq ptr %96, null
  br i1 %97, label %117, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ieee80211_channel, ptr %96, i32 0, i32 4
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %98
  %104 = and i32 %100, 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.ieee80211_channel, ptr %96, i32 0, i32 12
  %108 = load i32, ptr %107, align 4
  switch i32 %108, label %117 [
    i32 2, label %110
    i32 0, label %109
  ]

109:                                              ; preds = %106
  br i1 %90, label %117, label %110

110:                                              ; preds = %109, %106, %103
  %111 = add i32 %95, 20000
  %112 = icmp ugt i32 %111, %92
  br i1 %112, label %117, label %94

113:                                              ; preds = %76
  br i1 %81, label %117, label %114, !prof !9

114:                                              ; preds = %113, %31, %22
  %115 = phi i32 [ 796, %22 ], [ 185, %31 ], [ 819, %113 ]
  %116 = phi i32 [ 11, %22 ], [ 11, %31 ], [ 1, %113 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %115, i32 noundef 9, ptr noundef null) #5
  br label %117

117:                                              ; preds = %114, %113, %110, %109, %106, %98, %94, %85, %70, %67, %59, %55, %29, %19
  %118 = phi i32 [ 11, %19 ], [ 11, %29 ], [ 1, %113 ], [ 1, %85 ], [ %116, %114 ], [ 1, %110 ], [ 11, %109 ], [ 11, %106 ], [ 11, %98 ], [ 11, %94 ], [ 11, %70 ], [ 11, %67 ], [ 11, %59 ], [ 11, %55 ]
  %119 = tail call zeroext i1 @cfg80211_chandef_usable(ptr noundef %0, ptr noundef %1, i32 noundef %118)
  %120 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_return_bool, i32 0, i32 1), align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %117
  %123 = tail call ptr @llvm.thread.pointer() #5
  %124 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %125 = load i32, ptr %124, align 8
  %126 = lshr i32 %125, 5
  %127 = getelementptr i32, ptr @__cpu_online_mask, i32 %126
  %128 = load volatile i32, ptr %127, align 4
  %129 = and i32 %125, 31
  %130 = shl nuw i32 1, %129
  %131 = and i32 %130, %128
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %122
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %134 = tail call i32 @__traceiter_cfg80211_return_bool(ptr noundef null, i1 noundef zeroext %119) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  br label %135

135:                                              ; preds = %133, %122, %117
  ret i1 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cfg80211_reg_can_beacon_relax(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #5, !srcloc !15
  unreachable

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i1 @_cfg80211_reg_can_beacon(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_set_monitor_channel(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 32
  %4 = getelementptr inbounds %struct.cfg80211_ops, ptr %3, i32 0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %53, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 15
  %11 = load i32, ptr %10, align 32
  %12 = icmp eq i32 %9, %11
  %13 = icmp sgt i32 %9, 0
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %53

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_set_monitor_channel, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #5
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %31 = tail call i32 @__traceiter_rdev_set_monitor_channel(ptr noundef null, ptr noundef %16, ptr noundef %1) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !17
  %32 = load ptr, ptr %0, align 32
  %33 = getelementptr inbounds %struct.cfg80211_ops, ptr %32, i32 0, i32 36
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %30, %19, %15
  %36 = phi ptr [ %34, %30 ], [ %5, %19 ], [ %5, %15 ]
  %37 = tail call i32 %36(ptr noundef %16, ptr noundef %1) #5
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = tail call ptr @llvm.thread.pointer() #5
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
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  %52 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %16, i32 noundef %37) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !19
  br label %53

53:                                               ; preds = %51, %40, %35, %7, %2
  %54 = phi i32 [ -95, %2 ], [ -16, %7 ], [ %37, %35 ], [ %37, %40 ], [ %37, %51 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_get_chan_state(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  store ptr null, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %5 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %111, label %13

13:                                               ; preds = %8, %4
  %14 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %111 [
    i32 1, label %16
    i32 2, label %43
    i32 8, label %43
    i32 3, label %50
    i32 9, label %50
    i32 7, label %84
    i32 11, label %105
    i32 13, label %110
    i32 5, label %110
    i32 0, label %110
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 25
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %111, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %18, i32 0, i32 9
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr %1, align 4
  %23 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 28
  %24 = load i8, ptr %23, align 4, !range !10
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 29
  %28 = load i8, ptr %27, align 1, !range !10
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i32 1, i32 2
  br label %31

31:                                               ; preds = %26, %20
  %32 = phi i32 [ 2, %20 ], [ %30, %26 ]
  store i32 %32, ptr %2, align 4
  %33 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 29
  %34 = load i8, ptr %33, align 1, !range !10
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %111, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 27, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = shl nuw i32 1, %38
  %40 = load i8, ptr %3, align 1
  %41 = trunc i32 %39 to i8
  %42 = or i8 %40, %41
  store i8 %42, ptr %3, align 1
  br label %111

43:                                               ; preds = %13, %13
  %44 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 25
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %111, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %45, i32 0, i32 9
  %49 = load ptr, ptr %48, align 8
  store ptr %49, ptr %1, align 4
  store i32 1, ptr %2, align 4
  br label %111

50:                                               ; preds = %13, %13
  %51 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 36
  %52 = load i8, ptr %51, align 1, !range !10
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 27
  %56 = load ptr, ptr %55, align 4
  store ptr %56, ptr %1, align 4
  store i32 1, ptr %2, align 4
  %57 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 27, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = shl nuw i32 1, %58
  %60 = load i8, ptr %3, align 1
  %61 = trunc i32 %59 to i8
  %62 = or i8 %60, %61
  store i8 %62, ptr %3, align 1
  br label %111

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 32
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %111, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 27
  %69 = load ptr, ptr %68, align 4
  store ptr %69, ptr %1, align 4
  store i32 1, ptr %2, align 4
  %70 = load ptr, ptr %0, align 4
  %71 = load i32, ptr %14, align 4
  %72 = tail call i32 @cfg80211_chandef_dfs_required(ptr noundef %70, ptr noundef %68, i32 noundef %71)
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75, !prof !8

74:                                               ; preds = %67
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1323, i32 noundef 9, ptr noundef null) #5
  br label %111

75:                                               ; preds = %67
  %76 = icmp eq i32 %72, 0
  br i1 %76, label %111, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 27, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = shl nuw i32 1, %79
  %81 = load i8, ptr %3, align 1
  %82 = trunc i32 %80 to i8
  %83 = or i8 %81, %82
  store i8 %83, ptr %3, align 1
  br label %111

84:                                               ; preds = %13
  %85 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 15
  %86 = load i8, ptr %85, align 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %111, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 27
  %90 = load ptr, ptr %89, align 4
  store ptr %90, ptr %1, align 4
  store i32 1, ptr %2, align 4
  %91 = load ptr, ptr %0, align 4
  %92 = load i32, ptr %14, align 4
  %93 = tail call i32 @cfg80211_chandef_dfs_required(ptr noundef %91, ptr noundef %89, i32 noundef %92)
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96, !prof !8

95:                                               ; preds = %88
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1336, i32 noundef 9, ptr noundef null) #5
  br label %111

96:                                               ; preds = %88
  %97 = icmp eq i32 %93, 0
  br i1 %97, label %111, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 27, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = shl nuw i32 1, %100
  %102 = load i8, ptr %3, align 1
  %103 = trunc i32 %101 to i8
  %104 = or i8 %102, %103
  store i8 %104, ptr %3, align 1
  br label %111

105:                                              ; preds = %13
  %106 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 27
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  store ptr %107, ptr %1, align 4
  store i32 1, ptr %2, align 4
  br label %111

110:                                              ; preds = %13, %13, %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1357, i32 noundef 9, ptr noundef null) #5
  br label %111

111:                                              ; preds = %110, %109, %105, %98, %96, %95, %84, %77, %75, %74, %63, %54, %47, %43, %36, %31, %16, %13, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cfg80211_any_usable_channels(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  store i32 %1, ptr %4, align 4
  %5 = or i32 %2, 1
  %6 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 6, i32 noundef 0) #5
  %7 = icmp slt i32 %6, 6
  br i1 %7, label %8, label %32

8:                                                ; preds = %28, %3
  %9 = phi i32 [ %30, %28 ], [ %6, %3 ]
  %10 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %11, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load ptr, ptr %11, align 4
  br label %22

19:                                               ; preds = %22
  %20 = add nuw nsw i32 %23, 1
  %21 = icmp eq i32 %20, %15
  br i1 %21, label %28, label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ 0, %17 ], [ %20, %19 ]
  %24 = getelementptr %struct.ieee80211_channel, ptr %18, i32 %23, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %19

28:                                               ; preds = %19, %13, %8
  %29 = add i32 %9, 1
  %30 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 6, i32 noundef %29) #5
  %31 = icmp slt i32 %30, 6
  br i1 %31, label %8, label %32

32:                                               ; preds = %28, %22, %3
  %33 = phi i1 [ false, %3 ], [ true, %22 ], [ false, %28 ]
  ret i1 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_reg_can_beacon(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_return_bool(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_set_monitor_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i8 0, i8 2}
!11 = !{i64 2158168357}
!12 = !{i64 2158168585}
!13 = !{i64 2157861609}
!14 = !{i64 2157861767}
!15 = !{i64 2155872311, i64 2155872795, i64 2155872348, i64 2155872404, i64 2155872438, i64 2155872462, i64 2155872503, i64 2155872524, i64 2155872552, i64 2155872586}
!16 = !{i64 2156797428}
!17 = !{i64 2156797616}
!18 = !{i64 2156113912}
!19 = !{i64 2156114074}
