; ModuleID = '/llk/IR/net/wireless/pmsr.c_pt.bc'
source_filename = "../net/wireless/pmsr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_pmsr_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_pmsr_complete\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_pmsr_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_pmsr_report:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_pmsr_report\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_pmsr_report:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.44, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.49, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.49 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type {}
%struct.cfg80211_registered_device = type { ptr, %struct.list_head, %struct.rfkill_ops, %struct.work_struct, [2 x i8], ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.rb_root, i32, i32, ptr, ptr, ptr, %struct.list_head, i64, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, %struct.delayed_work, %struct.work_struct, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.work_struct, %struct.spinlock, [24 x i8], %struct.wiphy }
%struct.rfkill_ops = type { ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.97, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.anon.97 = type { i64, i64, i8 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.cfg80211_pmsr_request = type { i64, ptr, i32, i32, i32, [6 x i8], [6 x i8], %struct.list_head, [0 x %struct.cfg80211_pmsr_request_peer] }
%struct.cfg80211_pmsr_request_peer = type { [6 x i8], %struct.cfg80211_chan_def, i8, %struct.cfg80211_pmsr_ftm_request_peer }
%struct.cfg80211_pmsr_ftm_request_peer = type { i32, i16, i8, i8, i8, i8, i8, i8 }
%struct.cfg80211_pmsr_capabilities = type { i32, i8, %struct.anon.96 }
%struct.anon.96 = type { i32, i32, i8, i8, i8 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.98, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.98 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.nlattr = type { i16, i16 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.99, %union.anon.100, [48 x i8], %union.anon.101, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.103, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.99 = type { ptr }
%union.anon.100 = type { i64 }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { i32, ptr }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.105, i32, i32, i32, i16, i16, %union.anon.107, %union.anon.108, %union.anon.109, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.105 = type { i32 }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i16 }
%struct.cfg80211_pmsr_result = type { i64, i64, i32, [6 x i8], i8, i32, %union.anon.123 }
%union.anon.123 = type { %struct.cfg80211_pmsr_ftm_result }
%struct.cfg80211_pmsr_ftm_result = type { ptr, ptr, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i32, i32, %struct.rate_info, %struct.rate_info, i64, i64, i64, i64, i64, i64, i16 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }

@nl80211_pmsr_start.__msg = internal constant [20 x i8] c"Too many peers used\00", align 1
@nl80211_pmsr_start.__msg.1 = internal constant [36 x i8] c"device cannot randomize MAC address\00", align 1
@__kstrtab_cfg80211_pmsr_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_pmsr_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_pmsr_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_pmsr_complete to i32), ptr @__kstrtab_cfg80211_pmsr_complete, ptr @__kstrtabns_cfg80211_pmsr_complete }, section "___ksymtab_gpl+cfg80211_pmsr_complete", align 4
@cfg80211_pmsr_report._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.cfg80211_pmsr_report = private unnamed_addr constant [21 x i8] c"cfg80211_pmsr_report\00", align 1
@.str = private unnamed_addr constant [47 x i8] c"\013peer measurement result: message didn't fit!\00", align 1
@__kstrtab_cfg80211_pmsr_report = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_pmsr_report = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_pmsr_report = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_pmsr_report to i32), ptr @__kstrtab_cfg80211_pmsr_report, ptr @__kstrtabns_cfg80211_pmsr_report }, section "___ksymtab_gpl+cfg80211_pmsr_report", align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"net/wireless/pmsr.c\00", align 1
@pmsr_parse_peer.__msg = internal constant [23 x i8] c"insufficient peer data\00", align 1
@pmsr_parse_peer.__msg.3 = internal constant [26 x i8] c"missing request type/data\00", align 1
@pmsr_parse_peer.__msg.4 = internal constant [34 x i8] c"reporting AP TSF is not supported\00", align 1
@pmsr_parse_peer.__msg.5 = internal constant [29 x i8] c"unsupported measurement type\00", align 1
@pmsr_parse_ftm.__msg = internal constant [27 x i8] c"FTM: unsupported bandwidth\00", align 1
@pmsr_parse_ftm.__msg.6 = internal constant [27 x i8] c"FTM: must specify preamble\00", align 1
@pmsr_parse_ftm.__msg.7 = internal constant [22 x i8] c"FTM: invalid preamble\00", align 1
@pmsr_parse_ftm.__msg.8 = internal constant [29 x i8] c"FTM: ASAP mode not supported\00", align 1
@pmsr_parse_ftm.__msg.9 = internal constant [33 x i8] c"FTM: non-ASAP mode not supported\00", align 1
@pmsr_parse_ftm.__msg.10 = internal constant [64 x i8] c"FTM: max NUM_BURSTS_EXP must be set lower than the device limit\00", align 1
@pmsr_parse_ftm.__msg.11 = internal constant [73 x i8] c"FTM: FTMs per burst must be set lower than the device limit but non-zero\00", align 1
@pmsr_parse_ftm.__msg.12 = internal constant [31 x i8] c"FTM: LCI request not supported\00", align 1
@pmsr_parse_ftm.__msg.13 = internal constant [42 x i8] c"FTM: civic location request not supported\00", align 1
@pmsr_parse_ftm.__msg.14 = internal constant [44 x i8] c"FTM: trigger based ranging is not supported\00", align 1
@pmsr_parse_ftm.__msg.15 = internal constant [44 x i8] c"FTM: trigger based ranging is not supported\00", align 1
@pmsr_parse_ftm.__msg.16 = internal constant [56 x i8] c"FTM: can't set both trigger based and non trigger based\00", align 1
@pmsr_parse_ftm.__msg.17 = internal constant [49 x i8] c"FTM: non EDCA based ranging must use HE preamble\00", align 1
@pmsr_parse_ftm.__msg.18 = internal constant [45 x i8] c"FTM: LMR feedback set for EDCA based ranging\00", align 1
@pmsr_parse_ftm.__msg.19 = internal constant [42 x i8] c"FTM: BSS color set for EDCA based ranging\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"net/wireless/core.h\00", align 1
@__tracepoint_rdev_start_pmsr = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_rdev_return_int = external dso_local global %struct.tracepoint, align 4
@__tracepoint_cfg80211_pmsr_complete = external dso_local global %struct.tracepoint, align 4
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64
@__tracepoint_cfg80211_pmsr_report = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_abort_pmsr = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_return_void = external dso_local global %struct.tracepoint, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_cfg80211_pmsr_complete, ptr @__ksymtab_cfg80211_pmsr_report], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nl80211_pmsr_start(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [14 x ptr], align 4
  %4 = alloca [5 x ptr], align 4
  %5 = alloca [3 x ptr], align 4
  %6 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr ptr, ptr %7, i32 273
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.genl_info, ptr %1, i32 0, i32 7, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %11, i32 0, i32 48, i32 77
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %578, label %17

17:                                               ; preds = %2
  %18 = icmp eq ptr %9, null
  br i1 %18, label %578, label %19

19:                                               ; preds = %17
  %20 = getelementptr i8, ptr %9, i32 4
  %21 = load i16, ptr %9, align 2
  %22 = zext i16 %21 to i32
  %23 = add nsw i32 %22, -4
  %24 = tail call ptr @nla_find(ptr noundef %20, i32 noundef %23, i32 noundef 5) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %578, label %26

26:                                               ; preds = %19
  %27 = getelementptr i8, ptr %24, i32 4
  %28 = load i16, ptr %24, align 2
  %29 = icmp ugt i16 %28, 7
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = zext i16 %28 to i32
  %32 = add nsw i32 %31, -4
  br label %33

33:                                               ; preds = %54, %30
  %34 = phi i32 [ %43, %54 ], [ 0, %30 ]
  %35 = phi ptr [ %58, %54 ], [ %27, %30 ]
  %36 = phi i32 [ %57, %54 ], [ %32, %30 ]
  %37 = load i16, ptr %35, align 2
  %38 = icmp ult i16 %37, 4
  %39 = zext i16 %37 to i32
  %40 = icmp ult i32 %36, %39
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %60, label %42

42:                                               ; preds = %33
  %43 = add i32 %34, 1
  %44 = load ptr, ptr %14, align 4
  %45 = load i32, ptr %44, align 4
  %46 = icmp ugt i32 %43, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %49 = load ptr, ptr %48, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nl80211_pmsr_start.__msg) #10
  %50 = icmp eq ptr %49, null
  br i1 %50, label %578, label %51

