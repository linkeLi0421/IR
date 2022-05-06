; ModuleID = '/llk/IR/net/ipv6/ip6_input.c_pt.bc'
source_filename = "../net/ipv6/ip6_input.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_input:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_input\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_input:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.182, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.182 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.sk_buff = type { %union.anon.75, %union.anon.153, %union.anon.154, [48 x i8], %union.anon.155, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.157, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%union.anon.153 = type { ptr }
%union.anon.154 = type { i64 }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { i32, ptr }
%union.anon.157 = type { %struct.anon.158 }
%struct.anon.158 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.159, i32, i32, i32, i16, i16, %union.anon.161, %union.anon.162, %union.anon.163, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.159 = type { i32 }
%union.anon.161 = type { i32 }
%union.anon.162 = type { i32 }
%union.anon.163 = type { i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.132 }
%union.anon.132 = type { [4 x i32] }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.152, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.152 = type { ptr }
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
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sk_buff_head = type { %union.anon.82, i32, %struct.spinlock }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }

@inet6_protos = external dso_local global [256 x ptr], align 4
@__kstrtab_ip6_input = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_input = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_input = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_input to i32), ptr @__kstrtab_ip6_input, ptr @__kstrtabns_ip6_input }, section "___ksymtab_gpl+ip6_input", align 4
@init_net = external dso_local global %struct.net, align 64
@.str.1 = private unnamed_addr constant [18 x i8] c"include/net/dst.h\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ip6_input], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_rcv_finish(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 38
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = getelementptr i8, ptr %19, i32 %22
  %24 = getelementptr inbounds %struct.ipv6hdr, ptr %23, i32 0, i32 3
  %25 = load i8, ptr %24, align 2
  %26 = zext i8 %25 to i32
  %27 = getelementptr [256 x ptr], ptr @inet6_protos, i32 0, i32 %26
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %17
  %31 = load volatile ptr, ptr %28, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void %31(ptr noundef nonnull %2) #8
  br label %34

34:                                               ; preds = %33, %30, %17, %13, %9, %5
  %35 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, -2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = inttoptr i32 %37 to ptr
  %41 = getelementptr inbounds %struct.dst_entry, ptr %40, i32 0, i32 7
  %42 = load i16, ptr %41, align 4
  %43 = and i16 %42, 128
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39, %34
  tail call void @ip6_route_input(ptr noundef nonnull %2) #8
  %46 = load i32, ptr %35, align 8
  %47 = and i32 %46, -2
  %48 = inttoptr i32 %47 to ptr
  br label %49

49:                                               ; preds = %45, %39
  %50 = phi ptr [ %40, %39 ], [ %48, %45 ]
  %51 = getelementptr inbounds %struct.dst_entry, ptr %50, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 %52(ptr noundef nonnull %2) #8
  br label %54

54:                                               ; preds = %49, %3
  %55 = phi i32 [ %53, %49 ], [ 0, %3 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_rcv(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @ip6_rcv_core(ptr noundef %0, ptr noundef %1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %55, label %7

7:                                                ; preds = %4
  %8 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 38), align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 16
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13, i32 0, i32 18
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %20, i32 %23
  %25 = getelementptr inbounds %struct.ipv6hdr, ptr %24, i32 0, i32 3
  %26 = load i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = getelementptr [256 x ptr], ptr @inet6_protos, i32 0, i32 %27
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %18
  %32 = load volatile ptr, ptr %29, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void %32(ptr noundef nonnull %5) #8
  br label %35

35:                                               ; preds = %34, %31, %18, %14, %10, %7
  %36 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, -2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = inttoptr i32 %38 to ptr
  %42 = getelementptr inbounds %struct.dst_entry, ptr %41, i32 0, i32 7
  %43 = load i16, ptr %42, align 4
  %44 = and i16 %43, 128
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %40, %35
  tail call void @ip6_route_input(ptr noundef nonnull %5) #8
  %47 = load i32, ptr %36, align 8
  %48 = and i32 %47, -2
  %49 = inttoptr i32 %48 to ptr
  br label %50

50:                                               ; preds = %46, %40
  %51 = phi ptr [ %41, %40 ], [ %49, %46 ]
  %52 = getelementptr inbounds %struct.dst_entry, ptr %51, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 %53(ptr noundef nonnull %5) #8
  br label %55

55:                                               ; preds = %50, %4
  %56 = phi i32 [ %54, %50 ], [ 1, %4 ]
  ret i32 %56
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip6_rcv_core(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 7
  %6 = icmp eq i16 %5, 3
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #8
  br label %471

8:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %9 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 69
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp ne ptr %12, null
  br i1 %13, label %14, label %38, !prof !10

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.inet6_dev, ptr %12, i32 0, i32 33, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i64, ptr %16, i32 1
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #7, !srcloc !11
  %22 = add i32 %21, %18
  %23 = inttoptr i32 %22 to ptr
  %24 = load i64, ptr %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, ptr %23, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = zext i32 %27 to i64
  %29 = getelementptr i64, ptr %16, i32 2
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %32) #7, !srcloc !11
  %34 = add i32 %33, %30
  %35 = inttoptr i32 %34 to ptr
  %36 = load i64, ptr %35, align 8
  %37 = add i64 %36, %28
  store i64 %37, ptr %35, align 8
  br label %38

38:                                               ; preds = %14, %8
  %39 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %40 = getelementptr i64, ptr %39, i32 1
  %41 = ptrtoint ptr %40 to i32
  %42 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %43 = inttoptr i32 %42 to ptr
  %44 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %43) #7, !srcloc !11
  %45 = add i32 %44, %41
  %46 = inttoptr i32 %45 to ptr
  %47 = load i64, ptr %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, ptr %46, align 8
  %49 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %50 = load i32, ptr %49, align 8
  %51 = zext i32 %50 to i64
  %52 = getelementptr i64, ptr %39, i32 2
  %53 = ptrtoint ptr %52 to i32
  %54 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %55 = inttoptr i32 %54 to ptr
  %56 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %55) #7, !srcloc !11
  %57 = add i32 %56, %53
  %58 = inttoptr i32 %57 to ptr
  %59 = load i64, ptr %58, align 8
  %60 = add i64 %59, %51
  store i64 %60, ptr %58, align 8
  %61 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %62 = load volatile i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %69, label %64

64:                                               ; preds = %38
  %65 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67, !prof !12

67:                                               ; preds = %64
  tail call void @consume_skb(ptr noundef %0) #8
  br label %69

68:                                               ; preds = %64
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #8
  br label %77

69:                                               ; preds = %67, %38
  %70 = phi ptr [ %0, %38 ], [ %65, %67 ]
  %71 = icmp ne ptr %70, null
  %72 = select i1 %71, i1 %13, i1 false
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.inet6_dev, ptr %12, i32 0, i32 32, i32 32
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %117, label %77, !prof !10

77:                                               ; preds = %73, %69, %68
  %78 = phi ptr [ null, %68 ], [ %70, %73 ], [ %70, %69 ]
  %79 = tail call ptr @llvm.thread.pointer() #8
  br i1 %13, label %80, label %100, !prof !10

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %82 = load volatile i32, ptr %81, align 4
  %83 = add i32 %82, 512
  store volatile i32 %83, ptr %81, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %84 = getelementptr inbounds %struct.inet6_dev, ptr %12, i32 0, i32 33, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = ptrtoint ptr %85 to i32
  %87 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %88 = inttoptr i32 %87 to ptr
  %89 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %88) #7, !srcloc !11
  %90 = add i32 %89, %86
  %91 = inttoptr i32 %90 to ptr
  %92 = getelementptr inbounds %struct.ipstats_mib, ptr %91, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %95 = getelementptr [37 x i64], ptr %91, i32 0, i32 13
  %96 = load i64, ptr %95, align 8
  %97 = add i64 %96, 1
  store i64 %97, ptr %95, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  %98 = load i32, ptr %92, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %92, align 4
  tail call fastcc void @local_bh_enable()
  br label %100

