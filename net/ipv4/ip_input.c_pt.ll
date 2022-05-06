; ModuleID = '/llk/IR/net/ipv4/ip_input.c_pt.bc'
source_filename = "../net/ipv4/ip_input.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_local_deliver:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_local_deliver\22\09\09\09\09\09"
module asm "__kstrtabns_ip_local_deliver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
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
%struct.ip_ra_chain = type { ptr, ptr, %union.anon.52, %struct.callback_head }
%union.anon.52 = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.sock_common = type { %union.anon.11, %union.anon.13, %union.anon.14, i16, i8, i8, i32, %union.anon.16, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.108, [0 x i32], %union.anon.109, i16, i16, %union.anon.110, %struct.refcount_struct, [0 x i32], %union.anon.111 }
%union.anon.11 = type { i64 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { i32 }
%union.anon.16 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.54 }
%union.anon.54 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { %struct.hlist_node }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
%struct.anon.15 = type { i16, i16 }
%struct.net_protocol = type { ptr, ptr, ptr, ptr, i8 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.66, i32, %struct.list_head, ptr }
%union.anon.66 = type { %struct.in6_addr }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.in_device = type { ptr, %struct.netdevice_tracker, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }

@inet_protos = external dso_local global [256 x ptr], align 4
@__kstrtab_ip_local_deliver = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_local_deliver = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_local_deliver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_local_deliver to i32), ptr @__kstrtab_ip_local_deliver, ptr @__kstrtabns_ip_local_deliver }, section "___ksymtab+ip_local_deliver", align 4
@init_net = external dso_local global %struct.net, align 64
@.str.2 = private unnamed_addr constant [42 x i8] c"\016IPv4: source route option %pI4 -> %pI4\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ip_local_deliver], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ip_call_ra_chain(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = getelementptr inbounds %struct.iphdr, ptr %7, i32 0, i32 6
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 8), align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %62, label %14

14:                                               ; preds = %1
  %15 = zext i8 %9 to i16
  %16 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 17
  br label %17

17:                                               ; preds = %54, %14
  %18 = phi ptr [ %12, %14 ], [ %56, %54 ]
  %19 = phi ptr [ null, %14 ], [ %55, %54 ]
  %20 = getelementptr inbounds %struct.ip_ra_chain, ptr %18, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %54, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 2
  %25 = getelementptr inbounds %struct.anon.15, ptr %24, i32 0, i32 1
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, %15
  br i1 %27, label %28, label %54

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %16, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %32, %28
  %36 = load ptr, ptr %2, align 8
  %37 = load i16, ptr %4, align 4
  %38 = zext i16 %37 to i32
  %39 = getelementptr i8, ptr %36, i32 %38
  %40 = getelementptr inbounds %struct.iphdr, ptr %39, i32 0, i32 4
  %41 = load i16, ptr %40, align 2
  %42 = and i16 %41, -193
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = tail call i32 @ip_defrag(ptr noundef nonnull @init_net, ptr noundef %0, i32 noundef 1) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %44, %35
  %48 = icmp eq ptr %19, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %47
  %50 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #9
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @raw_rcv(ptr noundef nonnull %19, ptr noundef nonnull %50) #9
  br label %54

54:                                               ; preds = %52, %49, %47, %32, %23, %17
  %55 = phi ptr [ %19, %32 ], [ %19, %23 ], [ %19, %17 ], [ %21, %49 ], [ %21, %52 ], [ %21, %47 ]
  %56 = load volatile ptr, ptr %18, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %17

58:                                               ; preds = %54
  %59 = icmp eq ptr %55, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %58
  %61 = tail call i32 @raw_rcv(ptr noundef nonnull %55, ptr noundef %0) #9
  br label %62

62:                                               ; preds = %60, %58, %44, %1
  %63 = phi i1 [ true, %60 ], [ false, %58 ], [ false, %1 ], [ true, %44 ]
  ret i1 %63
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_defrag(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_rcv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_protocol_deliver_rcu(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @raw_local_deliver(ptr noundef %1, i32 noundef %2) #9
  %5 = getelementptr [256 x ptr], ptr @inet_protos, i32 0, i32 %2
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %84, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  br label %17

11:                                               ; preds = %58
  %12 = sub i32 0, %61
  %13 = tail call i32 @raw_local_deliver(ptr noundef %1, i32 noundef %12) #9
  %14 = getelementptr [256 x ptr], ptr @inet_protos, i32 0, i32 %12
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %84, label %17

17:                                               ; preds = %11, %8
  %18 = phi ptr [ %6, %8 ], [ %15, %11 ]
  %19 = getelementptr inbounds %struct.net_protocol, ptr %18, i32 0, i32 4
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %17
  %24 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13), align 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i8, ptr %10, align 1
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %30, %27
  %35 = load i32, ptr %9, align 8
  %36 = and i32 %35, -2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %34
  %39 = inttoptr i32 %36 to ptr
  %40 = getelementptr inbounds %struct.dst_entry, ptr %39, i32 0, i32 7
  %41 = load i16, ptr %40, align 4
  %42 = and i16 %41, 4
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %54, label %58

44:                                               ; preds = %23
  %45 = load i32, ptr %9, align 8
  %46 = and i32 %45, -2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = inttoptr i32 %46 to ptr
  %50 = getelementptr inbounds %struct.dst_entry, ptr %49, i32 0, i32 7
  %51 = load i16, ptr %50, align 4
  %52 = and i16 %51, 4
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48, %44, %38, %34
  %55 = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 2) #9
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #9
  br label %168

