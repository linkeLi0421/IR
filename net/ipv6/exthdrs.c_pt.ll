; ModuleID = '/llk/IR/net/ipv6/exthdrs.c_pt.bc'
source_filename = "../net/ipv6/exthdrs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_push_frag_opts:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_push_frag_opts\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_push_frag_opts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_dup_options:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_dup_options\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_dup_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_fixup_options:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_fixup_options\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_fixup_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fl6_update_dst:\09\09\09\09\09"
module asm "\09.asciz \09\22fl6_update_dst\22\09\09\09\09\09"
module asm "__kstrtabns_fl6_update_dst:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.70 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.sk_buff = type { %union.anon, %union.anon.127, %union.anon.128, [48 x i8], %union.anon.129, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.131, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.127 = type { ptr }
%union.anon.128 = type { i64 }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { i32, ptr }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.133, i32, i32, i32, i16, i16, %union.anon.135, %union.anon.136, %union.anon.137, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.133 = type { i32 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.126 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sk_buff_head = type { %union.anon.5, i32, %struct.spinlock }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr }
%struct.in6_addr = type { %union.anon.54 }
%union.anon.54 = type { [4 x i32] }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.ioam6_hdr = type { i8, i8, i8, i8 }
%struct.ioam6_trace_hdr = type { i16, i16, %union.anon.149, [0 x i8] }
%union.anon.149 = type { i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.ipv6_destopt_hao = type <{ i8, i8, %struct.in6_addr }>
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.ipv6_rt_hdr = type { i8, i8, i8, i8 }
%struct.rt0_hdr = type { %struct.ipv6_rt_hdr, i32, [0 x %struct.in6_addr] }
%struct.ipv6_sr_hdr = type { i8, i8, i8, i8, i8, i8, i16, [0 x %struct.in6_addr] }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.ipv6_rpl_sr_hdr = type { i8, i8, i8, i8, i32, %union.anon.148 }
%union.anon.148 = type { [0 x %struct.in6_addr] }

@rthdr_protocol = internal constant %struct.inet6_protocol { ptr null, ptr null, ptr @ipv6_rthdr_rcv, ptr null, i32 1 }, align 4
@destopt_protocol = internal constant %struct.inet6_protocol { ptr null, ptr null, ptr @ipv6_destopt_rcv, ptr null, i32 1 }, align 4
@nodata_protocol = internal constant %struct.inet6_protocol { ptr null, ptr null, ptr @dst_discard, ptr null, i32 1 }, align 4
@__kstrtab_ipv6_push_frag_opts = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_push_frag_opts = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_push_frag_opts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_push_frag_opts to i32), ptr @__kstrtab_ipv6_push_frag_opts, ptr @__kstrtabns_ipv6_push_frag_opts }, section "___ksymtab+ipv6_push_frag_opts", align 4
@__kstrtab_ipv6_dup_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_dup_options = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_dup_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_dup_options to i32), ptr @__kstrtab_ipv6_dup_options, ptr @__kstrtabns_ipv6_dup_options }, section "___ksymtab_gpl+ipv6_dup_options", align 4
@__kstrtab_ipv6_fixup_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_fixup_options = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_fixup_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_fixup_options to i32), ptr @__kstrtab_ipv6_fixup_options, ptr @__kstrtabns_ipv6_fixup_options }, section "___ksymtab_gpl+ipv6_fixup_options", align 4
@__kstrtab_fl6_update_dst = external dso_local constant [0 x i8], align 1
@__kstrtabns_fl6_update_dst = external dso_local constant [0 x i8], align 1
@__ksymtab_fl6_update_dst = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fl6_update_dst to i32), ptr @__kstrtab_fl6_update_dst, ptr @__kstrtabns_fl6_update_dst }, section "___ksymtab_gpl+fl6_update_dst", align 4
@init_net = external dso_local global %struct.net, align 64
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_fl6_update_dst, ptr @__ksymtab_ipv6_dup_options, ptr @__ksymtab_ipv6_fixup_options, ptr @__ksymtab_ipv6_push_frag_opts], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ipv6_exthdrs_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @inet6_add_protocol(ptr noundef nonnull @rthdr_protocol, i8 noundef zeroext 43) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = tail call i32 @inet6_add_protocol(ptr noundef nonnull @destopt_protocol, i8 noundef zeroext 60) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = tail call i32 @inet6_add_protocol(ptr noundef nonnull @nodata_protocol, i8 noundef zeroext 59) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %13, %6, %0
  %10 = phi i32 [ %1, %0 ], [ %14, %13 ], [ 0, %6 ]
  ret i32 %10

11:                                               ; preds = %6
  %12 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @destopt_protocol, i8 noundef zeroext 60) #12
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i32 [ %4, %3 ], [ %7, %11 ]
  %15 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @rthdr_protocol, i8 noundef zeroext 43) #12
  br label %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_exthdrs_exit() local_unnamed_addr #3 {
  %1 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @nodata_protocol, i8 noundef zeroext 59) #12
  %2 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @destopt_protocol, i8 noundef zeroext 60) #12
  %3 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @rthdr_protocol, i8 noundef zeroext 43) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_parse_hopopts(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 %3, %5
  %7 = icmp ult i32 %6, 48
  br i1 %7, label %8, label %18, !prof !9

8:                                                ; preds = %1
  %9 = icmp ult i32 %3, 48
  br i1 %9, label %48, label %10, !prof !9

10:                                               ; preds = %8
  %11 = sub nuw nsw i32 48, %6
  %12 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %11) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %2, align 8
  %16 = load i32, ptr %4, align 4
  %17 = sub i32 %15, %16
  br label %18

18:                                               ; preds = %14, %1
  %19 = phi i32 [ %17, %14 ], [ %6, %1 ]
  %20 = phi i32 [ %15, %14 ], [ %3, %1 ]
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = getelementptr i8, ptr %22, i32 %25
  %27 = getelementptr i8, ptr %26, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 3
  %31 = add nuw nsw i32 %30, 48
  %32 = icmp ugt i32 %31, %19
  br i1 %32, label %33, label %49, !prof !9

33:                                               ; preds = %18
  %34 = icmp ult i32 %20, %31
  br i1 %34, label %48, label %35, !prof !9

35:                                               ; preds = %33
  %36 = sub i32 %31, %19
  %37 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %36) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 8
  %41 = load i16, ptr %23, align 2
  %42 = zext i16 %41 to i32
  %43 = getelementptr i8, ptr %40, i32 %42
  %44 = getelementptr i8, ptr %43, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 3
  br label %49

48:                                               ; preds = %49, %35, %33, %10, %8
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %65

49:                                               ; preds = %39, %18
  %50 = phi i32 [ %47, %39 ], [ %30, %18 ]
  %51 = add nuw nsw i32 %50, 8
  %52 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 34), align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %48, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %56 = load i16, ptr %55, align 4
  %57 = or i16 %56, 32
  store i16 %57, ptr %55, align 4
  %58 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 32), align 4
  %59 = tail call fastcc zeroext i1 @ip6_parse_tlv(i1 noundef zeroext true, ptr noundef %0, i32 noundef %58)
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i16, ptr %23, align 2
  %62 = trunc i32 %51 to i16
  %63 = add i16 %61, %62
  store i16 %63, ptr %23, align 2
  %64 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  store i16 40, ptr %64, align 2
  br label %65

65:                                               ; preds = %60, %54, %48
  %66 = phi i32 [ -1, %48 ], [ 1, %60 ], [ -1, %54 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ip6_parse_tlv(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = alloca [4 x i32], align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = getelementptr i8, ptr %10, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 3
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %6, i32 %17
  %19 = icmp slt i32 %2, 0
  br i1 %19, label %20, label %22, !prof !9

20:                                               ; preds = %3
  %21 = sub i32 0, %2
  br label %22

22:                                               ; preds = %20, %3
  %23 = phi i32 [ %21, %20 ], [ %2, %3 ]
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = ptrtoint ptr %10 to i32
  %27 = ptrtoint ptr %25 to i32
  %28 = add nuw nsw i32 %14, 8
  %29 = add i32 %28, %26
  %30 = sub i32 %29, %27
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %32, %34
  %36 = icmp ugt i32 %30, %35
  br i1 %36, label %495, label %37

37:                                               ; preds = %22
  %38 = add nuw nsw i32 %9, 2
  %39 = sub nsw i32 %38, %17
  %40 = or i32 %14, 6
  %41 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 18
  %42 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 10
  %43 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %44 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %45 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %46 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  %47 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %48 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %49 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %50 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  br label %51

51:                                               ; preds = %487, %37
  %52 = phi i32 [ 0, %37 ], [ %491, %487 ]
  %53 = phi i32 [ 0, %37 ], [ %490, %487 ]
  %54 = phi i32 [ %39, %37 ], [ %489, %487 ]
  %55 = phi i32 [ %40, %37 ], [ %488, %487 ]
  %56 = getelementptr i8, ptr %18, i32 %54
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = add i32 %52, 1
  %61 = icmp sgt i32 %60, 7
  br i1 %61, label %495, label %62

62:                                               ; preds = %59
  %63 = add i32 %54, 1
  %64 = add i32 %55, -1
  br label %487

65:                                               ; preds = %51
  %66 = icmp ult i32 %55, 2
  br i1 %66, label %495, label %67

67:                                               ; preds = %65
  %68 = add i32 %54, 1
  %69 = getelementptr i8, ptr %18, i32 %68
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = add nuw nsw i32 %71, 2
  %73 = icmp ult i32 %55, %72
  br i1 %73, label %495, label %74

74:                                               ; preds = %67
  %75 = icmp eq i8 %57, 1
  br i1 %75, label %76, label %90

76:                                               ; preds = %74
  %77 = add i32 %72, %52
  %78 = icmp sgt i32 %77, 7
  br i1 %78, label %495, label %79

79:                                               ; preds = %76
  %80 = icmp eq i8 %70, 0
  br i1 %80, label %482, label %84

81:                                               ; preds = %84
  %82 = add nuw nsw i32 %85, 1
  %83 = icmp eq i32 %82, %72
  br i1 %83, label %482, label %84

84:                                               ; preds = %81, %79
  %85 = phi i32 [ %82, %81 ], [ 2, %79 ]
  %86 = add i32 %85, %54
  %87 = getelementptr i8, ptr %18, i32 %86
  %88 = load i8, ptr %87, align 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %81, label %495

90:                                               ; preds = %74
  %91 = add i32 %53, 1
  %92 = icmp sgt i32 %91, %23
  br i1 %92, label %495, label %93

93:                                               ; preds = %90
  br i1 %0, label %94, label %407

94:                                               ; preds = %93
  switch i8 %57, label %390 [
    i8 5, label %95
    i8 49, label %110
    i8 -62, label %161
    i8 7, label %372
  ]

95:                                               ; preds = %94
  %96 = load ptr, ptr %5, align 8
  %97 = load i16, ptr %15, align 4
  %98 = zext i16 %97 to i32
  %99 = getelementptr i8, ptr %96, i32 %98
  %100 = getelementptr i8, ptr %99, i32 %68
  %101 = load i8, ptr %100, align 1
  %102 = icmp eq i8 %101, 2
  br i1 %102, label %103, label %109

103:                                              ; preds = %95
  %104 = load i16, ptr %48, align 8
  %105 = or i16 %104, 8
  store i16 %105, ptr %48, align 8
  %106 = getelementptr i8, ptr %99, i32 2
  %107 = getelementptr i8, ptr %106, i32 %54
  %108 = load i16, ptr %107, align 1
  store i16 %108, ptr %50, align 4
  br label %482

109:                                              ; preds = %95
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #12
  br label %496

110:                                              ; preds = %94
  %111 = and i32 %54, 3
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %160

113:                                              ; preds = %110
  %114 = load ptr, ptr %47, align 8
  %115 = getelementptr inbounds %struct.net_device, ptr %114, i32 0, i32 69
  %116 = load volatile ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.inet6_dev, ptr %116, i32 0, i32 32, i32 51
  %118 = load i8, ptr %117, align 4
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %482, label %120

120:                                              ; preds = %113
  %121 = load ptr, ptr %5, align 8
  %122 = load i16, ptr %15, align 4
  %123 = zext i16 %122 to i32
  %124 = getelementptr i8, ptr %121, i32 %123
  %125 = getelementptr i8, ptr %124, i32 %54
  %126 = getelementptr inbounds %struct.ioam6_hdr, ptr %125, i32 0, i32 1
  %127 = load i8, ptr %126, align 1
  %128 = icmp ult i8 %127, 2
  br i1 %128, label %160, label %129

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.ioam6_hdr, ptr %125, i32 0, i32 3
  %131 = load i8, ptr %130, align 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %482

133:                                              ; preds = %129
  %134 = icmp ult i8 %127, 10
  br i1 %134, label %160, label %135

135:                                              ; preds = %133
  %136 = getelementptr i8, ptr %125, i32 4
  %137 = getelementptr inbounds %struct.ioam6_trace_hdr, ptr %136, i32 0, i32 1
  %138 = load i16, ptr %137, align 1
  %139 = lshr i16 %138, 6
  %140 = and i16 %139, 508
  %141 = add nuw nsw i16 %140, 10
  %142 = zext i8 %127 to i16
  %143 = icmp ugt i16 %141, %142
  br i1 %143, label %160, label %144

144:                                              ; preds = %135
  %145 = load i16, ptr %136, align 1
  %146 = tail call ptr @ioam6_namespace(ptr noundef nonnull @init_net, i16 noundef zeroext %145) #12
  %147 = icmp eq ptr %146, null
  br i1 %147, label %482, label %148

148:                                              ; preds = %144
  %149 = load i32, ptr %49, align 8
  %150 = and i32 %149, -2
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %148
  %153 = inttoptr i32 %150 to ptr
  %154 = getelementptr inbounds %struct.dst_entry, ptr %153, i32 0, i32 7
  %155 = load i16, ptr %154, align 4
  %156 = and i16 %155, 128
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %152, %148
  tail call void @ip6_route_input(ptr noundef %1) #12
  br label %159

159:                                              ; preds = %158, %152
  tail call void @ioam6_fill_trace_data(ptr noundef %1, ptr noundef nonnull %146, ptr noundef %136, i1 noundef zeroext true) #12
  br label %482

160:                                              ; preds = %135, %133, %120, %110
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #12
  br label %496

161:                                              ; preds = %94
  %162 = load ptr, ptr %5, align 8
  %163 = load i16, ptr %15, align 4
  %164 = zext i16 %163 to i32
  %165 = getelementptr i8, ptr %162, i32 %164
  %166 = load ptr, ptr %47, align 8
  %167 = icmp eq ptr %166, null
  br i1 %167, label %171, label %168, !prof !9

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct.net_device, ptr %166, i32 0, i32 69
  %170 = load volatile ptr, ptr %169, align 4
  br label %171

171:                                              ; preds = %168, %161
  %172 = phi ptr [ %170, %168 ], [ null, %161 ]
  %173 = getelementptr i8, ptr %165, i32 %68
  %174 = load i8, ptr %173, align 1
  %175 = icmp eq i8 %174, 4
  %176 = and i32 %54, 3
  %177 = icmp eq i32 %176, 2
  %178 = and i1 %177, %175
  br i1 %178, label %219, label %179

179:                                              ; preds = %171
  %180 = icmp eq ptr %172, null
  %181 = tail call ptr @llvm.thread.pointer() #12
  br i1 %180, label %202, label %182, !prof !9

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 1
  %184 = load volatile i32, ptr %183, align 4
  %185 = add i32 %184, 512
  store volatile i32 %185, ptr %183, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %186 = getelementptr inbounds %struct.inet6_dev, ptr %172, i32 0, i32 33, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = ptrtoint ptr %187 to i32
  %189 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %190 = inttoptr i32 %189 to ptr
  %191 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %190) #9, !srcloc !11
  %192 = add i32 %191, %188
  %193 = inttoptr i32 %192 to ptr
  %194 = getelementptr inbounds %struct.ipstats_mib, ptr %193, i32 0, i32 1
  %195 = load i32, ptr %194, align 4
  %196 = add i32 %195, 1
  store i32 %196, ptr %194, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %197 = getelementptr [37 x i64], ptr %193, i32 0, i32 7
  %198 = load i64, ptr %197, align 8
  %199 = add i64 %198, 1
  store i64 %199, ptr %197, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %200 = load i32, ptr %194, align 4
  %201 = add i32 %200, 1
  store i32 %201, ptr %194, align 4
  tail call fastcc void @local_bh_enable() #12
  br label %202

202:                                              ; preds = %182, %179
  %203 = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 1
  %204 = load volatile i32, ptr %203, align 4
  %205 = add i32 %204, 512
  store volatile i32 %205, ptr %203, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %206 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %207 = ptrtoint ptr %206 to i32
  %208 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %209 = inttoptr i32 %208 to ptr
  %210 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %209) #9, !srcloc !11
  %211 = add i32 %210, %207
  %212 = inttoptr i32 %211 to ptr
  %213 = getelementptr inbounds %struct.ipstats_mib, ptr %212, i32 0, i32 1
  %214 = load i32, ptr %213, align 4
  %215 = add i32 %214, 1
  store i32 %215, ptr %213, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %216 = getelementptr [37 x i64], ptr %212, i32 0, i32 7
  %217 = load i64, ptr %216, align 8
  %218 = add i64 %217, 1
  store i64 %218, ptr %216, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  br label %364

219:                                              ; preds = %171
  %220 = getelementptr i8, ptr %165, i32 2
  %221 = getelementptr i8, ptr %220, i32 %54
  %222 = load i32, ptr %221, align 4
  %223 = tail call i32 @llvm.bswap.i32(i32 %222) #12
  %224 = icmp ult i32 %223, 65536
  br i1 %224, label %225, label %268

225:                                              ; preds = %219
  %226 = icmp eq ptr %172, null
  %227 = tail call ptr @llvm.thread.pointer() #12
  br i1 %226, label %248, label %228, !prof !9

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.thread_info, ptr %227, i32 0, i32 1
  %230 = load volatile i32, ptr %229, align 4
  %231 = add i32 %230, 512
  store volatile i32 %231, ptr %229, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %232 = getelementptr inbounds %struct.inet6_dev, ptr %172, i32 0, i32 33, i32 1
  %233 = load ptr, ptr %232, align 4
  %234 = ptrtoint ptr %233 to i32
  %235 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %236 = inttoptr i32 %235 to ptr
  %237 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %236) #9, !srcloc !11
  %238 = add i32 %237, %234
  %239 = inttoptr i32 %238 to ptr
  %240 = getelementptr inbounds %struct.ipstats_mib, ptr %239, i32 0, i32 1
  %241 = load i32, ptr %240, align 4
  %242 = add i32 %241, 1
  store i32 %242, ptr %240, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %243 = getelementptr [37 x i64], ptr %239, i32 0, i32 7
  %244 = load i64, ptr %243, align 8
  %245 = add i64 %244, 1
  store i64 %245, ptr %243, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %246 = load i32, ptr %240, align 4
  %247 = add i32 %246, 1
  store i32 %247, ptr %240, align 4
  tail call fastcc void @local_bh_enable() #12
  br label %248