100:                                              ; preds = %80, %77
  %101 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %102 = load volatile i32, ptr %101, align 4
  %103 = add i32 %102, 512
  store volatile i32 %103, ptr %101, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %104 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %105 = ptrtoint ptr %104 to i32
  %106 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %107 = inttoptr i32 %106 to ptr
  %108 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %107) #7, !srcloc !11
  %109 = add i32 %108, %105
  %110 = inttoptr i32 %109 to ptr
  %111 = getelementptr inbounds %struct.ipstats_mib, ptr %110, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %114 = getelementptr [37 x i64], ptr %110, i32 0, i32 13
  %115 = load i64, ptr %114, align 8
  %116 = add i64 %115, 1
  store i64 %116, ptr %114, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  br label %466

117:                                              ; preds = %73
  %118 = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %118, i8 0, i32 24, i1 false)
  %119 = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 4
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, -2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %117
  %124 = inttoptr i32 %121 to ptr
  %125 = getelementptr inbounds %struct.dst_entry, ptr %124, i32 0, i32 7
  %126 = load i16, ptr %125, align 4
  %127 = and i16 %126, 128
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.rt6_info, ptr %124, i32 0, i32 6
  %131 = load ptr, ptr %130, align 4
  %132 = load ptr, ptr %131, align 4
  br label %133

133:                                              ; preds = %129, %123, %117
  %134 = phi ptr [ %132, %129 ], [ %1, %123 ], [ %1, %117 ]
  %135 = getelementptr inbounds %struct.net_device, ptr %134, i32 0, i32 17
  %136 = load i32, ptr %135, align 4
  store i32 %136, ptr %118, align 8
  %137 = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 5
  %138 = load i32, ptr %137, align 8
  %139 = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 6
  %140 = load i32, ptr %139, align 4
  %141 = sub i32 %138, %140
  %142 = icmp ult i32 %141, 40
  br i1 %142, label %143, label %149, !prof !12

143:                                              ; preds = %133
  %144 = icmp ult i32 %138, 40
  br i1 %144, label %430, label %145, !prof !12

145:                                              ; preds = %143
  %146 = sub nuw nsw i32 40, %141
  %147 = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %70, i32 noundef %146) #8
  %148 = icmp eq ptr %147, null
  br i1 %148, label %430, label %149, !prof !12

149:                                              ; preds = %145, %133
  %150 = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 16
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 13, i32 0, i32 18
  %153 = load i16, ptr %152, align 4
  %154 = zext i16 %153 to i32
  %155 = getelementptr i8, ptr %151, i32 %154
  %156 = load i8, ptr %155, align 4
  %157 = and i8 %156, -16
  %158 = icmp eq i8 %157, 96
  br i1 %158, label %159, label %430

159:                                              ; preds = %149
  %160 = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 15
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.skb_shared_info, ptr %161, i32 0, i32 5
  %163 = load i16, ptr %162, align 2
  %164 = icmp eq i16 %163, 0
  %165 = select i1 %164, i16 1, i16 %163
  %166 = zext i16 %165 to i64
  %167 = getelementptr inbounds %struct.inet6_dev, ptr %12, i32 0, i32 33, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = load i16, ptr %155, align 2
  %170 = lshr i16 %169, 12
  %171 = and i16 %170, 3
  %172 = or i16 %171, 32
  %173 = zext i16 %172 to i32
  %174 = getelementptr [37 x i64], ptr %168, i32 0, i32 %173
  %175 = ptrtoint ptr %174 to i32
  %176 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %177 = inttoptr i32 %176 to ptr
  %178 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %177) #7, !srcloc !11
  %179 = add i32 %178, %175
  %180 = inttoptr i32 %179 to ptr
  %181 = load i64, ptr %180, align 8
  %182 = add i64 %181, %166
  store i64 %182, ptr %180, align 8
  %183 = load ptr, ptr %160, align 4
  %184 = getelementptr inbounds %struct.skb_shared_info, ptr %183, i32 0, i32 5
  %185 = load i16, ptr %184, align 2
  %186 = icmp eq i16 %185, 0
  %187 = select i1 %186, i16 1, i16 %185
  %188 = zext i16 %187 to i64
  %189 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %190 = load i16, ptr %155, align 2
  %191 = lshr i16 %190, 12
  %192 = and i16 %191, 3
  %193 = or i16 %192, 32
  %194 = zext i16 %193 to i32
  %195 = getelementptr [37 x i64], ptr %189, i32 0, i32 %194
  %196 = ptrtoint ptr %195 to i32
  %197 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %198 = inttoptr i32 %197 to ptr
  %199 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %198) #7, !srcloc !11
  %200 = add i32 %199, %196
  %201 = inttoptr i32 %200 to ptr
  %202 = load i64, ptr %201, align 8
  %203 = add i64 %202, %188
  store i64 %203, ptr %201, align 8
  %204 = getelementptr inbounds %struct.ipv6hdr, ptr %155, i32 0, i32 5
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr [4 x i32], ptr %204, i32 0, i32 1
  %207 = load i32, ptr %206, align 4
  %208 = or i32 %207, %205
  %209 = getelementptr [4 x i32], ptr %204, i32 0, i32 2
  %210 = load i32, ptr %209, align 4
  %211 = or i32 %208, %210
  %212 = getelementptr [4 x i32], ptr %204, i32 0, i32 3
  %213 = load i32, ptr %212, align 4
  %214 = xor i32 %213, 16777216
  %215 = or i32 %211, %214
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %231, label %217

217:                                              ; preds = %159
  %218 = getelementptr inbounds %struct.ipv6hdr, ptr %155, i32 0, i32 6
  %219 = load i32, ptr %218, align 4
  %220 = getelementptr [4 x i32], ptr %218, i32 0, i32 1
  %221 = load i32, ptr %220, align 4
  %222 = or i32 %221, %219
  %223 = getelementptr [4 x i32], ptr %218, i32 0, i32 2
  %224 = load i32, ptr %223, align 4
  %225 = or i32 %222, %224
  %226 = getelementptr [4 x i32], ptr %218, i32 0, i32 3
  %227 = load i32, ptr %226, align 4
  %228 = xor i32 %227, 16777216
  %229 = or i32 %225, %228
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %217, %159
  %232 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %233 = load i32, ptr %232, align 8
  %234 = and i32 %233, 8
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %238 = load i64, ptr %237, align 16
  %239 = and i64 %238, 262144
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %430, label %241

241:                                              ; preds = %236, %231, %217
  %242 = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 13
  %243 = load i16, ptr %242, align 8
  %244 = and i16 %243, 7
  %245 = icmp eq i16 %244, 5
  br i1 %245, label %256, label %246

246:                                              ; preds = %241
  %247 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %248 = load i32, ptr %247, align 8
  %249 = and i32 %248, 8
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.ipv6hdr, ptr %155, i32 0, i32 6
  %253 = load i32, ptr %252, align 4
  %254 = and i32 %253, 4095
  %255 = icmp eq i32 %254, 511
  br i1 %255, label %430, label %256

256:                                              ; preds = %251, %246, %241
  %257 = getelementptr inbounds %struct.ipv6hdr, ptr %155, i32 0, i32 6
  %258 = load i32, ptr %257, align 4
  %259 = and i32 %258, 255
  %260 = icmp eq i32 %259, 255
  br i1 %260, label %268, label %261

