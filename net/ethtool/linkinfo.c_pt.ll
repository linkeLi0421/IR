; ModuleID = '/llk/IR/net/ethtool/linkinfo.c_pt.bc'
source_filename = "../net/ethtool/linkinfo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
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
%struct.linkinfo_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_link_ksettings, ptr }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.132, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.132 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type {}
%struct.ethnl_req_info = type { ptr, %struct.netdevice_tracker, i32 }
%struct.netdevice_tracker = type {}
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
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_linkinfo_get_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, align 4
@ethnl_linkinfo_request_ops = dso_local local_unnamed_addr constant %struct.ethnl_request_ops { i8 2, i8 2, i16 1, i32 8, i32 96, i8 0, ptr null, ptr @linkinfo_prepare_data, ptr @linkinfo_reply_size, ptr @linkinfo_fill_reply, ptr null }, align 4
@ethnl_linkinfo_set_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer } }>, align 4
@ethnl_set_linkinfo.__msg = internal constant [33 x i8] c"failed to retrieve link settings\00", align 1
@ethnl_set_linkinfo.__msg.1 = internal constant [28 x i8] c"link settings update failed\00", align 1
@linkinfo_prepare_data.__msg = internal constant [33 x i8] c"failed to retrieve link settings\00", align 1
@init_net = external dso_local global %struct.net, align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @linkinfo_prepare_data(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef readonly %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.linkinfo_reply_data, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.linkinfo_reply_data, ptr %1, i32 0, i32 2
  store ptr %5, ptr %6, align 4
  %7 = tail call i32 @ethnl_ops_begin(ptr noundef %4) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @__ethtool_get_link_ksettings(ptr noundef %4, ptr noundef %5) #6
  %11 = icmp slt i32 %10, 0
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.genl_info, ptr %2, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @linkinfo_prepare_data.__msg) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store ptr @linkinfo_prepare_data.__msg, ptr %16, align 4
  br label %19

19:                                               ; preds = %18, %14, %9
  tail call void @ethnl_ops_complete(ptr noundef %4) #6
  br label %20