51:                                               ; preds = %47
  store ptr @nl80211_pmsr_start.__msg, ptr %49, align 4
  %52 = getelementptr inbounds %struct.netlink_ext_ack, ptr %49, i32 0, i32 1
  store ptr %35, ptr %52, align 4
  %53 = getelementptr inbounds %struct.netlink_ext_ack, ptr %49, i32 0, i32 2
  store ptr null, ptr %53, align 4
  br label %578

54:                                               ; preds = %42
  %55 = add nuw nsw i32 %39, 3
  %56 = and i32 %55, 131068
  %57 = sub nsw i32 %36, %56
  %58 = getelementptr i8, ptr %35, i32 %56
  %59 = icmp sgt i32 %57, 3
  br i1 %59, label %33, label %60

60:                                               ; preds = %54, %33, %26
  %61 = phi i32 [ 0, %26 ], [ %43, %54 ], [ %34, %33 ]
  %62 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %61, i32 52) #10
  %63 = extractvalue { i32, i1 } %62, 1
  %64 = extractvalue { i32, i1 } %62, 0
  %65 = tail call i32 @llvm.uadd.sat.i32(i32 %64, i32 48) #10
  %66 = select i1 %63, i32 -1, i32 %65
  %67 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %66, i32 noundef 3520) #11
  %68 = icmp eq ptr %67, null
  br i1 %68, label %578, label %69

69:                                               ; preds = %60
  %70 = load ptr, ptr %6, align 4
  %71 = getelementptr ptr, ptr %70, i32 272
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = getelementptr i8, ptr %72, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 4
  store i32 %76, ptr %77, align 4
  br label %78

78:                                               ; preds = %74, %69
  %79 = getelementptr ptr, ptr %70, i32 6
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %103, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %14, align 4
  %84 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, ptr %83, i32 0, i32 1
  %85 = load i8, ptr %84, align 4
  %86 = and i8 %85, 2
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %90 = load ptr, ptr %89, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nl80211_pmsr_start.__msg.1) #10
  %91 = icmp eq ptr %90, null
  br i1 %91, label %576, label %92

92:                                               ; preds = %88
  store ptr @nl80211_pmsr_start.__msg.1, ptr %90, align 4
  %93 = load ptr, ptr %6, align 4
  %94 = getelementptr ptr, ptr %93, i32 6
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.netlink_ext_ack, ptr %90, i32 0, i32 1
  store ptr %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.netlink_ext_ack, ptr %90, i32 0, i32 2
  store ptr null, ptr %97, align 4
  br label %576

98:                                               ; preds = %82
  %99 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 5
  %100 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 6
  %101 = tail call i32 @nl80211_parse_random_mac(ptr noundef %70, ptr noundef %99, ptr noundef %100) #10
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %116, label %576

103:                                              ; preds = %78
  %104 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 5
  %105 = getelementptr inbounds %struct.wireless_dev, ptr %13, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.net_device, ptr %106, i32 0, i32 72
  %110 = load ptr, ptr %109, align 32
  br label %113

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.wireless_dev, ptr %13, i32 0, i32 12
  br label %113

113:                                              ; preds = %111, %108
  %114 = phi ptr [ %110, %108 ], [ %112, %111 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %104, ptr noundef align 1 dereferenceable(6) %114, i32 6, i1 false)
  %115 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(6) %115, i8 -1, i32 6, i1 false) #10
  br label %116

116:                                              ; preds = %113, %98
  %117 = load i16, ptr %24, align 2
  %118 = icmp ugt i16 %117, 7
  br i1 %118, label %119, label %555

119:                                              ; preds = %116
  %120 = zext i16 %117 to i32
  %121 = add nsw i32 %120, -4
  %122 = getelementptr inbounds [5 x ptr], ptr %4, i32 0, i32 1
  %123 = getelementptr inbounds [5 x ptr], ptr %4, i32 0, i32 2
  %124 = getelementptr inbounds [5 x ptr], ptr %4, i32 0, i32 3
  %125 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %126 = getelementptr inbounds [3 x ptr], ptr %5, i32 0, i32 1
  %127 = getelementptr inbounds [3 x ptr], ptr %5, i32 0, i32 2
  %128 = getelementptr inbounds [14 x ptr], ptr %3, i32 0, i32 2
  %129 = getelementptr inbounds [14 x ptr], ptr %3, i32 0, i32 4
  %130 = getelementptr inbounds [14 x ptr], ptr %3, i32 0, i32 1
  %131 = getelementptr inbounds [14 x ptr], ptr %3, i32 0, i32 3
  %132 = getelementptr inbounds [14 x ptr], ptr %3, i32 0, i32 5
  %133 = getelementptr inbounds [14 x ptr], ptr %3, i32 0, i32 6
  %134 = getelementptr inbounds [14 x ptr], ptr %3, i32 0, i32 7
  %135 = getelementptr inbounds [14 x ptr], ptr %3, i32 0, i32 8
  %136 = getelementptr inbounds [14 x ptr], ptr %3, i32 0, i32 9
  %137 = getelementptr inbounds [14 x ptr], ptr %3, i32 0, i32 10
  %138 = getelementptr inbounds [14 x ptr], ptr %3, i32 0, i32 11
  %139 = getelementptr inbounds [14 x ptr], ptr %3, i32 0, i32 12
  %140 = getelementptr inbounds [14 x ptr], ptr %3, i32 0, i32 13
  br label %141

141:                                              ; preds = %546, %119
  %142 = phi i32 [ 0, %119 ], [ %547, %546 ]
  %143 = phi ptr [ %27, %119 ], [ %553, %546 ]
  %144 = phi i32 [ %121, %119 ], [ %552, %546 ]
  %145 = load i16, ptr %143, align 2
  %146 = icmp ult i16 %145, 4
  %147 = zext i16 %145 to i32
  %148 = icmp ult i32 %144, %147
  %149 = select i1 %146, i1 true, i1 %148
  br i1 %149, label %555, label %150

150:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false) #10, !annotation !8
  %151 = getelementptr i8, ptr %143, i32 4
  %152 = load i16, ptr %143, align 2
  %153 = zext i16 %152 to i32
  %154 = add nsw i32 %153, -4
  %155 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 4, ptr noundef %151, i32 noundef %154, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  %156 = load ptr, ptr %122, align 4
  %157 = icmp ne ptr %156, null
  %158 = load ptr, ptr %123, align 4
  %159 = icmp ne ptr %158, null
  %160 = select i1 %157, i1 %159, i1 false
  %161 = load ptr, ptr %124, align 4
  %162 = icmp ne ptr %161, null
  %163 = select i1 %160, i1 %162, i1 false
  br i1 %163, label %168, label %164

164:                                              ; preds = %150
  %165 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_peer.__msg) #10
  %166 = icmp eq ptr %165, null
  br i1 %166, label %542, label %167

167:                                              ; preds = %164
  store ptr @pmsr_parse_peer.__msg, ptr %165, align 4
  br label %537

168:                                              ; preds = %150
  %169 = getelementptr %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 8, i32 %142
  %170 = getelementptr i8, ptr %156, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %169, ptr noundef align 1 dereferenceable(6) %170, i32 6, i1 false) #10
  %171 = load ptr, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(1240) %171, i8 0, i32 1240, i1 false) #10
  %172 = load ptr, ptr %6, align 4
  %173 = load ptr, ptr %125, align 4
  %174 = getelementptr i8, ptr %158, i32 4
  %175 = load i16, ptr %158, align 2
  %176 = zext i16 %175 to i32
  %177 = add nsw i32 %176, -4
  %178 = call i32 @__nla_parse(ptr noundef %172, i32 noundef 309, ptr noundef %174, i32 noundef %177, ptr noundef null, i32 noundef 0, ptr noundef %173) #10
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %542

180:                                              ; preds = %168
  %181 = getelementptr %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 8, i32 %142, i32 1
  %182 = call i32 @nl80211_parse_chandef(ptr noundef %11, ptr noundef %1, ptr noundef %181) #10
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %542

184:                                              ; preds = %180
  %185 = load ptr, ptr %124, align 4
  %186 = getelementptr i8, ptr %185, i32 4
  %187 = load i16, ptr %185, align 2
  %188 = zext i16 %187 to i32
  %189 = add nsw i32 %188, -4
  %190 = call i32 @__nla_parse(ptr noundef nonnull %5, i32 noundef 2, ptr noundef %186, i32 noundef %189, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  %191 = load ptr, ptr %126, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %198

193:                                              ; preds = %184
  %194 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_peer.__msg.3) #10
  %195 = icmp eq ptr %194, null
  br i1 %195, label %542, label %196

196:                                              ; preds = %193
  store ptr @pmsr_parse_peer.__msg.3, ptr %194, align 4
  %197 = load ptr, ptr %124, align 4
  br label %537