261:                                              ; preds = %256
  %262 = add nsw i16 %244, -1
  %263 = icmp ult i16 %262, 2
  br i1 %263, label %264, label %271

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.inet6_dev, ptr %12, i32 0, i32 32, i32 33
  %266 = load i32, ptr %265, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %271, label %430

268:                                              ; preds = %256
  %269 = and i32 %258, 3840
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %430, label %271

271:                                              ; preds = %268, %264, %261
  %272 = and i32 %205, 255
  %273 = icmp eq i32 %272, 255
  br i1 %273, label %430, label %274

274:                                              ; preds = %271
  %275 = load i16, ptr %152, align 4
  %276 = add i16 %275, 40
  %277 = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 13, i32 0, i32 17
  store i16 %276, ptr %277, align 2
  %278 = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 3, i32 14
  store i16 6, ptr %278, align 2
  %279 = getelementptr inbounds %struct.ipv6hdr, ptr %155, i32 0, i32 2
  %280 = load i16, ptr %279, align 4
  %281 = tail call i16 @llvm.bswap.i16(i16 %280)
  %282 = zext i16 %281 to i32
  %283 = icmp eq i16 %280, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %274
  %285 = getelementptr inbounds %struct.ipv6hdr, ptr %155, i32 0, i32 3
  %286 = load i8, ptr %285, align 2
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %377, label %288

288:                                              ; preds = %284, %274
  %289 = add nuw nsw i32 %282, 40
  %290 = load i32, ptr %137, align 8
  %291 = icmp ugt i32 %289, %290
  br i1 %291, label %292, label %327

292:                                              ; preds = %288
  %293 = tail call ptr @llvm.thread.pointer() #8
  %294 = getelementptr inbounds %struct.thread_info, ptr %293, i32 0, i32 1
  %295 = load volatile i32, ptr %294, align 4
  %296 = add i32 %295, 512
  store volatile i32 %296, ptr %294, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %297 = load ptr, ptr %167, align 4
  %298 = ptrtoint ptr %297 to i32
  %299 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %300 = inttoptr i32 %299 to ptr
  %301 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %300) #7, !srcloc !11
  %302 = add i32 %301, %298
  %303 = inttoptr i32 %302 to ptr
  %304 = getelementptr inbounds %struct.ipstats_mib, ptr %303, i32 0, i32 1
  %305 = load i32, ptr %304, align 4
  %306 = add i32 %305, 1
  store i32 %306, ptr %304, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %307 = getelementptr [37 x i64], ptr %303, i32 0, i32 12
  %308 = load i64, ptr %307, align 8
  %309 = add i64 %308, 1
  store i64 %309, ptr %307, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  %310 = load i32, ptr %304, align 4
  %311 = add i32 %310, 1
  store i32 %311, ptr %304, align 4
  tail call fastcc void @local_bh_enable()
  %312 = load volatile i32, ptr %294, align 4
  %313 = add i32 %312, 512
  store volatile i32 %313, ptr %294, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %314 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %315 = ptrtoint ptr %314 to i32
  %316 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %317 = inttoptr i32 %316 to ptr
  %318 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %317) #7, !srcloc !11
  %319 = add i32 %318, %315
  %320 = inttoptr i32 %319 to ptr
  %321 = getelementptr inbounds %struct.ipstats_mib, ptr %320, i32 0, i32 1
  %322 = load i32, ptr %321, align 4
  %323 = add i32 %322, 1
  store i32 %323, ptr %321, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %324 = getelementptr [37 x i64], ptr %320, i32 0, i32 12
  %325 = load i64, ptr %324, align 8
  %326 = add i64 %325, 1
  store i64 %326, ptr %324, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  br label %466

327:                                              ; preds = %288
  %328 = icmp ugt i32 %290, %289
  br i1 %328, label %329, label %369, !prof !12

329:                                              ; preds = %327
  %330 = tail call i32 @pskb_trim_rcsum_slow(ptr noundef nonnull %70, i32 noundef %289) #8
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %329
  %333 = load i16, ptr %152, align 4
  br label %369

334:                                              ; preds = %329
  %335 = tail call ptr @llvm.thread.pointer() #8
  %336 = getelementptr inbounds %struct.thread_info, ptr %335, i32 0, i32 1
  %337 = load volatile i32, ptr %336, align 4
  %338 = add i32 %337, 512
  store volatile i32 %338, ptr %336, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %339 = load ptr, ptr %167, align 4
  %340 = ptrtoint ptr %339 to i32
  %341 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %342 = inttoptr i32 %341 to ptr
  %343 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %342) #7, !srcloc !11
  %344 = add i32 %343, %340
  %345 = inttoptr i32 %344 to ptr
  %346 = getelementptr inbounds %struct.ipstats_mib, ptr %345, i32 0, i32 1
  %347 = load i32, ptr %346, align 4
  %348 = add i32 %347, 1
  store i32 %348, ptr %346, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %349 = getelementptr [37 x i64], ptr %345, i32 0, i32 7
  %350 = load i64, ptr %349, align 8
  %351 = add i64 %350, 1
  store i64 %351, ptr %349, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  %352 = load i32, ptr %346, align 4
  %353 = add i32 %352, 1
  store i32 %353, ptr %346, align 4
  tail call fastcc void @local_bh_enable()
  %354 = load volatile i32, ptr %336, align 4
  %355 = add i32 %354, 512
  store volatile i32 %355, ptr %336, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %356 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %357 = ptrtoint ptr %356 to i32
  %358 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %359 = inttoptr i32 %358 to ptr
  %360 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %359) #7, !srcloc !11
  %361 = add i32 %360, %357
  %362 = inttoptr i32 %361 to ptr
  %363 = getelementptr inbounds %struct.ipstats_mib, ptr %362, i32 0, i32 1
  %364 = load i32, ptr %363, align 4
  %365 = add i32 %364, 1
  store i32 %365, ptr %363, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %366 = getelementptr [37 x i64], ptr %362, i32 0, i32 7
  %367 = load i64, ptr %366, align 8
  %368 = add i64 %367, 1
  store i64 %368, ptr %366, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  br label %466

369:                                              ; preds = %332, %327
  %370 = phi i16 [ %333, %332 ], [ %275, %327 ]
  %371 = load ptr, ptr %150, align 8
  %372 = zext i16 %370 to i32
  %373 = getelementptr i8, ptr %371, i32 %372
  %374 = getelementptr inbounds %struct.ipv6hdr, ptr %373, i32 0, i32 3
  %375 = load i8, ptr %374, align 2
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %377, label %417

377:                                              ; preds = %369, %284
  %378 = tail call i32 @ipv6_parse_hopopts(ptr noundef nonnull %70) #8
  %379 = icmp slt i32 %378, 0
  br i1 %379, label %380, label %417