58:                                               ; preds = %54, %48, %38, %30, %17
  %59 = getelementptr inbounds %struct.net_protocol, ptr %18, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 %60(ptr noundef %1) #9
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %11, label %63

63:                                               ; preds = %58
  %64 = tail call ptr @llvm.thread.pointer() #9
  %65 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %66 = load volatile i32, ptr %65, align 4
  %67 = add i32 %66, 512
  store volatile i32 %67, ptr %65, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %68 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30
  %69 = load ptr, ptr %68, align 8
  %70 = ptrtoint ptr %69 to i32
  %71 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %72 = inttoptr i32 %71 to ptr
  %73 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %72) #6, !srcloc !10
  %74 = add i32 %73, %70
  %75 = inttoptr i32 %74 to ptr
  %76 = getelementptr inbounds %struct.ipstats_mib, ptr %75, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  %79 = getelementptr [37 x i64], ptr %75, i32 0, i32 3
  %80 = load i64, ptr %79, align 8
  %81 = add i64 %80, 1
  store i64 %81, ptr %79, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !12
  %82 = load i32, ptr %76, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %76, align 4
  tail call fastcc void @local_bh_enable()
  br label %168

84:                                               ; preds = %11, %3
  %85 = phi i32 [ %4, %3 ], [ %13, %11 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %147

87:                                               ; preds = %84
  %88 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %89 = and i8 %88, 1
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %87
  %92 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13), align 16
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  %96 = load i8, ptr %95, align 1
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %124, label %99

99:                                               ; preds = %94, %91
  %100 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, -2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %121, label %104

104:                                              ; preds = %99
  %105 = inttoptr i32 %102 to ptr
  %106 = getelementptr inbounds %struct.dst_entry, ptr %105, i32 0, i32 7
  %107 = load i16, ptr %106, align 4
  %108 = and i16 %107, 4
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %121, label %124

110:                                              ; preds = %87
  %111 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, -2
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %110
  %116 = inttoptr i32 %113 to ptr
  %117 = getelementptr inbounds %struct.dst_entry, ptr %116, i32 0, i32 7
  %118 = load i16, ptr %117, align 4
  %119 = and i16 %118, 4
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %115, %110, %104, %99
  %122 = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 2) #9
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %146, label %124

124:                                              ; preds = %121, %115, %104, %94
  %125 = tail call ptr @llvm.thread.pointer() #9
  %126 = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 1
  %127 = load volatile i32, ptr %126, align 4
  %128 = add i32 %127, 512
  store volatile i32 %128, ptr %126, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %129 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30
  %130 = load ptr, ptr %129, align 8
  %131 = ptrtoint ptr %130 to i32
  %132 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %133 = inttoptr i32 %132 to ptr
  %134 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %133) #6, !srcloc !10
  %135 = add i32 %134, %131
  %136 = inttoptr i32 %135 to ptr
  %137 = getelementptr inbounds %struct.ipstats_mib, ptr %136, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = add i32 %138, 1
  store i32 %139, ptr %137, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  %140 = getelementptr [37 x i64], ptr %136, i32 0, i32 11
  %141 = load i64, ptr %140, align 8
  %142 = add i64 %141, 1
  store i64 %142, ptr %140, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !12
  %143 = load i32, ptr %137, align 4
  %144 = add i32 %143, 1
  store i32 %144, ptr %137, align 4
  tail call fastcc void @local_bh_enable()
  %145 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %1, i32 noundef 3, i32 noundef 2, i32 noundef 0, ptr noundef %145) #9
  br label %146

146:                                              ; preds = %124, %121
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #9
  br label %168

147:                                              ; preds = %84
  %148 = tail call ptr @llvm.thread.pointer() #9
  %149 = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 1
  %150 = load volatile i32, ptr %149, align 4
  %151 = add i32 %150, 512
  store volatile i32 %151, ptr %149, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %152 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30
  %153 = load ptr, ptr %152, align 8
  %154 = ptrtoint ptr %153 to i32
  %155 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %156 = inttoptr i32 %155 to ptr
  %157 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %156) #6, !srcloc !10
  %158 = add i32 %157, %154
  %159 = inttoptr i32 %158 to ptr
  %160 = getelementptr inbounds %struct.ipstats_mib, ptr %159, i32 0, i32 1
  %161 = load i32, ptr %160, align 4
  %162 = add i32 %161, 1
  store i32 %162, ptr %160, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  %163 = getelementptr [37 x i64], ptr %159, i32 0, i32 3
  %164 = load i64, ptr %163, align 8
  %165 = add i64 %164, 1
  store i64 %165, ptr %163, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !12
  %166 = load i32, ptr %160, align 4
  %167 = add i32 %166, 1
  store i32 %167, ptr %160, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @consume_skb(ptr noundef %1) #9
  br label %168