20:                                               ; preds = %19, %3
  %21 = phi i32 [ %10, %19 ], [ %7, %3 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @linkinfo_reply_size(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #1 {
  ret i32 40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @linkinfo_fill_reply(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds %struct.linkinfo_reply_data, ptr %2, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ethtool_link_settings, ptr %10, i32 0, i32 3
  %12 = load i8, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #6
  store i8 %12, ptr %8, align 1
  %13 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %3
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr inbounds %struct.ethtool_link_settings, ptr %16, i32 0, i32 4
  %18 = load i8, ptr %17, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #6
  store i8 %18, ptr %7, align 1
  %19 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr inbounds %struct.ethtool_link_settings, ptr %22, i32 0, i32 7
  %24 = load i8, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 %24, ptr %6, align 1
  %25 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load ptr, ptr %9, align 4
  %29 = getelementptr inbounds %struct.ethtool_link_settings, ptr %28, i32 0, i32 8
  %30 = load i8, ptr %29, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 %30, ptr %5, align 1
  %31 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load ptr, ptr %9, align 4
  %35 = getelementptr inbounds %struct.ethtool_link_settings, ptr %34, i32 0, i32 10
  %36 = load i8, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 %36, ptr %4, align 1
  %37 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 0, i32 -90
  br label %40

40:                                               ; preds = %33, %27, %21, %15, %3
  %41 = phi i32 [ -90, %27 ], [ -90, %21 ], [ -90, %15 ], [ -90, %3 ], [ %39, %33 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_linkinfo(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ethtool_link_ksettings, align 4
  %4 = alloca %struct.ethnl_req_info, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %3, i8 0, i32 88, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr ptr, ptr %6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %4, ptr noundef %8, ptr noundef nonnull @init_net, ptr noundef %10, i1 noundef zeroext true) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %103, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 42
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.ethtool_ops, ptr %16, i32 0, i32 56
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %87, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.ethtool_ops, ptr %16, i32 0, i32 57
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %87, label %24

24:                                               ; preds = %20
  call void @rtnl_lock() #6
  %25 = call i32 @ethnl_ops_begin(ptr noundef %14) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %84, label %27

27:                                               ; preds = %24
  %28 = call i32 @__ethtool_get_link_ksettings(ptr noundef %14, ptr noundef nonnull %3) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load ptr, ptr %9, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_linkinfo.__msg) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %82, label %33

33:                                               ; preds = %30
  store ptr @ethnl_set_linkinfo.__msg, ptr %31, align 4
  br label %82

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.ethtool_link_settings, ptr %3, i32 0, i32 3
  %36 = getelementptr ptr, ptr %6, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = getelementptr i8, ptr %37, i32 4
  %41 = load i8, ptr %40, align 1
  %42 = load i8, ptr %35, align 1
  %43 = icmp eq i8 %42, %41
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i8 %41, ptr %35, align 1
  br label %45

45:                                               ; preds = %44, %39, %34
  %46 = phi i8 [ 0, %34 ], [ 0, %39 ], [ 1, %44 ]
  %47 = getelementptr inbounds %struct.ethtool_link_settings, ptr %3, i32 0, i32 4
  %48 = getelementptr ptr, ptr %6, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = getelementptr i8, ptr %49, i32 4
  %53 = load i8, ptr %52, align 1
  %54 = load i8, ptr %47, align 2
  %55 = icmp eq i8 %54, %53
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i8 %53, ptr %47, align 2
  br label %57

57:                                               ; preds = %56, %51, %45
  %58 = phi i8 [ %46, %45 ], [ %46, %51 ], [ 1, %56 ]
  %59 = getelementptr inbounds %struct.ethtool_link_settings, ptr %3, i32 0, i32 8
  %60 = getelementptr ptr, ptr %6, i32 5
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = getelementptr i8, ptr %61, i32 4
  %65 = load i8, ptr %64, align 1
  %66 = load i8, ptr %59, align 2
  %67 = icmp eq i8 %66, %65
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store i8 %65, ptr %59, align 2
  br label %71

69:                                               ; preds = %63, %57
  %70 = icmp eq i8 %58, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %69, %68
  %72 = load ptr, ptr %15, align 8
  %73 = getelementptr inbounds %struct.ethtool_ops, ptr %72, i32 0, i32 57
  %74 = load ptr, ptr %73, align 4
  %75 = call i32 %74(ptr noundef %14, ptr noundef nonnull %3) #6
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load ptr, ptr %9, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_linkinfo.__msg.1) #6
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  store ptr @ethnl_set_linkinfo.__msg.1, ptr %78, align 4
  br label %82

81:                                               ; preds = %71
  call void @ethtool_notify(ptr noundef %14, i32 noundef 3, ptr noundef null) #6
  br label %82

82:                                               ; preds = %81, %80, %77, %69, %33, %30
  %83 = phi i32 [ %75, %81 ], [ 0, %69 ], [ %28, %33 ], [ %28, %30 ], [ %75, %80 ], [ %75, %77 ]
  call void @ethnl_ops_complete(ptr noundef %14) #6
  br label %84

84:                                               ; preds = %82, %24
  %85 = phi i32 [ %25, %24 ], [ %83, %82 ]
  call void @rtnl_unlock() #6
  %86 = load ptr, ptr %4, align 8
  br label %87

87:                                               ; preds = %84, %20, %13
  %88 = phi ptr [ %86, %84 ], [ %14, %20 ], [ %14, %13 ]
  %89 = phi i32 [ %85, %84 ], [ -95, %20 ], [ -95, %13 ]
  %90 = icmp eq ptr %88, null
  br i1 %90, label %103, label %91

91:                                               ; preds = %87
  %92 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !9
  %93 = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 99
  %94 = load ptr, ptr %93, align 8
  %95 = ptrtoint ptr %94 to i32
  %96 = call i32 @llvm.read_register.i32(metadata !0) #6
  %97 = inttoptr i32 %96 to ptr
  %98 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %97) #5, !srcloc !10
  %99 = add i32 %98, %95
  %100 = inttoptr i32 %99 to ptr
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %101, -1
  store i32 %102, ptr %100, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %92) #6, !srcloc !11
  br label %103

103:                                              ; preds = %91, %87, %2
  %104 = phi i32 [ %11, %2 ], [ %89, %87 ], [ %89, %91 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #6
  ret i32 %104
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
declare dso_local i32 @__ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #4

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
!9 = !{i64 359462, i64 359523}
!10 = !{i64 378162}
!11 = !{i64 362479}