380:                                              ; preds = %377
  %381 = tail call ptr @llvm.thread.pointer() #8
  %382 = getelementptr inbounds %struct.thread_info, ptr %381, i32 0, i32 1
  %383 = load volatile i32, ptr %382, align 4
  %384 = add i32 %383, 512
  store volatile i32 %384, ptr %382, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %385 = load ptr, ptr %167, align 4
  %386 = ptrtoint ptr %385 to i32
  %387 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %388 = inttoptr i32 %387 to ptr
  %389 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %388) #7, !srcloc !11
  %390 = add i32 %389, %386
  %391 = inttoptr i32 %390 to ptr
  %392 = getelementptr inbounds %struct.ipstats_mib, ptr %391, i32 0, i32 1
  %393 = load i32, ptr %392, align 4
  %394 = add i32 %393, 1
  store i32 %394, ptr %392, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %395 = getelementptr [37 x i64], ptr %391, i32 0, i32 7
  %396 = load i64, ptr %395, align 8
  %397 = add i64 %396, 1
  store i64 %397, ptr %395, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  %398 = load i32, ptr %392, align 4
  %399 = add i32 %398, 1
  store i32 %399, ptr %392, align 4
  tail call fastcc void @local_bh_enable()
  %400 = load volatile i32, ptr %382, align 4
  %401 = add i32 %400, 512
  store volatile i32 %401, ptr %382, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %402 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %403 = ptrtoint ptr %402 to i32
  %404 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %405 = inttoptr i32 %404 to ptr
  %406 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %405) #7, !srcloc !11
  %407 = add i32 %406, %403
  %408 = inttoptr i32 %407 to ptr
  %409 = getelementptr inbounds %struct.ipstats_mib, ptr %408, i32 0, i32 1
  %410 = load i32, ptr %409, align 4
  %411 = add i32 %410, 1
  store i32 %411, ptr %409, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %412 = getelementptr [37 x i64], ptr %408, i32 0, i32 7
  %413 = load i64, ptr %412, align 8
  %414 = add i64 %413, 1
  store i64 %414, ptr %412, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  %415 = load i32, ptr %409, align 4
  %416 = add i32 %415, 1
  store i32 %416, ptr %409, align 4
  tail call fastcc void @local_bh_enable()
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %471

417:                                              ; preds = %377, %369
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  %418 = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 4, i32 0, i32 1
  %419 = load ptr, ptr %418, align 4
  %420 = icmp eq ptr %419, @sock_pfree
  br i1 %420, label %471, label %421

421:                                              ; preds = %417
  %422 = icmp eq ptr %419, null
  br i1 %422, label %425, label %423

423:                                              ; preds = %421
  tail call void %419(ptr noundef nonnull %70) #8
  store ptr null, ptr %418, align 4
  %424 = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 1
  store ptr null, ptr %424, align 4
  br label %471

425:                                              ; preds = %421
  %426 = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 1
  %427 = load ptr, ptr %426, align 4
  %428 = icmp eq ptr %427, null
  br i1 %428, label %471, label %429, !prof !10

429:                                              ; preds = %425
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #8, !srcloc !17
  unreachable

430:                                              ; preds = %271, %268, %264, %251, %236, %149, %145, %143
  %431 = tail call ptr @llvm.thread.pointer() #8
  %432 = getelementptr inbounds %struct.thread_info, ptr %431, i32 0, i32 1
  %433 = load volatile i32, ptr %432, align 4
  %434 = add i32 %433, 512
  store volatile i32 %434, ptr %432, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %435 = getelementptr inbounds %struct.inet6_dev, ptr %12, i32 0, i32 33, i32 1
  %436 = load ptr, ptr %435, align 4
  %437 = ptrtoint ptr %436 to i32
  %438 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %439 = inttoptr i32 %438 to ptr
  %440 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %439) #7, !srcloc !11
  %441 = add i32 %440, %437
  %442 = inttoptr i32 %441 to ptr
  %443 = getelementptr inbounds %struct.ipstats_mib, ptr %442, i32 0, i32 1
  %444 = load i32, ptr %443, align 4
  %445 = add i32 %444, 1
  store i32 %445, ptr %443, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %446 = getelementptr [37 x i64], ptr %442, i32 0, i32 7
  %447 = load i64, ptr %446, align 8
  %448 = add i64 %447, 1
  store i64 %448, ptr %446, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  %449 = load i32, ptr %443, align 4
  %450 = add i32 %449, 1
  store i32 %450, ptr %443, align 4
  tail call fastcc void @local_bh_enable()
  %451 = load volatile i32, ptr %432, align 4
  %452 = add i32 %451, 512
  store volatile i32 %452, ptr %432, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %453 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %454 = ptrtoint ptr %453 to i32
  %455 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %456 = inttoptr i32 %455 to ptr
  %457 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %456) #7, !srcloc !11
  %458 = add i32 %457, %454
  %459 = inttoptr i32 %458 to ptr
  %460 = getelementptr inbounds %struct.ipstats_mib, ptr %459, i32 0, i32 1
  %461 = load i32, ptr %460, align 4
  %462 = add i32 %461, 1
  store i32 %462, ptr %460, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %463 = getelementptr [37 x i64], ptr %459, i32 0, i32 7
  %464 = load i64, ptr %463, align 8
  %465 = add i64 %464, 1
  store i64 %465, ptr %463, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  br label %466

466:                                              ; preds = %430, %334, %292, %100
  %467 = phi ptr [ %460, %430 ], [ %363, %334 ], [ %321, %292 ], [ %111, %100 ]
  %468 = phi ptr [ %70, %430 ], [ %70, %334 ], [ %70, %292 ], [ %78, %100 ]
  %469 = load i32, ptr %467, align 4
  %470 = add i32 %469, 1
  store i32 %470, ptr %467, align 4
  tail call fastcc void @local_bh_enable()
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  tail call void @kfree_skb_reason(ptr noundef %468, i32 noundef 0) #8
  br label %471

471:                                              ; preds = %466, %425, %423, %417, %380, %7
  %472 = phi ptr [ null, %7 ], [ null, %466 ], [ null, %380 ], [ %70, %417 ], [ %70, %423 ], [ %70, %425 ]
  ret ptr %472
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_list_rcv(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
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
  %13 = getelementptr inbounds %struct.anon.76, ptr %11, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %12, ptr %16, align 4
  store ptr null, ptr %11, align 8
  %18 = call fastcc ptr @ip6_rcv_core(ptr noundef %11, ptr noundef %14)
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
  call fastcc void @ip6_sublist_rcv(ptr noundef nonnull %4, ptr noundef %10)
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
  call fastcc void @ip6_sublist_rcv(ptr noundef nonnull %4, ptr noundef %40)
  br label %44

44:                                               ; preds = %43, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip6_sublist_rcv(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store volatile ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %184, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 38
  %9 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 18
  br label %10

10:                                               ; preds = %163, %7
  %11 = phi ptr [ %5, %7 ], [ %14, %163 ]
  %12 = phi ptr [ null, %7 ], [ %165, %163 ]
  %13 = phi ptr [ null, %7 ], [ %164, %163 ]
  %14 = load ptr, ptr %11, align 8
  %15 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %14, ptr %16, align 4
  store ptr null, ptr %11, align 8
  %18 = icmp eq ptr %11, null
  br i1 %18, label %163, label %19

19:                                               ; preds = %10
  %20 = icmp eq ptr %12, null
  br i1 %20, label %90, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %25, label %90

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 16
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 13, i32 0, i32 18
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = getelementptr i8, ptr %27, i32 %30
  %32 = getelementptr inbounds %struct.ipv6hdr, ptr %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 16
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 13, i32 0, i32 18
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  %38 = getelementptr i8, ptr %34, i32 %37
  %39 = getelementptr inbounds %struct.ipv6hdr, ptr %38, i32 0, i32 6
  %40 = load i32, ptr %32, align 4
  %41 = load i32, ptr %39, align 4
  %42 = xor i32 %41, %40
  %43 = getelementptr [4 x i32], ptr %32, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr [4 x i32], ptr %39, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = xor i32 %46, %44
  %48 = or i32 %47, %42
  %49 = getelementptr [4 x i32], ptr %32, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr [4 x i32], ptr %39, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = xor i32 %52, %50
  %54 = or i32 %48, %53
  %55 = getelementptr [4 x i32], ptr %32, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr [4 x i32], ptr %39, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = xor i32 %58, %56
  %60 = or i32 %54, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %25
  %63 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 4
  %64 = load i32, ptr %63, align 8
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i8
  %67 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 13, i32 0, i32 3
  %68 = load i16, ptr %67, align 2
  %69 = lshr i16 %68, 14
  %70 = trunc i16 %69 to i8
  %71 = and i8 %70, 1
  %72 = or i8 %71, %66
  %73 = zext i8 %72 to i16
  %74 = shl nuw nsw i16 %73, 14
  %75 = and i16 %68, -16385
  %76 = or i16 %74, %75
  store i16 %76, ptr %67, align 2
  store i32 %64, ptr %22, align 8
  %77 = and i32 %64, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %130

79:                                               ; preds = %62
  %80 = and i32 %64, -2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %130, label %82

82:                                               ; preds = %79
  %83 = inttoptr i32 %80 to ptr
  %84 = getelementptr inbounds %struct.dst_entry, ptr %83, i32 0, i32 18
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #8, !srcloc !19
  %85 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 0, i32 1, ptr elementtype(i32) %84) #8, !srcloc !20
  %86 = extractvalue { i32, i32, i32 } %85, 0
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  br label %130

89:                                               ; preds = %82
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 231, i32 noundef 9, ptr noundef null) #8
  br label %130