168:                                              ; preds = %147, %146, %63, %57
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_local_deliver(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_local_deliver(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = getelementptr inbounds %struct.iphdr, ptr %7, i32 0, i32 4
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, -193
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @ip_defrag(ptr noundef nonnull @init_net, ptr noundef %0, i32 noundef 0) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load i16, ptr %4, align 4
  %17 = zext i16 %16 to i32
  br label %18

18:                                               ; preds = %15, %1
  %19 = phi i32 [ %17, %15 ], [ %6, %1 ]
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = sub nsw i32 %22, %19
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = sub i32 %25, %23
  store i32 %26, ptr %24, align 8
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %31, !prof !13

30:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #9, !srcloc !14
  unreachable

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 %23
  store ptr %34, ptr %32, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %35 = load ptr, ptr %2, align 8
  %36 = load i16, ptr %4, align 4
  %37 = zext i16 %36 to i32
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = getelementptr inbounds %struct.iphdr, ptr %38, i32 0, i32 6
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  tail call void @ip_protocol_deliver_rcu(ptr noundef nonnull @init_net, ptr noundef %0, i32 noundef %41) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %42

42:                                               ; preds = %31, %12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_rcv(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @ip_rcv_core(ptr noundef %0)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call fastcc i32 @ip_rcv_finish_core(ptr noundef nonnull @init_net, ptr noundef nonnull %5, ptr noundef %9, ptr noundef null) #9
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, -2
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.dst_entry, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef nonnull %5) #9
  br label %20

20:                                               ; preds = %12, %7, %4
  %21 = phi i32 [ 1, %4 ], [ %19, %12 ], [ 1, %7 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip_rcv_core(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 7
  %5 = icmp eq i16 %4, 3
  br i1 %5, label %261, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !10
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.ipstats_mib, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  %17 = getelementptr [37 x i64], ptr %13, i32 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = zext i32 %21 to i64
  %23 = getelementptr [37 x i64], ptr %13, i32 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = add i64 %24, %22
  store i64 %25, ptr %23, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !12
  %26 = load i32, ptr %14, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %14, align 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %29 = load volatile i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %36, label %31

31:                                               ; preds = %6
  %32 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !13

34:                                               ; preds = %31
  tail call void @consume_skb(ptr noundef %0) #9
  br label %58

35:                                               ; preds = %31
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #9
  br label %38

36:                                               ; preds = %6
  %37 = icmp eq ptr %0, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %36, %35
  %39 = tail call ptr @llvm.thread.pointer() #9
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %41 = load volatile i32, ptr %40, align 4
  %42 = add i32 %41, 512
  store volatile i32 %42, ptr %40, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %43 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %44 = ptrtoint ptr %43 to i32
  %45 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %46 = inttoptr i32 %45 to ptr
  %47 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %46) #6, !srcloc !10
  %48 = add i32 %47, %44
  %49 = inttoptr i32 %48 to ptr
  %50 = getelementptr inbounds %struct.ipstats_mib, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  %53 = getelementptr [37 x i64], ptr %49, i32 0, i32 13
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, ptr %53, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !12
  %56 = load i32, ptr %50, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %50, align 4
  tail call fastcc void @local_bh_enable()
  br label %263

58:                                               ; preds = %36, %34
  %59 = phi ptr [ %32, %34 ], [ %0, %36 ]
  %60 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 5
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = sub i32 %61, %63
  %65 = icmp ult i32 %64, 20
  br i1 %65, label %66, label %72, !prof !13

66:                                               ; preds = %58
  %67 = icmp ult i32 %61, 20
  br i1 %67, label %239, label %68, !prof !13

68:                                               ; preds = %66
  %69 = sub nuw nsw i32 20, %64
  %70 = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %59, i32 noundef %69) #9
  %71 = icmp eq ptr %70, null
  br i1 %71, label %239, label %72

72:                                               ; preds = %68, %58
  %73 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 16
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 13, i32 0, i32 18
  %76 = load i16, ptr %75, align 4
  %77 = zext i16 %76 to i32
  %78 = getelementptr i8, ptr %74, i32 %77
  %79 = load i8, ptr %78, align 4
  %80 = and i8 %79, 15
  %81 = icmp ugt i8 %80, 4
  %82 = and i8 %79, -16
  %83 = icmp eq i8 %82, 64
  %84 = and i1 %81, %83
  br i1 %84, label %85, label %239

85:                                               ; preds = %72
  %86 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %87 = ptrtoint ptr %86 to i32
  %88 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %89 = inttoptr i32 %88 to ptr
  %90 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %89) #6, !srcloc !10
  %91 = add i32 %90, %87
  %92 = inttoptr i32 %91 to ptr
  %93 = getelementptr inbounds %struct.ipstats_mib, ptr %92, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, 1
  store i32 %95, ptr %93, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  %96 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 15
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.skb_shared_info, ptr %97, i32 0, i32 5
  %99 = load i16, ptr %98, align 2
  %100 = icmp eq i16 %99, 0
  %101 = select i1 %100, i16 1, i16 %99
  %102 = zext i16 %101 to i64
  %103 = getelementptr inbounds %struct.iphdr, ptr %78, i32 0, i32 1
  %104 = load i8, ptr %103, align 1
  %105 = and i8 %104, 3
  %106 = or i8 %105, 32
  %107 = zext i8 %106 to i32
  %108 = getelementptr [37 x i64], ptr %92, i32 0, i32 %107
  %109 = load i64, ptr %108, align 8
  %110 = add i64 %109, %102
  store i64 %110, ptr %108, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !12
  %111 = load i32, ptr %93, align 4
  %112 = add i32 %111, 1
  store i32 %112, ptr %93, align 4
  %113 = load i8, ptr %78, align 4
  %114 = shl i8 %113, 2
  %115 = and i8 %114, 60
  %116 = zext i8 %115 to i32
  %117 = load i32, ptr %60, align 8
  %118 = load i32, ptr %62, align 4
  %119 = sub i32 %117, %118
  %120 = icmp ult i32 %119, %116
  br i1 %120, label %121, label %127, !prof !13

121:                                              ; preds = %85
  %122 = icmp ult i32 %117, %116
  br i1 %122, label %239, label %123, !prof !13

123:                                              ; preds = %121
  %124 = sub i32 %116, %119
  %125 = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %59, i32 noundef %124) #9
  %126 = icmp eq ptr %125, null
  br i1 %126, label %239, label %127