248:                                              ; preds = %228, %225
  %249 = getelementptr inbounds %struct.thread_info, ptr %227, i32 0, i32 1
  %250 = load volatile i32, ptr %249, align 4
  %251 = add i32 %250, 512
  store volatile i32 %251, ptr %249, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %252 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %253 = ptrtoint ptr %252 to i32
  %254 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %255 = inttoptr i32 %254 to ptr
  %256 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %255) #9, !srcloc !11
  %257 = add i32 %256, %253
  %258 = inttoptr i32 %257 to ptr
  %259 = getelementptr inbounds %struct.ipstats_mib, ptr %258, i32 0, i32 1
  %260 = load i32, ptr %259, align 4
  %261 = add i32 %260, 1
  store i32 %261, ptr %259, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %262 = getelementptr [37 x i64], ptr %258, i32 0, i32 7
  %263 = load i64, ptr %262, align 8
  %264 = add i64 %263, 1
  store i64 %264, ptr %262, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %265 = load i32, ptr %259, align 4
  %266 = add i32 %265, 1
  store i32 %266, ptr %259, align 4
  tail call fastcc void @local_bh_enable() #12
  %267 = add i32 %54, 2
  tail call void @icmpv6_param_prob(ptr noundef %1, i8 noundef zeroext 0, i32 noundef %267) #12
  br label %496

268:                                              ; preds = %219
  %269 = getelementptr inbounds %struct.ipv6hdr, ptr %165, i32 0, i32 2
  %270 = load i16, ptr %269, align 4
  %271 = icmp eq i16 %270, 0
  br i1 %271, label %314, label %272

272:                                              ; preds = %268
  %273 = icmp eq ptr %172, null
  %274 = tail call ptr @llvm.thread.pointer() #12
  br i1 %273, label %295, label %275, !prof !9

275:                                              ; preds = %272
  %276 = getelementptr inbounds %struct.thread_info, ptr %274, i32 0, i32 1
  %277 = load volatile i32, ptr %276, align 4
  %278 = add i32 %277, 512
  store volatile i32 %278, ptr %276, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %279 = getelementptr inbounds %struct.inet6_dev, ptr %172, i32 0, i32 33, i32 1
  %280 = load ptr, ptr %279, align 4
  %281 = ptrtoint ptr %280 to i32
  %282 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %283 = inttoptr i32 %282 to ptr
  %284 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %283) #9, !srcloc !11
  %285 = add i32 %284, %281
  %286 = inttoptr i32 %285 to ptr
  %287 = getelementptr inbounds %struct.ipstats_mib, ptr %286, i32 0, i32 1
  %288 = load i32, ptr %287, align 4
  %289 = add i32 %288, 1
  store i32 %289, ptr %287, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %290 = getelementptr [37 x i64], ptr %286, i32 0, i32 7
  %291 = load i64, ptr %290, align 8
  %292 = add i64 %291, 1
  store i64 %292, ptr %290, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %293 = load i32, ptr %287, align 4
  %294 = add i32 %293, 1
  store i32 %294, ptr %287, align 4
  tail call fastcc void @local_bh_enable() #12
  br label %295

295:                                              ; preds = %275, %272
  %296 = getelementptr inbounds %struct.thread_info, ptr %274, i32 0, i32 1
  %297 = load volatile i32, ptr %296, align 4
  %298 = add i32 %297, 512
  store volatile i32 %298, ptr %296, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %299 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %300 = ptrtoint ptr %299 to i32
  %301 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %302 = inttoptr i32 %301 to ptr
  %303 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %302) #9, !srcloc !11
  %304 = add i32 %303, %300
  %305 = inttoptr i32 %304 to ptr
  %306 = getelementptr inbounds %struct.ipstats_mib, ptr %305, i32 0, i32 1
  %307 = load i32, ptr %306, align 4
  %308 = add i32 %307, 1
  store i32 %308, ptr %306, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %309 = getelementptr [37 x i64], ptr %305, i32 0, i32 7
  %310 = load i64, ptr %309, align 8
  %311 = add i64 %310, 1
  store i64 %311, ptr %309, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %312 = load i32, ptr %306, align 4
  %313 = add i32 %312, 1
  store i32 %313, ptr %306, align 4
  tail call fastcc void @local_bh_enable() #12
  tail call void @icmpv6_param_prob(ptr noundef %1, i8 noundef zeroext 0, i32 noundef %54) #12
  br label %496

314:                                              ; preds = %268
  %315 = load i32, ptr %31, align 8
  %316 = add i32 %315, -40
  %317 = icmp ugt i32 %223, %316
  br i1 %317, label %318, label %358

318:                                              ; preds = %314
  %319 = icmp eq ptr %172, null
  %320 = tail call ptr @llvm.thread.pointer() #12
  br i1 %319, label %341, label %321, !prof !9

321:                                              ; preds = %318
  %322 = getelementptr inbounds %struct.thread_info, ptr %320, i32 0, i32 1
  %323 = load volatile i32, ptr %322, align 4
  %324 = add i32 %323, 512
  store volatile i32 %324, ptr %322, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %325 = getelementptr inbounds %struct.inet6_dev, ptr %172, i32 0, i32 33, i32 1
  %326 = load ptr, ptr %325, align 4
  %327 = ptrtoint ptr %326 to i32
  %328 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %329 = inttoptr i32 %328 to ptr
  %330 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %329) #9, !srcloc !11
  %331 = add i32 %330, %327
  %332 = inttoptr i32 %331 to ptr
  %333 = getelementptr inbounds %struct.ipstats_mib, ptr %332, i32 0, i32 1
  %334 = load i32, ptr %333, align 4
  %335 = add i32 %334, 1
  store i32 %335, ptr %333, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %336 = getelementptr [37 x i64], ptr %332, i32 0, i32 12
  %337 = load i64, ptr %336, align 8
  %338 = add i64 %337, 1
  store i64 %338, ptr %336, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %339 = load i32, ptr %333, align 4
  %340 = add i32 %339, 1
  store i32 %340, ptr %333, align 4
  tail call fastcc void @local_bh_enable() #12
  br label %341

341:                                              ; preds = %321, %318
  %342 = getelementptr inbounds %struct.thread_info, ptr %320, i32 0, i32 1
  %343 = load volatile i32, ptr %342, align 4
  %344 = add i32 %343, 512
  store volatile i32 %344, ptr %342, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %345 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %346 = ptrtoint ptr %345 to i32
  %347 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %348 = inttoptr i32 %347 to ptr
  %349 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %348) #9, !srcloc !11
  %350 = add i32 %349, %346
  %351 = inttoptr i32 %350 to ptr
  %352 = getelementptr inbounds %struct.ipstats_mib, ptr %351, i32 0, i32 1
  %353 = load i32, ptr %352, align 4
  %354 = add i32 %353, 1
  store i32 %354, ptr %352, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %355 = getelementptr [37 x i64], ptr %351, i32 0, i32 12
  %356 = load i64, ptr %355, align 8
  %357 = add i64 %356, 1
  store i64 %357, ptr %355, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  br label %364

358:                                              ; preds = %314
  %359 = add i32 %223, 40
  %360 = icmp ugt i32 %315, %359
  br i1 %360, label %361, label %369, !prof !9

361:                                              ; preds = %358
  %362 = tail call i32 @pskb_trim_rcsum_slow(ptr noundef %1, i32 noundef %359) #12
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %369, label %368

364:                                              ; preds = %341, %202
  %365 = phi ptr [ %352, %341 ], [ %213, %202 ]
  %366 = load i32, ptr %365, align 4
  %367 = add i32 %366, 1
  store i32 %367, ptr %365, align 4
  tail call fastcc void @local_bh_enable() #12
  br label %368

368:                                              ; preds = %364, %361
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #12
  br label %496

369:                                              ; preds = %361, %358
  %370 = load i16, ptr %48, align 8
  %371 = or i16 %370, 128
  store i16 %371, ptr %48, align 8
  br label %482

372:                                              ; preds = %94
  %373 = load ptr, ptr %5, align 8
  %374 = load i16, ptr %15, align 4
  %375 = zext i16 %374 to i32
  %376 = getelementptr i8, ptr %373, i32 %375
  %377 = getelementptr i8, ptr %376, i32 %68
  %378 = load i8, ptr %377, align 1
  %379 = icmp ult i8 %378, 8
  br i1 %379, label %389, label %380

380:                                              ; preds = %372
  %381 = zext i8 %378 to i32
  %382 = add i32 %54, 6
  %383 = getelementptr i8, ptr %376, i32 %382
  %384 = load i8, ptr %383, align 1
  %385 = zext i8 %384 to i32
  %386 = shl nuw nsw i32 %385, 2
  %387 = add nuw nsw i32 %386, 8
  %388 = icmp ugt i32 %387, %381
  br i1 %388, label %389, label %482

389:                                              ; preds = %380, %372
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #12
  br label %496

390:                                              ; preds = %94
  br i1 %19, label %406, label %391

391:                                              ; preds = %390
  %392 = load ptr, ptr %5, align 8
  %393 = load i16, ptr %15, align 4
  %394 = zext i16 %393 to i32
  %395 = getelementptr i8, ptr %392, i32 %394
  %396 = getelementptr i8, ptr %395, i32 %54
  %397 = load i8, ptr %396, align 1
  %398 = lshr i8 %397, 6
  %399 = zext i8 %398 to i32
  switch i32 %399, label %406 [
    i32 0, label %482
    i32 2, label %405
    i32 3, label %400
  ]

400:                                              ; preds = %391
  %401 = getelementptr inbounds %struct.ipv6hdr, ptr %395, i32 0, i32 6
  %402 = load i32, ptr %401, align 4
  %403 = and i32 %402, 255
  %404 = icmp eq i32 %403, 255
  br i1 %404, label %406, label %405

405:                                              ; preds = %400, %391
  tail call void @icmpv6_param_prob(ptr noundef %1, i8 noundef zeroext 2, i32 noundef %54) #12
  br label %496

406:                                              ; preds = %400, %391, %390
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #12
  br label %496

407:                                              ; preds = %93
  %408 = icmp eq i8 %57, -55
  br i1 %408, label %409, label %465

409:                                              ; preds = %407
  %410 = load ptr, ptr %5, align 8
  %411 = load i16, ptr %15, align 4
  %412 = zext i16 %411 to i32
  %413 = getelementptr i8, ptr %410, i32 %412
  %414 = load i16, ptr %41, align 2
  %415 = icmp eq i16 %414, 0
  br i1 %415, label %416, label %464

416:                                              ; preds = %409
  %417 = load i16, ptr %42, align 2
  store i16 %417, ptr %41, align 2
  store i16 0, ptr %42, align 2
  %418 = getelementptr i8, ptr %413, i32 %54
  %419 = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %418, i32 0, i32 1
  %420 = load i8, ptr %419, align 1
  %421 = icmp eq i8 %420, 16
  br i1 %421, label %422, label %464

422:                                              ; preds = %416
  %423 = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %418, i32 0, i32 2
  %424 = tail call i32 @__ipv6_addr_type(ptr noundef %423) #12
  %425 = and i32 %424, 1
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %464, label %427

427:                                              ; preds = %422
  %428 = getelementptr inbounds %struct.ipv6hdr, ptr %413, i32 0, i32 6
  %429 = tail call i32 @xfrm6_input_addr(ptr noundef %1, ptr noundef %428, ptr noundef %423, i8 noundef zeroext 60) #12
  %430 = icmp slt i32 %429, 0
  br i1 %430, label %464, label %431, !prof !9

431:                                              ; preds = %427
  %432 = load i8, ptr %43, align 2
  %433 = and i8 %432, 1
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %449, label %435

435:                                              ; preds = %431
  %436 = load ptr, ptr %44, align 4
  %437 = getelementptr inbounds %struct.skb_shared_info, ptr %436, i32 0, i32 10
  %438 = load volatile i32, ptr %437, align 4
  %439 = and i32 %438, 65535
  %440 = icmp eq i32 %439, 1
  br i1 %440, label %449, label %441

441:                                              ; preds = %435
  %442 = tail call i32 @pskb_expand_head(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #12
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %464

444:                                              ; preds = %441
  %445 = load ptr, ptr %5, align 8
  %446 = load i16, ptr %15, align 4
  %447 = zext i16 %446 to i32
  %448 = getelementptr i8, ptr %445, i32 %447
  br label %449

449:                                              ; preds = %444, %435, %431
  %450 = phi ptr [ %448, %444 ], [ %413, %435 ], [ %413, %431 ]
  %451 = load i16, ptr %45, align 8
  %452 = and i16 %451, 96
  %453 = icmp eq i16 %452, 64
  br i1 %453, label %454, label %456

454:                                              ; preds = %449
  %455 = and i16 %451, -97
  store i16 %455, ptr %45, align 8
  br label %456

456:                                              ; preds = %454, %449
  %457 = getelementptr i8, ptr %450, i32 %54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %458 = getelementptr inbounds %struct.ipv6hdr, ptr %450, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %458, i32 16, i1 false) #12
  %459 = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %457, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %458, ptr noundef align 1 dereferenceable(16) %459, i32 16, i1 false) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %459, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  %460 = load i64, ptr %46, align 8
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %462, label %482

462:                                              ; preds = %456
  %463 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #12
  store i64 %463, ptr %46, align 8
  br label %482

464:                                              ; preds = %441, %427, %422, %416, %409
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #12
  br label %496

465:                                              ; preds = %407
  br i1 %19, label %481, label %466

466:                                              ; preds = %465
  %467 = load ptr, ptr %5, align 8
  %468 = load i16, ptr %15, align 4
  %469 = zext i16 %468 to i32
  %470 = getelementptr i8, ptr %467, i32 %469
  %471 = getelementptr i8, ptr %470, i32 %54
  %472 = load i8, ptr %471, align 1
  %473 = lshr i8 %472, 6
  %474 = zext i8 %473 to i32
  switch i32 %474, label %481 [
    i32 0, label %482
    i32 2, label %480
    i32 3, label %475
  ]

475:                                              ; preds = %466
  %476 = getelementptr inbounds %struct.ipv6hdr, ptr %470, i32 0, i32 6
  %477 = load i32, ptr %476, align 4
  %478 = and i32 %477, 255
  %479 = icmp eq i32 %478, 255
  br i1 %479, label %481, label %480

480:                                              ; preds = %475, %466
  tail call void @icmpv6_param_prob(ptr noundef %1, i8 noundef zeroext 2, i32 noundef %54) #12
  br label %496

481:                                              ; preds = %475, %466, %465
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #12
  br label %496

482:                                              ; preds = %466, %462, %456, %391, %380, %369, %159, %144, %129, %113, %103, %81, %79
  %483 = phi i32 [ %91, %369 ], [ %91, %103 ], [ %91, %391 ], [ %91, %466 ], [ %91, %159 ], [ %91, %129 ], [ %91, %144 ], [ %91, %113 ], [ %91, %380 ], [ %91, %462 ], [ %91, %456 ], [ %53, %79 ], [ %53, %81 ]
  %484 = phi i32 [ 0, %369 ], [ 0, %103 ], [ %399, %391 ], [ %474, %466 ], [ 0, %159 ], [ 0, %129 ], [ 0, %144 ], [ 0, %113 ], [ 0, %380 ], [ 0, %462 ], [ 0, %456 ], [ %77, %79 ], [ %77, %81 ]
  %485 = add i32 %72, %54
  %486 = sub i32 %55, %72
  br label %487

487:                                              ; preds = %482, %62
  %488 = phi i32 [ %64, %62 ], [ %486, %482 ]
  %489 = phi i32 [ %63, %62 ], [ %485, %482 ]
  %490 = phi i32 [ %53, %62 ], [ %483, %482 ]
  %491 = phi i32 [ %60, %62 ], [ %484, %482 ]
  %492 = icmp sgt i32 %488, 0
  br i1 %492, label %51, label %493

493:                                              ; preds = %487
  %494 = icmp eq i32 %488, 0
  br i1 %494, label %496, label %495

495:                                              ; preds = %493, %90, %84, %76, %67, %65, %59, %22
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #12
  br label %496

496:                                              ; preds = %495, %493, %481, %480, %464, %406, %405, %389, %368, %295, %248, %160, %109
  %497 = phi i1 [ false, %495 ], [ true, %493 ], [ false, %109 ], [ false, %160 ], [ false, %389 ], [ false, %464 ], [ false, %368 ], [ false, %248 ], [ false, %295 ], [ false, %406 ], [ false, %405 ], [ false, %481 ], [ false, %480 ]
  ret i1 %497
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_push_nfrag_opts(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) local_unnamed_addr #3 {
  %6 = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %84, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %7, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  switch i8 %11, label %68 [
    i8 0, label %12
    i8 1, label %12
    i8 2, label %12
    i8 4, label %34
  ]

12:                                               ; preds = %9, %9, %9
  %13 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %7, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 3
  %17 = add nuw nsw i32 %16, 8
  %18 = tail call ptr @skb_push(ptr noundef %0, i32 noundef %17) #12
  %19 = load i64, ptr %7, align 4
  store i64 %19, ptr %18, align 4
  %20 = load i8, ptr %13, align 1
  %21 = lshr i8 %20, 1
  %22 = zext i8 %21 to i32
  %23 = icmp ugt i8 %20, 3
  br i1 %23, label %24, label %29

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.rt0_hdr, ptr %18, i32 0, i32 2
  %26 = getelementptr %struct.rt0_hdr, ptr %7, i32 3
  %27 = shl nuw nsw i32 %22, 4
  %28 = add nsw i32 %27, -16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %25, ptr align 4 %26, i32 %28, i1 false) #12
  br label %29

29:                                               ; preds = %24, %12
  %30 = add nsw i32 %22, -1
  %31 = getelementptr %struct.rt0_hdr, ptr %18, i32 0, i32 2, i32 %30
  %32 = load ptr, ptr %3, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %31, ptr noundef align 4 dereferenceable(16) %32, i32 16, i1 false) #12
  %33 = getelementptr inbounds %struct.rt0_hdr, ptr %7, i32 0, i32 2
  store ptr %33, ptr %3, align 4
  br label %65

34:                                               ; preds = %9
  %35 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %7, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 3
  %39 = add nuw nsw i32 %38, 8
  %40 = tail call ptr @skb_push(ptr noundef %0, i32 noundef %39) #12
  %41 = load i64, ptr %7, align 4
  store i64 %41, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %7, i32 0, i32 4
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %40, i32 0, i32 7
  %46 = getelementptr %struct.ipv6_sr_hdr, ptr %40, i32 3
  %47 = getelementptr %struct.ipv6_sr_hdr, ptr %7, i32 3
  %48 = shl nuw nsw i32 %44, 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %46, ptr align 4 %47, i32 %48, i1 false) #12
  %49 = load ptr, ptr %3, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %45, ptr noundef align 4 dereferenceable(16) %49, i32 16, i1 false) #12
  %50 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %7, i32 0, i32 3
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = getelementptr %struct.ipv6_sr_hdr, ptr %7, i32 0, i32 7, i32 %52
  store ptr %53, ptr %3, align 4
  %54 = load i8, ptr %35, align 1
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %44, 1
  %57 = add nuw nsw i32 %56, 2
  %58 = icmp ult i32 %57, %55
  br i1 %58, label %59, label %65

59:                                               ; preds = %34
  %60 = add nuw nsw i32 %48, 24
  %61 = sub nsw i32 %55, %57
  %62 = shl nsw i32 %61, 3
  %63 = getelementptr i8, ptr %40, i32 %60
  %64 = getelementptr i8, ptr %7, i32 %60
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %63, ptr align 1 %64, i32 %62, i1 false) #12
  br label %65

65:                                               ; preds = %59, %34, %29
  %66 = phi ptr [ %18, %29 ], [ %40, %34 ], [ %40, %59 ]
  %67 = load i8, ptr %2, align 1
  store i8 %67, ptr %66, align 4
  store i8 43, ptr %2, align 1
  br label %68

68:                                               ; preds = %65, %9
  %69 = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %84, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %70, i32 0, i32 1
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 3
  %77 = add nuw nsw i32 %76, 8
  %78 = tail call ptr @skb_push(ptr noundef %0, i32 noundef %77) #12
  %79 = load i8, ptr %73, align 1
  %80 = zext i8 %79 to i32
  %81 = shl nuw nsw i32 %80, 3
  %82 = add nuw nsw i32 %81, 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %78, ptr noundef nonnull align 1 %70, i32 %82, i1 false) #12
  %83 = load i8, ptr %2, align 1
  store i8 %83, ptr %78, align 1
  store i8 60, ptr %2, align 1
  br label %84