90:                                               ; preds = %25, %21, %19
  %91 = load i8, ptr %8, align 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %118, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 4
  %95 = load i32, ptr %94, align 8
  %96 = icmp ult i32 %95, 2
  br i1 %96, label %97, label %118

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 16
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 13, i32 0, i32 18
  %105 = load i16, ptr %104, align 4
  %106 = zext i16 %105 to i32
  %107 = getelementptr i8, ptr %103, i32 %106
  %108 = getelementptr inbounds %struct.ipv6hdr, ptr %107, i32 0, i32 3
  %109 = load i8, ptr %108, align 2
  %110 = zext i8 %109 to i32
  %111 = getelementptr [256 x ptr], ptr @inet6_protos, i32 0, i32 %110
  %112 = load volatile ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %101
  %115 = load volatile ptr, ptr %112, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  call void %115(ptr noundef nonnull %11) #8
  br label %118

118:                                              ; preds = %117, %114, %101, %97, %93, %90
  %119 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 4
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, -2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %118
  %124 = inttoptr i32 %121 to ptr
  %125 = getelementptr inbounds %struct.dst_entry, ptr %124, i32 0, i32 7
  %126 = load i16, ptr %125, align 4
  %127 = and i16 %126, 128
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %123, %118
  call void @ip6_route_input(ptr noundef nonnull %11) #8
  br label %130

130:                                              ; preds = %129, %123, %89, %88, %79, %62
  %131 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 4
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, -2
  %134 = inttoptr i32 %133 to ptr
  %135 = icmp eq ptr %13, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load ptr, ptr %4, align 4
  br label %159

138:                                              ; preds = %130
  %139 = load i8, ptr %9, align 1, !range !22
  %140 = icmp eq i8 %139, 0
  %141 = select i1 %140, ptr %11, ptr null
  %142 = load volatile ptr, ptr %3, align 8
  %143 = icmp eq ptr %142, %3
  br i1 %143, label %158, label %144

144:                                              ; preds = %144, %138
  %145 = phi ptr [ %146, %144 ], [ %142, %138 ]
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.list_head, ptr %146, i32 0, i32 1
  store ptr %148, ptr %149, align 4
  store volatile ptr %146, ptr %148, align 4
  store ptr null, ptr %145, align 8
  %150 = getelementptr inbounds %struct.sk_buff, ptr %145, i32 0, i32 4
  %151 = load i32, ptr %150, align 8
  %152 = and i32 %151, -2
  %153 = inttoptr i32 %152 to ptr
  %154 = getelementptr inbounds %struct.dst_entry, ptr %153, i32 0, i32 5
  %155 = load ptr, ptr %154, align 4
  %156 = call i32 %155(ptr noundef %145) #8
  %157 = icmp eq ptr %146, %3
  br i1 %157, label %158, label %144

158:                                              ; preds = %144, %138
  store volatile ptr %3, ptr %3, align 8
  br label %159

159:                                              ; preds = %158, %136
  %160 = phi ptr [ %3, %158 ], [ %137, %136 ]
  %161 = phi ptr [ %134, %158 ], [ %13, %136 ]
  %162 = phi ptr [ %141, %158 ], [ %12, %136 ]
  store ptr %11, ptr %4, align 4
  store ptr %3, ptr %11, align 4
  store ptr %160, ptr %15, align 4
  store volatile ptr %11, ptr %160, align 4
  br label %163

163:                                              ; preds = %159, %10
  %164 = phi ptr [ %161, %159 ], [ %13, %10 ]
  %165 = phi ptr [ %162, %159 ], [ %12, %10 ]
  %166 = icmp eq ptr %14, %0
  br i1 %166, label %167, label %10

167:                                              ; preds = %163
  %168 = load ptr, ptr %3, align 8
  %169 = icmp eq ptr %168, %3
  br i1 %169, label %184, label %170

170:                                              ; preds = %170, %167
  %171 = phi ptr [ %172, %170 ], [ %168, %167 ]
  %172 = load ptr, ptr %171, align 8
  %173 = getelementptr inbounds %struct.list_head, ptr %171, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.list_head, ptr %172, i32 0, i32 1
  store ptr %174, ptr %175, align 4
  store volatile ptr %172, ptr %174, align 4
  store ptr null, ptr %171, align 8
  %176 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 4
  %177 = load i32, ptr %176, align 8
  %178 = and i32 %177, -2
  %179 = inttoptr i32 %178 to ptr
  %180 = getelementptr inbounds %struct.dst_entry, ptr %179, i32 0, i32 5
  %181 = load ptr, ptr %180, align 4
  %182 = call i32 %181(ptr noundef %171) #8
  %183 = icmp eq ptr %172, %3
  br i1 %183, label %184, label %170

184:                                              ; preds = %170, %167, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip6_protocol_deliver_rcu(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 14
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.anon.76, ptr %1, i32 0, i32 2
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  br label %17

17:                                               ; preds = %208, %4
  %18 = phi i1 [ %3, %4 ], [ %164, %208 ]
  %19 = phi i32 [ %2, %4 ], [ %67, %208 ]
  %20 = load i32, ptr %5, align 8
  %21 = and i32 %20, -2
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.rt6_info, ptr %22, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = load i16, ptr %6, align 2
  %26 = zext i16 %25 to i32
  br i1 %18, label %63, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr %7, align 8
  %29 = load i16, ptr %8, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr i8, ptr %28, i32 %30
  %32 = load ptr, ptr %9, align 4
  %33 = ptrtoint ptr %31 to i32
  %34 = ptrtoint ptr %32 to i32
  %35 = sub i32 %33, %34
  %36 = load i32, ptr %10, align 8
  %37 = icmp ult i32 %36, %35
  br i1 %37, label %381, label %38, !prof !12

38:                                               ; preds = %27
  %39 = load i32, ptr %11, align 4
  %40 = sub i32 %36, %39
  %41 = icmp ugt i32 %35, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = sub i32 %35, %40
  %44 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %43) #8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %381, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %10, align 8
  %48 = load ptr, ptr %9, align 4
  br label %49

49:                                               ; preds = %46, %38
  %50 = phi ptr [ %48, %46 ], [ %32, %38 ]
  %51 = phi i32 [ %47, %46 ], [ %36, %38 ]
  %52 = sub i32 %51, %35
  store i32 %52, ptr %10, align 8
  %53 = getelementptr i8, ptr %50, i32 %35
  store ptr %53, ptr %9, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %381, label %55

55:                                               ; preds = %49
  %56 = load ptr, ptr %7, align 8
  %57 = load i16, ptr %12, align 4
  %58 = zext i16 %57 to i32
  %59 = getelementptr i8, ptr %56, i32 %58
  %60 = getelementptr i8, ptr %59, i32 %26
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  br label %63