127:                                              ; preds = %123, %85
  %128 = load ptr, ptr %73, align 8
  %129 = load i16, ptr %75, align 4
  %130 = zext i16 %129 to i32
  %131 = getelementptr i8, ptr %128, i32 %130
  %132 = load i8, ptr %131, align 4
  %133 = and i8 %132, 15
  %134 = zext i8 %133 to i32
  %135 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %131, i32 %134) #9, !srcloc !17
  %136 = extractvalue { i32, ptr, i32, i32 } %135, 0
  %137 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %136) #10, !srcloc !18
  %138 = icmp ugt i32 %137, -65537
  br i1 %138, label %139, label %219, !prof !19

139:                                              ; preds = %127
  %140 = getelementptr inbounds %struct.iphdr, ptr %131, i32 0, i32 2
  %141 = load i16, ptr %140, align 2
  %142 = tail call i16 @llvm.bswap.i16(i16 %141)
  %143 = zext i16 %142 to i32
  %144 = load i32, ptr %60, align 8
  %145 = icmp ult i32 %144, %143
  br i1 %145, label %146, label %164

146:                                              ; preds = %139
  %147 = tail call ptr @llvm.thread.pointer() #9
  %148 = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 1
  %149 = load volatile i32, ptr %148, align 4
  %150 = add i32 %149, 512
  store volatile i32 %150, ptr %148, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %151 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %152 = ptrtoint ptr %151 to i32
  %153 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %154 = inttoptr i32 %153 to ptr
  %155 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %154) #6, !srcloc !10
  %156 = add i32 %155, %152
  %157 = inttoptr i32 %156 to ptr
  %158 = getelementptr inbounds %struct.ipstats_mib, ptr %157, i32 0, i32 1
  %159 = load i32, ptr %158, align 4
  %160 = add i32 %159, 1
  store i32 %160, ptr %158, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  %161 = getelementptr [37 x i64], ptr %157, i32 0, i32 12
  %162 = load i64, ptr %161, align 8
  %163 = add i64 %162, 1
  store i64 %163, ptr %161, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !12
  br label %257

164:                                              ; preds = %139
  %165 = load i8, ptr %131, align 4
  %166 = shl i8 %165, 2
  %167 = and i8 %166, 60
  %168 = zext i8 %167 to i16
  %169 = icmp ult i16 %142, %168
  br i1 %169, label %239, label %170

170:                                              ; preds = %164
  %171 = icmp ugt i32 %144, %143
  br i1 %171, label %172, label %193, !prof !13

172:                                              ; preds = %170
  %173 = tail call i32 @pskb_trim_rcsum_slow(ptr noundef nonnull %59, i32 noundef %143) #9
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %193, label %175

175:                                              ; preds = %172
  %176 = tail call ptr @llvm.thread.pointer() #9
  %177 = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 1
  %178 = load volatile i32, ptr %177, align 4
  %179 = add i32 %178, 512
  store volatile i32 %179, ptr %177, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %180 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %181 = ptrtoint ptr %180 to i32
  %182 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %183 = inttoptr i32 %182 to ptr
  %184 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %183) #6, !srcloc !10
  %185 = add i32 %184, %181
  %186 = inttoptr i32 %185 to ptr
  %187 = getelementptr inbounds %struct.ipstats_mib, ptr %186, i32 0, i32 1
  %188 = load i32, ptr %187, align 4
  %189 = add i32 %188, 1
  store i32 %189, ptr %187, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  %190 = getelementptr [37 x i64], ptr %186, i32 0, i32 13
  %191 = load i64, ptr %190, align 8
  %192 = add i64 %191, 1
  store i64 %192, ptr %190, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !12
  br label %257

193:                                              ; preds = %172, %170
  %194 = load ptr, ptr %73, align 8
  %195 = load i16, ptr %75, align 4
  %196 = zext i16 %195 to i32
  %197 = getelementptr i8, ptr %194, i32 %196
  %198 = load i8, ptr %197, align 4
  %199 = shl i8 %198, 2
  %200 = and i8 %199, 60
  %201 = zext i8 %200 to i16
  %202 = add i16 %195, %201
  %203 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 13, i32 0, i32 17
  store i16 %202, ptr %203, align 2
  %204 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %204, i8 0, i32 24, i1 false)
  %205 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 13, i32 0, i32 6
  %206 = load i32, ptr %205, align 4
  store i32 %206, ptr %204, align 8
  %207 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 4, i32 0, i32 1
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, @sock_pfree
  br i1 %209, label %263, label %210

210:                                              ; preds = %193
  %211 = icmp eq ptr %208, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %210
  tail call void %208(ptr noundef nonnull %59) #9
  store ptr null, ptr %207, align 4
  %213 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 1
  store ptr null, ptr %213, align 4
  br label %263

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %263, label %218, !prof !19

218:                                              ; preds = %214
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #9, !srcloc !20
  unreachable

