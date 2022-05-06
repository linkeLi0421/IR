; ModuleID = '/llk/IR/net/ethtool/rings.c_pt.bc'
source_filename = "../net/ethtool/rings.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i16, i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.15 }
%union.anon.15 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.57, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.57 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type {}
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.0, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.133, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.0 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.133 = type { ptr }
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
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rings_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_ringparam, %struct.kernel_ethtool_ringparam }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_ethtool_ringparam = type { i32 }
%struct.ethnl_req_info = type { ptr, %struct.netdevice_tracker, i32 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_rings_get_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, align 4
@ethnl_rings_request_ops = dso_local local_unnamed_addr constant %struct.ethnl_request_ops { i8 15, i8 16, i16 1, i32 8, i32 44, i8 0, ptr null, ptr @rings_prepare_data, ptr @rings_reply_size, ptr @rings_fill_reply, ptr null }, align 4
@ethnl_rings_set_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, { i8, i8, i16, { %struct.anon } } { i8 3, i8 3, i16 0, { %struct.anon } { %struct.anon { i16 1, i16 0 } } } }>, align 4
@ethnl_set_rings.__msg = internal constant [36 x i8] c"requested ring size exceeds maximum\00", align 1
@ethnl_set_rings.__msg.1 = internal constant [33 x i8] c"setting rx buf len not supported\00", align 1
@init_net = external dso_local global %struct.net, align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rings_prepare_data(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef readonly %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.genl_info, ptr %2, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi ptr [ %7, %5 ], [ null, %3 ]
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 42
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.ethtool_ops, ptr %12, i32 0, i32 18
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %8
  %17 = tail call i32 @ethnl_ops_begin(ptr noundef %10) #6
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %11, align 8
  %21 = getelementptr inbounds %struct.ethtool_ops, ptr %20, i32 0, i32 18
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rings_reply_data, ptr %1, i32 0, i32 1
  %24 = getelementptr inbounds %struct.rings_reply_data, ptr %1, i32 0, i32 2
  tail call void %22(ptr noundef %10, ptr noundef %23, ptr noundef %24, ptr noundef %9) #6
  tail call void @ethnl_ops_complete(ptr noundef %10) #6
  br label %25

25:                                               ; preds = %19, %16, %8
  %26 = phi i32 [ 0, %19 ], [ -95, %8 ], [ %17, %16 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rings_reply_size(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #1 {
  ret i32 72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rings_fill_reply(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.rings_reply_data, ptr %2, i32 0, i32 2
  %14 = getelementptr inbounds %struct.rings_reply_data, ptr %2, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  store i32 %15, ptr %12, align 4
  %18 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %68

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rings_reply_data, ptr %2, i32 0, i32 1, i32 5
  %22 = load i32, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  store i32 %22, ptr %11, align 4
  %23 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %68

25:                                               ; preds = %20, %3
  %26 = getelementptr inbounds %struct.rings_reply_data, ptr %2, i32 0, i32 1, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  store i32 %27, ptr %10, align 4
  %30 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.rings_reply_data, ptr %2, i32 0, i32 1, i32 6
  %34 = load i32, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  store i32 %34, ptr %9, align 4
  %35 = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %32, %25
  %38 = getelementptr inbounds %struct.rings_reply_data, ptr %2, i32 0, i32 1, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 %39, ptr %8, align 4
  %42 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.rings_reply_data, ptr %2, i32 0, i32 1, i32 7
  %46 = load i32, ptr %45, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 %46, ptr %7, align 4
  %47 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %44, %37
  %50 = getelementptr inbounds %struct.rings_reply_data, ptr %2, i32 0, i32 1, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 %51, ptr %6, align 4
  %54 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.rings_reply_data, ptr %2, i32 0, i32 1, i32 8
  %58 = load i32, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 %58, ptr %5, align 4
  %59 = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56, %49
  %62 = load i32, ptr %13, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 %62, ptr %4, align 4
  %65 = call i32 @nla_put(ptr noundef %0, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %64, %56, %53, %44, %41, %32, %29, %20, %17
  %69 = phi i32 [ 0, %67 ], [ -90, %64 ], [ -90, %56 ], [ -90, %53 ], [ -90, %44 ], [ -90, %41 ], [ -90, %32 ], [ -90, %29 ], [ -90, %20 ], [ -90, %17 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_rings(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.kernel_ethtool_ringparam, align 4
  %4 = alloca %struct.ethtool_ringparam, align 4
  %5 = alloca %struct.ethnl_req_info, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr ptr, ptr %7, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %5, ptr noundef %9, ptr noundef nonnull @init_net, ptr noundef %11, i1 noundef zeroext true) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %164, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 42
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ethtool_ops, ptr %17, i32 0, i32 18
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %148, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ethtool_ops, ptr %17, i32 0, i32 19
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %148, label %25

25:                                               ; preds = %21
  call void @rtnl_lock() #6
  %26 = call i32 @ethnl_ops_begin(ptr noundef %15) #6
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %145, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %18, align 4
  %30 = load ptr, ptr %10, align 4
  call void %29(ptr noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %30) #6
  %31 = getelementptr inbounds %struct.ethtool_ringparam, ptr %4, i32 0, i32 5
  %32 = getelementptr ptr, ptr %7, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = getelementptr i8, ptr %33, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %31, align 4
  %39 = icmp eq i32 %38, %37
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 %37, ptr %31, align 4
  br label %41

41:                                               ; preds = %40, %35, %28
  %42 = phi i8 [ 0, %28 ], [ 0, %35 ], [ 1, %40 ]
  %43 = getelementptr inbounds %struct.ethtool_ringparam, ptr %4, i32 0, i32 6
  %44 = getelementptr ptr, ptr %7, i32 7
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = getelementptr i8, ptr %45, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr %43, align 4
  %51 = icmp eq i32 %50, %49
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 %49, ptr %43, align 4
  br label %53

53:                                               ; preds = %52, %47, %41
  %54 = phi i8 [ %42, %41 ], [ %42, %47 ], [ 1, %52 ]
  %55 = getelementptr inbounds %struct.ethtool_ringparam, ptr %4, i32 0, i32 7
  %56 = getelementptr ptr, ptr %7, i32 8
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = getelementptr i8, ptr %57, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %55, align 4
  %63 = icmp eq i32 %62, %61
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  store i32 %61, ptr %55, align 4
  br label %65

65:                                               ; preds = %64, %59, %53
  %66 = phi i8 [ %54, %53 ], [ %54, %59 ], [ 1, %64 ]
  %67 = getelementptr inbounds %struct.ethtool_ringparam, ptr %4, i32 0, i32 8
  %68 = getelementptr ptr, ptr %7, i32 9
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = getelementptr i8, ptr %69, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = load i32, ptr %67, align 4
  %75 = icmp eq i32 %74, %73
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  store i32 %73, ptr %67, align 4
  br label %77

77:                                               ; preds = %76, %71, %65
  %78 = phi i8 [ %66, %65 ], [ %66, %71 ], [ 1, %76 ]
  %79 = getelementptr ptr, ptr %7, i32 10
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %77
  %83 = getelementptr i8, ptr %80, i32 4
  %84 = load i32, ptr %83, align 4
  %85 = load i32, ptr %3, align 4
  %86 = icmp eq i32 %85, %84
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  store i32 %84, ptr %3, align 4
  br label %90

88:                                               ; preds = %82, %77
  %89 = icmp eq i8 %78, 0
  br i1 %89, label %143, label %90

90:                                               ; preds = %88, %87
  %91 = load i32, ptr %31, align 4
  %92 = getelementptr inbounds %struct.ethtool_ringparam, ptr %4, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = icmp ugt i32 %91, %93
  br i1 %94, label %110, label %95

95:                                               ; preds = %90
  %96 = load i32, ptr %43, align 4
  %97 = getelementptr inbounds %struct.ethtool_ringparam, ptr %4, i32 0, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = icmp ugt i32 %96, %98
  br i1 %99, label %110, label %100

100:                                              ; preds = %95
  %101 = load i32, ptr %55, align 4
  %102 = getelementptr inbounds %struct.ethtool_ringparam, ptr %4, i32 0, i32 3
  %103 = load i32, ptr %102, align 4
  %104 = icmp ugt i32 %101, %103
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load i32, ptr %67, align 4
  %107 = getelementptr inbounds %struct.ethtool_ringparam, ptr %4, i32 0, i32 4
  %108 = load i32, ptr %107, align 4
  %109 = icmp ugt i32 %106, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %105, %100, %95, %90
  %111 = phi ptr [ %32, %90 ], [ %44, %95 ], [ %56, %100 ], [ %68, %105 ]
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr %10, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_rings.__msg) #6
  %116 = icmp eq ptr %115, null
  br i1 %116, label %143, label %117

117:                                              ; preds = %114
  store ptr @ethnl_set_rings.__msg, ptr %115, align 4
  %118 = getelementptr inbounds %struct.netlink_ext_ack, ptr %115, i32 0, i32 1
  store ptr %112, ptr %118, align 4
  %119 = getelementptr inbounds %struct.netlink_ext_ack, ptr %115, i32 0, i32 2
  store ptr null, ptr %119, align 4
  br label %143

120:                                              ; preds = %110, %105
  %121 = load i32, ptr %3, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.ethtool_ops, ptr %17, i32 0, i32 2
  %125 = load i32, ptr %124, align 4
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load ptr, ptr %10, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_rings.__msg.1) #6
  %130 = icmp eq ptr %129, null
  br i1 %130, label %143, label %131

131:                                              ; preds = %128
  store ptr @ethnl_set_rings.__msg.1, ptr %129, align 4
  %132 = load ptr, ptr %79, align 4
  %133 = getelementptr inbounds %struct.netlink_ext_ack, ptr %129, i32 0, i32 1
  store ptr %132, ptr %133, align 4
  %134 = getelementptr inbounds %struct.netlink_ext_ack, ptr %129, i32 0, i32 2
  store ptr null, ptr %134, align 4
  br label %143

135:                                              ; preds = %123, %120
  %136 = load ptr, ptr %16, align 8
  %137 = getelementptr inbounds %struct.ethtool_ops, ptr %136, i32 0, i32 19
  %138 = load ptr, ptr %137, align 4
  %139 = load ptr, ptr %10, align 4
  %140 = call i32 %138(ptr noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %139) #6
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  call void @ethtool_notify(ptr noundef %15, i32 noundef 17, ptr noundef null) #6
  br label %143

143:                                              ; preds = %142, %135, %131, %128, %117, %114, %88
  %144 = phi i32 [ %140, %135 ], [ %140, %142 ], [ 0, %88 ], [ -22, %117 ], [ -22, %114 ], [ -95, %131 ], [ -95, %128 ]
  call void @ethnl_ops_complete(ptr noundef %15) #6
  br label %145

145:                                              ; preds = %143, %25
  %146 = phi i32 [ %26, %25 ], [ %144, %143 ]
  call void @rtnl_unlock() #6
  %147 = load ptr, ptr %5, align 8
  br label %148

148:                                              ; preds = %145, %21, %14
  %149 = phi ptr [ %147, %145 ], [ %15, %21 ], [ %15, %14 ]
  %150 = phi i32 [ %146, %145 ], [ -95, %21 ], [ -95, %14 ]
  %151 = icmp eq ptr %149, null
  br i1 %151, label %164, label %152

152:                                              ; preds = %148
  %153 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !9
  %154 = getelementptr inbounds %struct.net_device, ptr %149, i32 0, i32 99
  %155 = load ptr, ptr %154, align 8
  %156 = ptrtoint ptr %155 to i32
  %157 = call i32 @llvm.read_register.i32(metadata !0) #6
  %158 = inttoptr i32 %157 to ptr
  %159 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %158) #5, !srcloc !10
  %160 = add i32 %159, %156
  %161 = inttoptr i32 %160 to ptr
  %162 = load i32, ptr %161, align 4
  %163 = add i32 %162, -1
  store i32 %163, ptr %161, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %153) #6, !srcloc !11
  br label %164

164:                                              ; preds = %152, %148, %2
  %165 = phi i32 [ %12, %2 ], [ %150, %148 ], [ %150, %152 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %165
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_parse_header_dev_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

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
!9 = !{i64 361431, i64 361492}
!10 = !{i64 380131}
!11 = !{i64 364448}