84:                                               ; preds = %72, %68, %5
  %85 = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 4
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %100, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %86, i32 0, i32 1
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl nuw nsw i32 %91, 3
  %93 = add nuw nsw i32 %92, 8
  %94 = tail call ptr @skb_push(ptr noundef %0, i32 noundef %93) #12
  %95 = load i8, ptr %89, align 1
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 3
  %98 = add nuw nsw i32 %97, 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %94, ptr noundef nonnull align 1 %86, i32 %98, i1 false) #12
  %99 = load i8, ptr %2, align 1
  store i8 %99, ptr %94, align 1
  store i8 0, ptr %2, align 1
  br label %100

100:                                              ; preds = %88, %84
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_push_frag_opts(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #3 {
  %4 = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %5, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = add nuw nsw i32 %11, 8
  %13 = tail call ptr @skb_push(ptr noundef %0, i32 noundef %12) #12
  %14 = load i8, ptr %8, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 3
  %17 = add nuw nsw i32 %16, 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %13, ptr noundef nonnull align 1 %5, i32 %17, i1 false) #12
  %18 = load i8, ptr %2, align 1
  store i8 %18, ptr %13, align 1
  store i8 60, ptr %2, align 1
  br label %19

19:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipv6_dup_options(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @sock_kmalloc(ptr noundef %0, i32 noundef %4, i32 noundef 2592) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %2
  %8 = ptrtoint ptr %5 to i32
  %9 = ptrtoint ptr %1 to i32
  %10 = sub i32 %8, %9
  %11 = load i32, ptr %3, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %5, ptr align 4 %1, i32 %11, i1 false)
  %12 = getelementptr inbounds %struct.ipv6_txoptions, ptr %5, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %13, i32 %10
  store ptr %16, ptr %12, align 4
  br label %17

17:                                               ; preds = %15, %7
  %18 = getelementptr inbounds %struct.ipv6_txoptions, ptr %5, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %19, i32 %10
  store ptr %22, ptr %18, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.ipv6_txoptions, ptr %5, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %25, i32 %10
  store ptr %28, ptr %24, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.ipv6_txoptions, ptr %5, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %31, i32 %10
  store ptr %34, ptr %30, align 4
  br label %35

35:                                               ; preds = %33, %29
  store volatile i32 1, ptr %5, align 4
  br label %36

36:                                               ; preds = %35, %2
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipv6_renew_options(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef readonly %3) local_unnamed_addr #3 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %67, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %2, 54
  br i1 %7, label %22, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %10, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 3
  %17 = add nuw nsw i32 %16, 11
  %18 = and i32 %17, 4088
  br label %19

19:                                               ; preds = %12, %8
  %20 = phi i32 [ %18, %12 ], [ 0, %8 ]
  %21 = icmp eq i32 %2, 55
  br i1 %21, label %38, label %22

22:                                               ; preds = %19, %6
  %23 = phi i32 [ %20, %19 ], [ 0, %6 ]
  %24 = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %25, i32 0, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 3
  %32 = add nuw nsw i32 %31, 11
  %33 = and i32 %32, 4088
  %34 = add nuw nsw i32 %33, %23
  br label %35

35:                                               ; preds = %27, %22
  %36 = phi i32 [ %34, %27 ], [ %23, %22 ]
  %37 = icmp eq i32 %2, 57
  br i1 %37, label %54, label %38

38:                                               ; preds = %35, %19
  %39 = phi i32 [ %36, %35 ], [ %20, %19 ]
  %40 = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %41, i32 0, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 3
  %48 = add nuw nsw i32 %47, 11
  %49 = and i32 %48, 4088
  %50 = add nuw nsw i32 %49, %39
  br label %51

51:                                               ; preds = %43, %38
  %52 = phi i32 [ %50, %43 ], [ %39, %38 ]
  %53 = icmp eq i32 %2, 59
  br i1 %53, label %67, label %54

54:                                               ; preds = %51, %35
  %55 = phi i32 [ %52, %51 ], [ %36, %35 ]
  %56 = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 7
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %57, i32 0, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 3
  %64 = add nuw nsw i32 %63, 11
  %65 = and i32 %64, 4088
  %66 = add nuw nsw i32 %65, %55
  br label %67

67:                                               ; preds = %59, %54, %51, %4
  %68 = phi i32 [ %66, %59 ], [ %55, %54 ], [ %52, %51 ], [ 0, %4 ]
  %69 = icmp eq ptr %3, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %3, i32 0, i32 1
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 3
  %75 = add nuw nsw i32 %74, 11
  %76 = and i32 %75, 4088
  %77 = add nuw nsw i32 %76, %68
  br label %78

78:                                               ; preds = %70, %67
  %79 = phi i32 [ %77, %70 ], [ %68, %67 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %220, label %81

81:                                               ; preds = %78
  %82 = add nuw nsw i32 %79, 36
  %83 = tail call ptr @sock_kmalloc(ptr noundef %0, i32 noundef %82, i32 noundef 2592) #12
  %84 = icmp eq ptr %83, null
  br i1 %84, label %220, label %85

85:                                               ; preds = %81
  tail call void @llvm.memset.p0.i32(ptr nonnull align 4 %83, i8 0, i32 %82, i1 false)
  store volatile i32 1, ptr %83, align 4
  %86 = getelementptr inbounds %struct.ipv6_txoptions, ptr %83, i32 0, i32 1
  store i32 %82, ptr %86, align 4
  %87 = getelementptr %struct.ipv6_txoptions, ptr %83, i32 1
  %88 = getelementptr inbounds %struct.ipv6_txoptions, ptr %83, i32 0, i32 4
  br i1 %5, label %92, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 4
  %91 = load ptr, ptr %90, align 4
  br label %92

92:                                               ; preds = %89, %85
  %93 = phi ptr [ %91, %89 ], [ null, %85 ]
  %94 = icmp eq i32 %2, 54
  %95 = select i1 %94, ptr %3, ptr %93
  %96 = icmp eq ptr %95, null
  br i1 %96, label %110, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %95, i32 0, i32 1
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = shl nuw nsw i32 %100, 3
  %102 = add nuw nsw i32 %101, 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %87, ptr noundef nonnull align 1 %95, i32 %102, i1 false) #12
  store ptr %87, ptr %88, align 4
  %103 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %87, i32 0, i32 1
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %105, 3
  %107 = add nuw nsw i32 %106, 11
  %108 = and i32 %107, 4088
  %109 = getelementptr i8, ptr %87, i32 %108
  br label %110

110:                                              ; preds = %97, %92
  %111 = phi ptr [ %87, %92 ], [ %109, %97 ]
  %112 = getelementptr inbounds %struct.ipv6_txoptions, ptr %83, i32 0, i32 5
  br i1 %5, label %116, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 5
  %115 = load ptr, ptr %114, align 4
  br label %116

116:                                              ; preds = %113, %110
  %117 = phi ptr [ %115, %113 ], [ null, %110 ]
  %118 = icmp eq i32 %2, 55
  %119 = select i1 %118, ptr %3, ptr %117
  %120 = icmp eq ptr %119, null
  br i1 %120, label %134, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %119, i32 0, i32 1
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = shl nuw nsw i32 %124, 3
  %126 = add nuw nsw i32 %125, 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %111, ptr noundef nonnull align 1 %119, i32 %126, i1 false) #12
  store ptr %111, ptr %112, align 4
  %127 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %111, i32 0, i32 1
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = shl nuw nsw i32 %129, 3
  %131 = add nuw nsw i32 %130, 11
  %132 = and i32 %131, 4088
  %133 = getelementptr i8, ptr %111, i32 %132
  br label %134

134:                                              ; preds = %121, %116
  %135 = phi ptr [ %111, %116 ], [ %133, %121 ]
  %136 = getelementptr inbounds %struct.ipv6_txoptions, ptr %83, i32 0, i32 6
  br i1 %5, label %140, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 6
  %139 = load ptr, ptr %138, align 4
  br label %140

140:                                              ; preds = %137, %134
  %141 = phi ptr [ %139, %137 ], [ null, %134 ]
  %142 = icmp eq i32 %2, 57
  %143 = select i1 %142, ptr %3, ptr %141
  %144 = icmp eq ptr %143, null
  br i1 %144, label %158, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %143, i32 0, i32 1
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = shl nuw nsw i32 %148, 3
  %150 = add nuw nsw i32 %149, 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %135, ptr noundef nonnull align 1 %143, i32 %150, i1 false) #12
  store ptr %135, ptr %136, align 4
  %151 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %135, i32 0, i32 1
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  %154 = shl nuw nsw i32 %153, 3
  %155 = add nuw nsw i32 %154, 11
  %156 = and i32 %155, 4088
  %157 = getelementptr i8, ptr %135, i32 %156
  br label %158

158:                                              ; preds = %145, %140
  %159 = phi ptr [ %135, %140 ], [ %157, %145 ]
  %160 = getelementptr inbounds %struct.ipv6_txoptions, ptr %83, i32 0, i32 7
  br i1 %5, label %164, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 7
  %163 = load ptr, ptr %162, align 4
  br label %164

164:                                              ; preds = %161, %158
  %165 = phi ptr [ %163, %161 ], [ null, %158 ]
  %166 = icmp eq i32 %2, 59
  %167 = select i1 %166, ptr %3, ptr %165
  %168 = icmp eq ptr %167, null
  br i1 %168, label %175, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %167, i32 0, i32 1
  %171 = load i8, ptr %170, align 1
  %172 = zext i8 %171 to i32
  %173 = shl nuw nsw i32 %172, 3
  %174 = add nuw nsw i32 %173, 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %159, ptr noundef nonnull align 1 %167, i32 %174, i1 false) #12
  store ptr %159, ptr %160, align 4
  br label %175

175:                                              ; preds = %169, %164
  %176 = load ptr, ptr %88, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %184, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %176, i32 0, i32 1
  %180 = load i8, ptr %179, align 1
  %181 = zext i8 %180 to i16
  %182 = shl nuw nsw i16 %181, 3
  %183 = add nuw nsw i16 %182, 8
  br label %184

184:                                              ; preds = %178, %175
  %185 = phi i16 [ %183, %178 ], [ 0, %175 ]
  %186 = load ptr, ptr %112, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %194, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %186, i32 0, i32 1
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i16
  %192 = shl nuw nsw i16 %191, 3
  %193 = add nuw nsw i16 %192, 8
  br label %194

194:                                              ; preds = %188, %184
  %195 = phi i16 [ %193, %188 ], [ 0, %184 ]
  %196 = add nuw nsw i16 %195, %185
  %197 = load ptr, ptr %136, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %205, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %197, i32 0, i32 1
  %201 = load i8, ptr %200, align 1
  %202 = zext i8 %201 to i16
  %203 = shl nuw nsw i16 %202, 3
  %204 = add nuw nsw i16 %203, 8
  br label %205

205:                                              ; preds = %199, %194
  %206 = phi i16 [ %204, %199 ], [ 0, %194 ]
  %207 = add nuw nsw i16 %196, %206
  %208 = getelementptr inbounds %struct.ipv6_txoptions, ptr %83, i32 0, i32 3
  store i16 %207, ptr %208, align 2
  %209 = load ptr, ptr %160, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %217, label %211

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %209, i32 0, i32 1
  %213 = load i8, ptr %212, align 1
  %214 = zext i8 %213 to i16
  %215 = shl nuw nsw i16 %214, 3
  %216 = add nuw nsw i16 %215, 8
  br label %217

217:                                              ; preds = %211, %205
  %218 = phi i16 [ %216, %211 ], [ 0, %205 ]
  %219 = getelementptr inbounds %struct.ipv6_txoptions, ptr %83, i32 0, i32 2
  store i16 %218, ptr %219, align 4
  br label %220

220:                                              ; preds = %217, %81, %78
  %221 = phi ptr [ %83, %217 ], [ null, %78 ], [ inttoptr (i32 -105 to ptr), %81 ]
  ret ptr %221
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @ipv6_fixup_options(ptr noundef %0, ptr noundef %1) #6 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = icmp eq ptr %0, %1
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, i32 36, i1 false)
  %15 = getelementptr inbounds %struct.ipv6_txoptions, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi ptr [ %16, %14 ], [ %6, %12 ]
  %19 = phi ptr [ %0, %14 ], [ %1, %12 ]
  %20 = getelementptr inbounds %struct.ipv6_txoptions, ptr %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %18, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i16
  %24 = mul nsw i16 %23, -8
  %25 = getelementptr inbounds %struct.ipv6_txoptions, ptr %19, i32 0, i32 3
  %26 = load i16, ptr %25, align 2
  %27 = add i16 %26, -8
  %28 = add i16 %27, %24
  store i16 %28, ptr %25, align 2
  store ptr null, ptr %20, align 4
  br label %29

29:                                               ; preds = %17, %8, %4, %2
  %30 = phi ptr [ %1, %8 ], [ %19, %17 ], [ %1, %4 ], [ null, %2 ]
  ret ptr %30
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @fl6_update_dst(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef writeonly %2) #6 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.flowi6, ptr %0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %2, ptr noundef align 8 dereferenceable(16) %10, i32 16, i1 false)
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %11, i32 0, i32 2
  %13 = load i8, ptr %12, align 1
  switch i8 %13, label %23 [
    i8 0, label %14
    i8 1, label %14
    i8 2, label %14
    i8 4, label %16
  ]

14:                                               ; preds = %9, %9, %9
  %15 = getelementptr inbounds %struct.rt0_hdr, ptr %11, i32 0, i32 2
  br label %21

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %11, i32 0, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr %struct.ipv6_sr_hdr, ptr %11, i32 0, i32 7, i32 %19
  br label %21

21:                                               ; preds = %16, %14
  %22 = phi ptr [ %15, %14 ], [ %20, %16 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %10, ptr noundef align 4 dereferenceable(16) %22, i32 16, i1 false)
  br label %23

23:                                               ; preds = %21, %9, %5, %3
  %24 = phi ptr [ null, %5 ], [ null, %3 ], [ null, %9 ], [ %2, %21 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipv6_rthdr_rcv(ptr noundef %0) #3 {
  %2 = alloca [4 x i32], align 4
  %3 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 69
  %6 = load volatile ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false)
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %8 = getelementptr inbounds %struct.ipv6_devconf, ptr %7, i32 0, i32 28
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq ptr %6, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 32, i32 28
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.smin.i32(i32 %9, i32 %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = phi i32 [ %9, %1 ], [ %14, %11 ]
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %22 to i32
  %26 = ptrtoint ptr %24 to i32
  %27 = sub i32 %25, %26
  %28 = add i32 %27, 8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = sub i32 %30, %32
  %34 = icmp ugt i32 %28, %33
  br i1 %34, label %35, label %50, !prof !9

35:                                               ; preds = %15
  %36 = icmp ult i32 %30, %28
  br i1 %36, label %76, label %37, !prof !9

37:                                               ; preds = %35
  %38 = sub i32 %28, %33
  %39 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %38) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %76, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %17, align 8
  %43 = load i16, ptr %19, align 2
  %44 = load ptr, ptr %23, align 4
  %45 = load i32, ptr %29, align 8
  %46 = load i32, ptr %31, align 4
  %47 = zext i16 %43 to i32
  %48 = ptrtoint ptr %44 to i32
  %49 = sub i32 %45, %46
  br label %50

50:                                               ; preds = %41, %15
  %51 = phi i32 [ %49, %41 ], [ %33, %15 ]
  %52 = phi i32 [ %48, %41 ], [ %26, %15 ]
  %53 = phi i32 [ %47, %41 ], [ %21, %15 ]
  %54 = phi i32 [ %45, %41 ], [ %30, %15 ]
  %55 = phi ptr [ %42, %41 ], [ %18, %15 ]
  %56 = getelementptr i8, ptr %55, i32 %53
  %57 = ptrtoint ptr %56 to i32
  %58 = sub i32 %57, %52
  %59 = getelementptr i8, ptr %56, i32 1
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 3
  %63 = add nuw nsw i32 %62, 8
  %64 = add i32 %63, %58
  %65 = icmp ugt i32 %64, %51
  br i1 %65, label %66, label %117, !prof !9

66:                                               ; preds = %50
  %67 = icmp ult i32 %54, %64
  br i1 %67, label %76, label %68, !prof !9

68:                                               ; preds = %66
  %69 = sub i32 %64, %51
  %70 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %69) #12
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %17, align 8
  %74 = load i16, ptr %19, align 2
  %75 = zext i16 %74 to i32
  br label %117

76:                                               ; preds = %68, %66, %37, %35
  %77 = tail call ptr @llvm.thread.pointer() #12
  br i1 %10, label %98, label %78, !prof !9

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %80 = load volatile i32, ptr %79, align 4
  %81 = add i32 %80, 512
  store volatile i32 %81, ptr %79, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %82 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 33, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = ptrtoint ptr %83 to i32
  %85 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %86 = inttoptr i32 %85 to ptr
  %87 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %86) #9, !srcloc !11
  %88 = add i32 %87, %84
  %89 = inttoptr i32 %88 to ptr
  %90 = getelementptr inbounds %struct.ipstats_mib, ptr %89, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %93 = getelementptr [37 x i64], ptr %89, i32 0, i32 7
  %94 = load i64, ptr %93, align 8
  %95 = add i64 %94, 1
  store i64 %95, ptr %93, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %96 = load i32, ptr %90, align 4
  %97 = add i32 %96, 1
  store i32 %97, ptr %90, align 4
  tail call fastcc void @local_bh_enable()
  br label %98

98:                                               ; preds = %78, %76
  %99 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %100 = load volatile i32, ptr %99, align 4
  %101 = add i32 %100, 512
  store volatile i32 %101, ptr %99, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %102 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %103 = ptrtoint ptr %102 to i32
  %104 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %105 = inttoptr i32 %104 to ptr
  %106 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %105) #9, !srcloc !11
  %107 = add i32 %106, %103
  %108 = inttoptr i32 %107 to ptr
  %109 = getelementptr inbounds %struct.ipstats_mib, ptr %108, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, 1
  store i32 %111, ptr %109, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %112 = getelementptr [37 x i64], ptr %108, i32 0, i32 7
  %113 = load i64, ptr %112, align 8
  %114 = add i64 %113, 1
  store i64 %114, ptr %112, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %115 = load i32, ptr %109, align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr %109, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %708

117:                                              ; preds = %72, %50
  %118 = phi i32 [ %75, %72 ], [ %53, %50 ]
  %119 = phi ptr [ %73, %72 ], [ %55, %50 ]
  %120 = getelementptr i8, ptr %119, i32 %118
  %121 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %122 = load i16, ptr %121, align 4
  %123 = zext i16 %122 to i32
  %124 = getelementptr i8, ptr %119, i32 %123
  %125 = getelementptr inbounds %struct.ipv6hdr, ptr %124, i32 0, i32 6
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, 255
  %128 = icmp eq i32 %127, 255
  br i1 %128, label %134, label %129

129:                                              ; preds = %117
  %130 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %131 = load i16, ptr %130, align 8
  %132 = and i16 %131, 7
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %175, label %134