198:                                              ; preds = %184
  %199 = load ptr, ptr %127, align 4
  %200 = icmp eq ptr %199, null
  %201 = getelementptr %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 8, i32 %142, i32 2
  %202 = load i8, ptr %201, align 4
  br i1 %200, label %205, label %203

203:                                              ; preds = %198
  %204 = or i8 %202, 1
  store i8 %204, ptr %201, align 4
  br label %205

205:                                              ; preds = %203, %198
  %206 = phi i8 [ %204, %203 ], [ %202, %198 ]
  %207 = and i8 %206, 1
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %220, label %209

209:                                              ; preds = %205
  %210 = load ptr, ptr %14, align 4
  %211 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, ptr %210, i32 0, i32 1
  %212 = load i8, ptr %211, align 4
  %213 = and i8 %212, 1
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %209
  %216 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_peer.__msg.4) #10
  %217 = icmp eq ptr %216, null
  br i1 %217, label %542, label %218

218:                                              ; preds = %215
  store ptr @pmsr_parse_peer.__msg.4, ptr %216, align 4
  %219 = load ptr, ptr %127, align 4
  br label %537

220:                                              ; preds = %209, %205
  %221 = load i16, ptr %191, align 2
  %222 = icmp ugt i16 %221, 7
  br i1 %222, label %224, label %223

223:                                              ; preds = %220
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  br label %546

224:                                              ; preds = %220
  %225 = zext i16 %221 to i32
  %226 = add nsw i32 %225, -4
  %227 = getelementptr i8, ptr %191, i32 4
  %228 = getelementptr %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 8, i32 %142, i32 1, i32 1
  %229 = getelementptr %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 8, i32 %142, i32 3
  %230 = getelementptr %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 8, i32 %142, i32 3, i32 2
  %231 = getelementptr %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 8, i32 %142, i32 3, i32 1
  %232 = getelementptr %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 8, i32 %142, i32 3, i32 3
  %233 = getelementptr %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 8, i32 %142, i32 3, i32 4
  %234 = getelementptr %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 8, i32 %142, i32 3, i32 5
  %235 = getelementptr %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 8, i32 %142, i32 3, i32 6
  %236 = getelementptr %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 8, i32 %142, i32 3, i32 7
  %237 = load i16, ptr %227, align 2
  %238 = icmp ult i16 %237, 4
  %239 = zext i16 %237 to i32
  %240 = icmp ult i32 %226, %239
  %241 = select i1 %238, i1 true, i1 %240
  br i1 %241, label %242, label %250

242:                                              ; preds = %224
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  br label %546

243:                                              ; preds = %529
  %244 = getelementptr i8, ptr %252, i32 %534
  %245 = load i16, ptr %244, align 2
  %246 = icmp ult i16 %245, 4
  %247 = zext i16 %245 to i32
  %248 = icmp ult i32 %535, %247
  %249 = select i1 %246, i1 true, i1 %248
  br i1 %249, label %544, label %250

250:                                              ; preds = %243, %224
  %251 = phi i32 [ %535, %243 ], [ %226, %224 ]
  %252 = phi ptr [ %244, %243 ], [ %227, %224 ]
  %253 = getelementptr inbounds %struct.nlattr, ptr %252, i32 0, i32 1
  %254 = load i16, ptr %253, align 2
  %255 = and i16 %254, 16383
  %256 = icmp eq i16 %255, 1
  br i1 %256, label %257, label %523

257:                                              ; preds = %250
  %258 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %3, i8 0, i32 56, i1 false) #10, !annotation !8
  %259 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, ptr %258, i32 0, i32 2, i32 1
  %260 = load i32, ptr %259, align 4
  %261 = load i32, ptr %228, align 4
  %262 = shl nuw i32 1, %261
  %263 = and i32 %262, %260
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %257
  %266 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg) #10
  %267 = icmp eq ptr %266, null
  br i1 %267, label %521, label %268

268:                                              ; preds = %265
  store ptr @pmsr_parse_ftm.__msg, ptr %266, align 4
  br label %521

269:                                              ; preds = %257
  %270 = getelementptr i8, ptr %252, i32 4
  %271 = load i16, ptr %252, align 2
  %272 = zext i16 %271 to i32
  %273 = add nsw i32 %272, -4
  %274 = call i32 @__nla_parse(ptr noundef nonnull %3, i32 noundef 13, ptr noundef %270, i32 noundef %273, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  %275 = load ptr, ptr %128, align 4
  %276 = icmp eq ptr %275, null
  br i1 %276, label %280, label %277

277:                                              ; preds = %269
  %278 = getelementptr i8, ptr %275, i32 4
  %279 = load i32, ptr %278, align 4
  br label %280

280:                                              ; preds = %277, %269
  %281 = phi i32 [ %279, %277 ], [ 3, %269 ]
  %282 = load i8, ptr %230, align 2
  %283 = or i8 %282, 1
  store i8 %283, ptr %230, align 2
  %284 = load ptr, ptr %181, align 4
  %285 = load i32, ptr %284, align 4
  %286 = icmp eq i32 %285, 2
  %287 = icmp ne ptr %275, null
  %288 = select i1 %286, i1 true, i1 %287
  br i1 %288, label %293, label %289

289:                                              ; preds = %280
  %290 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.6) #10
  %291 = icmp eq ptr %290, null
  br i1 %291, label %521, label %292

292:                                              ; preds = %289
  store ptr @pmsr_parse_ftm.__msg.6, ptr %290, align 4
  br label %521

293:                                              ; preds = %280
  %294 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, ptr %258, i32 0, i32 2
  %295 = load i32, ptr %294, align 4
  %296 = shl nuw i32 1, %281
  %297 = and i32 %295, %296
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %293
  %300 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.7) #10
  %301 = icmp eq ptr %300, null
  br i1 %301, label %521, label %302

302:                                              ; preds = %299
  store ptr @pmsr_parse_ftm.__msg.7, ptr %300, align 4
  %303 = load ptr, ptr %128, align 4
  %304 = getelementptr inbounds %struct.netlink_ext_ack, ptr %300, i32 0, i32 1
  store ptr %303, ptr %304, align 4
  %305 = getelementptr inbounds %struct.netlink_ext_ack, ptr %300, i32 0, i32 2
  store ptr null, ptr %305, align 4
  br label %521

306:                                              ; preds = %293
  store i32 %281, ptr %229, align 4
  store i16 0, ptr %231, align 4
  %307 = load ptr, ptr %129, align 4
  %308 = icmp eq ptr %307, null
  br i1 %308, label %313, label %309

309:                                              ; preds = %306
  %310 = getelementptr i8, ptr %307, i32 4
  %311 = load i32, ptr %310, align 4
  %312 = trunc i32 %311 to i16
  store i16 %312, ptr %231, align 4
  br label %313

313:                                              ; preds = %309, %306
  %314 = load ptr, ptr %130, align 4
  %315 = icmp eq ptr %314, null
  %316 = select i1 %315, i8 0, i8 2
  %317 = and i8 %283, -3
  %318 = or i8 %316, %317
  store i8 %318, ptr %230, align 2
  %319 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, ptr %258, i32 0, i32 2, i32 4
  %320 = load i8, ptr %319, align 2
  br i1 %315, label %331, label %321

321:                                              ; preds = %313
  %322 = and i8 %320, 2
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %338

324:                                              ; preds = %321
  %325 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.8) #10
  %326 = icmp eq ptr %325, null
  br i1 %326, label %521, label %327

327:                                              ; preds = %324
  store ptr @pmsr_parse_ftm.__msg.8, ptr %325, align 4
  %328 = load ptr, ptr %130, align 4
  %329 = getelementptr inbounds %struct.netlink_ext_ack, ptr %325, i32 0, i32 1
  store ptr %328, ptr %329, align 4
  %330 = getelementptr inbounds %struct.netlink_ext_ack, ptr %325, i32 0, i32 2
  store ptr null, ptr %330, align 4
  br label %521

331:                                              ; preds = %313
  %332 = and i8 %320, 4
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %331
  %335 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.9) #10
  %336 = icmp eq ptr %335, null
  br i1 %336, label %521, label %337

337:                                              ; preds = %334
  store ptr @pmsr_parse_ftm.__msg.9, ptr %335, align 4
  br label %521

338:                                              ; preds = %331, %321
  store i8 0, ptr %232, align 1
  %339 = load ptr, ptr %131, align 4
  %340 = icmp eq ptr %339, null
  br i1 %340, label %357, label %341