219:                                              ; preds = %127
  %220 = tail call ptr @llvm.thread.pointer() #9
  %221 = getelementptr inbounds %struct.thread_info, ptr %220, i32 0, i32 1
  %222 = load volatile i32, ptr %221, align 4
  %223 = add i32 %222, 512
  store volatile i32 %223, ptr %221, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %224 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %225 = ptrtoint ptr %224 to i32
  %226 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %227 = inttoptr i32 %226 to ptr
  %228 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %227) #6, !srcloc !10
  %229 = add i32 %228, %225
  %230 = inttoptr i32 %229 to ptr
  %231 = getelementptr inbounds %struct.ipstats_mib, ptr %230, i32 0, i32 1
  %232 = load i32, ptr %231, align 4
  %233 = add i32 %232, 1
  store i32 %233, ptr %231, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  %234 = getelementptr [37 x i64], ptr %230, i32 0, i32 31
  %235 = load i64, ptr %234, align 8
  %236 = add i64 %235, 1
  store i64 %236, ptr %234, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !12
  %237 = load i32, ptr %231, align 4
  %238 = add i32 %237, 1
  store i32 %238, ptr %231, align 4
  tail call fastcc void @local_bh_enable()
  br label %239

239:                                              ; preds = %219, %164, %123, %121, %72, %68, %66
  %240 = tail call ptr @llvm.thread.pointer() #9
  %241 = getelementptr inbounds %struct.thread_info, ptr %240, i32 0, i32 1
  %242 = load volatile i32, ptr %241, align 4
  %243 = add i32 %242, 512
  store volatile i32 %243, ptr %241, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %244 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %245 = ptrtoint ptr %244 to i32
  %246 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %247 = inttoptr i32 %246 to ptr
  %248 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %247) #6, !srcloc !10
  %249 = add i32 %248, %245
  %250 = inttoptr i32 %249 to ptr
  %251 = getelementptr inbounds %struct.ipstats_mib, ptr %250, i32 0, i32 1
  %252 = load i32, ptr %251, align 4
  %253 = add i32 %252, 1
  store i32 %253, ptr %251, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  %254 = getelementptr [37 x i64], ptr %250, i32 0, i32 7
  %255 = load i64, ptr %254, align 8
  %256 = add i64 %255, 1
  store i64 %256, ptr %254, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !12
  br label %257

257:                                              ; preds = %239, %175, %146
  %258 = phi ptr [ %251, %239 ], [ %187, %175 ], [ %158, %146 ]
  %259 = load i32, ptr %258, align 4
  %260 = add i32 %259, 1
  store i32 %260, ptr %258, align 4
  tail call fastcc void @local_bh_enable()
  br label %261

261:                                              ; preds = %257, %1
  %262 = phi ptr [ %0, %1 ], [ %59, %257 ]
  tail call void @kfree_skb_reason(ptr noundef %262, i32 noundef 0) #9
  br label %263