134:                                              ; preds = %129, %117
  %135 = tail call ptr @llvm.thread.pointer() #12
  br i1 %10, label %156, label %136, !prof !9

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 1
  %138 = load volatile i32, ptr %137, align 4
  %139 = add i32 %138, 512
  store volatile i32 %139, ptr %137, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %140 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 33, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = ptrtoint ptr %141 to i32
  %143 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %144 = inttoptr i32 %143 to ptr
  %145 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %144) #9, !srcloc !11
  %146 = add i32 %145, %142
  %147 = inttoptr i32 %146 to ptr
  %148 = getelementptr inbounds %struct.ipstats_mib, ptr %147, i32 0, i32 1
  %149 = load i32, ptr %148, align 4
  %150 = add i32 %149, 1
  store i32 %150, ptr %148, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %151 = getelementptr [37 x i64], ptr %147, i32 0, i32 10
  %152 = load i64, ptr %151, align 8
  %153 = add i64 %152, 1
  store i64 %153, ptr %151, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %154 = load i32, ptr %148, align 4
  %155 = add i32 %154, 1
  store i32 %155, ptr %148, align 4
  tail call fastcc void @local_bh_enable()
  br label %156

156:                                              ; preds = %136, %134
  %157 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 1
  %158 = load volatile i32, ptr %157, align 4
  %159 = add i32 %158, 512
  store volatile i32 %159, ptr %157, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %160 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %161 = ptrtoint ptr %160 to i32
  %162 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %163 = inttoptr i32 %162 to ptr
  %164 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %163) #9, !srcloc !11
  %165 = add i32 %164, %161
  %166 = inttoptr i32 %165 to ptr
  %167 = getelementptr inbounds %struct.ipstats_mib, ptr %166, i32 0, i32 1
  %168 = load i32, ptr %167, align 4
  %169 = add i32 %168, 1
  store i32 %169, ptr %167, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %170 = getelementptr [37 x i64], ptr %166, i32 0, i32 10
  %171 = load i64, ptr %170, align 8
  %172 = add i64 %171, 1
  store i64 %172, ptr %170, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %173 = load i32, ptr %167, align 4
  %174 = add i32 %173, 1
  store i32 %174, ptr %167, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %708

175:                                              ; preds = %129
  %176 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %120, i32 0, i32 2
  %177 = load i8, ptr %176, align 1
  switch i8 %177, label %178 [
    i8 4, label %189
    i8 3, label %191
  ]

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %120, i32 0, i32 3
  %180 = load i8, ptr %179, align 1
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %195, label %182

182:                                              ; preds = %178
  %183 = icmp slt i32 %16, 0
  %184 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %185 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %186 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %187 = icmp ne i8 %177, 2
  %188 = select i1 %187, i1 true, i1 %183
  br i1 %188, label %658, label %265

189:                                              ; preds = %175
  %190 = tail call fastcc i32 @ipv6_srh_rcv(ptr noundef %0)
  br label %708

191:                                              ; preds = %175
  %192 = tail call fastcc i32 @ipv6_rpl_srh_rcv(ptr noundef %0)
  br label %708

193:                                              ; preds = %634
  %194 = icmp ne ptr %393, null
  br label %195

195:                                              ; preds = %193, %178
  %196 = phi i8 [ %177, %178 ], [ %638, %193 ]
  %197 = phi ptr [ %120, %178 ], [ %380, %193 ]
  %198 = phi i1 [ false, %178 ], [ %194, %193 ]
  %199 = icmp ne i8 %196, 2
  %200 = select i1 %199, i1 true, i1 %198
  br i1 %200, label %242, label %201

201:                                              ; preds = %195
  %202 = tail call ptr @llvm.thread.pointer() #12
  br i1 %10, label %223, label %203, !prof !9

203:                                              ; preds = %201
  %204 = getelementptr inbounds %struct.thread_info, ptr %202, i32 0, i32 1
  %205 = load volatile i32, ptr %204, align 4
  %206 = add i32 %205, 512
  store volatile i32 %206, ptr %204, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %207 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 33, i32 1
  %208 = load ptr, ptr %207, align 4
  %209 = ptrtoint ptr %208 to i32
  %210 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %211 = inttoptr i32 %210 to ptr
  %212 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %211) #9, !srcloc !11
  %213 = add i32 %212, %209
  %214 = inttoptr i32 %213 to ptr
  %215 = getelementptr inbounds %struct.ipstats_mib, ptr %214, i32 0, i32 1
  %216 = load i32, ptr %215, align 4
  %217 = add i32 %216, 1
  store i32 %217, ptr %215, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %218 = getelementptr [37 x i64], ptr %214, i32 0, i32 10
  %219 = load i64, ptr %218, align 8
  %220 = add i64 %219, 1
  store i64 %220, ptr %218, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %221 = load i32, ptr %215, align 4
  %222 = add i32 %221, 1
  store i32 %222, ptr %215, align 4
  tail call fastcc void @local_bh_enable()
  br label %223

223:                                              ; preds = %203, %201
  %224 = getelementptr inbounds %struct.thread_info, ptr %202, i32 0, i32 1
  %225 = load volatile i32, ptr %224, align 4
  %226 = add i32 %225, 512
  store volatile i32 %226, ptr %224, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %227 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %228 = ptrtoint ptr %227 to i32
  %229 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %230 = inttoptr i32 %229 to ptr
  %231 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %230) #9, !srcloc !11
  %232 = add i32 %231, %228
  %233 = inttoptr i32 %232 to ptr
  %234 = getelementptr inbounds %struct.ipstats_mib, ptr %233, i32 0, i32 1
  %235 = load i32, ptr %234, align 4
  %236 = add i32 %235, 1
  store i32 %236, ptr %234, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %237 = getelementptr [37 x i64], ptr %233, i32 0, i32 10
  %238 = load i64, ptr %237, align 8
  %239 = add i64 %238, 1
  store i64 %239, ptr %237, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %240 = load i32, ptr %234, align 4
  %241 = add i32 %240, 1
  store i32 %241, ptr %234, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %708

242:                                              ; preds = %195
  %243 = load i16, ptr %19, align 2
  %244 = load i16, ptr %121, align 4
  %245 = zext i16 %244 to i32
  %246 = sub i16 %243, %244
  %247 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  store i16 %246, ptr %247, align 4
  %248 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  store i16 %246, ptr %248, align 4
  %249 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %197, i32 0, i32 1
  %250 = load i8, ptr %249, align 1
  %251 = zext i8 %250 to i16
  %252 = shl nuw nsw i16 %251, 3
  %253 = add i16 %243, 8
  %254 = add i16 %253, %252
  store i16 %254, ptr %19, align 2
  %255 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 10
  %256 = load i16, ptr %255, align 2
  %257 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 6
  store i16 %256, ptr %257, align 2
  store i16 0, ptr %255, align 2
  %258 = load ptr, ptr %17, align 8
  %259 = getelementptr i8, ptr %258, i32 %245
  %260 = ptrtoint ptr %197 to i32
  %261 = ptrtoint ptr %259 to i32
  %262 = sub i32 %260, %261
  %263 = trunc i32 %262 to i16
  %264 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  store i16 %263, ptr %264, align 2
  br label %708

265:                                              ; preds = %639, %182
  %266 = phi ptr [ %380, %639 ], [ %120, %182 ]
  %267 = phi i8 [ %636, %639 ], [ %180, %182 ]
  %268 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %266, i32 0, i32 1
  %269 = load i8, ptr %268, align 1
  %270 = icmp eq i8 %269, 2
  %271 = icmp eq i8 %267, 1
  %272 = select i1 %270, i1 %271, i1 false
  br i1 %272, label %314, label %273

273:                                              ; preds = %265
  %274 = tail call ptr @llvm.thread.pointer() #12
  br i1 %10, label %295, label %275, !prof !9

275:                                              ; preds = %273
  %276 = getelementptr inbounds %struct.thread_info, ptr %274, i32 0, i32 1
  %277 = load volatile i32, ptr %276, align 4
  %278 = add i32 %277, 512
  store volatile i32 %278, ptr %276, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %279 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 33, i32 1
  %280 = load ptr, ptr %279, align 4
  %281 = ptrtoint ptr %280 to i32
  %282 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %283 = inttoptr i32 %282 to ptr
  %284 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %283) #9, !srcloc !11
  %285 = add i32 %284, %281
  %286 = inttoptr i32 %285 to ptr
  %287 = getelementptr inbounds %struct.ipstats_mib, ptr %286, i32 0, i32 1
  %288 = load i32, ptr %287, align 4
  %289 = add i32 %288, 1
  store i32 %289, ptr %287, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %290 = getelementptr [37 x i64], ptr %286, i32 0, i32 7
  %291 = load i64, ptr %290, align 8
  %292 = add i64 %291, 1
  store i64 %292, ptr %290, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %293 = load i32, ptr %287, align 4
  %294 = add i32 %293, 1
  store i32 %294, ptr %287, align 4
  tail call fastcc void @local_bh_enable()
  br label %295

295:                                              ; preds = %275, %273
  %296 = getelementptr inbounds %struct.thread_info, ptr %274, i32 0, i32 1
  %297 = load volatile i32, ptr %296, align 4
  %298 = add i32 %297, 512
  store volatile i32 %298, ptr %296, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %299 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %300 = ptrtoint ptr %299 to i32
  %301 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %302 = inttoptr i32 %301 to ptr
  %303 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %302) #9, !srcloc !11
  %304 = add i32 %303, %300
  %305 = inttoptr i32 %304 to ptr
  %306 = getelementptr inbounds %struct.ipstats_mib, ptr %305, i32 0, i32 1
  %307 = load i32, ptr %306, align 4
  %308 = add i32 %307, 1
  store i32 %308, ptr %306, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %309 = getelementptr [37 x i64], ptr %305, i32 0, i32 7
  %310 = load i64, ptr %309, align 8
  %311 = add i64 %310, 1
  store i64 %311, ptr %309, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %312 = load i32, ptr %306, align 4
  %313 = add i32 %312, 1
  store i32 %313, ptr %306, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %708

314:                                              ; preds = %265
  %315 = load i8, ptr %184, align 2
  %316 = and i8 %315, 1
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %379, label %318

318:                                              ; preds = %314
  %319 = load ptr, ptr %185, align 4
  %320 = getelementptr inbounds %struct.skb_shared_info, ptr %319, i32 0, i32 10
  %321 = load volatile i32, ptr %320, align 4
  %322 = and i32 %321, 65535
  %323 = icmp eq i32 %322, 1
  br i1 %323, label %379, label %324

324:                                              ; preds = %318
  %325 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #12
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %374, label %327

327:                                              ; preds = %324
  %328 = load i32, ptr %186, align 8
  %329 = and i32 %328, -2
  %330 = inttoptr i32 %329 to ptr
  %331 = getelementptr inbounds %struct.rt6_info, ptr %330, i32 0, i32 6
  %332 = load ptr, ptr %331, align 4
  %333 = icmp eq ptr %332, null
  %334 = tail call ptr @llvm.thread.pointer() #12
  br i1 %333, label %355, label %335, !prof !9

335:                                              ; preds = %327
  %336 = getelementptr inbounds %struct.thread_info, ptr %334, i32 0, i32 1
  %337 = load volatile i32, ptr %336, align 4
  %338 = add i32 %337, 512
  store volatile i32 %338, ptr %336, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %339 = getelementptr inbounds %struct.inet6_dev, ptr %332, i32 0, i32 33, i32 1
  %340 = load ptr, ptr %339, align 4
  %341 = ptrtoint ptr %340 to i32
  %342 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %343 = inttoptr i32 %342 to ptr
  %344 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %343) #9, !srcloc !11
  %345 = add i32 %344, %341
  %346 = inttoptr i32 %345 to ptr
  %347 = getelementptr inbounds %struct.ipstats_mib, ptr %346, i32 0, i32 1
  %348 = load i32, ptr %347, align 4
  %349 = add i32 %348, 1
  store i32 %349, ptr %347, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %350 = getelementptr [37 x i64], ptr %346, i32 0, i32 14
  %351 = load i64, ptr %350, align 8
  %352 = add i64 %351, 1
  store i64 %352, ptr %350, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %353 = load i32, ptr %347, align 4
  %354 = add i32 %353, 1
  store i32 %354, ptr %347, align 4
  tail call fastcc void @local_bh_enable()
  br label %355

355:                                              ; preds = %335, %327
  %356 = getelementptr inbounds %struct.thread_info, ptr %334, i32 0, i32 1
  %357 = load volatile i32, ptr %356, align 4
  %358 = add i32 %357, 512
  store volatile i32 %358, ptr %356, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %359 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %360 = ptrtoint ptr %359 to i32
  %361 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %362 = inttoptr i32 %361 to ptr
  %363 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %362) #9, !srcloc !11
  %364 = add i32 %363, %360
  %365 = inttoptr i32 %364 to ptr
  %366 = getelementptr inbounds %struct.ipstats_mib, ptr %365, i32 0, i32 1
  %367 = load i32, ptr %366, align 4
  %368 = add i32 %367, 1
  store i32 %368, ptr %366, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %369 = getelementptr [37 x i64], ptr %365, i32 0, i32 14
  %370 = load i64, ptr %369, align 8
  %371 = add i64 %370, 1
  store i64 %371, ptr %369, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %372 = load i32, ptr %366, align 4
  %373 = add i32 %372, 1
  store i32 %373, ptr %366, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %708

374:                                              ; preds = %324
  %375 = load ptr, ptr %17, align 8
  %376 = load i16, ptr %19, align 2
  %377 = zext i16 %376 to i32
  %378 = getelementptr i8, ptr %375, i32 %377
  br label %379

379:                                              ; preds = %374, %318, %314
  %380 = phi ptr [ %378, %374 ], [ %266, %318 ], [ %266, %314 ]
  %381 = load i16, ptr %130, align 8
  %382 = and i16 %381, 96
  %383 = icmp eq i16 %382, 64
  br i1 %383, label %384, label %386

384:                                              ; preds = %379
  %385 = and i16 %381, -97
  store i16 %385, ptr %130, align 8
  br label %386

386:                                              ; preds = %384, %379
  %387 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %380, i32 0, i32 3
  %388 = load i8, ptr %387, align 1
  %389 = add i8 %388, -1
  store i8 %389, ptr %387, align 1
  %390 = zext i8 %389 to i32
  %391 = getelementptr inbounds %struct.rt0_hdr, ptr %380, i32 0, i32 2
  %392 = sub nsw i32 0, %390
  %393 = getelementptr %struct.in6_addr, ptr %391, i32 %392
  %394 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %380, i32 0, i32 2
  %395 = load i8, ptr %394, align 1
  %396 = icmp eq i8 %395, 2
  br i1 %396, label %397, label %490

397:                                              ; preds = %386
  %398 = load ptr, ptr %17, align 8
  %399 = load i16, ptr %121, align 4
  %400 = zext i16 %399 to i32
  %401 = getelementptr i8, ptr %398, i32 %400
  %402 = getelementptr inbounds %struct.ipv6hdr, ptr %401, i32 0, i32 5
  %403 = tail call i32 @xfrm6_input_addr(ptr noundef %0, ptr noundef %393, ptr noundef %402, i8 noundef zeroext 43) #12
  %404 = icmp slt i32 %403, 0
  br i1 %404, label %405, label %446

405:                                              ; preds = %397
  %406 = tail call ptr @llvm.thread.pointer() #12
  br i1 %10, label %427, label %407, !prof !9

407:                                              ; preds = %405
  %408 = getelementptr inbounds %struct.thread_info, ptr %406, i32 0, i32 1
  %409 = load volatile i32, ptr %408, align 4
  %410 = add i32 %409, 512
  store volatile i32 %410, ptr %408, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %411 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 33, i32 1
  %412 = load ptr, ptr %411, align 4
  %413 = ptrtoint ptr %412 to i32
  %414 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %415 = inttoptr i32 %414 to ptr
  %416 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %415) #9, !srcloc !11
  %417 = add i32 %416, %413
  %418 = inttoptr i32 %417 to ptr
  %419 = getelementptr inbounds %struct.ipstats_mib, ptr %418, i32 0, i32 1
  %420 = load i32, ptr %419, align 4
  %421 = add i32 %420, 1
  store i32 %421, ptr %419, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %422 = getelementptr [37 x i64], ptr %418, i32 0, i32 10
  %423 = load i64, ptr %422, align 8
  %424 = add i64 %423, 1
  store i64 %424, ptr %422, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %425 = load i32, ptr %419, align 4
  %426 = add i32 %425, 1
  store i32 %426, ptr %419, align 4
  tail call fastcc void @local_bh_enable()
  br label %427

427:                                              ; preds = %407, %405
  %428 = getelementptr inbounds %struct.thread_info, ptr %406, i32 0, i32 1
  %429 = load volatile i32, ptr %428, align 4
  %430 = add i32 %429, 512
  store volatile i32 %430, ptr %428, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %431 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %432 = ptrtoint ptr %431 to i32
  %433 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %434 = inttoptr i32 %433 to ptr
  %435 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %434) #9, !srcloc !11
  %436 = add i32 %435, %432
  %437 = inttoptr i32 %436 to ptr
  %438 = getelementptr inbounds %struct.ipstats_mib, ptr %437, i32 0, i32 1
  %439 = load i32, ptr %438, align 4
  %440 = add i32 %439, 1
  store i32 %440, ptr %438, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %441 = getelementptr [37 x i64], ptr %437, i32 0, i32 10
  %442 = load i64, ptr %441, align 8
  %443 = add i64 %442, 1
  store i64 %443, ptr %441, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %444 = load i32, ptr %438, align 4
  %445 = add i32 %444, 1
  store i32 %445, ptr %438, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %708

446:                                              ; preds = %397
  %447 = tail call i32 @ipv6_chk_home_addr(ptr noundef nonnull @init_net, ptr noundef %393) #12
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %490

449:                                              ; preds = %446
  %450 = tail call ptr @llvm.thread.pointer() #12
  br i1 %10, label %471, label %451, !prof !9

451:                                              ; preds = %449
  %452 = getelementptr inbounds %struct.thread_info, ptr %450, i32 0, i32 1
  %453 = load volatile i32, ptr %452, align 4
  %454 = add i32 %453, 512
  store volatile i32 %454, ptr %452, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %455 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 33, i32 1
  %456 = load ptr, ptr %455, align 4
  %457 = ptrtoint ptr %456 to i32
  %458 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %459 = inttoptr i32 %458 to ptr
  %460 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %459) #9, !srcloc !11
  %461 = add i32 %460, %457
  %462 = inttoptr i32 %461 to ptr
  %463 = getelementptr inbounds %struct.ipstats_mib, ptr %462, i32 0, i32 1
  %464 = load i32, ptr %463, align 4
  %465 = add i32 %464, 1
  store i32 %465, ptr %463, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %466 = getelementptr [37 x i64], ptr %462, i32 0, i32 10
  %467 = load i64, ptr %466, align 8
  %468 = add i64 %467, 1
  store i64 %468, ptr %466, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %469 = load i32, ptr %463, align 4
  %470 = add i32 %469, 1
  store i32 %470, ptr %463, align 4
  tail call fastcc void @local_bh_enable()
  br label %471

471:                                              ; preds = %451, %449
  %472 = getelementptr inbounds %struct.thread_info, ptr %450, i32 0, i32 1
  %473 = load volatile i32, ptr %472, align 4
  %474 = add i32 %473, 512
  store volatile i32 %474, ptr %472, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %475 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %476 = ptrtoint ptr %475 to i32
  %477 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %478 = inttoptr i32 %477 to ptr
  %479 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %478) #9, !srcloc !11
  %480 = add i32 %479, %476
  %481 = inttoptr i32 %480 to ptr
  %482 = getelementptr inbounds %struct.ipstats_mib, ptr %481, i32 0, i32 1
  %483 = load i32, ptr %482, align 4
  %484 = add i32 %483, 1
  store i32 %484, ptr %482, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %485 = getelementptr [37 x i64], ptr %481, i32 0, i32 10
  %486 = load i64, ptr %485, align 8
  %487 = add i64 %486, 1
  store i64 %487, ptr %485, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %488 = load i32, ptr %482, align 4
  %489 = add i32 %488, 1
  store i32 %489, ptr %482, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %708