341:                                              ; preds = %338
  %342 = getelementptr i8, ptr %339, i32 4
  %343 = load i32, ptr %342, align 4
  %344 = trunc i32 %343 to i8
  store i8 %344, ptr %232, align 1
  %345 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, ptr %258, i32 0, i32 2, i32 2
  %346 = load i8, ptr %345, align 4
  %347 = icmp sgt i8 %346, -1
  %348 = icmp ult i8 %346, %344
  %349 = select i1 %347, i1 %348, i1 false
  br i1 %349, label %350, label %357

350:                                              ; preds = %341
  %351 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.10) #10
  %352 = icmp eq ptr %351, null
  br i1 %352, label %521, label %353

353:                                              ; preds = %350
  store ptr @pmsr_parse_ftm.__msg.10, ptr %351, align 4
  %354 = load ptr, ptr %131, align 4
  %355 = getelementptr inbounds %struct.netlink_ext_ack, ptr %351, i32 0, i32 1
  store ptr %354, ptr %355, align 4
  %356 = getelementptr inbounds %struct.netlink_ext_ack, ptr %351, i32 0, i32 2
  store ptr null, ptr %356, align 4
  br label %521

357:                                              ; preds = %341, %338
  store i8 15, ptr %233, align 4
  %358 = load ptr, ptr %132, align 4
  %359 = icmp eq ptr %358, null
  br i1 %359, label %364, label %360

360:                                              ; preds = %357
  %361 = getelementptr i8, ptr %358, i32 4
  %362 = load i32, ptr %361, align 4
  %363 = trunc i32 %362 to i8
  store i8 %363, ptr %233, align 4
  br label %364

364:                                              ; preds = %360, %357
  store i8 0, ptr %234, align 1
  %365 = load ptr, ptr %133, align 4
  %366 = icmp eq ptr %365, null
  br i1 %366, label %371, label %367

367:                                              ; preds = %364
  %368 = getelementptr i8, ptr %365, i32 4
  %369 = load i32, ptr %368, align 4
  %370 = trunc i32 %369 to i8
  store i8 %370, ptr %234, align 1
  br label %371

371:                                              ; preds = %367, %364
  %372 = phi i8 [ %370, %367 ], [ 0, %364 ]
  %373 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, ptr %258, i32 0, i32 2, i32 3
  %374 = load i8, ptr %373, align 1
  %375 = icmp eq i8 %374, 0
  %376 = add i8 %372, -1
  %377 = icmp ult i8 %376, %374
  %378 = select i1 %375, i1 true, i1 %377
  br i1 %378, label %386, label %379

379:                                              ; preds = %371
  %380 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.11) #10
  %381 = icmp eq ptr %380, null
  br i1 %381, label %521, label %382

382:                                              ; preds = %379
  store ptr @pmsr_parse_ftm.__msg.11, ptr %380, align 4
  %383 = load ptr, ptr %133, align 4
  %384 = getelementptr inbounds %struct.netlink_ext_ack, ptr %380, i32 0, i32 1
  store ptr %383, ptr %384, align 4
  %385 = getelementptr inbounds %struct.netlink_ext_ack, ptr %380, i32 0, i32 2
  store ptr null, ptr %385, align 4
  br label %521

386:                                              ; preds = %371
  store i8 3, ptr %235, align 2
  %387 = load ptr, ptr %134, align 4
  %388 = icmp eq ptr %387, null
  br i1 %388, label %393, label %389

389:                                              ; preds = %386
  %390 = getelementptr i8, ptr %387, i32 4
  %391 = load i32, ptr %390, align 4
  %392 = trunc i32 %391 to i8
  store i8 %392, ptr %235, align 2
  br label %393

393:                                              ; preds = %389, %386
  %394 = load ptr, ptr %135, align 4
  %395 = icmp eq ptr %394, null
  %396 = select i1 %395, i8 0, i8 4
  %397 = and i8 %318, -5
  %398 = or i8 %396, %397
  store i8 %398, ptr %230, align 2
  br i1 %395, label %410, label %399

399:                                              ; preds = %393
  %400 = load i8, ptr %319, align 2
  %401 = and i8 %400, 8
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %403, label %410

403:                                              ; preds = %399
  %404 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.12) #10
  %405 = icmp eq ptr %404, null
  br i1 %405, label %410, label %406

406:                                              ; preds = %403
  store ptr @pmsr_parse_ftm.__msg.12, ptr %404, align 4
  %407 = load ptr, ptr %135, align 4
  %408 = getelementptr inbounds %struct.netlink_ext_ack, ptr %404, i32 0, i32 1
  store ptr %407, ptr %408, align 4
  %409 = getelementptr inbounds %struct.netlink_ext_ack, ptr %404, i32 0, i32 2
  store ptr null, ptr %409, align 4
  br label %410

410:                                              ; preds = %406, %403, %399, %393
  %411 = load ptr, ptr %136, align 4
  %412 = icmp eq ptr %411, null
  %413 = load i8, ptr %230, align 2
  %414 = select i1 %412, i8 0, i8 8
  %415 = and i8 %413, -9
  %416 = or i8 %415, %414
  store i8 %416, ptr %230, align 2
  br i1 %412, label %428, label %417

417:                                              ; preds = %410
  %418 = load i8, ptr %319, align 2
  %419 = and i8 %418, 16
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %421, label %428

421:                                              ; preds = %417
  %422 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.13) #10
  %423 = icmp eq ptr %422, null
  br i1 %423, label %428, label %424

424:                                              ; preds = %421
  store ptr @pmsr_parse_ftm.__msg.13, ptr %422, align 4
  %425 = load ptr, ptr %136, align 4
  %426 = getelementptr inbounds %struct.netlink_ext_ack, ptr %422, i32 0, i32 1
  store ptr %425, ptr %426, align 4
  %427 = getelementptr inbounds %struct.netlink_ext_ack, ptr %422, i32 0, i32 2
  store ptr null, ptr %427, align 4
  br label %428

428:                                              ; preds = %424, %421, %417, %410
  %429 = load ptr, ptr %137, align 4
  %430 = icmp eq ptr %429, null
  %431 = load i8, ptr %230, align 2
  %432 = select i1 %430, i8 0, i8 16
  %433 = and i8 %431, -17
  %434 = or i8 %433, %432
  store i8 %434, ptr %230, align 2
  br i1 %430, label %446, label %435

435:                                              ; preds = %428
  %436 = load i8, ptr %319, align 2
  %437 = and i8 %436, 32
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %439, label %452

439:                                              ; preds = %435
  %440 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.14) #10
  %441 = icmp eq ptr %440, null
  br i1 %441, label %521, label %442

442:                                              ; preds = %439
  store ptr @pmsr_parse_ftm.__msg.14, ptr %440, align 4
  %443 = load ptr, ptr %137, align 4
  %444 = getelementptr inbounds %struct.netlink_ext_ack, ptr %440, i32 0, i32 1
  store ptr %443, ptr %444, align 4
  %445 = getelementptr inbounds %struct.netlink_ext_ack, ptr %440, i32 0, i32 2
  store ptr null, ptr %445, align 4
  br label %521

446:                                              ; preds = %428
  %447 = load ptr, ptr %138, align 4
  %448 = icmp eq ptr %447, null
  %449 = select i1 %448, i8 0, i8 32
  %450 = and i8 %434, -33
  %451 = or i8 %449, %450
  store i8 %451, ptr %230, align 2
  br i1 %448, label %489, label %458

452:                                              ; preds = %435
  %453 = load ptr, ptr %138, align 4
  %454 = icmp eq ptr %453, null
  %455 = select i1 %454, i8 0, i8 32
  %456 = and i8 %434, -33
  %457 = or i8 %455, %456
  store i8 %457, ptr %230, align 2
  br i1 %454, label %477, label %462

458:                                              ; preds = %446
  %459 = load i8, ptr %319, align 2
  %460 = and i8 %459, 64
  %461 = icmp eq i8 %460, 0
  br i1 %461, label %466, label %477

462:                                              ; preds = %452
  %463 = load i8, ptr %319, align 2
  %464 = and i8 %463, 64
  %465 = icmp eq i8 %464, 0
  br i1 %465, label %466, label %473

466:                                              ; preds = %462, %458
  %467 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.15) #10
  %468 = icmp eq ptr %467, null
  br i1 %468, label %521, label %469

469:                                              ; preds = %466
  store ptr @pmsr_parse_ftm.__msg.15, ptr %467, align 4
  %470 = load ptr, ptr %138, align 4
  %471 = getelementptr inbounds %struct.netlink_ext_ack, ptr %467, i32 0, i32 1
  store ptr %470, ptr %471, align 4
  %472 = getelementptr inbounds %struct.netlink_ext_ack, ptr %467, i32 0, i32 2
  store ptr null, ptr %472, align 4
  br label %521