263:                                              ; preds = %261, %214, %212, %193, %38
  %264 = phi ptr [ %59, %193 ], [ null, %261 ], [ null, %38 ], [ %59, %212 ], [ %59, %214 ]
  ret ptr %264
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_list_rcv(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store volatile ptr %4, ptr %4, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %39, label %8

8:                                                ; preds = %35, %3
  %9 = phi ptr [ %37, %35 ], [ null, %3 ]
  %10 = phi ptr [ %36, %35 ], [ null, %3 ]
  %11 = phi ptr [ %12, %35 ], [ %6, %3 ]
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %12, ptr %16, align 4
  store ptr null, ptr %11, align 8
  %18 = call fastcc ptr @ip_rcv_core(ptr noundef %11)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %8
  %21 = icmp eq ptr %9, %14
  %22 = icmp eq ptr %10, @init_net
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 4
  br label %31

26:                                               ; preds = %20
  %27 = load volatile ptr, ptr %4, align 8
  %28 = icmp eq ptr %27, %4
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  call fastcc void @ip_sublist_rcv(ptr noundef nonnull %4, ptr noundef %10)
  br label %30

30:                                               ; preds = %29, %26
  store volatile ptr %4, ptr %4, align 8
  br label %31

31:                                               ; preds = %30, %24
  %32 = phi ptr [ %4, %30 ], [ %25, %24 ]
  %33 = phi ptr [ %14, %30 ], [ %9, %24 ]
  store ptr %18, ptr %5, align 4
  store ptr %4, ptr %18, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %32, ptr %34, align 4
  store volatile ptr %18, ptr %32, align 4
  br label %35

35:                                               ; preds = %31, %8
  %36 = phi ptr [ @init_net, %31 ], [ %10, %8 ]
  %37 = phi ptr [ %33, %31 ], [ %9, %8 ]
  %38 = icmp eq ptr %12, %0
  br i1 %38, label %39, label %8

39:                                               ; preds = %35, %3
  %40 = phi ptr [ null, %3 ], [ %36, %35 ]
  %41 = load volatile ptr, ptr %4, align 8
  %42 = icmp eq ptr %41, %4
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  call fastcc void @ip_sublist_rcv(ptr noundef nonnull %4, ptr noundef %40)
  br label %44

44:                                               ; preds = %43, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip_sublist_rcv(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store volatile ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %76, label %7

7:                                                ; preds = %55, %2
  %8 = phi ptr [ %11, %55 ], [ %5, %2 ]
  %9 = phi ptr [ %57, %55 ], [ null, %2 ]
  %10 = phi ptr [ %56, %55 ], [ null, %2 ]
  %11 = load ptr, ptr %8, align 8
  %12 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %11, ptr %15, align 4
  store ptr null, ptr %8, align 8
  %17 = icmp eq ptr %8, null
  br i1 %17, label %55, label %18

18:                                               ; preds = %7
  %19 = call fastcc i32 @ip_rcv_finish_core(ptr noundef %1, ptr noundef nonnull %8, ptr noundef %13, ptr noundef %9) #9
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %55, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, -2
  %25 = inttoptr i32 %24 to ptr
  %26 = icmp eq ptr %10, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load ptr, ptr %4, align 4
  br label %51

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.rtable, ptr %25, i32 0, i32 3
  %31 = load i16, ptr %30, align 4
  %32 = icmp eq i16 %31, 3
  %33 = select i1 %32, ptr null, ptr %8
  %34 = load volatile ptr, ptr %3, align 8
  %35 = icmp eq ptr %34, %3
  br i1 %35, label %50, label %36

36:                                               ; preds = %36, %29
  %37 = phi ptr [ %38, %36 ], [ %34, %29 ]
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %40, ptr %41, align 4
  store volatile ptr %38, ptr %40, align 4
  store ptr null, ptr %37, align 8
  %42 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 4
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, -2
  %45 = inttoptr i32 %44 to ptr
  %46 = getelementptr inbounds %struct.dst_entry, ptr %45, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 %47(ptr noundef %37) #9
  %49 = icmp eq ptr %38, %3
  br i1 %49, label %50, label %36

50:                                               ; preds = %36, %29
  store volatile ptr %3, ptr %3, align 8
  br label %51

51:                                               ; preds = %50, %27
  %52 = phi ptr [ %3, %50 ], [ %28, %27 ]
  %53 = phi ptr [ %25, %50 ], [ %10, %27 ]
  %54 = phi ptr [ %33, %50 ], [ %9, %27 ]
  store ptr %8, ptr %4, align 4
  store ptr %3, ptr %8, align 4
  store ptr %52, ptr %14, align 4
  store volatile ptr %8, ptr %52, align 4
  br label %55

55:                                               ; preds = %51, %18, %7
  %56 = phi ptr [ %53, %51 ], [ %10, %7 ], [ %10, %18 ]
  %57 = phi ptr [ %54, %51 ], [ %9, %7 ], [ %9, %18 ]
  %58 = icmp eq ptr %11, %0
  br i1 %58, label %59, label %7

59:                                               ; preds = %55
  %60 = load ptr, ptr %3, align 8
  %61 = icmp eq ptr %60, %3
  br i1 %61, label %76, label %62

62:                                               ; preds = %62, %59
  %63 = phi ptr [ %64, %62 ], [ %60, %59 ]
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %66, ptr %67, align 4
  store volatile ptr %64, ptr %66, align 4
  store ptr null, ptr %63, align 8
  %68 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 4
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, -2
  %71 = inttoptr i32 %70 to ptr
  %72 = getelementptr inbounds %struct.dst_entry, ptr %71, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  %74 = call i32 %73(ptr noundef %63) #9
  %75 = icmp eq ptr %64, %3
  br i1 %75, label %76, label %62

76:                                               ; preds = %62, %59, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_pfree(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip_rcv_finish_core(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = icmp eq ptr %3, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 18
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = getelementptr inbounds %struct.iphdr, ptr %22, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.iphdr, ptr %10, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.iphdr, ptr %22, i32 0, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds %struct.iphdr, ptr %10, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %30, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.iphdr, ptr %10, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @ip_route_use_hint(ptr noundef %1, i32 noundef %24, i32 noundef %36, i8 noundef zeroext %30, ptr noundef %2, ptr noundef nonnull %3) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %274, !prof !19

39:                                               ; preds = %34, %28, %16, %12, %4
  %40 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 38
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %74, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %45 = load i32, ptr %44, align 8
  %46 = icmp ult i32 %45, 2
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %74

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.iphdr, ptr %10, i32 0, i32 4
  %53 = load i16, ptr %52, align 2
  %54 = and i16 %53, -193
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.iphdr, ptr %10, i32 0, i32 6
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr [256 x ptr], ptr @inet_protos, i32 0, i32 %59
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %56
  %64 = load volatile ptr, ptr %61, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %63
  %67 = tail call i32 %64(ptr noundef %1) #9
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %274, !prof !19

69:                                               ; preds = %66
  %70 = load ptr, ptr %5, align 8
  %71 = load i16, ptr %7, align 4
  %72 = zext i16 %71 to i32
  %73 = getelementptr i8, ptr %70, i32 %72
  br label %74

74:                                               ; preds = %69, %63, %56, %51, %47, %43, %39
  %75 = phi ptr [ %10, %43 ], [ %10, %47 ], [ %10, %51 ], [ %10, %39 ], [ %10, %56 ], [ %10, %63 ], [ %73, %69 ]
  %76 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, -2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = inttoptr i32 %78 to ptr
  %82 = getelementptr inbounds %struct.dst_entry, ptr %81, i32 0, i32 7
  %83 = load i16, ptr %82, align 4
  %84 = and i16 %83, 128
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %80, %74
  %87 = getelementptr inbounds %struct.iphdr, ptr %75, i32 0, i32 9
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.iphdr, ptr %75, i32 0, i32 8
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.iphdr, ptr %75, i32 0, i32 1
  %92 = load i8, ptr %91, align 1
  %93 = tail call i32 @ip_route_input_noref(ptr noundef %1, i32 noundef %88, i32 noundef %90, i8 noundef zeroext %92, ptr noundef %2) #9
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %274, !prof !19

95:                                               ; preds = %86, %80
  %96 = load i8, ptr %75, align 4
  %97 = and i8 %96, 14
  %98 = icmp ugt i8 %97, 5
  br i1 %98, label %99, label %202

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %101 = load i8, ptr %100, align 2
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %134, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.skb_shared_info, ptr %106, i32 0, i32 10
  %108 = load volatile i32, ptr %107, align 4
  %109 = and i32 %108, 65535
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %134, label %111

111:                                              ; preds = %104
  %112 = tail call i32 @pskb_expand_head(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #9
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %134, label %114

114:                                              ; preds = %111
  %115 = tail call ptr @llvm.thread.pointer() #9
  %116 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 1
  %117 = load volatile i32, ptr %116, align 4
  %118 = add i32 %117, 512
  store volatile i32 %118, ptr %116, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %119 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %120 = ptrtoint ptr %119 to i32
  %121 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %122 = inttoptr i32 %121 to ptr
  %123 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %122) #6, !srcloc !10
  %124 = add i32 %123, %120
  %125 = inttoptr i32 %124 to ptr
  %126 = getelementptr inbounds %struct.ipstats_mib, ptr %125, i32 0, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, 1
  store i32 %128, ptr %126, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  %129 = getelementptr [37 x i64], ptr %125, i32 0, i32 13
  %130 = load i64, ptr %129, align 8
  %131 = add i64 %130, 1
  store i64 %131, ptr %129, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !12
  %132 = load i32, ptr %126, align 4
  %133 = add i32 %132, 1
  store i32 %133, ptr %126, align 4
  tail call fastcc void @local_bh_enable() #9
  br label %273

134:                                              ; preds = %111, %104, %99
  %135 = load ptr, ptr %5, align 8
  %136 = load i16, ptr %7, align 4
  %137 = zext i16 %136 to i32
  %138 = getelementptr i8, ptr %135, i32 %137
  %139 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %140 = load i8, ptr %138, align 4
  %141 = shl i8 %140, 2
  %142 = and i8 %141, 60
  %143 = add nsw i8 %142, -20
  %144 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  store i8 %143, ptr %144, align 4
  %145 = tail call i32 @ip_options_compile(ptr noundef nonnull @init_net, ptr noundef %139, ptr noundef %1) #9
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %167, label %147

147:                                              ; preds = %134
  %148 = tail call ptr @llvm.thread.pointer() #9
  %149 = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 1
  %150 = load volatile i32, ptr %149, align 4
  %151 = add i32 %150, 512
  store volatile i32 %151, ptr %149, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %152 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %153 = ptrtoint ptr %152 to i32
  %154 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %155 = inttoptr i32 %154 to ptr
  %156 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %155) #6, !srcloc !10
  %157 = add i32 %156, %153
  %158 = inttoptr i32 %157 to ptr
  %159 = getelementptr inbounds %struct.ipstats_mib, ptr %158, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = add i32 %160, 1
  store i32 %161, ptr %159, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  %162 = getelementptr [37 x i64], ptr %158, i32 0, i32 7
  %163 = load i64, ptr %162, align 8
  %164 = add i64 %163, 1
  store i64 %164, ptr %162, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !12
  %165 = load i32, ptr %159, align 4
  %166 = add i32 %165, 1
  store i32 %166, ptr %159, align 4
  tail call fastcc void @local_bh_enable() #9
  br label %273

167:                                              ; preds = %134
  %168 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 13
  %169 = load i8, ptr %168, align 1
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %202, label %171, !prof !19

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 68
  %173 = load volatile ptr, ptr %172, align 16
  %174 = icmp eq ptr %173, null
  br i1 %174, label %199, label %175

175:                                              ; preds = %171
  %176 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %177 = getelementptr %struct.ipv4_devconf, ptr %176, i32 0, i32 1, i32 8
  %178 = load i32, ptr %177, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %175
  %181 = getelementptr %struct.in_device, ptr %173, i32 0, i32 21, i32 1, i32 8
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %180, %175
  %185 = getelementptr %struct.ipv4_devconf, ptr %176, i32 0, i32 1, i32 10
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = getelementptr %struct.in_device, ptr %173, i32 0, i32 21, i32 1, i32 10
  %190 = load i32, ptr %189, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %273, label %192

192:                                              ; preds = %188, %184
  %193 = tail call i32 @net_ratelimit() #9
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %273, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.iphdr, ptr %138, i32 0, i32 8
  %197 = getelementptr inbounds %struct.iphdr, ptr %138, i32 0, i32 9
  %198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %196, ptr noundef %197) #11
  br label %273

199:                                              ; preds = %180, %171
  %200 = tail call i32 @ip_options_rcv_srr(ptr noundef %1, ptr noundef %2) #9
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %273

202:                                              ; preds = %199, %167, %95
  %203 = load i32, ptr %76, align 8
  %204 = and i32 %203, -2
  %205 = inttoptr i32 %204 to ptr
  %206 = getelementptr inbounds %struct.rtable, ptr %205, i32 0, i32 3
  %207 = load i16, ptr %206, align 4
  switch i16 %207, label %254 [
    i16 5, label %208
    i16 3, label %231
  ]

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30
  %210 = load ptr, ptr %209, align 8
  %211 = ptrtoint ptr %210 to i32
  %212 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %213 = inttoptr i32 %212 to ptr
  %214 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %213) #6, !srcloc !10
  %215 = add i32 %214, %211
  %216 = inttoptr i32 %215 to ptr
  %217 = getelementptr inbounds %struct.ipstats_mib, ptr %216, i32 0, i32 1
  %218 = load i32, ptr %217, align 4
  %219 = add i32 %218, 1
  store i32 %219, ptr %217, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  %220 = getelementptr [37 x i64], ptr %216, i32 0, i32 23
  %221 = load i64, ptr %220, align 8
  %222 = add i64 %221, 1
  store i64 %222, ptr %220, align 8
  %223 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %224 = load i32, ptr %223, align 8
  %225 = zext i32 %224 to i64
  %226 = getelementptr [37 x i64], ptr %216, i32 0, i32 27
  %227 = load i64, ptr %226, align 8
  %228 = add i64 %227, %225
  store i64 %228, ptr %226, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !12
  %229 = load i32, ptr %217, align 4
  %230 = add i32 %229, 1
  store i32 %230, ptr %217, align 4
  br label %289

231:                                              ; preds = %202
  %232 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30
  %233 = load ptr, ptr %232, align 8
  %234 = ptrtoint ptr %233 to i32
  %235 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %236 = inttoptr i32 %235 to ptr
  %237 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %236) #6, !srcloc !10
  %238 = add i32 %237, %234
  %239 = inttoptr i32 %238 to ptr
  %240 = getelementptr inbounds %struct.ipstats_mib, ptr %239, i32 0, i32 1
  %241 = load i32, ptr %240, align 4
  %242 = add i32 %241, 1
  store i32 %242, ptr %240, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  %243 = getelementptr [37 x i64], ptr %239, i32 0, i32 25
  %244 = load i64, ptr %243, align 8
  %245 = add i64 %244, 1
  store i64 %245, ptr %243, align 8
  %246 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %247 = load i32, ptr %246, align 8
  %248 = zext i32 %247 to i64
  %249 = getelementptr [37 x i64], ptr %239, i32 0, i32 29
  %250 = load i64, ptr %249, align 8
  %251 = add i64 %250, %248
  store i64 %251, ptr %249, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !12
  %252 = load i32, ptr %240, align 4
  %253 = add i32 %252, 1
  store i32 %253, ptr %240, align 4
  br label %289