63:                                               ; preds = %55, %17
  %64 = phi i32 [ %19, %17 ], [ %62, %55 ]
  br label %65

65:                                               ; preds = %208, %63
  %66 = phi i1 [ %164, %208 ], [ %18, %63 ]
  %67 = phi i32 [ %206, %208 ], [ %64, %63 ]
  %68 = tail call zeroext i1 @raw6_local_deliver(ptr noundef %1, i32 noundef %67) #8
  %69 = getelementptr [256 x ptr], ptr @inet6_protos, i32 0, i32 %67
  %70 = load volatile ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %257, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.inet6_protocol, ptr %70, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %66, label %77, label %78

77:                                               ; preds = %72
  br i1 %76, label %381, label %163

78:                                               ; preds = %72
  br i1 %76, label %163, label %79

79:                                               ; preds = %78
  %80 = load ptr, ptr %7, align 8
  %81 = load i16, ptr %13, align 8
  %82 = lshr i16 %81, 5
  %83 = trunc i16 %82 to i2
  switch i2 %83, label %107 [
    i2 -2, label %84
    i2 -1, label %96
  ]

84:                                               ; preds = %79
  %85 = load i16, ptr %8, align 2
  %86 = zext i16 %85 to i32
  %87 = load i16, ptr %12, align 4
  %88 = zext i16 %87 to i32
  %89 = sub nsw i32 %86, %88
  %90 = getelementptr i8, ptr %80, i32 %88
  %91 = load i32, ptr %14, align 4
  %92 = sub i32 0, %91
  %93 = tail call i32 @csum_partial(ptr noundef %90, i32 noundef %89, i32 noundef %92) #8
  %94 = sub i32 0, %93
  store i32 %94, ptr %14, align 4
  %95 = load ptr, ptr %7, align 8
  br label %107

96:                                               ; preds = %79
  %97 = load i16, ptr %14, align 4
  %98 = zext i16 %97 to i32
  %99 = load ptr, ptr %9, align 4
  %100 = ptrtoint ptr %99 to i32
  %101 = ptrtoint ptr %80 to i32
  %102 = add i32 %98, %101
  %103 = sub i32 %102, %100
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = and i16 %81, -97
  store i16 %106, ptr %13, align 8
  br label %107

107:                                              ; preds = %105, %96, %84, %79
  %108 = phi ptr [ %80, %79 ], [ %95, %84 ], [ %80, %96 ], [ %80, %105 ]
  %109 = load i16, ptr %12, align 4
  %110 = zext i16 %109 to i32
  %111 = getelementptr i8, ptr %108, i32 %110
  %112 = getelementptr inbounds %struct.ipv6hdr, ptr %111, i32 0, i32 6
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, 255
  %115 = icmp eq i32 %114, 255
  br i1 %115, label %116, label %163

116:                                              ; preds = %107
  %117 = load ptr, ptr %15, align 8
  %118 = getelementptr inbounds %struct.ipv6hdr, ptr %111, i32 0, i32 5
  %119 = tail call zeroext i1 @ipv6_chk_mcast_addr(ptr noundef %117, ptr noundef %112, ptr noundef %118) #8
  br i1 %119, label %163, label %120

120:                                              ; preds = %116
  %121 = load i16, ptr %8, align 2
  %122 = zext i16 %121 to i32
  %123 = load i16, ptr %12, align 4
  %124 = zext i16 %123 to i32
  %125 = sub nsw i32 %122, %124
  %126 = icmp eq i32 %67, 58
  br i1 %126, label %127, label %381

127:                                              ; preds = %120
  %128 = add nsw i32 %125, 8
  %129 = load ptr, ptr %7, align 8
  %130 = getelementptr i8, ptr %129, i32 %124
  %131 = load ptr, ptr %9, align 4
  %132 = ptrtoint ptr %130 to i32
  %133 = ptrtoint ptr %131 to i32
  %134 = sub i32 %132, %133
  %135 = add i32 %128, %134
  %136 = load i32, ptr %10, align 8
  %137 = load i32, ptr %11, align 4
  %138 = sub i32 %136, %137
  %139 = icmp ugt i32 %135, %138
  br i1 %139, label %140, label %150, !prof !12

140:                                              ; preds = %127
  %141 = icmp ult i32 %136, %135
  br i1 %141, label %381, label %142, !prof !12

142:                                              ; preds = %140
  %143 = sub i32 %135, %138
  %144 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %143) #8
  %145 = icmp eq ptr %144, null
  br i1 %145, label %381, label %146

146:                                              ; preds = %142
  %147 = load ptr, ptr %7, align 8
  %148 = load i16, ptr %12, align 4
  %149 = zext i16 %148 to i32
  br label %150

150:                                              ; preds = %146, %127
  %151 = phi i32 [ %149, %146 ], [ %124, %127 ]
  %152 = phi ptr [ %147, %146 ], [ %129, %127 ]
  %153 = getelementptr i8, ptr %152, i32 %151
  %154 = getelementptr i8, ptr %153, i32 %125
  %155 = load i8, ptr %154, align 4
  %156 = add i8 %155, 126
  %157 = icmp ult i8 %156, 14
  br i1 %157, label %158, label %381

158:                                              ; preds = %150
  %159 = zext i8 %156 to i16
  %160 = lshr i16 8199, %159
  %161 = and i16 %160, 1
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %381, label %163

163:                                              ; preds = %158, %116, %107, %78, %77
  %164 = phi i1 [ true, %77 ], [ false, %78 ], [ true, %116 ], [ true, %107 ], [ true, %158 ]
  %165 = getelementptr inbounds %struct.inet6_protocol, ptr %70, i32 0, i32 4
  %166 = load i32, ptr %165, align 4
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %203

169:                                              ; preds = %163
  %170 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %171 = and i8 %170, 1
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %190

173:                                              ; preds = %169
  %174 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13), align 16
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load i8, ptr %16, align 1
  %178 = and i8 %177, 1
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %203, label %180

180:                                              ; preds = %176, %173
  %181 = load i32, ptr %5, align 8
  %182 = and i32 %181, -2
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %200, label %184

184:                                              ; preds = %180
  %185 = inttoptr i32 %182 to ptr
  %186 = getelementptr inbounds %struct.dst_entry, ptr %185, i32 0, i32 7
  %187 = load i16, ptr %186, align 4
  %188 = and i16 %187, 4
  %189 = icmp eq i16 %188, 0
  br i1 %189, label %200, label %203

190:                                              ; preds = %169
  %191 = load i32, ptr %5, align 8
  %192 = and i32 %191, -2
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %190
  %195 = inttoptr i32 %192 to ptr
  %196 = getelementptr inbounds %struct.dst_entry, ptr %195, i32 0, i32 7
  %197 = load i16, ptr %196, align 4
  %198 = and i16 %197, 4
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %194, %190, %184, %180
  %201 = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 10) #8
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %381, label %203

203:                                              ; preds = %200, %194, %184, %176, %163
  %204 = getelementptr inbounds %struct.inet6_protocol, ptr %70, i32 0, i32 2
  %205 = load ptr, ptr %204, align 4
  %206 = tail call i32 %205(ptr noundef %1) #8
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = load i32, ptr %165, align 4
  %210 = and i32 %209, 2
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %17, label %65

212:                                              ; preds = %203
  %213 = icmp eq i32 %206, 0
  br i1 %213, label %214, label %424