473:                                              ; preds = %462
  %474 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.16) #10
  %475 = icmp eq ptr %474, null
  br i1 %475, label %521, label %476

476:                                              ; preds = %473
  store ptr @pmsr_parse_ftm.__msg.16, ptr %474, align 4
  br label %521

477:                                              ; preds = %458, %452
  %478 = phi i8 [ %457, %452 ], [ %451, %458 ]
  %479 = xor i1 %430, true
  %480 = load i32, ptr %229, align 4
  %481 = icmp eq i32 %480, 4
  br i1 %481, label %489, label %482

482:                                              ; preds = %477
  %483 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.17) #10
  %484 = icmp eq ptr %483, null
  br i1 %484, label %521, label %485

485:                                              ; preds = %482
  store ptr @pmsr_parse_ftm.__msg.17, ptr %483, align 4
  %486 = load ptr, ptr %128, align 4
  %487 = getelementptr inbounds %struct.netlink_ext_ack, ptr %483, i32 0, i32 1
  store ptr %486, ptr %487, align 4
  %488 = getelementptr inbounds %struct.netlink_ext_ack, ptr %483, i32 0, i32 2
  store ptr null, ptr %488, align 4
  br label %521

489:                                              ; preds = %477, %446
  %490 = phi i8 [ %478, %477 ], [ %451, %446 ]
  %491 = phi i1 [ %479, %477 ], [ true, %446 ]
  %492 = phi i1 [ true, %477 ], [ false, %446 ]
  %493 = load ptr, ptr %139, align 4
  %494 = icmp eq ptr %493, null
  %495 = select i1 %494, i8 0, i8 64
  %496 = and i8 %490, -65
  %497 = or i8 %495, %496
  store i8 %497, ptr %230, align 2
  %498 = select i1 %492, i1 true, i1 %494
  br i1 %498, label %506, label %499

499:                                              ; preds = %489
  %500 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.18) #10
  %501 = icmp eq ptr %500, null
  br i1 %501, label %521, label %502

502:                                              ; preds = %499
  store ptr @pmsr_parse_ftm.__msg.18, ptr %500, align 4
  %503 = load ptr, ptr %139, align 4
  %504 = getelementptr inbounds %struct.netlink_ext_ack, ptr %500, i32 0, i32 1
  store ptr %503, ptr %504, align 4
  %505 = getelementptr inbounds %struct.netlink_ext_ack, ptr %500, i32 0, i32 2
  store ptr null, ptr %505, align 4
  br label %521

506:                                              ; preds = %489
  %507 = load ptr, ptr %140, align 4
  %508 = icmp eq ptr %507, null
  br i1 %508, label %521, label %509

509:                                              ; preds = %506
  %510 = and i1 %430, %491
  br i1 %510, label %511, label %518

511:                                              ; preds = %509
  %512 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.19) #10
  %513 = icmp eq ptr %512, null
  br i1 %513, label %521, label %514

514:                                              ; preds = %511
  store ptr @pmsr_parse_ftm.__msg.19, ptr %512, align 4
  %515 = load ptr, ptr %140, align 4
  %516 = getelementptr inbounds %struct.netlink_ext_ack, ptr %512, i32 0, i32 1
  store ptr %515, ptr %516, align 4
  %517 = getelementptr inbounds %struct.netlink_ext_ack, ptr %512, i32 0, i32 2
  store ptr null, ptr %517, align 4
  br label %521

518:                                              ; preds = %509
  %519 = getelementptr i8, ptr %507, i32 4
  %520 = load i8, ptr %519, align 1
  store i8 %520, ptr %236, align 1
  br label %521

521:                                              ; preds = %518, %514, %511, %506, %502, %499, %485, %482, %476, %473, %469, %466, %442, %439, %382, %379, %353, %350, %337, %334, %327, %324, %302, %299, %292, %289, %268, %265
  %522 = phi i32 [ -22, %268 ], [ -22, %265 ], [ -22, %292 ], [ -22, %289 ], [ -22, %302 ], [ -22, %299 ], [ -22, %327 ], [ -22, %324 ], [ -22, %337 ], [ -22, %334 ], [ -22, %353 ], [ -22, %350 ], [ -22, %382 ], [ -22, %379 ], [ -22, %442 ], [ -22, %439 ], [ -22, %469 ], [ -22, %466 ], [ -22, %476 ], [ -22, %473 ], [ -22, %485 ], [ -22, %482 ], [ -22, %502 ], [ -22, %499 ], [ -22, %514 ], [ -22, %511 ], [ 0, %518 ], [ 0, %506 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #10
  br label %529

523:                                              ; preds = %250
  %524 = load ptr, ptr %125, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_peer.__msg.5) #10
  %525 = icmp eq ptr %524, null
  br i1 %525, label %529, label %526

526:                                              ; preds = %523
  store ptr @pmsr_parse_peer.__msg.5, ptr %524, align 4
  %527 = getelementptr inbounds %struct.netlink_ext_ack, ptr %524, i32 0, i32 1
  store ptr %252, ptr %527, align 4
  %528 = getelementptr inbounds %struct.netlink_ext_ack, ptr %524, i32 0, i32 2
  store ptr null, ptr %528, align 4
  br label %529

529:                                              ; preds = %526, %523, %521
  %530 = phi i32 [ %522, %521 ], [ -22, %526 ], [ -22, %523 ]
  %531 = load i16, ptr %252, align 2
  %532 = zext i16 %531 to i32
  %533 = add nuw nsw i32 %532, 3
  %534 = and i32 %533, 131068
  %535 = sub nsw i32 %251, %534
  %536 = icmp sgt i32 %535, 3
  br i1 %536, label %243, label %544

537:                                              ; preds = %218, %196, %167
  %538 = phi ptr [ %216, %218 ], [ %194, %196 ], [ %165, %167 ]
  %539 = phi ptr [ %219, %218 ], [ %197, %196 ], [ %143, %167 ]
  %540 = getelementptr inbounds %struct.netlink_ext_ack, ptr %538, i32 0, i32 1
  store ptr %539, ptr %540, align 4
  %541 = getelementptr inbounds %struct.netlink_ext_ack, ptr %538, i32 0, i32 2
  store ptr null, ptr %541, align 4
  br label %542

