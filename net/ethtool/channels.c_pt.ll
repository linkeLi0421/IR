; ModuleID = '/llk/IR/net/ethtool/channels.c_pt.bc'
source_filename = "../net/ethtool/channels.c"
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.0, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.165, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.0 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.165 = type { ptr }
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
%struct.channels_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_channels }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethnl_req_info = type { ptr, %struct.netdevice_tracker, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_channels_get_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, align 4
@ethnl_channels_request_ops = dso_local local_unnamed_addr constant %struct.ethnl_request_ops { i8 17, i8 18, i16 1, i32 8, i32 40, i8 0, ptr null, ptr @channels_prepare_data, ptr @channels_reply_size, ptr @channels_fill_reply, ptr null }, align 4
@ethnl_channels_set_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer } }>, align 4
@ethnl_set_channels.__msg = internal constant [40 x i8] c"requested channel count exceeds maximum\00", align 1
@ethnl_set_channels.__msg.1 = internal constant [78 x i8] c"requested channel counts would result in no RX or TX channel being configured\00", align 1
@ethnl_set_channels.__msg.2 = internal constant [77 x i8] c"requested channel counts are too low for existing indirection table settings\00", align 1
@init_net = external dso_local global %struct.net, align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @channels_prepare_data(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 42
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 42
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @ethnl_ops_begin(ptr noundef %4) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 42
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.channels_reply_data, ptr %1, i32 0, i32 1
  tail call void %16(ptr noundef %4, ptr noundef %17) #6
  tail call void @ethnl_ops_complete(ptr noundef %4) #6
  br label %18

18:                                               ; preds = %13, %10, %3
  %19 = phi i32 [ 0, %13 ], [ -95, %3 ], [ %11, %10 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @channels_reply_size(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #1 {
  ret i32 64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @channels_fill_reply(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.channels_reply_data, ptr %2, i32 0, i32 1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  store i32 %13, ptr %11, align 4
  %16 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %60

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.channels_reply_data, ptr %2, i32 0, i32 1, i32 5
  %20 = load i32, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  store i32 %20, ptr %10, align 4
  %21 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %18, %3
  %24 = getelementptr inbounds %struct.channels_reply_data, ptr %2, i32 0, i32 1, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  store i32 %25, ptr %9, align 4
  %28 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.channels_reply_data, ptr %2, i32 0, i32 1, i32 6
  %32 = load i32, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 %32, ptr %8, align 4
  %33 = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %30, %23
  %36 = getelementptr inbounds %struct.channels_reply_data, ptr %2, i32 0, i32 1, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 %37, ptr %7, align 4
  %40 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.channels_reply_data, ptr %2, i32 0, i32 1, i32 7
  %44 = load i32, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 %44, ptr %6, align 4
  %45 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42, %35
  %48 = getelementptr inbounds %struct.channels_reply_data, ptr %2, i32 0, i32 1, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 %49, ptr %5, align 4
  %52 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.channels_reply_data, ptr %2, i32 0, i32 1, i32 8
  %56 = load i32, ptr %55, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 %56, ptr %4, align 4
  %57 = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %47
  br label %60

60:                                               ; preds = %59, %54, %51, %42, %39, %30, %27, %18, %15
  %61 = phi i32 [ 0, %59 ], [ -90, %54 ], [ -90, %51 ], [ -90, %42 ], [ -90, %39 ], [ -90, %30 ], [ -90, %27 ], [ -90, %18 ], [ -90, %15 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_channels(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ethtool_channels, align 4
  %4 = alloca %struct.ethnl_req_info, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 0, ptr %4, align 8
  %6 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4
  %8 = getelementptr ptr, ptr %7, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %4, ptr noundef %9, ptr noundef nonnull @init_net, ptr noundef %11, i1 noundef zeroext true) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %173, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 42
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ethtool_ops, ptr %17, i32 0, i32 42
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %157, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ethtool_ops, ptr %17, i32 0, i32 43
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %157, label %25

25:                                               ; preds = %21
  call void @rtnl_lock() #6
  %26 = call i32 @ethnl_ops_begin(ptr noundef %15) #6
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %154, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %18, align 4
  call void %29(ptr noundef %15, ptr noundef nonnull %3) #6
  %30 = getelementptr inbounds %struct.ethtool_channels, ptr %3, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ethtool_channels, ptr %3, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ethtool_channels, ptr %3, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr ptr, ptr %7, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %28
  %40 = getelementptr i8, ptr %37, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %33, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i32 %41, ptr %32, align 4
  br label %44

44:                                               ; preds = %43, %39, %28
  %45 = phi i32 [ %33, %28 ], [ %33, %39 ], [ %41, %43 ]
  %46 = phi i8 [ 0, %28 ], [ 0, %39 ], [ 1, %43 ]
  %47 = getelementptr ptr, ptr %7, i32 7
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = getelementptr i8, ptr %48, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %35, %52
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 %52, ptr %34, align 4
  br label %55

55:                                               ; preds = %54, %50, %44
  %56 = phi i32 [ %35, %44 ], [ %35, %50 ], [ %52, %54 ]
  %57 = phi i8 [ %46, %44 ], [ %46, %50 ], [ 1, %54 ]
  %58 = getelementptr inbounds %struct.ethtool_channels, ptr %3, i32 0, i32 7
  %59 = getelementptr ptr, ptr %7, i32 8
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = getelementptr i8, ptr %60, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %58, align 4
  %66 = icmp eq i32 %65, %64
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i32 %64, ptr %58, align 4
  br label %68

68:                                               ; preds = %67, %62, %55
  %69 = phi i8 [ %57, %55 ], [ %57, %62 ], [ 1, %67 ]
  %70 = getelementptr ptr, ptr %7, i32 9
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = getelementptr i8, ptr %71, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %31, %75
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  store i32 %75, ptr %30, align 4
  br label %78

78:                                               ; preds = %77, %73, %68
  %79 = phi i32 [ %31, %68 ], [ %31, %73 ], [ %75, %77 ]
  %80 = phi i1 [ true, %68 ], [ true, %73 ], [ false, %77 ]
  %81 = phi i8 [ 0, %68 ], [ 0, %73 ], [ 1, %77 ]
  %82 = or i8 %81, %69
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %152, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.ethtool_channels, ptr %3, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = icmp ugt i32 %45, %86
  br i1 %87, label %101, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.ethtool_channels, ptr %3, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = icmp ugt i32 %56, %90
  br i1 %91, label %101, label %92

92:                                               ; preds = %88
  %93 = load i32, ptr %58, align 4
  %94 = getelementptr inbounds %struct.ethtool_channels, ptr %3, i32 0, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = icmp ugt i32 %93, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.ethtool_channels, ptr %3, i32 0, i32 4
  %99 = load i32, ptr %98, align 4
  %100 = icmp ugt i32 %79, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %97, %92, %88, %84
  %102 = phi i32 [ 9, %97 ], [ 8, %92 ], [ 7, %88 ], [ 6, %84 ]
  %103 = load ptr, ptr %10, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_channels.__msg) #6
  %104 = icmp eq ptr %103, null
  br i1 %104, label %152, label %105

105:                                              ; preds = %101
  store ptr @ethnl_set_channels.__msg, ptr %103, align 4
  %106 = getelementptr ptr, ptr %7, i32 %102
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.netlink_ext_ack, ptr %103, i32 0, i32 1
  store ptr %107, ptr %108, align 4
  %109 = getelementptr inbounds %struct.netlink_ext_ack, ptr %103, i32 0, i32 2
  store ptr null, ptr %109, align 4
  br label %152

110:                                              ; preds = %97
  %111 = icmp ne i32 %79, 0
  %112 = icmp ne i32 %45, 0
  %113 = select i1 %111, i1 true, i1 %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = icmp ne i32 %56, 0
  %116 = select i1 %111, i1 true, i1 %115
  br i1 %116, label %127, label %117

117:                                              ; preds = %114, %110
  %118 = phi i32 [ 7, %114 ], [ 6, %110 ]
  %119 = load ptr, ptr %10, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_channels.__msg.1) #6
  %120 = icmp eq ptr %119, null
  br i1 %120, label %152, label %121

121:                                              ; preds = %117
  %122 = select i1 %80, i32 %118, i32 9
  store ptr @ethnl_set_channels.__msg.1, ptr %119, align 4
  %123 = getelementptr ptr, ptr %7, i32 %122
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.netlink_ext_ack, ptr %119, i32 0, i32 1
  store ptr %124, ptr %125, align 4
  %126 = getelementptr inbounds %struct.netlink_ext_ack, ptr %119, i32 0, i32 2
  store ptr null, ptr %126, align 4
  br label %152

127:                                              ; preds = %114
  %128 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 15
  %129 = load i64, ptr %128, align 16
  %130 = and i64 %129, 8388608
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %145, label %132

132:                                              ; preds = %127
  %133 = call i32 @ethtool_get_max_rxfh_channel(ptr noundef %15, ptr noundef nonnull %5) #6
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i32, ptr %30, align 4
  %137 = load i32, ptr %32, align 4
  %138 = add i32 %137, %136
  %139 = load i32, ptr %5, align 4
  %140 = icmp ugt i32 %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %135
  %142 = load ptr, ptr %10, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_channels.__msg.2) #6
  %143 = icmp eq ptr %142, null
  br i1 %143, label %152, label %144

144:                                              ; preds = %141
  store ptr @ethnl_set_channels.__msg.2, ptr %142, align 4
  br label %152

145:                                              ; preds = %135, %132, %127
  %146 = load ptr, ptr %16, align 8
  %147 = getelementptr inbounds %struct.ethtool_ops, ptr %146, i32 0, i32 43
  %148 = load ptr, ptr %147, align 4
  %149 = call i32 %148(ptr noundef %15, ptr noundef nonnull %3) #6
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %145
  call void @ethtool_notify(ptr noundef %15, i32 noundef 19, ptr noundef null) #6
  br label %152

152:                                              ; preds = %151, %145, %144, %141, %121, %117, %105, %101, %78
  %153 = phi i32 [ %149, %145 ], [ %149, %151 ], [ 0, %78 ], [ -22, %105 ], [ -22, %101 ], [ -22, %121 ], [ -22, %117 ], [ -22, %144 ], [ -22, %141 ]
  call void @ethnl_ops_complete(ptr noundef %15) #6
  br label %154

154:                                              ; preds = %152, %25
  %155 = phi i32 [ %26, %25 ], [ %153, %152 ]
  call void @rtnl_unlock() #6
  %156 = load ptr, ptr %4, align 8
  br label %157

157:                                              ; preds = %154, %21, %14
  %158 = phi ptr [ %156, %154 ], [ %15, %21 ], [ %15, %14 ]
  %159 = phi i32 [ %155, %154 ], [ -95, %21 ], [ -95, %14 ]
  %160 = icmp eq ptr %158, null
  br i1 %160, label %173, label %161

161:                                              ; preds = %157
  %162 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !9
  %163 = getelementptr inbounds %struct.net_device, ptr %158, i32 0, i32 99
  %164 = load ptr, ptr %163, align 8
  %165 = ptrtoint ptr %164 to i32
  %166 = call i32 @llvm.read_register.i32(metadata !0) #6
  %167 = inttoptr i32 %166 to ptr
  %168 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %167) #5, !srcloc !10
  %169 = add i32 %168, %165
  %170 = inttoptr i32 %169 to ptr
  %171 = load i32, ptr %170, align 4
  %172 = add i32 %171, -1
  store i32 %172, ptr %170, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %162) #6, !srcloc !11
  br label %173

173:                                              ; preds = %161, %157, %2
  %174 = phi i32 [ %12, %2 ], [ %159, %157 ], [ %159, %161 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #6
  ret i32 %174
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_get_max_rxfh_channel(ptr noundef, ptr noundef) local_unnamed_addr #4

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
!9 = !{i64 805027, i64 805088}
!10 = !{i64 823727}
!11 = !{i64 808044}