490:                                              ; preds = %446, %386
  %491 = load i32, ptr %393, align 4
  %492 = and i32 %491, 255
  %493 = icmp eq i32 %492, 255
  br i1 %493, label %494, label %535

494:                                              ; preds = %490
  %495 = tail call ptr @llvm.thread.pointer() #12
  br i1 %10, label %516, label %496, !prof !9

496:                                              ; preds = %494
  %497 = getelementptr inbounds %struct.thread_info, ptr %495, i32 0, i32 1
  %498 = load volatile i32, ptr %497, align 4
  %499 = add i32 %498, 512
  store volatile i32 %499, ptr %497, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %500 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 33, i32 1
  %501 = load ptr, ptr %500, align 4
  %502 = ptrtoint ptr %501 to i32
  %503 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %504 = inttoptr i32 %503 to ptr
  %505 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %504) #9, !srcloc !11
  %506 = add i32 %505, %502
  %507 = inttoptr i32 %506 to ptr
  %508 = getelementptr inbounds %struct.ipstats_mib, ptr %507, i32 0, i32 1
  %509 = load i32, ptr %508, align 4
  %510 = add i32 %509, 1
  store i32 %510, ptr %508, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %511 = getelementptr [37 x i64], ptr %507, i32 0, i32 10
  %512 = load i64, ptr %511, align 8
  %513 = add i64 %512, 1
  store i64 %513, ptr %511, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %514 = load i32, ptr %508, align 4
  %515 = add i32 %514, 1
  store i32 %515, ptr %508, align 4
  tail call fastcc void @local_bh_enable()
  br label %516

516:                                              ; preds = %496, %494
  %517 = getelementptr inbounds %struct.thread_info, ptr %495, i32 0, i32 1
  %518 = load volatile i32, ptr %517, align 4
  %519 = add i32 %518, 512
  store volatile i32 %519, ptr %517, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %520 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %521 = ptrtoint ptr %520 to i32
  %522 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %523 = inttoptr i32 %522 to ptr
  %524 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %523) #9, !srcloc !11
  %525 = add i32 %524, %521
  %526 = inttoptr i32 %525 to ptr
  %527 = getelementptr inbounds %struct.ipstats_mib, ptr %526, i32 0, i32 1
  %528 = load i32, ptr %527, align 4
  %529 = add i32 %528, 1
  store i32 %529, ptr %527, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %530 = getelementptr [37 x i64], ptr %526, i32 0, i32 10
  %531 = load i64, ptr %530, align 8
  %532 = add i64 %531, 1
  store i64 %532, ptr %530, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %533 = load i32, ptr %527, align 4
  %534 = add i32 %533, 1
  store i32 %534, ptr %527, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %708

535:                                              ; preds = %490
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef align 4 dereferenceable(16) %393, i32 16, i1 false)
  %536 = load ptr, ptr %17, align 8
  %537 = load i16, ptr %121, align 4
  %538 = zext i16 %537 to i32
  %539 = getelementptr i8, ptr %536, i32 %538
  %540 = getelementptr inbounds %struct.ipv6hdr, ptr %539, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %393, ptr noundef align 4 dereferenceable(16) %540, i32 16, i1 false)
  %541 = load ptr, ptr %17, align 8
  %542 = load i16, ptr %121, align 4
  %543 = zext i16 %542 to i32
  %544 = getelementptr i8, ptr %541, i32 %543
  %545 = getelementptr inbounds %struct.ipv6hdr, ptr %544, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %545, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 16, i1 false)
  %546 = load i32, ptr %186, align 8
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %555, label %548

548:                                              ; preds = %535
  %549 = and i32 %546, 1
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %554

551:                                              ; preds = %548
  %552 = and i32 %546, -2
  %553 = inttoptr i32 %552 to ptr
  tail call void @dst_release(ptr noundef %553) #12
  br label %554

554:                                              ; preds = %551, %548
  store i32 0, ptr %186, align 8
  br label %555

555:                                              ; preds = %554, %535
  tail call void @ip6_route_input(ptr noundef %0) #12
  %556 = load i32, ptr %186, align 8
  %557 = and i32 %556, -2
  %558 = inttoptr i32 %557 to ptr
  %559 = getelementptr inbounds %struct.dst_entry, ptr %558, i32 0, i32 15
  %560 = load i16, ptr %559, align 4
  %561 = icmp eq i16 %560, 0
  br i1 %561, label %578, label %562

562:                                              ; preds = %555
  %563 = load ptr, ptr %23, align 4
  %564 = load ptr, ptr %17, align 8
  %565 = load i16, ptr %121, align 4
  %566 = zext i16 %565 to i32
  %567 = getelementptr i8, ptr %564, i32 %566
  %568 = ptrtoint ptr %563 to i32
  %569 = ptrtoint ptr %567 to i32
  %570 = sub i32 %568, %569
  %571 = tail call ptr @skb_push(ptr noundef %0, i32 noundef %570) #12
  %572 = load i32, ptr %186, align 8
  %573 = and i32 %572, -2
  %574 = inttoptr i32 %573 to ptr
  %575 = getelementptr inbounds %struct.dst_entry, ptr %574, i32 0, i32 5
  %576 = load ptr, ptr %575, align 4
  %577 = tail call i32 %576(ptr noundef %0) #12
  br label %708

578:                                              ; preds = %555
  %579 = load ptr, ptr %558, align 4
  %580 = getelementptr inbounds %struct.net_device, ptr %579, i32 0, i32 14
  %581 = load i32, ptr %580, align 8
  %582 = and i32 %581, 8
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %642, label %584

584:                                              ; preds = %578
  %585 = load ptr, ptr %17, align 8
  %586 = load i16, ptr %121, align 4
  %587 = zext i16 %586 to i32
  %588 = getelementptr i8, ptr %585, i32 %587
  %589 = getelementptr inbounds %struct.ipv6hdr, ptr %588, i32 0, i32 4
  %590 = load i8, ptr %589, align 1
  %591 = icmp ult i8 %590, 2
  br i1 %591, label %592, label %634

592:                                              ; preds = %584
  %593 = tail call ptr @llvm.thread.pointer() #12
  br i1 %10, label %614, label %594, !prof !9

594:                                              ; preds = %592
  %595 = getelementptr inbounds %struct.thread_info, ptr %593, i32 0, i32 1
  %596 = load volatile i32, ptr %595, align 4
  %597 = add i32 %596, 512
  store volatile i32 %597, ptr %595, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %598 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 33, i32 1
  %599 = load ptr, ptr %598, align 4
  %600 = ptrtoint ptr %599 to i32
  %601 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %602 = inttoptr i32 %601 to ptr
  %603 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %602) #9, !srcloc !11
  %604 = add i32 %603, %600
  %605 = inttoptr i32 %604 to ptr
  %606 = getelementptr inbounds %struct.ipstats_mib, ptr %605, i32 0, i32 1
  %607 = load i32, ptr %606, align 4
  %608 = add i32 %607, 1
  store i32 %608, ptr %606, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %609 = getelementptr [37 x i64], ptr %605, i32 0, i32 7
  %610 = load i64, ptr %609, align 8
  %611 = add i64 %610, 1
  store i64 %611, ptr %609, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %612 = load i32, ptr %606, align 4
  %613 = add i32 %612, 1
  store i32 %613, ptr %606, align 4
  tail call fastcc void @local_bh_enable()
  br label %614

614:                                              ; preds = %594, %592
  %615 = getelementptr inbounds %struct.thread_info, ptr %593, i32 0, i32 1
  %616 = load volatile i32, ptr %615, align 4
  %617 = add i32 %616, 512
  store volatile i32 %617, ptr %615, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %618 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %619 = ptrtoint ptr %618 to i32
  %620 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %621 = inttoptr i32 %620 to ptr
  %622 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %621) #9, !srcloc !11
  %623 = add i32 %622, %619
  %624 = inttoptr i32 %623 to ptr
  %625 = getelementptr inbounds %struct.ipstats_mib, ptr %624, i32 0, i32 1
  %626 = load i32, ptr %625, align 4
  %627 = add i32 %626, 1
  store i32 %627, ptr %625, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %628 = getelementptr [37 x i64], ptr %624, i32 0, i32 7
  %629 = load i64, ptr %628, align 8
  %630 = add i64 %629, 1
  store i64 %630, ptr %628, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %631 = load i32, ptr %625, align 4
  %632 = add i32 %631, 1
  store i32 %632, ptr %625, align 4
  tail call fastcc void @local_bh_enable()
  %633 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %0, i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null, ptr noundef %633) #12
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %708

634:                                              ; preds = %584
  %635 = add i8 %590, -1
  store i8 %635, ptr %589, align 1
  %636 = load i8, ptr %387, align 1
  %637 = icmp eq i8 %636, 0
  %638 = load i8, ptr %394, align 1
  br i1 %637, label %193, label %639

639:                                              ; preds = %634
  %640 = icmp ne i8 %638, 2
  %641 = select i1 %640, i1 true, i1 %183
  br i1 %641, label %658, label %265

642:                                              ; preds = %578
  %643 = load ptr, ptr %23, align 4
  %644 = load ptr, ptr %17, align 8
  %645 = load i16, ptr %121, align 4
  %646 = zext i16 %645 to i32
  %647 = getelementptr i8, ptr %644, i32 %646
  %648 = ptrtoint ptr %643 to i32
  %649 = ptrtoint ptr %647 to i32
  %650 = sub i32 %648, %649
  %651 = tail call ptr @skb_push(ptr noundef %0, i32 noundef %650) #12
  %652 = load i32, ptr %186, align 8
  %653 = and i32 %652, -2
  %654 = inttoptr i32 %653 to ptr
  %655 = getelementptr inbounds %struct.dst_entry, ptr %654, i32 0, i32 5
  %656 = load ptr, ptr %655, align 4
  %657 = tail call i32 %656(ptr noundef %0) #12
  br label %708

658:                                              ; preds = %639, %182
  %659 = phi ptr [ %120, %182 ], [ %380, %639 ]
  %660 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %659, i32 0, i32 2
  %661 = tail call ptr @llvm.thread.pointer() #12
  br i1 %10, label %682, label %662, !prof !9

662:                                              ; preds = %658
  %663 = getelementptr inbounds %struct.thread_info, ptr %661, i32 0, i32 1
  %664 = load volatile i32, ptr %663, align 4
  %665 = add i32 %664, 512
  store volatile i32 %665, ptr %663, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %666 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 33, i32 1
  %667 = load ptr, ptr %666, align 4
  %668 = ptrtoint ptr %667 to i32
  %669 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %670 = inttoptr i32 %669 to ptr
  %671 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %670) #9, !srcloc !11
  %672 = add i32 %671, %668
  %673 = inttoptr i32 %672 to ptr
  %674 = getelementptr inbounds %struct.ipstats_mib, ptr %673, i32 0, i32 1
  %675 = load i32, ptr %674, align 4
  %676 = add i32 %675, 1
  store i32 %676, ptr %674, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %677 = getelementptr [37 x i64], ptr %673, i32 0, i32 7
  %678 = load i64, ptr %677, align 8
  %679 = add i64 %678, 1
  store i64 %679, ptr %677, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %680 = load i32, ptr %674, align 4
  %681 = add i32 %680, 1
  store i32 %681, ptr %674, align 4
  tail call fastcc void @local_bh_enable()
  br label %682

682:                                              ; preds = %662, %658
  %683 = getelementptr inbounds %struct.thread_info, ptr %661, i32 0, i32 1
  %684 = load volatile i32, ptr %683, align 4
  %685 = add i32 %684, 512
  store volatile i32 %685, ptr %683, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %686 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %687 = ptrtoint ptr %686 to i32
  %688 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %689 = inttoptr i32 %688 to ptr
  %690 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %689) #9, !srcloc !11
  %691 = add i32 %690, %687
  %692 = inttoptr i32 %691 to ptr
  %693 = getelementptr inbounds %struct.ipstats_mib, ptr %692, i32 0, i32 1
  %694 = load i32, ptr %693, align 4
  %695 = add i32 %694, 1
  store i32 %695, ptr %693, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %696 = getelementptr [37 x i64], ptr %692, i32 0, i32 7
  %697 = load i64, ptr %696, align 8
  %698 = add i64 %697, 1
  store i64 %698, ptr %696, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %699 = load i32, ptr %693, align 4
  %700 = add i32 %699, 1
  store i32 %700, ptr %693, align 4
  tail call fastcc void @local_bh_enable()
  %701 = load ptr, ptr %17, align 8
  %702 = load i16, ptr %121, align 4
  %703 = zext i16 %702 to i32
  %704 = getelementptr i8, ptr %701, i32 %703
  %705 = ptrtoint ptr %660 to i32
  %706 = ptrtoint ptr %704 to i32
  %707 = sub i32 %705, %706
  tail call void @icmpv6_param_prob(ptr noundef %0, i8 noundef zeroext 0, i32 noundef %707) #12
  br label %708

708:                                              ; preds = %682, %642, %614, %562, %516, %471, %427, %355, %295, %242, %223, %191, %189, %156, %98
  %709 = phi i32 [ -1, %156 ], [ 1, %242 ], [ -1, %223 ], [ -1, %682 ], [ -1, %295 ], [ -1, %355 ], [ -1, %427 ], [ -1, %516 ], [ -1, %562 ], [ -1, %614 ], [ -1, %642 ], [ -1, %471 ], [ %192, %191 ], [ %190, %189 ], [ -1, %98 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  ret i32 %709
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ipv6_srh_rcv(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca [8 x i32], align 4
  %3 = alloca [2 x i32], align 8
  %4 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 69
  %13 = load volatile ptr, ptr %12, align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %15 = getelementptr inbounds %struct.ipv6_devconf, ptr %14, i32 0, i32 43
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.inet6_dev, ptr %13, i32 0, i32 32, i32 43
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.smin.i32(i32 %16, i32 %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %10, i32 0, i32 3
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %29 = getelementptr inbounds i32, ptr %3, i32 1
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %32 = getelementptr inbounds i32, ptr %2, i32 1
  %33 = getelementptr inbounds i32, ptr %2, i32 2
  %34 = getelementptr inbounds i32, ptr %2, i32 3
  %35 = getelementptr inbounds i32, ptr %2, i32 4
  %36 = getelementptr inbounds i32, ptr %2, i32 5
  %37 = getelementptr inbounds i32, ptr %2, i32 6
  %38 = getelementptr inbounds i32, ptr %2, i32 7
  %39 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  br label %175

40:                                               ; preds = %1
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %444

41:                                               ; preds = %434, %21
  %42 = phi ptr [ %10, %21 ], [ %296, %434 ]
  %43 = load i8, ptr %42, align 4
  switch i8 %43, label %154 [
    i8 41, label %44
    i8 4, label %44
  ]

44:                                               ; preds = %41, %41
  %45 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %42, i32 0, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 3
  %49 = add nuw nsw i32 %48, 8
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %52 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %53 = load i16, ptr %52, align 8
  %54 = lshr i16 %53, 5
  %55 = trunc i16 %54 to i2
  switch i2 %55, label %81 [
    i2 -2, label %56
    i2 -1, label %68
  ]

56:                                               ; preds = %44
  %57 = load i16, ptr %7, align 2
  %58 = zext i16 %57 to i32
  %59 = load i16, ptr %51, align 4
  %60 = zext i16 %59 to i32
  %61 = sub nsw i32 %58, %60
  %62 = getelementptr i8, ptr %50, i32 %60
  %63 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = sub i32 0, %64
  %66 = call i32 @csum_partial(ptr noundef %62, i32 noundef %61, i32 noundef %65) #12
  %67 = sub i32 0, %66
  store i32 %67, ptr %63, align 4
  br label %81

68:                                               ; preds = %44
  %69 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %70 = load i16, ptr %69, align 4
  %71 = zext i16 %70 to i32
  %72 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %73 = load ptr, ptr %72, align 4
  %74 = ptrtoint ptr %73 to i32
  %75 = ptrtoint ptr %50 to i32
  %76 = add i32 %71, %75
  %77 = sub i32 %76, %74
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = and i16 %53, -97
  store i16 %80, ptr %52, align 8
  br label %81

81:                                               ; preds = %79, %68, %56, %44
  %82 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %83 = load i32, ptr %82, align 8
  %84 = icmp ult i32 %83, %49
  br i1 %84, label %103, label %85, !prof !9

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = sub i32 %83, %87
  %89 = icmp ugt i32 %49, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = sub i32 %49, %88
  %92 = call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %91) #12
  %93 = icmp eq ptr %92, null
  br i1 %93, label %103, label %94

94:                                               ; preds = %90
  %95 = load i32, ptr %82, align 8
  br label %96

96:                                               ; preds = %94, %85
  %97 = phi i32 [ %95, %94 ], [ %83, %85 ]
  %98 = sub i32 %97, %49
  store i32 %98, ptr %82, align 8
  %99 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr i8, ptr %100, i32 %49
  store ptr %101, ptr %99, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %96, %90, %81
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %444

104:                                              ; preds = %96
  %105 = load ptr, ptr %5, align 8
  %106 = load i16, ptr %52, align 8
  %107 = lshr i16 %106, 5
  %108 = trunc i16 %107 to i2
  switch i2 %108, label %132 [
    i2 -2, label %109
    i2 -1, label %121
  ]

109:                                              ; preds = %104
  %110 = load i16, ptr %7, align 2
  %111 = zext i16 %110 to i32
  %112 = getelementptr i8, ptr %105, i32 %111
  %113 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %114 = load i32, ptr %113, align 4
  %115 = sub i32 0, %114
  %116 = call i32 @csum_partial(ptr noundef %112, i32 noundef %49, i32 noundef %115) #12
  %117 = sub i32 0, %116
  store i32 %117, ptr %113, align 4
  %118 = load ptr, ptr %99, align 4
  %119 = load ptr, ptr %5, align 8
  %120 = load i16, ptr %52, align 8
  br label %132

121:                                              ; preds = %104
  %122 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %123 = load i16, ptr %122, align 4
  %124 = zext i16 %123 to i32
  %125 = ptrtoint ptr %101 to i32
  %126 = ptrtoint ptr %105 to i32
  %127 = add i32 %124, %126
  %128 = sub i32 %127, %125
  %129 = icmp slt i32 %128, 0
  %130 = and i16 %106, -97
  %131 = select i1 %129, i16 %130, i16 %106
  br label %132

132:                                              ; preds = %121, %109, %104
  %133 = phi i16 [ %106, %104 ], [ %120, %109 ], [ %131, %121 ]
  %134 = phi ptr [ %105, %104 ], [ %119, %109 ], [ %105, %121 ]
  %135 = phi ptr [ %101, %104 ], [ %118, %109 ], [ %101, %121 ]
  %136 = ptrtoint ptr %135 to i32
  %137 = ptrtoint ptr %134 to i32
  %138 = sub i32 %136, %137
  %139 = trunc i32 %138 to i16
  store i16 %139, ptr %51, align 4
  store i16 %139, ptr %7, align 2
  %140 = and i16 %133, -8193
  store i16 %140, ptr %52, align 8
  %141 = load i8, ptr %42, align 4
  %142 = icmp eq i8 %141, 4
  br i1 %142, label %143, label %145

143:                                              ; preds = %132
  %144 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  store i16 8, ptr %144, align 8
  br label %145

145:                                              ; preds = %143, %132
  %146 = and i16 %133, 256
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 7
  store i32 0, ptr %149, align 8
  %150 = and i16 %133, -8961
  store i16 %150, ptr %52, align 8
  br label %151

151:                                              ; preds = %148, %145
  %152 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  store i16 0, ptr %152, align 4
  call void @skb_scrub_packet(ptr noundef %0, i1 noundef zeroext false) #12
  %153 = call i32 @netif_rx(ptr noundef %0) #12
  br label %444

154:                                              ; preds = %41
  %155 = load i16, ptr %7, align 2
  %156 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %157 = load i16, ptr %156, align 4
  %158 = zext i16 %157 to i32
  %159 = sub i16 %155, %157
  %160 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  store i16 %159, ptr %160, align 4
  %161 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  store i16 %159, ptr %161, align 4
  %162 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %42, i32 0, i32 1
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i16
  %165 = shl nuw nsw i16 %164, 3
  %166 = add i16 %155, 8
  %167 = add i16 %166, %165
  store i16 %167, ptr %7, align 2
  %168 = load ptr, ptr %5, align 8
  %169 = getelementptr i8, ptr %168, i32 %158
  %170 = ptrtoint ptr %42 to i32
  %171 = ptrtoint ptr %169 to i32
  %172 = sub i32 %170, %171
  %173 = trunc i32 %172 to i16
  %174 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  store i16 %173, ptr %174, align 2
  br label %444

175:                                              ; preds = %434, %25
  %176 = phi i8 [ %23, %25 ], [ %437, %434 ]
  %177 = phi ptr [ %10, %25 ], [ %296, %434 ]
  %178 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %177, i32 0, i32 1
  %179 = load i8, ptr %178, align 1
  %180 = lshr i8 %179, 1
  %181 = icmp ult i8 %176, %180
  br i1 %181, label %232, label %182

182:                                              ; preds = %175
  %183 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %177, i32 0, i32 3
  %184 = icmp eq ptr %13, null
  %185 = tail call ptr @llvm.thread.pointer() #12
  br i1 %184, label %206, label %186, !prof !9

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.thread_info, ptr %185, i32 0, i32 1
  %188 = load volatile i32, ptr %187, align 4
  %189 = add i32 %188, 512
  store volatile i32 %189, ptr %187, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %190 = getelementptr inbounds %struct.inet6_dev, ptr %13, i32 0, i32 33, i32 1
  %191 = load ptr, ptr %190, align 4
  %192 = ptrtoint ptr %191 to i32
  %193 = call i32 @llvm.read_register.i32(metadata !0) #12
  %194 = inttoptr i32 %193 to ptr
  %195 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %194) #9, !srcloc !11
  %196 = add i32 %195, %192
  %197 = inttoptr i32 %196 to ptr
  %198 = getelementptr inbounds %struct.ipstats_mib, ptr %197, i32 0, i32 1
  %199 = load i32, ptr %198, align 4
  %200 = add i32 %199, 1
  store i32 %200, ptr %198, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %201 = getelementptr [37 x i64], ptr %197, i32 0, i32 7
  %202 = load i64, ptr %201, align 8
  %203 = add i64 %202, 1
  store i64 %203, ptr %201, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %204 = load i32, ptr %198, align 4
  %205 = add i32 %204, 1
  store i32 %205, ptr %198, align 4
  call fastcc void @local_bh_enable()
  br label %206

206:                                              ; preds = %186, %182
  %207 = getelementptr inbounds %struct.thread_info, ptr %185, i32 0, i32 1
  %208 = load volatile i32, ptr %207, align 4
  %209 = add i32 %208, 512
  store volatile i32 %209, ptr %207, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %210 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %211 = ptrtoint ptr %210 to i32
  %212 = call i32 @llvm.read_register.i32(metadata !0) #12
  %213 = inttoptr i32 %212 to ptr
  %214 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %213) #9, !srcloc !11
  %215 = add i32 %214, %211
  %216 = inttoptr i32 %215 to ptr
  %217 = getelementptr inbounds %struct.ipstats_mib, ptr %216, i32 0, i32 1
  %218 = load i32, ptr %217, align 4
  %219 = add i32 %218, 1
  store i32 %219, ptr %217, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %220 = getelementptr [37 x i64], ptr %216, i32 0, i32 7
  %221 = load i64, ptr %220, align 8
  %222 = add i64 %221, 1
  store i64 %222, ptr %220, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %223 = load i32, ptr %217, align 4
  %224 = add i32 %223, 1
  store i32 %224, ptr %217, align 4
  call fastcc void @local_bh_enable()
  %225 = load ptr, ptr %5, align 8
  %226 = load i16, ptr %31, align 4
  %227 = zext i16 %226 to i32
  %228 = getelementptr i8, ptr %225, i32 %227
  %229 = ptrtoint ptr %183 to i32
  %230 = ptrtoint ptr %228 to i32
  %231 = sub i32 %229, %230
  call void @icmpv6_param_prob(ptr noundef %0, i8 noundef zeroext 0, i32 noundef %231) #12
  br label %444