542:                                              ; preds = %537, %215, %193, %180, %168, %164
  %543 = phi i32 [ -22, %537 ], [ -22, %215 ], [ -22, %193 ], [ -22, %164 ], [ %178, %168 ], [ %182, %180 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  br label %576

544:                                              ; preds = %529, %243
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  %545 = icmp eq i32 %530, 0
  br i1 %545, label %546, label %576

546:                                              ; preds = %544, %242, %223
  %547 = add i32 %142, 1
  %548 = load i16, ptr %143, align 2
  %549 = zext i16 %548 to i32
  %550 = add nuw nsw i32 %549, 3
  %551 = and i32 %550, 131068
  %552 = sub i32 %144, %551
  %553 = getelementptr i8, ptr %143, i32 %551
  %554 = icmp sgt i32 %552, 3
  br i1 %554, label %141, label %555

555:                                              ; preds = %546, %141, %116
  %556 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 2
  store i32 %61, ptr %556, align 4
  %557 = call fastcc i64 @cfg80211_assign_cookie(ptr noundef %11)
  store i64 %557, ptr %67, align 64
  %558 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 1
  %559 = load i32, ptr %558, align 4
  %560 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 3
  store i32 %559, ptr %560, align 16
  %561 = call fastcc i32 @rdev_start_pmsr(ptr noundef %11, ptr noundef %13, ptr noundef nonnull %67)
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %563, label %576

563:                                              ; preds = %555
  %564 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 7
  %565 = getelementptr inbounds %struct.wireless_dev, ptr %13, i32 0, i32 40
  %566 = getelementptr inbounds %struct.wireless_dev, ptr %13, i32 0, i32 40, i32 1
  %567 = load ptr, ptr %566, align 4
  store ptr %564, ptr %566, align 4
  store ptr %565, ptr %564, align 4
  %568 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %67, i32 0, i32 7, i32 1
  store ptr %567, ptr %568, align 8
  store volatile ptr %564, ptr %567, align 4
  %569 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %570 = load ptr, ptr %569, align 4
  %571 = icmp eq ptr %570, null
  br i1 %571, label %578, label %572

572:                                              ; preds = %563
  %573 = load i64, ptr %67, align 64
  %574 = getelementptr inbounds %struct.netlink_ext_ack, ptr %570, i32 0, i32 3
  store i64 %573, ptr %574, align 4
  %575 = getelementptr inbounds %struct.netlink_ext_ack, ptr %570, i32 0, i32 4
  store i8 8, ptr %575, align 4
  br label %578

576:                                              ; preds = %555, %544, %542, %98, %92, %88
  %577 = phi i32 [ %101, %98 ], [ %561, %555 ], [ -22, %92 ], [ -22, %88 ], [ %543, %542 ], [ %530, %544 ]
  call void @kfree(ptr noundef nonnull %67) #10
  br label %578

578:                                              ; preds = %576, %572, %563, %60, %51, %47, %19, %17, %2
  %579 = phi i32 [ %577, %576 ], [ -95, %2 ], [ -22, %17 ], [ -22, %19 ], [ -22, %51 ], [ -22, %47 ], [ -12, %60 ], [ 0, %563 ], [ 0, %572 ]
  ret i32 %579
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nl80211_parse_random_mac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @cfg80211_assign_cookie(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 16
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, 1
  store i64 %4, ptr %2, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %9, !prof !9

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 147, i32 noundef 9, ptr noundef null) #10
  %7 = load i64, ptr %2, align 8
  %8 = add i64 %7, 1
  store i64 %8, ptr %2, align 8
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i64 [ %8, %6 ], [ %4, %1 ]
  ret i64 %10
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rdev_start_pmsr(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %5 = load i64, ptr %2, align 8
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_start_pmsr, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = tail call ptr @llvm.thread.pointer() #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %20 = tail call i32 @__traceiter_rdev_start_pmsr(ptr noundef null, ptr noundef %4, ptr noundef %1, i64 noundef %5) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %21

21:                                               ; preds = %19, %8, %3
  %22 = load ptr, ptr %0, align 32
  %23 = getelementptr inbounds %struct.cfg80211_ops, ptr %22, i32 0, i32 105
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call i32 %24(ptr noundef %4, ptr noundef %1, ptr noundef %2) #10
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi i32 [ %27, %26 ], [ -95, %21 ]
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = tail call ptr @llvm.thread.pointer() #10
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %44 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %4, i32 noundef %29) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %45

45:                                               ; preds = %43, %32, %28
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_pmsr_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !14
  unreachable

10:                                               ; preds = %3
  %11 = load i64, ptr %1, align 8
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_pmsr_complete, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = tail call ptr @llvm.thread.pointer() #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %26 = tail call i32 @__traceiter_cfg80211_pmsr_complete(ptr noundef null, ptr noundef nonnull %7, ptr noundef %0, i64 noundef %11) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %27

27:                                               ; preds = %25, %14, %10
  %28 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef %2, i32 noundef 0, i32 noundef -1) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %69, label %30

