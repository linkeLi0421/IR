; ModuleID = '/llk/IR/net/ethtool/features.c_pt.bc'
source_filename = "../net/ethtool/features.c"
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
%struct.features_reply_data = type { %struct.ethnl_reply_data, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.ethnl_reply_data = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.0, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.133, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.0 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
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
%struct.ethnl_req_info = type { ptr, %struct.netdevice_tracker, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.sk_buff = type { %union.anon.1, %union.anon.4, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr, %union.anon.3 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_features_get_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, align 4
@ethnl_features_request_ops = dso_local local_unnamed_addr constant %struct.ethnl_request_ops { i8 11, i8 11, i16 1, i32 8, i32 44, i8 0, ptr null, ptr @features_prepare_data, ptr @features_reply_size, ptr @features_fill_reply, ptr null }, align 4
@ethnl_features_set_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer } }>, align 4
@netdev_features_strings = external dso_local constant [64 x [32 x i8]], align 1
@ethnl_set_features.__msg = internal constant [39 x i8] c"attempt to change non-ethtool features\00", align 1
@init_net = external dso_local global %struct.net, align 64
@features_send_reply.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [23 x i8] c"net/ethtool/features.c\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"calculated message payload length (%d) not sufficient\0A\00", align 1
@features_send_reply.__msg = internal constant [29 x i8] c"failed to send reply message\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @features_prepare_data(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.features_reply_data, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 24
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr %5, align 4
  %9 = lshr i64 %7, 32
  %10 = trunc i64 %9 to i32
  %11 = getelementptr %struct.features_reply_data, ptr %1, i32 0, i32 1, i32 1
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.features_reply_data, ptr %1, i32 0, i32 2
  %13 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 25
  %14 = load i64, ptr %13, align 32
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %12, align 4
  %16 = lshr i64 %14, 32
  %17 = trunc i64 %16 to i32
  %18 = getelementptr %struct.features_reply_data, ptr %1, i32 0, i32 2, i32 1
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.features_reply_data, ptr %1, i32 0, i32 3
  %20 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 23
  %21 = load i64, ptr %20, align 16
  %22 = trunc i64 %21 to i32
  store i32 %22, ptr %19, align 4
  %23 = lshr i64 %21, 32
  %24 = trunc i64 %23 to i32
  %25 = getelementptr %struct.features_reply_data, ptr %1, i32 0, i32 3, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.features_reply_data, ptr %1, i32 0, i32 4
  store i32 13312, ptr %26, align 4
  %27 = getelementptr %struct.features_reply_data, ptr %1, i32 0, i32 4, i32 1
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.features_reply_data, ptr %1, i32 0, i32 5
  store i32 -1, ptr %28, align 4
  %29 = getelementptr %struct.features_reply_data, ptr %1, i32 0, i32 5, i32 1
  store i32 -1, ptr %29, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @features_reply_size(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.ethnl_req_info, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp ne i32 %5, 0
  %7 = getelementptr inbounds %struct.features_reply_data, ptr %1, i32 0, i32 1
  %8 = getelementptr inbounds %struct.features_reply_data, ptr %1, i32 0, i32 5
  %9 = tail call i32 @ethnl_bitset32_size(ptr noundef %7, ptr noundef %8, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %6) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.features_reply_data, ptr %1, i32 0, i32 2
  %13 = tail call i32 @ethnl_bitset32_size(ptr noundef %12, ptr noundef null, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %6) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.features_reply_data, ptr %1, i32 0, i32 3
  %17 = tail call i32 @ethnl_bitset32_size(ptr noundef %16, ptr noundef null, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %6) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.features_reply_data, ptr %1, i32 0, i32 4
  %21 = tail call i32 @ethnl_bitset32_size(ptr noundef %20, ptr noundef null, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %6) #7
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = add nuw i32 %13, %9
  %25 = add i32 %24, %17
  %26 = add i32 %25, %21
  br label %27

27:                                               ; preds = %23, %19, %15, %11, %2
  %28 = phi i32 [ %26, %23 ], [ %9, %2 ], [ %13, %11 ], [ %17, %15 ], [ %21, %19 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @features_fill_reply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.ethnl_req_info, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  %8 = getelementptr inbounds %struct.features_reply_data, ptr %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.features_reply_data, ptr %2, i32 0, i32 5
  %10 = tail call i32 @ethnl_put_bitset32(ptr noundef %0, i32 noundef 2, ptr noundef %8, ptr noundef %9, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %7) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.features_reply_data, ptr %2, i32 0, i32 2
  %14 = tail call i32 @ethnl_put_bitset32(ptr noundef %0, i32 noundef 3, ptr noundef %13, ptr noundef null, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %7) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.features_reply_data, ptr %2, i32 0, i32 3
  %18 = tail call i32 @ethnl_put_bitset32(ptr noundef %0, i32 noundef 4, ptr noundef %17, ptr noundef null, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %7) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.features_reply_data, ptr %2, i32 0, i32 4
  %22 = tail call i32 @ethnl_put_bitset32(ptr noundef %0, i32 noundef 5, ptr noundef %21, ptr noundef null, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %7) #7
  br label %23

23:                                               ; preds = %20, %16, %12, %3
  %24 = phi i32 [ %22, %20 ], [ %10, %3 ], [ %14, %12 ], [ %18, %16 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_features(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca ptr, align 4
  %4 = alloca [2 x i32], align 8
  %5 = alloca [2 x i32], align 8
  %6 = alloca [2 x i32], align 8
  %7 = alloca [2 x i32], align 8
  %8 = alloca [2 x i32], align 8
  %9 = alloca [2 x i32], align 8
  %10 = alloca [2 x i32], align 8
  %11 = alloca [2 x i32], align 8
  %12 = alloca %struct.ethnl_req_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 0, ptr %5, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  store i64 0, ptr %8, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  store i64 0, ptr %9, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  store i64 0, ptr %10, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7
  store i64 0, ptr %11, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7
  store i64 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr ptr, ptr %14, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %149, label %18

18:                                               ; preds = %2
  %19 = getelementptr ptr, ptr %14, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %12, ptr noundef %20, ptr noundef nonnull @init_net, ptr noundef %22, i1 noundef zeroext true) #7
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %149, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %12, align 8
  call void @rtnl_lock() #7
  %27 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 23
  %28 = load i64, ptr %27, align 16
  %29 = trunc i64 %28 to i32
  store i32 %29, ptr %6, align 8
  %30 = lshr i64 %28, 32
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds i32, ptr %6, i32 1
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 25
  %34 = load i64, ptr %33, align 32
  %35 = trunc i64 %34 to i32
  store i32 %35, ptr %7, align 8
  %36 = lshr i64 %34, 32
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds i32, ptr %7, i32 1
  store i32 %37, ptr %38, align 4
  %39 = load ptr, ptr %15, align 4
  %40 = load ptr, ptr %21, align 4
  %41 = call i32 @ethnl_parse_bitset(ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef 64, ptr noundef %39, ptr noundef nonnull @netdev_features_strings, ptr noundef %40) #7
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %133, label %43

43:                                               ; preds = %25
  %44 = load i32, ptr %11, align 8
  %45 = and i32 %44, 13312
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %21, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_features.__msg) #7
  %49 = icmp eq ptr %48, null
  br i1 %49, label %133, label %50

50:                                               ; preds = %47
  store ptr @ethnl_set_features.__msg, ptr %48, align 4
  br label %133

51:                                               ; preds = %43
  %52 = call i32 @__bitmap_and(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef 64) #7
  %53 = call i32 @__bitmap_andnot(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %11, i32 noundef 64) #7
  call void @__bitmap_or(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef 64) #7
  %54 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %10, ptr noundef nonnull dereferenceable(8) %7, i32 8) #7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 24
  %58 = load i64, ptr %57, align 8
  %59 = xor i64 %58, -1
  %60 = load i64, ptr %33, align 32
  %61 = and i64 %60, %59
  %62 = load i32, ptr %10, align 8
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %10, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = zext i32 %65 to i64
  %67 = shl nuw i64 %66, 32
  %68 = or i64 %67, %63
  %69 = and i64 %68, %58
  %70 = or i64 %69, %61
  store i64 %70, ptr %33, align 32
  %71 = call i32 @__netdev_update_features(ptr noundef %26) #7
  br label %72

72:                                               ; preds = %56, %51
  %73 = load i64, ptr %27, align 16
  %74 = trunc i64 %73 to i32
  store i32 %74, ptr %8, align 8
  %75 = lshr i64 %73, 32
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds i32, ptr %8, i32 1
  store i32 %76, ptr %77, align 4
  %78 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %6, ptr noundef nonnull dereferenceable(8) %8, i32 8) #7
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr inbounds %struct.ethnl_req_info, ptr %12, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %130

84:                                               ; preds = %72
  %85 = and i32 %81, 1
  %86 = icmp ne i32 %85, 0
  call void @__bitmap_xor(ptr noundef nonnull %4, ptr noundef nonnull %10, ptr noundef nonnull %8, i32 noundef 64) #7
  call void @__bitmap_xor(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef 64) #7
  %87 = call i32 @__bitmap_and(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef 64) #7
  %88 = call i32 @__bitmap_and(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %4, i32 noundef 64) #7
  %89 = call i32 @__bitmap_and(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef 64) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !9
  %90 = call i32 @ethnl_bitset_size(ptr noundef nonnull %10, ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %86) #7
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %123, label %92

92:                                               ; preds = %84
  %93 = call i32 @ethnl_bitset_size(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %86) #7
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %123, label %95

95:                                               ; preds = %92
  %96 = add nuw i32 %90, 32
  %97 = add i32 %96, %93
  %98 = call ptr @ethnl_reply_init(i32 noundef %97, ptr noundef %26, i8 noundef zeroext 12, i16 noundef zeroext 1, ptr noundef %1, ptr noundef nonnull %3) #7
  %99 = icmp eq ptr %98, null
  br i1 %99, label %123, label %100

100:                                              ; preds = %95
  %101 = call i32 @ethnl_put_bitset(ptr noundef nonnull %98, i32 noundef 3, ptr noundef nonnull %10, ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %86) #7
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %100
  %104 = call i32 @ethnl_put_bitset(ptr noundef nonnull %98, i32 noundef 4, ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef 64, ptr noundef nonnull @netdev_features_strings, i1 noundef zeroext %86) #7
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %119, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %3, align 4
  %108 = getelementptr i8, ptr %107, i32 -20
  %109 = getelementptr inbounds %struct.sk_buff, ptr %98, i32 0, i32 14
  %110 = load ptr, ptr %109, align 8
  %111 = ptrtoint ptr %110 to i32
  %112 = ptrtoint ptr %108 to i32
  %113 = sub i32 %111, %112
  store i32 %113, ptr %108, align 4
  %114 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %117 = call i32 @netlink_unicast(ptr noundef %116, ptr noundef nonnull %98, i32 noundef %115, i32 noundef 64) #7
  %118 = call i32 @llvm.smin.i32(i32 %117, i32 0) #7
  br label %128

119:                                              ; preds = %103, %100
  %120 = phi i32 [ %101, %100 ], [ %104, %103 ]
  call void @kfree_skb_reason(ptr noundef nonnull %98, i32 noundef 0) #7
  %121 = load i1, ptr @features_send_reply.__already_done, align 1
  br i1 %121, label %123, label %122, !prof !10

122:                                              ; preds = %119
  store i1 true, ptr @features_send_reply.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %97) #7
  br label %123