232:                                              ; preds = %175
  %233 = load i8, ptr %26, align 2
  %234 = and i8 %233, 1
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %292, label %236

236:                                              ; preds = %232
  %237 = load ptr, ptr %27, align 4
  %238 = getelementptr inbounds %struct.skb_shared_info, ptr %237, i32 0, i32 10
  %239 = load volatile i32, ptr %238, align 4
  %240 = and i32 %239, 65535
  %241 = icmp eq i32 %240, 1
  br i1 %241, label %292, label %242

242:                                              ; preds = %236
  %243 = call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #12
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %292, label %245

245:                                              ; preds = %242
  %246 = load i32, ptr %39, align 8
  %247 = and i32 %246, -2
  %248 = inttoptr i32 %247 to ptr
  %249 = getelementptr inbounds %struct.rt6_info, ptr %248, i32 0, i32 6
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, null
  %252 = tail call ptr @llvm.thread.pointer() #12
  br i1 %251, label %273, label %253, !prof !9

253:                                              ; preds = %245
  %254 = getelementptr inbounds %struct.thread_info, ptr %252, i32 0, i32 1
  %255 = load volatile i32, ptr %254, align 4
  %256 = add i32 %255, 512
  store volatile i32 %256, ptr %254, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %257 = getelementptr inbounds %struct.inet6_dev, ptr %250, i32 0, i32 33, i32 1
  %258 = load ptr, ptr %257, align 4
  %259 = ptrtoint ptr %258 to i32
  %260 = call i32 @llvm.read_register.i32(metadata !0) #12
  %261 = inttoptr i32 %260 to ptr
  %262 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %261) #9, !srcloc !11
  %263 = add i32 %262, %259
  %264 = inttoptr i32 %263 to ptr
  %265 = getelementptr inbounds %struct.ipstats_mib, ptr %264, i32 0, i32 1
  %266 = load i32, ptr %265, align 4
  %267 = add i32 %266, 1
  store i32 %267, ptr %265, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %268 = getelementptr [37 x i64], ptr %264, i32 0, i32 14
  %269 = load i64, ptr %268, align 8
  %270 = add i64 %269, 1
  store i64 %270, ptr %268, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %271 = load i32, ptr %265, align 4
  %272 = add i32 %271, 1
  store i32 %272, ptr %265, align 4
  call fastcc void @local_bh_enable()
  br label %273

273:                                              ; preds = %253, %245
  %274 = getelementptr inbounds %struct.thread_info, ptr %252, i32 0, i32 1
  %275 = load volatile i32, ptr %274, align 4
  %276 = add i32 %275, 512
  store volatile i32 %276, ptr %274, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %277 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %278 = ptrtoint ptr %277 to i32
  %279 = call i32 @llvm.read_register.i32(metadata !0) #12
  %280 = inttoptr i32 %279 to ptr
  %281 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %280) #9, !srcloc !11
  %282 = add i32 %281, %278
  %283 = inttoptr i32 %282 to ptr
  %284 = getelementptr inbounds %struct.ipstats_mib, ptr %283, i32 0, i32 1
  %285 = load i32, ptr %284, align 4
  %286 = add i32 %285, 1
  store i32 %286, ptr %284, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %287 = getelementptr [37 x i64], ptr %283, i32 0, i32 14
  %288 = load i64, ptr %287, align 8
  %289 = add i64 %288, 1
  store i64 %289, ptr %287, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %290 = load i32, ptr %284, align 4
  %291 = add i32 %290, 1
  store i32 %291, ptr %284, align 4
  call fastcc void @local_bh_enable()
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %444

292:                                              ; preds = %242, %236, %232
  %293 = load ptr, ptr %5, align 8
  %294 = load i16, ptr %7, align 2
  %295 = zext i16 %294 to i32
  %296 = getelementptr i8, ptr %293, i32 %295
  %297 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %296, i32 0, i32 3
  %298 = load i8, ptr %297, align 1
  %299 = add i8 %298, -1
  store i8 %299, ptr %297, align 1
  %300 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %296, i32 0, i32 7
  %301 = zext i8 %299 to i32
  %302 = getelementptr %struct.in6_addr, ptr %300, i32 %301
  %303 = call ptr @skb_push(ptr noundef %0, i32 noundef 40) #12
  %304 = load i16, ptr %28, align 8
  %305 = and i16 %304, 96
  %306 = icmp eq i16 %305, 64
  br i1 %306, label %307, label %350

307:                                              ; preds = %292
  %308 = load ptr, ptr %5, align 8
  %309 = load i16, ptr %7, align 2
  %310 = zext i16 %309 to i32
  %311 = getelementptr i8, ptr %308, i32 %310
  %312 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %311, i32 0, i32 7
  %313 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %311, i32 0, i32 3
  %314 = load i8, ptr %313, align 1
  %315 = zext i8 %314 to i32
  %316 = getelementptr %struct.in6_addr, ptr %312, i32 %315
  %317 = add i8 %314, 1
  store i8 %317, ptr %313, align 1
  %318 = load i32, ptr %311, align 4
  store i8 %314, ptr %313, align 1
  %319 = load i32, ptr %311, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %320 = xor i32 %318, -1
  store i32 %320, ptr %3, align 8
  store i32 %319, ptr %29, align 4
  %321 = load i32, ptr %30, align 4
  %322 = xor i32 %321, -1
  %323 = call i32 @csum_partial(ptr noundef nonnull %3, i32 noundef 8, i32 noundef %322) #12
  %324 = xor i32 %323, -1
  store i32 %324, ptr %30, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  %325 = load ptr, ptr %5, align 8
  %326 = load i16, ptr %31, align 4
  %327 = zext i16 %326 to i32
  %328 = getelementptr i8, ptr %325, i32 %327
  %329 = getelementptr inbounds %struct.ipv6hdr, ptr %328, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #12
  %330 = load i32, ptr %329, align 4
  %331 = xor i32 %330, -1
  store i32 %331, ptr %2, align 4
  %332 = getelementptr i32, ptr %329, i32 1
  %333 = load i32, ptr %332, align 4
  %334 = xor i32 %333, -1
  store i32 %334, ptr %32, align 4
  %335 = getelementptr i32, ptr %329, i32 2
  %336 = load i32, ptr %335, align 4
  %337 = xor i32 %336, -1
  store i32 %337, ptr %33, align 4
  %338 = getelementptr i32, ptr %329, i32 3
  %339 = load i32, ptr %338, align 4
  %340 = xor i32 %339, -1
  store i32 %340, ptr %34, align 4
  %341 = load i32, ptr %316, align 4
  store i32 %341, ptr %35, align 4
  %342 = getelementptr i32, ptr %316, i32 1
  %343 = load i32, ptr %342, align 4
  store i32 %343, ptr %36, align 4
  %344 = getelementptr i32, ptr %316, i32 2
  %345 = load i32, ptr %344, align 4
  store i32 %345, ptr %37, align 4
  %346 = getelementptr i32, ptr %316, i32 3
  %347 = load i32, ptr %346, align 4
  store i32 %347, ptr %38, align 4
  %348 = call i32 @csum_partial(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %323) #12
  %349 = xor i32 %348, -1
  store i32 %349, ptr %30, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  br label %350

350:                                              ; preds = %307, %292
  %351 = load ptr, ptr %5, align 8
  %352 = load i16, ptr %31, align 4
  %353 = zext i16 %352 to i32
  %354 = getelementptr i8, ptr %351, i32 %353
  %355 = getelementptr inbounds %struct.ipv6hdr, ptr %354, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %355, ptr noundef align 4 dereferenceable(16) %302, i32 16, i1 false)
  %356 = load i32, ptr %39, align 8
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %365, label %358

358:                                              ; preds = %350
  %359 = and i32 %356, 1
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %358
  %362 = and i32 %356, -2
  %363 = inttoptr i32 %362 to ptr
  call void @dst_release(ptr noundef %363) #12
  br label %364

364:                                              ; preds = %361, %358
  store i32 0, ptr %39, align 8
  br label %365

365:                                              ; preds = %364, %350
  call void @ip6_route_input(ptr noundef %0) #12
  %366 = load i32, ptr %39, align 8
  %367 = and i32 %366, -2
  %368 = inttoptr i32 %367 to ptr
  %369 = getelementptr inbounds %struct.dst_entry, ptr %368, i32 0, i32 15
  %370 = load i16, ptr %369, align 4
  %371 = icmp eq i16 %370, 0
  br i1 %371, label %377, label %372

372:                                              ; preds = %365
  %373 = inttoptr i32 %367 to ptr
  %374 = getelementptr inbounds %struct.dst_entry, ptr %373, i32 0, i32 5
  %375 = load ptr, ptr %374, align 4
  %376 = call i32 %375(ptr noundef %0) #12
  br label %444

377:                                              ; preds = %365
  %378 = load ptr, ptr %368, align 4
  %379 = getelementptr inbounds %struct.net_device, ptr %378, i32 0, i32 14
  %380 = load i32, ptr %379, align 8
  %381 = and i32 %380, 8
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %439, label %383

383:                                              ; preds = %377
  %384 = load ptr, ptr %5, align 8
  %385 = load i16, ptr %31, align 4
  %386 = zext i16 %385 to i32
  %387 = getelementptr i8, ptr %384, i32 %386
  %388 = getelementptr inbounds %struct.ipv6hdr, ptr %387, i32 0, i32 4
  %389 = load i8, ptr %388, align 1
  %390 = icmp ult i8 %389, 2
  br i1 %390, label %391, label %434

391:                                              ; preds = %383
  %392 = icmp eq ptr %13, null
  %393 = tail call ptr @llvm.thread.pointer() #12
  br i1 %392, label %414, label %394, !prof !9

394:                                              ; preds = %391
  %395 = getelementptr inbounds %struct.thread_info, ptr %393, i32 0, i32 1
  %396 = load volatile i32, ptr %395, align 4
  %397 = add i32 %396, 512
  store volatile i32 %397, ptr %395, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %398 = getelementptr inbounds %struct.inet6_dev, ptr %13, i32 0, i32 33, i32 1
  %399 = load ptr, ptr %398, align 4
  %400 = ptrtoint ptr %399 to i32
  %401 = call i32 @llvm.read_register.i32(metadata !0) #12
  %402 = inttoptr i32 %401 to ptr
  %403 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %402) #9, !srcloc !11
  %404 = add i32 %403, %400
  %405 = inttoptr i32 %404 to ptr
  %406 = getelementptr inbounds %struct.ipstats_mib, ptr %405, i32 0, i32 1
  %407 = load i32, ptr %406, align 4
  %408 = add i32 %407, 1
  store i32 %408, ptr %406, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %409 = getelementptr [37 x i64], ptr %405, i32 0, i32 7
  %410 = load i64, ptr %409, align 8
  %411 = add i64 %410, 1
  store i64 %411, ptr %409, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %412 = load i32, ptr %406, align 4
  %413 = add i32 %412, 1
  store i32 %413, ptr %406, align 4
  call fastcc void @local_bh_enable()
  br label %414

414:                                              ; preds = %394, %391
  %415 = getelementptr inbounds %struct.thread_info, ptr %393, i32 0, i32 1
  %416 = load volatile i32, ptr %415, align 4
  %417 = add i32 %416, 512
  store volatile i32 %417, ptr %415, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %418 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %419 = ptrtoint ptr %418 to i32
  %420 = call i32 @llvm.read_register.i32(metadata !0) #12
  %421 = inttoptr i32 %420 to ptr
  %422 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %421) #9, !srcloc !11
  %423 = add i32 %422, %419
  %424 = inttoptr i32 %423 to ptr
  %425 = getelementptr inbounds %struct.ipstats_mib, ptr %424, i32 0, i32 1
  %426 = load i32, ptr %425, align 4
  %427 = add i32 %426, 1
  store i32 %427, ptr %425, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %428 = getelementptr [37 x i64], ptr %424, i32 0, i32 7
  %429 = load i64, ptr %428, align 8
  %430 = add i64 %429, 1
  store i64 %430, ptr %428, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %431 = load i32, ptr %425, align 4
  %432 = add i32 %431, 1
  store i32 %432, ptr %425, align 4
  call fastcc void @local_bh_enable()
  %433 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  call void @icmp6_send(ptr noundef %0, i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null, ptr noundef %433) #12
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %444

434:                                              ; preds = %383
  %435 = add i8 %389, -1
  store i8 %435, ptr %388, align 1
  %436 = call ptr @skb_pull(ptr noundef %0, i32 noundef 40) #12
  %437 = load i8, ptr %297, align 1
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %41, label %175

439:                                              ; preds = %377
  %440 = inttoptr i32 %367 to ptr
  %441 = getelementptr inbounds %struct.dst_entry, ptr %440, i32 0, i32 5
  %442 = load ptr, ptr %441, align 4
  %443 = call i32 %442(ptr noundef %0) #12
  br label %444

444:                                              ; preds = %439, %414, %372, %273, %206, %154, %151, %103, %40
  %445 = phi i32 [ 1, %154 ], [ -1, %206 ], [ -1, %273 ], [ -1, %372 ], [ -1, %414 ], [ -1, %439 ], [ -1, %40 ], [ -1, %151 ], [ -1, %103 ]
  ret i32 %445
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ipv6_rpl_srh_rcv(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca [4 x i32], align 4
  %3 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false)
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 69
  %6 = load volatile ptr, ptr %5, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %8 = getelementptr inbounds %struct.ipv6_devconf, ptr %7, i32 0, i32 48
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 32, i32 48
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.smin.i32(i32 %9, i32 %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %17 = load ptr, ptr %15, align 8
  %18 = load i16, ptr %16, align 2
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %20, i32 0, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  br label %137

36:                                               ; preds = %1
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %611

37:                                               ; preds = %596
  %38 = zext i16 %600 to i32
  br label %39

39:                                               ; preds = %37, %14
  %40 = phi i32 [ %19, %14 ], [ %38, %37 ]
  %41 = phi i16 [ %18, %14 ], [ %600, %37 ]
  %42 = phi ptr [ %17, %14 ], [ %599, %37 ]
  %43 = phi ptr [ %20, %14 ], [ %602, %37 ]
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 41
  br i1 %45, label %46, label %118

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %43, i32 0, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 3
  %51 = add nuw nsw i32 %50, 8
  %52 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %53 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %54 = load i16, ptr %53, align 8
  %55 = lshr i16 %54, 5
  %56 = trunc i16 %55 to i2
  switch i2 %56, label %80 [
    i2 -2, label %57
    i2 -1, label %67
  ]

57:                                               ; preds = %46
  %58 = load i16, ptr %52, align 4
  %59 = zext i16 %58 to i32
  %60 = sub nsw i32 %40, %59
  %61 = getelementptr i8, ptr %42, i32 %59
  %62 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = sub i32 0, %63
  %65 = tail call i32 @csum_partial(ptr noundef %61, i32 noundef %60, i32 noundef %64) #12
  %66 = sub i32 0, %65
  store i32 %66, ptr %62, align 4
  br label %80

67:                                               ; preds = %46
  %68 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %69 = load i16, ptr %68, align 4
  %70 = zext i16 %69 to i32
  %71 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %72 = load ptr, ptr %71, align 4
  %73 = ptrtoint ptr %72 to i32
  %74 = ptrtoint ptr %42 to i32
  %75 = add i32 %70, %74
  %76 = sub i32 %75, %73
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = and i16 %54, -97
  store i16 %79, ptr %53, align 8
  br label %80

80:                                               ; preds = %78, %67, %57, %46
  %81 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %82 = load i32, ptr %81, align 8
  %83 = icmp ult i32 %82, %51
  br i1 %83, label %102, label %84, !prof !9

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = sub i32 %82, %86
  %88 = icmp ugt i32 %51, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = sub i32 %51, %87
  %91 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %90) #12
  %92 = icmp eq ptr %91, null
  br i1 %92, label %102, label %93