254:                                              ; preds = %202
  %255 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %256 = load i16, ptr %255, align 8
  %257 = and i16 %256, 7
  %258 = add nsw i16 %257, -1
  %259 = icmp ult i16 %258, 2
  br i1 %259, label %260, label %289

260:                                              ; preds = %254
  %261 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 68
  %262 = load volatile ptr, ptr %261, align 16
  %263 = icmp eq ptr %262, null
  br i1 %263, label %289, label %264

264:                                              ; preds = %260
  %265 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %266 = getelementptr %struct.ipv4_devconf, ptr %265, i32 0, i32 1, i32 29
  %267 = load i32, ptr %266, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %264
  %270 = getelementptr %struct.in_device, ptr %262, i32 0, i32 21, i32 1, i32 29
  %271 = load i32, ptr %270, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %289, label %273

273:                                              ; preds = %277, %274, %269, %264, %199, %195, %192, %188, %147, %114
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #9
  br label %289

274:                                              ; preds = %86, %66, %34
  %275 = phi i32 [ %37, %34 ], [ %93, %86 ], [ %67, %66 ]
  %276 = icmp eq i32 %275, -18
  br i1 %276, label %277, label %273

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 3
  %279 = load ptr, ptr %278, align 4
  %280 = getelementptr [126 x i32], ptr %279, i32 0, i32 72
  %281 = ptrtoint ptr %280 to i32
  %282 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %283 = inttoptr i32 %282 to ptr
  %284 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %283) #6, !srcloc !10
  %285 = add i32 %284, %281
  %286 = inttoptr i32 %285 to ptr
  %287 = load i32, ptr %286, align 4
  %288 = add i32 %287, 1
  store i32 %288, ptr %286, align 4
  br label %273

289:                                              ; preds = %273, %269, %260, %254, %231, %208
  %290 = phi i32 [ 1, %273 ], [ 0, %254 ], [ 0, %231 ], [ 0, %208 ], [ 0, %260 ], [ 0, %269 ]
  ret i32 %290
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_use_hint(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_input_noref(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_options_compile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_options_rcv_srr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

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
!9 = !{i64 2148875186}
!10 = !{i64 482914}
!11 = !{i64 2149398936}
!12 = !{i64 2149399237}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2153448608, i64 2153449096, i64 2153448645, i64 2153448701, i64 2153448735, i64 2153448759, i64 2153448800, i64 2153448821, i64 2153448849, i64 2153448883}
!15 = !{i64 2149061416}
!16 = !{i64 2149061633}
!17 = !{i64 5530045, i64 5530084, i64 5530110, i64 5530134, i64 5530159, i64 5530185, i64 5530210, i64 5530236, i64 5530263, i64 5530289, i64 5530328, i64 5530372, i64 5530403, i64 5530428}
!18 = !{i64 5529662}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2153461966, i64 2153462454, i64 2153462003, i64 2153462059, i64 2153462093, i64 2153462117, i64 2153462158, i64 2153462179, i64 2153462207, i64 2153462241}