30:                                               ; preds = %27
  %31 = tail call ptr @nl80211hdr_put(ptr noundef nonnull %28, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext -123) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %68, label %33

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %7, i32 -492
  %35 = load i32, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 %35, ptr %6, align 4
  %36 = call i32 @nla_put(ptr noundef nonnull %28, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %33
  %39 = load ptr, ptr %0, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42, !prof !9

41:                                               ; preds = %38
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !14
  unreachable

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr i8, ptr %39, i32 -492
  %47 = load i32, ptr %46, align 4
  %48 = zext i32 %47 to i64
  %49 = shl nuw i64 %48, 32
  %50 = or i64 %49, %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 %50, ptr %5, align 8
  %51 = call i32 @nla_put_64bit(ptr noundef nonnull %28, i32 noundef 153, i32 noundef 8, ptr noundef nonnull %5, i32 noundef 229) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %42
  %54 = load i64, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 %54, ptr %4, align 8
  %55 = call i32 @nla_put_64bit(ptr noundef nonnull %28, i32 noundef 88, i32 noundef 8, ptr noundef nonnull %4, i32 noundef 229) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %31, i32 -20
  %59 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 14
  %60 = load ptr, ptr %59, align 8
  %61 = ptrtoint ptr %60 to i32
  %62 = ptrtoint ptr %58 to i32
  %63 = sub i32 %61, %62
  store i32 %63, ptr %58, align 4
  %64 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %1, i32 0, i32 3
  %65 = load i32, ptr %64, align 8
  %66 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %67 = call i32 @netlink_unicast(ptr noundef %66, ptr noundef nonnull %28, i32 noundef %65, i32 noundef 64) #10
  br label %69

68:                                               ; preds = %53, %42, %33, %30
  call void @kfree_skb_reason(ptr noundef nonnull %28, i32 noundef 0) #10
  br label %69

69:                                               ; preds = %68, %57, %27
  %70 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 41
  call void @_raw_spin_lock_bh(ptr noundef %70) #10
  %71 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 40
  br label %72

72:                                               ; preds = %76, %69
  %73 = phi ptr [ %71, %69 ], [ %74, %76 ]
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %71
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = getelementptr i8, ptr %74, i32 -36
  %78 = icmp eq ptr %77, %1
  br i1 %78, label %79, label %72

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %1, i32 0, i32 7
  %81 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %1, i32 0, i32 7, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %80, align 4
  %84 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  store ptr %82, ptr %84, align 4
  store volatile ptr %83, ptr %82, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %80, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %81, align 4
  br label %85

85:                                               ; preds = %79, %72
  %86 = phi ptr [ %1, %79 ], [ null, %72 ]
  call void @_raw_spin_unlock_bh(ptr noundef %70) #10
  call void @kfree(ptr noundef %86) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nl80211hdr_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_pmsr_report(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !14
  unreachable

14:                                               ; preds = %4
  %15 = load i64, ptr %1, align 8
  %16 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %2, i32 0, i32 3
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_pmsr_report, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = tail call ptr @llvm.thread.pointer() #10
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %31 = tail call i32 @__traceiter_cfg80211_pmsr_report(ptr noundef null, ptr noundef nonnull %11, ptr noundef %0, i64 noundef %15, ptr noundef %16) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  br label %32

32:                                               ; preds = %30, %19, %14
  %33 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef %3, i32 noundef 0, i32 noundef -1) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %185, label %35

35:                                               ; preds = %32
  %36 = tail call ptr @nl80211hdr_put(ptr noundef nonnull %33, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext -124) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %184, label %38

38:                                               ; preds = %35
  %39 = getelementptr i8, ptr %11, i32 -492
  %40 = load i32, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store i32 %40, ptr %10, align 4
  %41 = call i32 @nla_put(ptr noundef nonnull %33, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %184

43:                                               ; preds = %38
  %44 = load ptr, ptr %0, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47, !prof !9

46:                                               ; preds = %43
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !14
  unreachable

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr i8, ptr %44, i32 -492
  %52 = load i32, ptr %51, align 4
  %53 = zext i32 %52 to i64
  %54 = shl nuw i64 %53, 32
  %55 = or i64 %54, %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  store i64 %55, ptr %9, align 8
  %56 = call i32 @nla_put_64bit(ptr noundef nonnull %33, i32 noundef 153, i32 noundef 8, ptr noundef nonnull %9, i32 noundef 229) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %184

58:                                               ; preds = %47
  %59 = load i64, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 %59, ptr %8, align 8
  %60 = call i32 @nla_put_64bit(ptr noundef nonnull %33, i32 noundef 88, i32 noundef 8, ptr noundef nonnull %8, i32 noundef 229) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %184

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 14
  %64 = load ptr, ptr %63, align 8
  %65 = call i32 @nla_put(ptr noundef nonnull %33, i32 noundef 273, i32 noundef 0, ptr noundef null) #10
  %66 = icmp slt i32 %65, 0
  %67 = icmp eq ptr %64, null
  %68 = select i1 %66, i1 true, i1 %67
  br i1 %68, label %139, label %69

69:                                               ; preds = %62
  %70 = load ptr, ptr %63, align 8
  %71 = call i32 @nla_put(ptr noundef nonnull %33, i32 noundef 5, i32 noundef 0, ptr noundef null) #10
  %72 = icmp slt i32 %71, 0
  %73 = icmp eq ptr %70, null
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %139, label %75

75:                                               ; preds = %69
  %76 = load ptr, ptr %63, align 8
  %77 = call i32 @nla_put(ptr noundef nonnull %33, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  %78 = icmp slt i32 %77, 0
  %79 = icmp eq ptr %76, null
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %139, label %81

81:                                               ; preds = %75
  %82 = call i32 @nla_put(ptr noundef nonnull %33, i32 noundef 1, i32 noundef 6, ptr noundef %16) #10
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %139

84:                                               ; preds = %81
  %85 = load ptr, ptr %63, align 8
  %86 = call i32 @nla_put(ptr noundef nonnull %33, i32 noundef 4, i32 noundef 0, ptr noundef null) #10
  %87 = icmp slt i32 %86, 0
  %88 = icmp eq ptr %85, null
  %89 = select i1 %87, i1 true, i1 %88
  br i1 %89, label %139, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %2, i32 0, i32 2
  %92 = load i32, ptr %91, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 %92, ptr %7, align 4
  %93 = call i32 @nla_put(ptr noundef nonnull %33, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %139

95:                                               ; preds = %90
  %96 = load i64, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store i64 %96, ptr %6, align 8
  %97 = call i32 @nla_put_64bit(ptr noundef nonnull %33, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %6, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %139

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %2, i32 0, i32 4
  %101 = load i8, ptr %100, align 2
  %102 = and i8 %101, 2
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %2, i32 0, i32 1
  %106 = load i64, ptr %105, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 %106, ptr %5, align 8
  %107 = call i32 @nla_put_64bit(ptr noundef nonnull %33, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %5, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %139

109:                                              ; preds = %104
  %110 = load i8, ptr %100, align 2
  br label %111

111:                                              ; preds = %109, %99
  %112 = phi i8 [ %110, %109 ], [ %101, %99 ]
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = call i32 @nla_put(ptr noundef nonnull %33, i32 noundef 5, i32 noundef 0, ptr noundef null) #10
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %115, %111
  %119 = load ptr, ptr %63, align 8
  %120 = call i32 @nla_put(ptr noundef nonnull %33, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  %121 = icmp slt i32 %120, 0
  %122 = icmp eq ptr %119, null
  %123 = select i1 %121, i1 true, i1 %122
  br i1 %123, label %139, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %2, i32 0, i32 5
  %126 = load i32, ptr %125, align 4
  %127 = load ptr, ptr %63, align 8
  %128 = call i32 @nla_put(ptr noundef nonnull %33, i32 noundef %126, i32 noundef 0, ptr noundef null) #10
  %129 = icmp slt i32 %128, 0
  %130 = icmp eq ptr %127, null
  %131 = select i1 %129, i1 true, i1 %130
  br i1 %131, label %139, label %132

132:                                              ; preds = %124
  %133 = load i32, ptr %125, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = call fastcc i32 @nl80211_pmsr_send_ftm_res(ptr noundef nonnull %33, ptr noundef %2) #10
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %144, label %139

138:                                              ; preds = %132
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 536, i32 noundef 9, ptr noundef null) #10
  br label %144

139:                                              ; preds = %135, %124, %118, %115, %104, %95, %90, %84, %81, %75, %69, %62
  %140 = call i32 @___ratelimit(ptr noundef nonnull @cfg80211_pmsr_report._rs, ptr noundef nonnull @__func__.cfg80211_pmsr_report) #10
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %184, label %142

142:                                              ; preds = %139
  %143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %184

144:                                              ; preds = %138, %135
  %145 = load ptr, ptr %63, align 8
  %146 = ptrtoint ptr %145 to i32
  %147 = ptrtoint ptr %127 to i32
  %148 = sub i32 %146, %147
  %149 = trunc i32 %148 to i16
  store i16 %149, ptr %127, align 2
  %150 = load ptr, ptr %63, align 8
  %151 = ptrtoint ptr %150 to i32
  %152 = ptrtoint ptr %119 to i32
  %153 = sub i32 %151, %152
  %154 = trunc i32 %153 to i16
  store i16 %154, ptr %119, align 2
  %155 = load ptr, ptr %63, align 8
  %156 = ptrtoint ptr %155 to i32
  %157 = ptrtoint ptr %85 to i32
  %158 = sub i32 %156, %157
  %159 = trunc i32 %158 to i16
  store i16 %159, ptr %85, align 2
  %160 = load ptr, ptr %63, align 8
  %161 = ptrtoint ptr %160 to i32
  %162 = ptrtoint ptr %76 to i32
  %163 = sub i32 %161, %162
  %164 = trunc i32 %163 to i16
  store i16 %164, ptr %76, align 2
  %165 = load ptr, ptr %63, align 8
  %166 = ptrtoint ptr %165 to i32
  %167 = ptrtoint ptr %70 to i32
  %168 = sub i32 %166, %167
  %169 = trunc i32 %168 to i16
  store i16 %169, ptr %70, align 2
  %170 = load ptr, ptr %63, align 8
  %171 = ptrtoint ptr %170 to i32
  %172 = ptrtoint ptr %64 to i32
  %173 = sub i32 %171, %172
  %174 = trunc i32 %173 to i16
  store i16 %174, ptr %64, align 2
  %175 = getelementptr i8, ptr %36, i32 -20
  %176 = load ptr, ptr %63, align 8
  %177 = ptrtoint ptr %176 to i32
  %178 = ptrtoint ptr %175 to i32
  %179 = sub i32 %177, %178
  store i32 %179, ptr %175, align 4
  %180 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %1, i32 0, i32 3
  %181 = load i32, ptr %180, align 8
  %182 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %183 = call i32 @netlink_unicast(ptr noundef %182, ptr noundef nonnull %33, i32 noundef %181, i32 noundef 64) #10
  br label %185

184:                                              ; preds = %142, %139, %58, %47, %38, %35
  call void @kfree_skb_reason(ptr noundef nonnull %33, i32 noundef 0) #10
  br label %185

185:                                              ; preds = %184, %144, %32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_pmsr_free_wk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -264
  %3 = getelementptr i8, ptr %0, i32 -228
  tail call void @mutex_lock(ptr noundef %3) #10
  tail call fastcc void @cfg80211_pmsr_process_abort(ptr noundef %2)
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cfg80211_pmsr_process_abort(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !14
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %3, i32 -544
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store ptr %2, ptr %2, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 41
  call void @_raw_spin_lock_bh(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 40
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %26, label %13

13:                                               ; preds = %24, %6
  %14 = phi ptr [ %15, %24 ], [ %11, %6 ]
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %14, i32 -20
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  store volatile ptr %15, ptr %21, align 4
  %23 = load ptr, ptr %8, align 4
  store ptr %14, ptr %8, align 4
  store ptr %2, ptr %14, align 4
  store ptr %23, ptr %20, align 4
  store volatile ptr %14, ptr %23, align 4
  br label %24

24:                                               ; preds = %19, %13
  %25 = icmp eq ptr %15, %10
  br i1 %25, label %26, label %13

26:                                               ; preds = %24, %6
  call void @_raw_spin_unlock_bh(ptr noundef %9) #10
  %27 = load ptr, ptr %2, align 8
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %73, label %29

29:                                               ; preds = %71, %26
  %30 = phi ptr [ %32, %71 ], [ %27, %26 ]
  %31 = getelementptr i8, ptr %30, i32 -36
  %32 = load ptr, ptr %30, align 4
  %33 = load i64, ptr %31, align 8
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_abort_pmsr, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = tail call ptr @llvm.thread.pointer() #10
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 5
  %41 = getelementptr i32, ptr @__cpu_online_mask, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %39, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %36
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %48 = call i32 @__traceiter_rdev_abort_pmsr(ptr noundef null, ptr noundef nonnull %3, ptr noundef %0, i64 noundef %33) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  br label %49

49:                                               ; preds = %47, %36, %29
  %50 = load ptr, ptr %7, align 32
  %51 = getelementptr inbounds %struct.cfg80211_ops, ptr %50, i32 0, i32 106
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  call void %52(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %31) #10
  br label %55

55:                                               ; preds = %54, %49
  %56 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_void, i32 0, i32 1), align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = tail call ptr @llvm.thread.pointer() #10
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
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  %70 = call i32 @__traceiter_rdev_return_void(ptr noundef null, ptr noundef nonnull %3) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  br label %71

71:                                               ; preds = %69, %58, %55
  call void @kfree(ptr noundef %31) #10
  %72 = icmp eq ptr %32, %2
  br i1 %72, label %73, label %29

73:                                               ; preds = %71, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_pmsr_wdev_down(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 41
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 40
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %12, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %9, %6 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -20
  store i32 0, ptr %8, align 8
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %11, label %6

11:                                               ; preds = %6
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #10
  tail call fastcc void @cfg80211_pmsr_process_abort(ptr noundef %0)
  br label %13

12:                                               ; preds = %1
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #10
  br label %13

13:                                               ; preds = %12, %11
  %14 = load volatile ptr, ptr %3, align 4
  %15 = icmp eq ptr %14, %3
  br i1 %15, label %17, label %16, !prof !23

16:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 648, i32 noundef 9, ptr noundef null) #10
  br label %17

17:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_release_pmsr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 41
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 40
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 42
  br label %9

9:                                                ; preds = %17, %7
  %10 = phi ptr [ %5, %7 ], [ %18, %17 ]
  %11 = getelementptr i8, ptr %10, i32 -20
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  store i32 0, ptr %11, align 8
  %15 = load ptr, ptr @system_wq, align 4
  %16 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %15, ptr noundef %8) #10
  br label %17

17:                                               ; preds = %14, %9
  %18 = load ptr, ptr %10, align 4
  %19 = icmp eq ptr %18, %4
  br i1 %19, label %20, label %9

20:                                               ; preds = %17, %2
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nl80211_parse_chandef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_start_pmsr(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_pmsr_complete(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_pmsr_report(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nl80211_pmsr_send_ftm_res(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #10
  store i32 %24, ptr %18, align 4
  %25 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %208

27:                                               ; preds = %22
  %28 = load i32, ptr %23, align 8
  %29 = icmp eq i32 %28, 6
  br i1 %29, label %30, label %209

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 8
  %32 = load i8, ptr %31, align 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %209, label %34

34:                                               ; preds = %30
  %35 = zext i8 %32 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #10
  store i32 %35, ptr %17, align 4
  %36 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %209, label %208

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6
  %40 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 7
  %41 = load i16, ptr %40, align 4
  %42 = icmp sgt i16 %41, -1
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = zext i16 %41 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #10
  store i32 %44, ptr %16, align 4
  %45 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %208

47:                                               ; preds = %43, %38
  %48 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 22
  %49 = load i16, ptr %48, align 8
  %50 = and i16 %49, 1
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #10
  store i32 %54, ptr %15, align 4
  %55 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #10
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %208

57:                                               ; preds = %52
  %58 = load i16, ptr %48, align 8
  br label %59

59:                                               ; preds = %57, %47
  %60 = phi i16 [ %58, %57 ], [ %49, %47 ]
  %61 = and i16 %60, 2
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 6
  %65 = load i32, ptr %64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  store i32 %65, ptr %14, align 4
  %66 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %208

68:                                               ; preds = %63, %59
  %69 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 9
  %70 = load i8, ptr %69, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 %70, ptr %13, align 1
  %71 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %208

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 10
  %75 = load i8, ptr %74, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  store i8 %75, ptr %12, align 1
  %76 = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %208

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 11
  %80 = load i8, ptr %79, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #10
  store i8 %80, ptr %11, align 1
  %81 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #10
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %208

83:                                               ; preds = %78
  %84 = load i16, ptr %48, align 8
  %85 = and i16 %84, 4
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 12
  %89 = load i32, ptr %88, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store i32 %89, ptr %10, align 4
  %90 = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %208

92:                                               ; preds = %87
  %93 = load i16, ptr %48, align 8
  br label %94

94:                                               ; preds = %92, %83
  %95 = phi i16 [ %93, %92 ], [ %84, %83 ]
  %96 = and i16 %95, 8
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 13
  %100 = load i32, ptr %99, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  store i32 %100, ptr %9, align 4
  %101 = call i32 @nla_put(ptr noundef %0, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %208

103:                                              ; preds = %98
  %104 = load i16, ptr %48, align 8
  br label %105

105:                                              ; preds = %103, %94
  %106 = phi i16 [ %104, %103 ], [ %95, %94 ]
  %107 = and i16 %106, 16
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 14
  %111 = call zeroext i1 @nl80211_put_sta_rate(ptr noundef %0, ptr noundef %110, i32 noundef 11) #10
  br i1 %111, label %112, label %208

112:                                              ; preds = %109
  %113 = load i16, ptr %48, align 8
  br label %114

114:                                              ; preds = %112, %105
  %115 = phi i16 [ %113, %112 ], [ %106, %105 ]
  %116 = and i16 %115, 32
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 15
  %120 = call zeroext i1 @nl80211_put_sta_rate(ptr noundef %0, ptr noundef %119, i32 noundef 12) #10
  br i1 %120, label %121, label %208

121:                                              ; preds = %118
  %122 = load i16, ptr %48, align 8
  br label %123

123:                                              ; preds = %121, %114
  %124 = phi i16 [ %122, %121 ], [ %115, %114 ]
  %125 = and i16 %124, 64
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 16
  %129 = load i64, ptr %128, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 %129, ptr %8, align 8
  %130 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 13, i32 noundef 8, ptr noundef nonnull %8, i32 noundef 21) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %208

132:                                              ; preds = %127
  %133 = load i16, ptr %48, align 8
  br label %134

134:                                              ; preds = %132, %123
  %135 = phi i16 [ %133, %132 ], [ %124, %123 ]
  %136 = and i16 %135, 128
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 17
  %140 = load i64, ptr %139, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  store i64 %140, ptr %7, align 8
  %141 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 14, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 21) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %208

143:                                              ; preds = %138
  %144 = load i16, ptr %48, align 8
  br label %145

145:                                              ; preds = %143, %134
  %146 = phi i16 [ %144, %143 ], [ %135, %134 ]
  %147 = and i16 %146, 256
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 18
  %151 = load i64, ptr %150, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store i64 %151, ptr %6, align 8
  %152 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 15, i32 noundef 8, ptr noundef nonnull %6, i32 noundef 21) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %208

154:                                              ; preds = %149
  %155 = load i16, ptr %48, align 8
  br label %156

156:                                              ; preds = %154, %145
  %157 = phi i16 [ %155, %154 ], [ %146, %145 ]
  %158 = and i16 %157, 512
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 19
  %162 = load i64, ptr %161, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 %162, ptr %5, align 8
  %163 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 16, i32 noundef 8, ptr noundef nonnull %5, i32 noundef 21) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %208

165:                                              ; preds = %160
  %166 = load i16, ptr %48, align 8
  br label %167

167:                                              ; preds = %165, %156
  %168 = phi i16 [ %166, %165 ], [ %157, %156 ]
  %169 = and i16 %168, 1024
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %178, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 20
  %173 = load i64, ptr %172, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 %173, ptr %4, align 8
  %174 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 17, i32 noundef 8, ptr noundef nonnull %4, i32 noundef 21) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %208

176:                                              ; preds = %171
  %177 = load i16, ptr %48, align 8
  br label %178

178:                                              ; preds = %176, %167
  %179 = phi i16 [ %177, %176 ], [ %168, %167 ]
  %180 = and i16 %179, 2048
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 21
  %184 = load i64, ptr %183, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store i64 %184, ptr %3, align 8
  %185 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 18, i32 noundef 8, ptr noundef nonnull %3, i32 noundef 21) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %208

187:                                              ; preds = %182, %178
  %188 = load ptr, ptr %39, align 8
  %189 = icmp eq ptr %188, null
  br i1 %189, label %197, label %190

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 2
  %192 = load i32, ptr %191, align 8
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %190
  %195 = call i32 @nla_put(ptr noundef %0, i32 noundef 19, i32 noundef %192, ptr noundef nonnull %188) #10
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %194, %190, %187
  %198 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 1
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %209, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %1, i32 0, i32 6, i32 0, i32 3
  %203 = load i32, ptr %202, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %209, label %205

205:                                              ; preds = %201
  %206 = call i32 @nla_put(ptr noundef %0, i32 noundef 20, i32 noundef %203, ptr noundef nonnull %199) #10
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %205, %194, %182, %171, %160, %149, %138, %127, %118, %109, %98, %87, %78, %73, %68, %63, %52, %43, %34, %22
  br label %209

209:                                              ; preds = %208, %205, %201, %197, %34, %30, %27
  %210 = phi i32 [ -28, %208 ], [ 0, %34 ], [ 0, %30 ], [ 0, %27 ], [ 0, %205 ], [ 0, %201 ], [ 0, %197 ]
  ret i32 %210
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nl80211_put_sta_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_abort_pmsr(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_void(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2157779150}
!11 = !{i64 2157779330}
!12 = !{i64 2156071283}
!13 = !{i64 2156071445}
!14 = !{i64 2155824395, i64 2155824879, i64 2155824432, i64 2155824488, i64 2155824522, i64 2155824546, i64 2155824587, i64 2155824608, i64 2155824636, i64 2155824670}
!15 = !{i64 2158530872}
!16 = !{i64 2158531066}
!17 = !{i64 2158517066}
!18 = !{i64 2158517268}
!19 = !{i64 2157792448}
!20 = !{i64 2157792628}
!21 = !{i64 2156112988}
!22 = !{i64 2156113142}
!23 = !{!"branch_weights", i32 2000, i32 1}