123:                                              ; preds = %122, %119, %95, %92, %84
  %124 = phi i32 [ %90, %84 ], [ %93, %92 ], [ -12, %95 ], [ %120, %122 ], [ %120, %119 ]
  %125 = load ptr, ptr %21, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @features_send_reply.__msg) #7
  %126 = icmp eq ptr %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  store ptr @features_send_reply.__msg, ptr %125, align 4
  br label %128

128:                                              ; preds = %127, %123, %106
  %129 = phi i32 [ %118, %106 ], [ %124, %127 ], [ %124, %123 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %130

130:                                              ; preds = %128, %72
  %131 = phi i32 [ 0, %72 ], [ %129, %128 ]
  br i1 %79, label %133, label %132

132:                                              ; preds = %130
  call void @netdev_features_change(ptr noundef %26) #7
  br label %133

133:                                              ; preds = %132, %130, %50, %47, %25
  %134 = phi i32 [ %41, %25 ], [ %131, %132 ], [ %131, %130 ], [ -22, %50 ], [ -22, %47 ]
  call void @rtnl_unlock() #7
  %135 = load ptr, ptr %12, align 8
  %136 = icmp eq ptr %135, null
  br i1 %136, label %149, label %137

137:                                              ; preds = %133
  %138 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !11
  %139 = getelementptr inbounds %struct.net_device, ptr %135, i32 0, i32 99
  %140 = load ptr, ptr %139, align 8
  %141 = ptrtoint ptr %140 to i32
  %142 = call i32 @llvm.read_register.i32(metadata !0) #7
  %143 = inttoptr i32 %142 to ptr
  %144 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %143) #4, !srcloc !12
  %145 = add i32 %144, %141
  %146 = inttoptr i32 %145 to ptr
  %147 = load i32, ptr %146, align 4
  %148 = add i32 %147, -1
  store i32 %148, ptr %146, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %138) #7, !srcloc !13
  br label %149

149:                                              ; preds = %137, %133, %18, %2
  %150 = phi i32 [ -22, %2 ], [ %23, %18 ], [ %134, %133 ], [ %134, %137 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %150
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_parse_header_dev_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_parse_bitset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netdev_update_features(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_features_change(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset32_size(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_put_bitset32(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_andnot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset_size(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ethnl_reply_init(i32 noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_put_bitset(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 364053, i64 364114}
!12 = !{i64 382753}
!13 = !{i64 367070}