93:                                               ; preds = %89
  %94 = load i32, ptr %81, align 8
  br label %95

95:                                               ; preds = %93, %84
  %96 = phi i32 [ %94, %93 ], [ %82, %84 ]
  %97 = sub i32 %96, %51
  store i32 %97, ptr %81, align 8
  %98 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 %51
  store ptr %100, ptr %98, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %95, %89, %80
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %611

103:                                              ; preds = %95
  %104 = load ptr, ptr %15, align 8
  %105 = load i16, ptr %16, align 2
  %106 = zext i16 %105 to i32
  %107 = getelementptr i8, ptr %104, i32 %106
  tail call fastcc void @skb_postpull_rcsum(ptr noundef %0, ptr noundef %107, i32 noundef %51)
  %108 = load ptr, ptr %98, align 4
  %109 = load ptr, ptr %15, align 8
  %110 = ptrtoint ptr %108 to i32
  %111 = ptrtoint ptr %109 to i32
  %112 = sub i32 %110, %111
  %113 = trunc i32 %112 to i16
  store i16 %113, ptr %52, align 4
  store i16 %113, ptr %16, align 2
  %114 = load i16, ptr %53, align 8
  %115 = and i16 %114, -8193
  store i16 %115, ptr %53, align 8
  %116 = load ptr, ptr %3, align 8
  tail call fastcc void @__skb_tunnel_rx(ptr noundef %0, ptr noundef %116)
  %117 = tail call i32 @netif_rx(ptr noundef %0) #12
  br label %611

118:                                              ; preds = %39
  %119 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %120 = load i16, ptr %119, align 4
  %121 = zext i16 %120 to i32
  %122 = sub i16 %41, %120
  %123 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  store i16 %122, ptr %123, align 4
  %124 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  store i16 %122, ptr %124, align 4
  %125 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %43, i32 0, i32 1
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i16
  %128 = shl nuw nsw i16 %127, 3
  %129 = add i16 %41, 8
  %130 = add i16 %129, %128
  store i16 %130, ptr %16, align 2
  %131 = getelementptr i8, ptr %42, i32 %121
  %132 = ptrtoint ptr %43 to i32
  %133 = ptrtoint ptr %131 to i32
  %134 = sub i32 %132, %133
  %135 = trunc i32 %134 to i16
  %136 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  store i16 %135, ptr %136, align 2
  br label %611

137:                                              ; preds = %596, %24
  %138 = phi ptr [ %21, %24 ], [ %603, %596 ]
  %139 = phi ptr [ %20, %24 ], [ %602, %596 ]
  %140 = load i32, ptr %25, align 8
  %141 = load i32, ptr %26, align 4
  %142 = sub i32 %140, %141
  %143 = icmp ult i32 %142, 8
  br i1 %143, label %144, label %151, !prof !9

144:                                              ; preds = %137
  %145 = icmp ult i32 %140, 8
  br i1 %145, label %150, label %146, !prof !9

146:                                              ; preds = %144
  %147 = sub nuw nsw i32 8, %142
  %148 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %147) #12
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %146, %144
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %611

151:                                              ; preds = %146, %137
  %152 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %139, i32 0, i32 1
  %153 = load i8, ptr %152, align 1
  %154 = zext i8 %153 to i32
  %155 = shl nuw nsw i32 %154, 3
  %156 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %139, i32 0, i32 4
  %157 = load i32, ptr %156, align 1
  %158 = lshr i32 %157, 12
  %159 = and i32 %158, 15
  %160 = sub nsw i32 %155, %159
  %161 = or i32 %157, -16
  %162 = add nsw i32 %160, %161
  %163 = lshr i32 %157, 4
  %164 = and i32 %163, 15
  %165 = sub nuw nsw i32 16, %164
  %166 = icmp sgt i32 %162, -1
  br i1 %166, label %167, label %176, !prof !14

167:                                              ; preds = %151
  %168 = trunc i32 %162 to i16
  %169 = trunc i32 %165 to i16
  %170 = urem i16 %168, %169
  %171 = zext i16 %170 to i32
  %172 = trunc i32 %162 to i16
  %173 = trunc i32 %165 to i16
  %174 = udiv i16 %172, %173
  %175 = zext i16 %174 to i64
  br label %183

176:                                              ; preds = %151
  %177 = sext i32 %162 to i64
  %178 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %165, i64 %177) #13, !srcloc !15
  %179 = extractvalue { i64, i64 } %178, 0
  %180 = extractvalue { i64, i64 } %178, 1
  %181 = lshr i64 %179, 32
  %182 = trunc i64 %181 to i32
  br label %183

183:                                              ; preds = %176, %167
  %184 = phi i64 [ %175, %167 ], [ %180, %176 ]
  %185 = phi i32 [ %171, %167 ], [ %182, %176 ]
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = add i64 %184, 1
  %189 = icmp ugt i64 %188, 255
  br i1 %189, label %190, label %191

190:                                              ; preds = %187, %183
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %611

191:                                              ; preds = %187
  %192 = load i8, ptr %138, align 1
  %193 = zext i8 %192 to i64
  %194 = icmp ult i64 %188, %193
  br i1 %194, label %195, label %244

195:                                              ; preds = %191
  %196 = icmp eq ptr %6, null
  %197 = tail call ptr @llvm.thread.pointer() #12
  br i1 %196, label %218, label %198, !prof !9

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 1
  %200 = load volatile i32, ptr %199, align 4
  %201 = add i32 %200, 512
  store volatile i32 %201, ptr %199, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %202 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 33, i32 1
  %203 = load ptr, ptr %202, align 4
  %204 = ptrtoint ptr %203 to i32
  %205 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %206 = inttoptr i32 %205 to ptr
  %207 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %206) #9, !srcloc !11
  %208 = add i32 %207, %204
  %209 = inttoptr i32 %208 to ptr
  %210 = getelementptr inbounds %struct.ipstats_mib, ptr %209, i32 0, i32 1
  %211 = load i32, ptr %210, align 4
  %212 = add i32 %211, 1
  store i32 %212, ptr %210, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %213 = getelementptr [37 x i64], ptr %209, i32 0, i32 7
  %214 = load i64, ptr %213, align 8
  %215 = add i64 %214, 1
  store i64 %215, ptr %213, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %216 = load i32, ptr %210, align 4
  %217 = add i32 %216, 1
  store i32 %217, ptr %210, align 4
  tail call fastcc void @local_bh_enable()
  br label %218

218:                                              ; preds = %198, %195
  %219 = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 1
  %220 = load volatile i32, ptr %219, align 4
  %221 = add i32 %220, 512
  store volatile i32 %221, ptr %219, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %222 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %223 = ptrtoint ptr %222 to i32
  %224 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %225 = inttoptr i32 %224 to ptr
  %226 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %225) #9, !srcloc !11
  %227 = add i32 %226, %223
  %228 = inttoptr i32 %227 to ptr
  %229 = getelementptr inbounds %struct.ipstats_mib, ptr %228, i32 0, i32 1
  %230 = load i32, ptr %229, align 4
  %231 = add i32 %230, 1
  store i32 %231, ptr %229, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %232 = getelementptr [37 x i64], ptr %228, i32 0, i32 7
  %233 = load i64, ptr %232, align 8
  %234 = add i64 %233, 1
  store i64 %234, ptr %232, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %235 = load i32, ptr %229, align 4
  %236 = add i32 %235, 1
  store i32 %236, ptr %229, align 4
  tail call fastcc void @local_bh_enable()
  %237 = load ptr, ptr %15, align 8
  %238 = load i16, ptr %30, align 4
  %239 = zext i16 %238 to i32
  %240 = getelementptr i8, ptr %237, i32 %239
  %241 = ptrtoint ptr %138 to i32
  %242 = ptrtoint ptr %240 to i32
  %243 = sub i32 %241, %242
  tail call void @icmpv6_param_prob(ptr noundef %0, i8 noundef zeroext 0, i32 noundef %243) #12
  br label %611

244:                                              ; preds = %191
  %245 = load i8, ptr %27, align 2
  %246 = and i8 %245, 1
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %311, label %248

248:                                              ; preds = %244
  %249 = load ptr, ptr %28, align 4
  %250 = getelementptr inbounds %struct.skb_shared_info, ptr %249, i32 0, i32 10
  %251 = load volatile i32, ptr %250, align 4
  %252 = and i32 %251, 65535
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %304, label %254

254:                                              ; preds = %248
  %255 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 23, i32 noundef 0, i32 noundef 2592) #12
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %327, label %257

257:                                              ; preds = %254
  %258 = load i32, ptr %35, align 8
  %259 = and i32 %258, -2
  %260 = inttoptr i32 %259 to ptr
  %261 = getelementptr inbounds %struct.rt6_info, ptr %260, i32 0, i32 6
  %262 = load ptr, ptr %261, align 4
  %263 = icmp eq ptr %262, null
  %264 = tail call ptr @llvm.thread.pointer() #12
  br i1 %263, label %285, label %265, !prof !9

265:                                              ; preds = %257
  %266 = getelementptr inbounds %struct.thread_info, ptr %264, i32 0, i32 1
  %267 = load volatile i32, ptr %266, align 4
  %268 = add i32 %267, 512
  store volatile i32 %268, ptr %266, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %269 = getelementptr inbounds %struct.inet6_dev, ptr %262, i32 0, i32 33, i32 1
  %270 = load ptr, ptr %269, align 4
  %271 = ptrtoint ptr %270 to i32
  %272 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %273 = inttoptr i32 %272 to ptr
  %274 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %273) #9, !srcloc !11
  %275 = add i32 %274, %271
  %276 = inttoptr i32 %275 to ptr
  %277 = getelementptr inbounds %struct.ipstats_mib, ptr %276, i32 0, i32 1
  %278 = load i32, ptr %277, align 4
  %279 = add i32 %278, 1
  store i32 %279, ptr %277, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %280 = getelementptr [37 x i64], ptr %276, i32 0, i32 14
  %281 = load i64, ptr %280, align 8
  %282 = add i64 %281, 1
  store i64 %282, ptr %280, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %283 = load i32, ptr %277, align 4
  %284 = add i32 %283, 1
  store i32 %284, ptr %277, align 4
  tail call fastcc void @local_bh_enable()
  br label %285

285:                                              ; preds = %265, %257
  %286 = getelementptr inbounds %struct.thread_info, ptr %264, i32 0, i32 1
  %287 = load volatile i32, ptr %286, align 4
  %288 = add i32 %287, 512
  store volatile i32 %288, ptr %286, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %289 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %290 = ptrtoint ptr %289 to i32
  %291 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %292 = inttoptr i32 %291 to ptr
  %293 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %292) #9, !srcloc !11
  %294 = add i32 %293, %290
  %295 = inttoptr i32 %294 to ptr
  %296 = getelementptr inbounds %struct.ipstats_mib, ptr %295, i32 0, i32 1
  %297 = load i32, ptr %296, align 4
  %298 = add i32 %297, 1
  store i32 %298, ptr %296, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %299 = getelementptr [37 x i64], ptr %295, i32 0, i32 14
  %300 = load i64, ptr %299, align 8
  %301 = add i64 %300, 1
  store i64 %301, ptr %299, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %302 = load i32, ptr %296, align 4
  %303 = add i32 %302, 1
  store i32 %303, ptr %296, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %611

304:                                              ; preds = %248
  %305 = load volatile i32, ptr %250, align 4
  %306 = and i32 %305, 65535
  %307 = ashr i32 %305, 16
  %308 = sub nsw i32 %306, %307
  %309 = icmp ne i32 %308, 1
  %310 = zext i1 %309 to i32
  br label %311

311:                                              ; preds = %304, %244
  %312 = phi i32 [ %310, %304 ], [ 0, %244 ]
  %313 = load ptr, ptr %29, align 4
  %314 = load ptr, ptr %15, align 8
  %315 = ptrtoint ptr %313 to i32
  %316 = ptrtoint ptr %314 to i32
  %317 = sub i32 %315, %316
  %318 = tail call i32 @llvm.usub.sat.i32(i32 23, i32 %317) #12
  %319 = or i32 %318, %312
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %327, label %321

321:                                              ; preds = %311
  %322 = add nuw nsw i32 %318, 63
  %323 = and i32 %322, 64
  %324 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %323, i32 noundef 0, i32 noundef 2592) #12
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %327, label %326, !prof !14

326:                                              ; preds = %321
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %611

327:                                              ; preds = %321, %311, %254
  %328 = load ptr, ptr %15, align 8
  %329 = load i16, ptr %16, align 2
  %330 = zext i16 %329 to i32
  %331 = getelementptr i8, ptr %328, i32 %330
  %332 = trunc i64 %184 to i8
  %333 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %331, i32 0, i32 4
  %334 = load i32, ptr %333, align 1
  %335 = trunc i32 %334 to i8
  %336 = lshr i8 %335, 4
  %337 = and i8 %335, 15
  %338 = tail call i32 @ipv6_rpl_srh_size(i8 noundef zeroext %332, i8 noundef zeroext %336, i8 noundef zeroext %337) #12
  %339 = load i32, ptr %25, align 8
  %340 = load i32, ptr %26, align 4
  %341 = sub i32 %339, %340
  %342 = icmp ugt i32 %338, %341
  br i1 %342, label %343, label %350, !prof !9

343:                                              ; preds = %327
  %344 = icmp ult i32 %339, %338
  br i1 %344, label %349, label %345, !prof !9

345:                                              ; preds = %343
  %346 = sub i32 %338, %341
  %347 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %346) #12
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %350

349:                                              ; preds = %345, %343
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %611

350:                                              ; preds = %345, %327
  %351 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %331, i32 0, i32 3
  %352 = load i8, ptr %351, align 1
  %353 = add i8 %352, -1
  store i8 %353, ptr %351, align 1
  %354 = zext i8 %353 to i64
  %355 = sub nsw i64 %184, %354
  %356 = trunc i64 %355 to i32
  %357 = trunc i64 %184 to i32
  %358 = shl nsw i32 %357, 4
  %359 = add i32 %358, 40
  %360 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %359, i32 2) #12
  %361 = extractvalue { i32, i1 } %360, 1
  br i1 %361, label %366, label %362, !prof !9

362:                                              ; preds = %350
  %363 = extractvalue { i32, i1 } %360, 0
  %364 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %363, i32 noundef 2848) #14
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %367, !prof !9

366:                                              ; preds = %362, %350
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %611

367:                                              ; preds = %362
  %368 = load ptr, ptr %15, align 8
  %369 = load i16, ptr %30, align 4
  %370 = zext i16 %369 to i32
  %371 = getelementptr i8, ptr %368, i32 %370
  %372 = getelementptr inbounds %struct.ipv6hdr, ptr %371, i32 0, i32 6
  tail call void @ipv6_rpl_srh_decompress(ptr noundef nonnull %364, ptr noundef %331, ptr noundef %372, i8 noundef zeroext %332) #12
  %373 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %364, i32 0, i32 1
  %374 = load i8, ptr %373, align 1
  %375 = zext i8 %374 to i32
  %376 = shl nuw nsw i32 %375, 3
  %377 = add nuw nsw i32 %376, 8
  %378 = getelementptr i8, ptr %364, i32 %377
  %379 = load ptr, ptr %15, align 8
  %380 = load i16, ptr %30, align 4
  %381 = zext i16 %380 to i32
  %382 = getelementptr i8, ptr %379, i32 %381
  %383 = getelementptr inbounds %struct.ipv6hdr, ptr %382, i32 0, i32 6
  %384 = tail call i32 @__ipv6_addr_type(ptr noundef %383) #12
  %385 = and i32 %384, 2
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %393

387:                                              ; preds = %367
  %388 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %364, i32 0, i32 5
  %389 = getelementptr [0 x %struct.in6_addr], ptr %388, i32 0, i32 %356
  %390 = tail call i32 @__ipv6_addr_type(ptr noundef %389) #12
  %391 = and i32 %390, 2
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %394, label %393

393:                                              ; preds = %387, %367
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  tail call void @kfree(ptr noundef nonnull %364) #12
  br label %611

394:                                              ; preds = %387
  %395 = add i8 %332, 1
  %396 = tail call i32 @ipv6_chk_rpl_srh_loop(ptr noundef nonnull @init_net, ptr noundef %388, i8 noundef zeroext %395) #12
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %400, label %398

398:                                              ; preds = %394
  %399 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %0, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null, ptr noundef %399) #12
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  tail call void @kfree(ptr noundef nonnull %364) #12
  br label %611

400:                                              ; preds = %394
  %401 = load ptr, ptr %15, align 8
  %402 = load i16, ptr %30, align 4
  %403 = zext i16 %402 to i32
  %404 = getelementptr i8, ptr %401, i32 %403
  %405 = getelementptr inbounds %struct.ipv6hdr, ptr %404, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef align 4 dereferenceable(16) %405, i32 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %405, ptr noundef align 8 dereferenceable(16) %389, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %389, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 16, i1 false)
  %406 = load ptr, ptr %15, align 8
  %407 = load i16, ptr %30, align 4
  %408 = zext i16 %407 to i32
  %409 = getelementptr i8, ptr %406, i32 %408
  %410 = getelementptr inbounds %struct.ipv6hdr, ptr %409, i32 0, i32 6
  tail call void @ipv6_rpl_srh_compress(ptr noundef %378, ptr noundef nonnull %364, ptr noundef %410, i8 noundef zeroext %332) #12
  %411 = load ptr, ptr %15, align 8
  %412 = load i16, ptr %30, align 4
  %413 = zext i16 %412 to i32
  %414 = getelementptr i8, ptr %411, i32 %413
  %415 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %331, i32 0, i32 1
  %416 = load i8, ptr %415, align 1
  %417 = zext i8 %416 to i32
  %418 = shl nuw nsw i32 %417, 3
  %419 = add nuw nsw i32 %418, 8
  %420 = tail call ptr @skb_pull(ptr noundef %0, i32 noundef %419) #12
  %421 = load i16, ptr %31, align 8
  %422 = lshr i16 %421, 5
  %423 = trunc i16 %422 to i2
  switch i2 %423, label %445 [
    i2 -2, label %424
    i2 -1, label %433
  ]

424:                                              ; preds = %400
  %425 = load i8, ptr %415, align 1
  %426 = zext i8 %425 to i32
  %427 = shl nuw nsw i32 %426, 3
  %428 = add nuw nsw i32 %427, 48
  %429 = load i32, ptr %32, align 4
  %430 = sub i32 0, %429
  %431 = tail call i32 @csum_partial(ptr noundef %414, i32 noundef %428, i32 noundef %430) #12
  %432 = sub i32 0, %431
  store i32 %432, ptr %32, align 4
  br label %445

433:                                              ; preds = %400
  %434 = load i16, ptr %32, align 4
  %435 = zext i16 %434 to i32
  %436 = load ptr, ptr %29, align 4
  %437 = load ptr, ptr %15, align 8
  %438 = ptrtoint ptr %436 to i32
  %439 = ptrtoint ptr %437 to i32
  %440 = sub i32 %435, %438
  %441 = add i32 %440, %439
  %442 = icmp slt i32 %441, 0
  br i1 %442, label %443, label %445

443:                                              ; preds = %433
  %444 = and i16 %421, -97
  store i16 %444, ptr %31, align 8
  br label %445