214:                                              ; preds = %212
  %215 = icmp eq ptr %24, null
  %216 = tail call ptr @llvm.thread.pointer() #8
  br i1 %215, label %237, label %217, !prof !12

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.thread_info, ptr %216, i32 0, i32 1
  %219 = load volatile i32, ptr %218, align 4
  %220 = add i32 %219, 512
  store volatile i32 %220, ptr %218, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %221 = getelementptr inbounds %struct.inet6_dev, ptr %24, i32 0, i32 33, i32 1
  %222 = load ptr, ptr %221, align 4
  %223 = ptrtoint ptr %222 to i32
  %224 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %225 = inttoptr i32 %224 to ptr
  %226 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %225) #7, !srcloc !11
  %227 = add i32 %226, %223
  %228 = inttoptr i32 %227 to ptr
  %229 = getelementptr inbounds %struct.ipstats_mib, ptr %228, i32 0, i32 1
  %230 = load i32, ptr %229, align 4
  %231 = add i32 %230, 1
  store i32 %231, ptr %229, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %232 = getelementptr [37 x i64], ptr %228, i32 0, i32 3
  %233 = load i64, ptr %232, align 8
  %234 = add i64 %233, 1
  store i64 %234, ptr %232, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  %235 = load i32, ptr %229, align 4
  %236 = add i32 %235, 1
  store i32 %236, ptr %229, align 4
  tail call fastcc void @local_bh_enable()
  br label %237

237:                                              ; preds = %217, %214
  %238 = getelementptr inbounds %struct.thread_info, ptr %216, i32 0, i32 1
  %239 = load volatile i32, ptr %238, align 4
  %240 = add i32 %239, 512
  store volatile i32 %240, ptr %238, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %241 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 1
  %242 = load ptr, ptr %241, align 4
  %243 = ptrtoint ptr %242 to i32
  %244 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %245 = inttoptr i32 %244 to ptr
  %246 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %245) #7, !srcloc !11
  %247 = add i32 %246, %243
  %248 = inttoptr i32 %247 to ptr
  %249 = getelementptr inbounds %struct.ipstats_mib, ptr %248, i32 0, i32 1
  %250 = load i32, ptr %249, align 4
  %251 = add i32 %250, 1
  store i32 %251, ptr %249, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %252 = getelementptr [37 x i64], ptr %248, i32 0, i32 3
  %253 = load i64, ptr %252, align 8
  %254 = add i64 %253, 1
  store i64 %254, ptr %252, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  %255 = load i32, ptr %249, align 4
  %256 = add i32 %255, 1
  store i32 %256, ptr %249, align 4
  tail call fastcc void @local_bh_enable()
  br label %424

257:                                              ; preds = %65
  %258 = zext i16 %25 to i32
  br i1 %68, label %338, label %259

259:                                              ; preds = %257
  %260 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %261 = and i8 %260, 1
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %263, label %280

263:                                              ; preds = %259
  %264 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13), align 16
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %263
  %267 = load i8, ptr %16, align 1
  %268 = and i8 %267, 1
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %293, label %270

270:                                              ; preds = %266, %263
  %271 = load i32, ptr %5, align 8
  %272 = and i32 %271, -2
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %290, label %274

274:                                              ; preds = %270
  %275 = inttoptr i32 %272 to ptr
  %276 = getelementptr inbounds %struct.dst_entry, ptr %275, i32 0, i32 7
  %277 = load i16, ptr %276, align 4
  %278 = and i16 %277, 4
  %279 = icmp eq i16 %278, 0
  br i1 %279, label %290, label %293

280:                                              ; preds = %259
  %281 = load i32, ptr %5, align 8
  %282 = and i32 %281, -2
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %290, label %284

284:                                              ; preds = %280
  %285 = inttoptr i32 %282 to ptr
  %286 = getelementptr inbounds %struct.dst_entry, ptr %285, i32 0, i32 7
  %287 = load i16, ptr %286, align 4
  %288 = and i16 %287, 4
  %289 = icmp eq i16 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %284, %280, %274, %270
  %291 = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 10) #8
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %337, label %293

293:                                              ; preds = %290, %284, %274, %266
  %294 = icmp eq ptr %24, null
  %295 = tail call ptr @llvm.thread.pointer() #8
  br i1 %294, label %316, label %296, !prof !12

296:                                              ; preds = %293
  %297 = getelementptr inbounds %struct.thread_info, ptr %295, i32 0, i32 1
  %298 = load volatile i32, ptr %297, align 4
  %299 = add i32 %298, 512
  store volatile i32 %299, ptr %297, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %300 = getelementptr inbounds %struct.inet6_dev, ptr %24, i32 0, i32 33, i32 1
  %301 = load ptr, ptr %300, align 4
  %302 = ptrtoint ptr %301 to i32
  %303 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %304 = inttoptr i32 %303 to ptr
  %305 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %304) #7, !srcloc !11
  %306 = add i32 %305, %302
  %307 = inttoptr i32 %306 to ptr
  %308 = getelementptr inbounds %struct.ipstats_mib, ptr %307, i32 0, i32 1
  %309 = load i32, ptr %308, align 4
  %310 = add i32 %309, 1
  store i32 %310, ptr %308, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %311 = getelementptr [37 x i64], ptr %307, i32 0, i32 11
  %312 = load i64, ptr %311, align 8
  %313 = add i64 %312, 1
  store i64 %313, ptr %311, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  %314 = load i32, ptr %308, align 4
  %315 = add i32 %314, 1
  store i32 %315, ptr %308, align 4
  tail call fastcc void @local_bh_enable()
  br label %316

316:                                              ; preds = %296, %293
  %317 = getelementptr inbounds %struct.thread_info, ptr %295, i32 0, i32 1
  %318 = load volatile i32, ptr %317, align 4
  %319 = add i32 %318, 512
  store volatile i32 %319, ptr %317, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %320 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 1
  %321 = load ptr, ptr %320, align 4
  %322 = ptrtoint ptr %321 to i32
  %323 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %324 = inttoptr i32 %323 to ptr
  %325 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %324) #7, !srcloc !11
  %326 = add i32 %325, %322
  %327 = inttoptr i32 %326 to ptr
  %328 = getelementptr inbounds %struct.ipstats_mib, ptr %327, i32 0, i32 1
  %329 = load i32, ptr %328, align 4
  %330 = add i32 %329, 1
  store i32 %330, ptr %328, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %331 = getelementptr [37 x i64], ptr %327, i32 0, i32 11
  %332 = load i64, ptr %331, align 8
  %333 = add i64 %332, 1
  store i64 %333, ptr %331, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  %334 = load i32, ptr %328, align 4
  %335 = add i32 %334, 1
  store i32 %335, ptr %328, align 4
  tail call fastcc void @local_bh_enable()
  %336 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef %258, ptr noundef null, ptr noundef %336) #8
  br label %337

337:                                              ; preds = %316, %290
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #8
  br label %424

338:                                              ; preds = %257
  %339 = icmp eq ptr %24, null
  %340 = tail call ptr @llvm.thread.pointer() #8
  br i1 %339, label %361, label %341, !prof !12

341:                                              ; preds = %338
  %342 = getelementptr inbounds %struct.thread_info, ptr %340, i32 0, i32 1
  %343 = load volatile i32, ptr %342, align 4
  %344 = add i32 %343, 512
  store volatile i32 %344, ptr %342, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %345 = getelementptr inbounds %struct.inet6_dev, ptr %24, i32 0, i32 33, i32 1
  %346 = load ptr, ptr %345, align 4
  %347 = ptrtoint ptr %346 to i32
  %348 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %349 = inttoptr i32 %348 to ptr
  %350 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %349) #7, !srcloc !11
  %351 = add i32 %350, %347
  %352 = inttoptr i32 %351 to ptr
  %353 = getelementptr inbounds %struct.ipstats_mib, ptr %352, i32 0, i32 1
  %354 = load i32, ptr %353, align 4
  %355 = add i32 %354, 1
  store i32 %355, ptr %353, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %356 = getelementptr [37 x i64], ptr %352, i32 0, i32 3
  %357 = load i64, ptr %356, align 8
  %358 = add i64 %357, 1
  store i64 %358, ptr %356, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  %359 = load i32, ptr %353, align 4
  %360 = add i32 %359, 1
  store i32 %360, ptr %353, align 4
  tail call fastcc void @local_bh_enable()
  br label %361