445:                                              ; preds = %443, %433, %424, %400
  %446 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %378, i32 0, i32 1
  %447 = load i8, ptr %446, align 1
  %448 = zext i8 %447 to i32
  %449 = shl nuw nsw i32 %448, 3
  %450 = add nuw nsw i32 %449, 48
  %451 = tail call ptr @skb_push(ptr noundef %0, i32 noundef %450) #12
  %452 = load ptr, ptr %29, align 4
  %453 = load ptr, ptr %15, align 8
  %454 = ptrtoint ptr %452 to i32
  %455 = ptrtoint ptr %453 to i32
  %456 = sub i32 %454, %455
  %457 = trunc i32 %456 to i16
  store i16 %457, ptr %30, align 4
  %458 = load i16, ptr %33, align 2
  %459 = icmp eq i16 %458, -1
  br i1 %459, label %475, label %460

460:                                              ; preds = %445
  %461 = zext i16 %458 to i32
  %462 = getelementptr i8, ptr %453, i32 %461
  %463 = load i16, ptr %34, align 8
  %464 = zext i16 %463 to i32
  %465 = sub i16 %457, %463
  store i16 %465, ptr %33, align 2
  %466 = zext i16 %465 to i32
  %467 = getelementptr i8, ptr %453, i32 %466
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %467, ptr align 1 %462, i32 %464, i1 false) #12
  %468 = load ptr, ptr %29, align 4
  %469 = load ptr, ptr %15, align 8
  %470 = load i16, ptr %30, align 4
  %471 = ptrtoint ptr %468 to i32
  %472 = ptrtoint ptr %469 to i32
  %473 = sub i32 %471, %472
  %474 = trunc i32 %473 to i16
  br label %475

475:                                              ; preds = %460, %445
  %476 = phi i16 [ %457, %445 ], [ %474, %460 ]
  %477 = phi i16 [ %457, %445 ], [ %470, %460 ]
  %478 = phi ptr [ %453, %445 ], [ %469, %460 ]
  %479 = add i16 %476, 40
  store i16 %479, ptr %16, align 2
  %480 = zext i16 %477 to i32
  %481 = getelementptr i8, ptr %478, i32 %480
  tail call void @llvm.memmove.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %481, ptr noundef align 4 dereferenceable(40) %414, i32 40, i1 false)
  %482 = load ptr, ptr %15, align 8
  %483 = load i16, ptr %16, align 2
  %484 = zext i16 %483 to i32
  %485 = getelementptr i8, ptr %482, i32 %484
  %486 = load i8, ptr %446, align 1
  %487 = zext i8 %486 to i32
  %488 = shl nuw nsw i32 %487, 3
  %489 = add nuw nsw i32 %488, 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %485, ptr noundef align 8 %378, i32 %489, i1 false)
  %490 = load i32, ptr %25, align 8
  %491 = trunc i32 %490 to i16
  %492 = add i16 %491, -40
  %493 = tail call i16 @llvm.bswap.i16(i16 %492)
  %494 = load ptr, ptr %15, align 8
  %495 = load i16, ptr %30, align 4
  %496 = zext i16 %495 to i32
  %497 = getelementptr i8, ptr %494, i32 %496
  %498 = getelementptr inbounds %struct.ipv6hdr, ptr %497, i32 0, i32 2
  store i16 %493, ptr %498, align 4
  %499 = load i16, ptr %31, align 8
  %500 = and i16 %499, 96
  %501 = icmp eq i16 %500, 64
  br i1 %501, label %502, label %517

502:                                              ; preds = %475
  %503 = load i8, ptr %446, align 1
  %504 = zext i8 %503 to i32
  %505 = shl nuw nsw i32 %504, 3
  %506 = add nuw nsw i32 %505, 48
  %507 = load ptr, ptr %15, align 8
  %508 = load i16, ptr %30, align 4
  %509 = zext i16 %508 to i32
  %510 = getelementptr i8, ptr %507, i32 %509
  %511 = load i32, ptr %32, align 4
  %512 = tail call i32 @csum_partial(ptr noundef %510, i32 noundef %506, i32 noundef 0) #12
  %513 = add i32 %512, %511
  %514 = icmp ult i32 %513, %512
  %515 = zext i1 %514 to i32
  %516 = add i32 %513, %515
  store i32 %516, ptr %32, align 4
  br label %517

517:                                              ; preds = %502, %475
  tail call void @kfree(ptr noundef nonnull %364) #12
  %518 = load i32, ptr %35, align 8
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %527, label %520

520:                                              ; preds = %517
  %521 = and i32 %518, 1
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %526

523:                                              ; preds = %520
  %524 = and i32 %518, -2
  %525 = inttoptr i32 %524 to ptr
  tail call void @dst_release(ptr noundef %525) #12
  br label %526

526:                                              ; preds = %523, %520
  store i32 0, ptr %35, align 8
  br label %527

527:                                              ; preds = %526, %517
  tail call void @ip6_route_input(ptr noundef %0) #12
  %528 = load i32, ptr %35, align 8
  %529 = and i32 %528, -2
  %530 = inttoptr i32 %529 to ptr
  %531 = getelementptr inbounds %struct.dst_entry, ptr %530, i32 0, i32 15
  %532 = load i16, ptr %531, align 4
  %533 = icmp eq i16 %532, 0
  br i1 %533, label %539, label %534

534:                                              ; preds = %527
  %535 = inttoptr i32 %529 to ptr
  %536 = getelementptr inbounds %struct.dst_entry, ptr %535, i32 0, i32 5
  %537 = load ptr, ptr %536, align 4
  %538 = tail call i32 %537(ptr noundef %0) #12
  br label %611

539:                                              ; preds = %527
  %540 = load ptr, ptr %530, align 4
  %541 = getelementptr inbounds %struct.net_device, ptr %540, i32 0, i32 14
  %542 = load i32, ptr %541, align 8
  %543 = and i32 %542, 8
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %606, label %545

545:                                              ; preds = %539
  %546 = load ptr, ptr %15, align 8
  %547 = load i16, ptr %30, align 4
  %548 = zext i16 %547 to i32
  %549 = getelementptr i8, ptr %546, i32 %548
  %550 = getelementptr inbounds %struct.ipv6hdr, ptr %549, i32 0, i32 4
  %551 = load i8, ptr %550, align 1
  %552 = icmp ult i8 %551, 2
  br i1 %552, label %553, label %596

553:                                              ; preds = %545
  %554 = icmp eq ptr %6, null
  %555 = tail call ptr @llvm.thread.pointer() #12
  br i1 %554, label %576, label %556, !prof !9

556:                                              ; preds = %553
  %557 = getelementptr inbounds %struct.thread_info, ptr %555, i32 0, i32 1
  %558 = load volatile i32, ptr %557, align 4
  %559 = add i32 %558, 512
  store volatile i32 %559, ptr %557, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %560 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 33, i32 1
  %561 = load ptr, ptr %560, align 4
  %562 = ptrtoint ptr %561 to i32
  %563 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %564 = inttoptr i32 %563 to ptr
  %565 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %564) #9, !srcloc !11
  %566 = add i32 %565, %562
  %567 = inttoptr i32 %566 to ptr
  %568 = getelementptr inbounds %struct.ipstats_mib, ptr %567, i32 0, i32 1
  %569 = load i32, ptr %568, align 4
  %570 = add i32 %569, 1
  store i32 %570, ptr %568, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %571 = getelementptr [37 x i64], ptr %567, i32 0, i32 7
  %572 = load i64, ptr %571, align 8
  %573 = add i64 %572, 1
  store i64 %573, ptr %571, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %574 = load i32, ptr %568, align 4
  %575 = add i32 %574, 1
  store i32 %575, ptr %568, align 4
  tail call fastcc void @local_bh_enable()
  br label %576

576:                                              ; preds = %556, %553
  %577 = getelementptr inbounds %struct.thread_info, ptr %555, i32 0, i32 1
  %578 = load volatile i32, ptr %577, align 4
  %579 = add i32 %578, 512
  store volatile i32 %579, ptr %577, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %580 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %581 = ptrtoint ptr %580 to i32
  %582 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %583 = inttoptr i32 %582 to ptr
  %584 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %583) #9, !srcloc !11
  %585 = add i32 %584, %581
  %586 = inttoptr i32 %585 to ptr
  %587 = getelementptr inbounds %struct.ipstats_mib, ptr %586, i32 0, i32 1
  %588 = load i32, ptr %587, align 4
  %589 = add i32 %588, 1
  store i32 %589, ptr %587, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %590 = getelementptr [37 x i64], ptr %586, i32 0, i32 7
  %591 = load i64, ptr %590, align 8
  %592 = add i64 %591, 1
  store i64 %592, ptr %590, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %593 = load i32, ptr %587, align 4
  %594 = add i32 %593, 1
  store i32 %594, ptr %587, align 4
  tail call fastcc void @local_bh_enable()
  %595 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %0, i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null, ptr noundef %595) #12
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %611

596:                                              ; preds = %545
  %597 = add i8 %551, -1
  store i8 %597, ptr %550, align 1
  %598 = tail call ptr @skb_pull(ptr noundef %0, i32 noundef 40) #12
  %599 = load ptr, ptr %15, align 8
  %600 = load i16, ptr %16, align 2
  %601 = zext i16 %600 to i32
  %602 = getelementptr i8, ptr %599, i32 %601
  %603 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %602, i32 0, i32 3
  %604 = load i8, ptr %603, align 1
  %605 = icmp eq i8 %604, 0
  br i1 %605, label %37, label %137

606:                                              ; preds = %539
  %607 = inttoptr i32 %529 to ptr
  %608 = getelementptr inbounds %struct.dst_entry, ptr %607, i32 0, i32 5
  %609 = load ptr, ptr %608, align 4
  %610 = tail call i32 %609(ptr noundef %0) #12
  br label %611

611:                                              ; preds = %606, %576, %534, %398, %393, %366, %349, %326, %285, %218, %190, %150, %118, %103, %102, %36
  %612 = phi i32 [ 1, %118 ], [ -1, %190 ], [ -1, %218 ], [ -1, %285 ], [ -1, %366 ], [ -1, %393 ], [ -1, %398 ], [ -1, %534 ], [ -1, %576 ], [ -1, %606 ], [ -1, %349 ], [ -1, %326 ], [ -1, %150 ], [ -1, %36 ], [ -1, %103 ], [ -1, %102 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  ret i32 %612
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmpv6_param_prob(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_input_addr(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_home_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_route_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @skb_postpull_rcsum(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %5 = load i16, ptr %4, align 8
  %6 = lshr i16 %5, 5
  %7 = trunc i16 %6 to i2
  switch i2 %7, label %29 [
    i2 -2, label %8
    i2 -1, label %14
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 0, %10
  %12 = tail call i32 @csum_partial(ptr noundef %1, i32 noundef %2, i32 noundef %11) #12
  %13 = sub i32 0, %12
  store i32 %13, ptr %9, align 4
  br label %29

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %21 = load ptr, ptr %20, align 8
  %22 = ptrtoint ptr %19 to i32
  %23 = ptrtoint ptr %21 to i32
  %24 = sub i32 %17, %22
  %25 = add i32 %24, %23
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = and i16 %5, -97
  store i16 %28, ptr %4, align 8
  br label %29

29:                                               ; preds = %27, %14, %8, %3
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__skb_tunnel_rx(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 256
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 7
  store i32 0, ptr %9, align 8
  %10 = and i16 %5, -769
  store i16 %10, ptr %4, align 8
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  store i16 0, ptr %12, align 4
  tail call void @skb_scrub_packet(ptr noundef %0, i1 noundef zeroext false) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_scrub_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_rpl_srh_size(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_rpl_srh_decompress(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_rpl_srh_loop(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_rpl_srh_compress(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipv6_destopt_rcv(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 69
  %5 = load volatile ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %11 to i32
  %15 = ptrtoint ptr %13 to i32
  %16 = sub i32 %14, %15
  %17 = add i32 %16, 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %19, %21
  %23 = icmp ugt i32 %17, %22
  br i1 %23, label %24, label %39, !prof !9

24:                                               ; preds = %1
  %25 = icmp ult i32 %19, %17
  br i1 %25, label %72, label %26, !prof !9

26:                                               ; preds = %24
  %27 = sub i32 %17, %22
  %28 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %27) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %72, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %6, align 8
  %32 = load i16, ptr %8, align 2
  %33 = load ptr, ptr %12, align 4
  %34 = load i32, ptr %18, align 8
  %35 = load i32, ptr %20, align 4
  %36 = zext i16 %32 to i32
  %37 = ptrtoint ptr %33 to i32
  %38 = sub i32 %34, %35
  br label %39

39:                                               ; preds = %30, %1
  %40 = phi i32 [ %38, %30 ], [ %22, %1 ]
  %41 = phi i32 [ %37, %30 ], [ %15, %1 ]
  %42 = phi i32 [ %36, %30 ], [ %10, %1 ]
  %43 = phi i32 [ %34, %30 ], [ %19, %1 ]
  %44 = phi i16 [ %32, %30 ], [ %9, %1 ]
  %45 = phi ptr [ %31, %30 ], [ %7, %1 ]
  %46 = getelementptr i8, ptr %45, i32 %42
  %47 = ptrtoint ptr %46 to i32
  %48 = sub i32 %47, %41
  %49 = getelementptr i8, ptr %46, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 3
  %53 = add nuw nsw i32 %52, 8
  %54 = add i32 %53, %48
  %55 = icmp ugt i32 %54, %40
  br i1 %55, label %56, label %115, !prof !9

56:                                               ; preds = %39
  %57 = icmp ult i32 %43, %54
  br i1 %57, label %72, label %58, !prof !9

58:                                               ; preds = %56
  %59 = sub i32 %54, %40
  %60 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %59) #12
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %6, align 8
  %64 = load i16, ptr %8, align 2
  %65 = zext i16 %64 to i32
  %66 = getelementptr i8, ptr %63, i32 %65
  %67 = getelementptr i8, ptr %66, i32 1
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 3
  %71 = add nuw nsw i32 %70, 8
  br label %115

72:                                               ; preds = %58, %56, %26, %24
  %73 = icmp eq ptr %5, null
  %74 = tail call ptr @llvm.thread.pointer() #12
  br i1 %73, label %95, label %75, !prof !9

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %77 = load volatile i32, ptr %76, align 4
  %78 = add i32 %77, 512
  store volatile i32 %78, ptr %76, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %79 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 33, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = ptrtoint ptr %80 to i32
  %82 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %83 = inttoptr i32 %82 to ptr
  %84 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %83) #9, !srcloc !11
  %85 = add i32 %84, %81
  %86 = inttoptr i32 %85 to ptr
  %87 = getelementptr inbounds %struct.ipstats_mib, ptr %86, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %90 = getelementptr [37 x i64], ptr %86, i32 0, i32 7
  %91 = load i64, ptr %90, align 8
  %92 = add i64 %91, 1
  store i64 %92, ptr %90, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %93 = load i32, ptr %87, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %87, align 4
  tail call fastcc void @local_bh_enable()
  br label %95

95:                                               ; preds = %75, %72
  %96 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %97 = load volatile i32, ptr %96, align 4
  %98 = add i32 %97, 512
  store volatile i32 %98, ptr %96, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %99 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %100 = ptrtoint ptr %99 to i32
  %101 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %102 = inttoptr i32 %101 to ptr
  %103 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %102) #9, !srcloc !11
  %104 = add i32 %103, %100
  %105 = inttoptr i32 %104 to ptr
  %106 = getelementptr inbounds %struct.ipstats_mib, ptr %105, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %106, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %109 = getelementptr [37 x i64], ptr %105, i32 0, i32 7
  %110 = load i64, ptr %109, align 8
  %111 = add i64 %110, 1
  store i64 %111, ptr %109, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %112 = load i32, ptr %106, align 4
  %113 = add i32 %112, 1
  store i32 %113, ptr %106, align 4
  tail call fastcc void @local_bh_enable()
  br label %114

114:                                              ; preds = %115, %95
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %175

115:                                              ; preds = %62, %39
  %116 = phi i32 [ %71, %62 ], [ %53, %39 ]
  %117 = phi i16 [ %64, %62 ], [ %44, %39 ]
  %118 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 33), align 64
  %119 = icmp sgt i32 %116, %118
  br i1 %119, label %114, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %122 = load i16, ptr %121, align 4
  %123 = sub i16 %117, %122
  %124 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 10
  store i16 %123, ptr %124, align 2
  %125 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  store i16 %123, ptr %125, align 4
  %126 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 31), align 8
  %127 = tail call fastcc zeroext i1 @ip6_parse_tlv(i1 noundef zeroext false, ptr noundef %0, i32 noundef %126)
  br i1 %127, label %128, label %133

128:                                              ; preds = %120
  %129 = load i16, ptr %8, align 2
  %130 = trunc i32 %116 to i16
  %131 = add i16 %129, %130
  store i16 %131, ptr %8, align 2
  %132 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  store i16 %123, ptr %132, align 2
  br label %175

133:                                              ; preds = %120
  %134 = icmp eq ptr %5, null
  %135 = tail call ptr @llvm.thread.pointer() #12
  br i1 %134, label %156, label %136, !prof !9

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 1
  %138 = load volatile i32, ptr %137, align 4
  %139 = add i32 %138, 512
  store volatile i32 %139, ptr %137, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %140 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 33, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = ptrtoint ptr %141 to i32
  %143 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %144 = inttoptr i32 %143 to ptr
  %145 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %144) #9, !srcloc !11
  %146 = add i32 %145, %142
  %147 = inttoptr i32 %146 to ptr
  %148 = getelementptr inbounds %struct.ipstats_mib, ptr %147, i32 0, i32 1
  %149 = load i32, ptr %148, align 4
  %150 = add i32 %149, 1
  store i32 %150, ptr %148, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %151 = getelementptr [37 x i64], ptr %147, i32 0, i32 7
  %152 = load i64, ptr %151, align 8
  %153 = add i64 %152, 1
  store i64 %153, ptr %151, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %154 = load i32, ptr %148, align 4
  %155 = add i32 %154, 1
  store i32 %155, ptr %148, align 4
  tail call fastcc void @local_bh_enable()
  br label %156

156:                                              ; preds = %136, %133
  %157 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 1
  %158 = load volatile i32, ptr %157, align 4
  %159 = add i32 %158, 512
  store volatile i32 %159, ptr %157, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %160 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %161 = ptrtoint ptr %160 to i32
  %162 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %163 = inttoptr i32 %162 to ptr
  %164 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %163) #9, !srcloc !11
  %165 = add i32 %164, %161
  %166 = inttoptr i32 %165 to ptr
  %167 = getelementptr inbounds %struct.ipstats_mib, ptr %166, i32 0, i32 1
  %168 = load i32, ptr %167, align 4
  %169 = add i32 %168, 1
  store i32 %169, ptr %167, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !12
  %170 = getelementptr [37 x i64], ptr %166, i32 0, i32 7
  %171 = load i64, ptr %170, align 8
  %172 = add i64 %171, 1
  store i64 %172, ptr %170, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %173 = load i32, ptr %167, align 4
  %174 = add i32 %173, 1
  store i32 %174, ptr %167, align 4
  tail call fastcc void @local_bh_enable()
  br label %175

175:                                              ; preds = %156, %128, %114
  %176 = phi i32 [ -1, %114 ], [ 1, %128 ], [ -1, %156 ]
  ret i32 %176
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dst_discard(ptr noundef %0) #7 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @dst_discard_out(ptr noundef nonnull @init_net, ptr noundef %3, ptr noundef %0) #12
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_discard_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioam6_namespace(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ioam6_fill_trace_data(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148855852}
!11 = !{i64 392974}
!12 = !{i64 2149403253}
!13 = !{i64 2149403554}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2148394398, i64 2148394678, i64 2148395012, i64 2148395346}