361:                                              ; preds = %341, %338
  %362 = getelementptr inbounds %struct.thread_info, ptr %340, i32 0, i32 1
  %363 = load volatile i32, ptr %362, align 4
  %364 = add i32 %363, 512
  store volatile i32 %364, ptr %362, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %365 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 1
  %366 = load ptr, ptr %365, align 4
  %367 = ptrtoint ptr %366 to i32
  %368 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %369 = inttoptr i32 %368 to ptr
  %370 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %369) #7, !srcloc !11
  %371 = add i32 %370, %367
  %372 = inttoptr i32 %371 to ptr
  %373 = getelementptr inbounds %struct.ipstats_mib, ptr %372, i32 0, i32 1
  %374 = load i32, ptr %373, align 4
  %375 = add i32 %374, 1
  store i32 %375, ptr %373, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %376 = getelementptr [37 x i64], ptr %372, i32 0, i32 3
  %377 = load i64, ptr %376, align 8
  %378 = add i64 %377, 1
  store i64 %378, ptr %376, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  %379 = load i32, ptr %373, align 4
  %380 = add i32 %379, 1
  store i32 %380, ptr %373, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @consume_skb(ptr noundef %1) #8
  br label %424

381:                                              ; preds = %200, %158, %150, %142, %140, %120, %77, %49, %42, %27
  %382 = icmp eq ptr %24, null
  %383 = tail call ptr @llvm.thread.pointer() #8
  br i1 %382, label %404, label %384, !prof !12

384:                                              ; preds = %381
  %385 = getelementptr inbounds %struct.thread_info, ptr %383, i32 0, i32 1
  %386 = load volatile i32, ptr %385, align 4
  %387 = add i32 %386, 512
  store volatile i32 %387, ptr %385, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %388 = getelementptr inbounds %struct.inet6_dev, ptr %24, i32 0, i32 33, i32 1
  %389 = load ptr, ptr %388, align 4
  %390 = ptrtoint ptr %389 to i32
  %391 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %392 = inttoptr i32 %391 to ptr
  %393 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %392) #7, !srcloc !11
  %394 = add i32 %393, %390
  %395 = inttoptr i32 %394 to ptr
  %396 = getelementptr inbounds %struct.ipstats_mib, ptr %395, i32 0, i32 1
  %397 = load i32, ptr %396, align 4
  %398 = add i32 %397, 1
  store i32 %398, ptr %396, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %399 = getelementptr [37 x i64], ptr %395, i32 0, i32 13
  %400 = load i64, ptr %399, align 8
  %401 = add i64 %400, 1
  store i64 %401, ptr %399, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  %402 = load i32, ptr %396, align 4
  %403 = add i32 %402, 1
  store i32 %403, ptr %396, align 4
  tail call fastcc void @local_bh_enable()
  br label %404

404:                                              ; preds = %384, %381
  %405 = getelementptr inbounds %struct.thread_info, ptr %383, i32 0, i32 1
  %406 = load volatile i32, ptr %405, align 4
  %407 = add i32 %406, 512
  store volatile i32 %407, ptr %405, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %408 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 1
  %409 = load ptr, ptr %408, align 4
  %410 = ptrtoint ptr %409 to i32
  %411 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %412 = inttoptr i32 %411 to ptr
  %413 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %412) #7, !srcloc !11
  %414 = add i32 %413, %410
  %415 = inttoptr i32 %414 to ptr
  %416 = getelementptr inbounds %struct.ipstats_mib, ptr %415, i32 0, i32 1
  %417 = load i32, ptr %416, align 4
  %418 = add i32 %417, 1
  store i32 %418, ptr %416, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %419 = getelementptr [37 x i64], ptr %415, i32 0, i32 13
  %420 = load i64, ptr %419, align 8
  %421 = add i64 %420, 1
  store i64 %421, ptr %419, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  %422 = load i32, ptr %416, align 4
  %423 = add i32 %422, 1
  store i32 %423, ptr %416, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #8
  br label %424

424:                                              ; preds = %404, %361, %337, %237, %212
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @raw6_local_deliver(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_chk_mcast_addr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_input(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  tail call void @ip6_protocol_deliver_rcu(ptr noundef nonnull @init_net, ptr noundef %0, i32 noundef 0, i1 noundef zeroext false) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_mc_input(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5, !prof !12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 69
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9, !prof !12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 33, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i64, ptr %11, i32 23
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #7, !srcloc !11
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = load i64, ptr %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, ptr %18, align 8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = zext i32 %22 to i64
  %24 = getelementptr i64, ptr %11, i32 27
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #7, !srcloc !11
  %29 = add i32 %28, %25
  %30 = inttoptr i32 %29 to ptr
  %31 = load i64, ptr %30, align 8
  %32 = add i64 %31, %23
  store i64 %32, ptr %30, align 8
  br label %33

33:                                               ; preds = %9, %5, %1
  %34 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %35 = getelementptr i64, ptr %34, i32 23
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #7, !srcloc !11
  %40 = add i32 %39, %36
  %41 = inttoptr i32 %40 to ptr
  %42 = load i64, ptr %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, ptr %41, align 8
  %44 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %45 = load i32, ptr %44, align 8
  %46 = zext i32 %45 to i64
  %47 = getelementptr i64, ptr %34, i32 27
  %48 = ptrtoint ptr %47 to i32
  %49 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %50 = inttoptr i32 %49 to ptr
  %51 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %50) #7, !srcloc !11
  %52 = add i32 %51, %48
  %53 = inttoptr i32 %52 to ptr
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %54, %46
  store i64 %55, ptr %53, align 8
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %60 = load i16, ptr %59, align 4
  %61 = zext i16 %60 to i32
  %62 = getelementptr i8, ptr %58, i32 %61
  %63 = getelementptr inbounds %struct.ipv6hdr, ptr %62, i32 0, i32 6
  %64 = tail call zeroext i1 @ipv6_chk_mcast_addr(ptr noundef %56, ptr noundef %63, ptr noundef null) #8
  br i1 %64, label %65, label %66, !prof !10

65:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  tail call void @ip6_protocol_deliver_rcu(ptr noundef nonnull @init_net, ptr noundef %0, i32 noundef 0, i1 noundef zeroext false) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %67

66:                                               ; preds = %33
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #8
  br label %67

67:                                               ; preds = %66, %65
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_route_input(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_parse_hopopts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_pfree(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

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
!9 = !{i64 2149022947}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 373839}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2148836717}
!14 = !{i64 2149384118}
!15 = !{i64 2149384419}
!16 = !{i64 2149023164}
!17 = !{i64 2153637070, i64 2153637558, i64 2153637107, i64 2153637163, i64 2153637197, i64 2153637221, i64 2153637262, i64 2153637283, i64 2153637311, i64 2153637345}
!18 = !{i64 2147961590}
!19 = !{i64 459900, i64 2147949871, i64 2147949897, i64 2147949944, i64 2147949966, i64 2147949994, i64 2147950014}
!20 = !{i64 446469, i64 446494, i64 446516, i64 446532, i64 446544, i64 446564, i64 446588, i64 446604, i64 446616}
!21 = !{i64 2147961716}
!22 = !{i8 0, i8 2}
