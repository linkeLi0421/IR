; ModuleID = '/llk/IR/net/ethtool/eee.c_pt.bc'
source_filename = "../net/ethtool/eee.c"
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
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.eee_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_eee }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.ethnl_req_info = type { ptr, %struct.netdevice_tracker, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_eee_get_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, align 4
@ethnl_eee_request_ops = dso_local local_unnamed_addr constant %struct.ethnl_request_ops { i8 23, i8 24, i16 1, i32 8, i32 44, i8 0, ptr null, ptr @eee_prepare_data, ptr @eee_reply_size, ptr @eee_fill_reply, ptr null }, align 4
@ethnl_eee_set_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer } }>, align 4
@link_mode_names = external dso_local constant [0 x [32 x i8]], align 1
@init_net = external dso_local global %struct.net, align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eee_prepare_data(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 42
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 50
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @ethnl_ops_begin(ptr noundef %4) #5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 50
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.eee_reply_data, ptr %1, i32 0, i32 1
  %18 = tail call i32 %16(ptr noundef %4, ptr noundef %17) #5
  tail call void @ethnl_ops_complete(ptr noundef %4) #5
  br label %19

19:                                               ; preds = %13, %10, %3
  %20 = phi i32 [ %18, %13 ], [ -95, %3 ], [ %11, %10 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eee_reply_size(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ethnl_req_info, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp ne i32 %5, 0
  %7 = getelementptr inbounds %struct.eee_reply_data, ptr %1, i32 0, i32 1, i32 2
  %8 = getelementptr inbounds %struct.eee_reply_data, ptr %1, i32 0, i32 1, i32 1
  %9 = tail call i32 @ethnl_bitset32_size(ptr noundef %7, ptr noundef %8, i32 noundef 32, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %6) #5
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.eee_reply_data, ptr %1, i32 0, i32 1, i32 3
  %13 = tail call i32 @ethnl_bitset32_size(ptr noundef %12, ptr noundef null, i32 noundef 32, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %6) #5
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = add nuw i32 %9, 32
  %17 = add i32 %16, %13
  br label %18

18:                                               ; preds = %15, %11, %2
  %19 = phi i32 [ %17, %15 ], [ %9, %2 ], [ %13, %11 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eee_fill_reply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = getelementptr inbounds %struct.ethnl_req_info, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  %12 = getelementptr inbounds %struct.eee_reply_data, ptr %2, i32 0, i32 1, i32 2
  %13 = getelementptr inbounds %struct.eee_reply_data, ptr %2, i32 0, i32 1, i32 1
  %14 = tail call i32 @ethnl_put_bitset32(ptr noundef %0, i32 noundef 2, ptr noundef %12, ptr noundef %13, i32 noundef 32, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %11) #5
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.eee_reply_data, ptr %2, i32 0, i32 1, i32 3
  %18 = tail call i32 @ethnl_put_bitset32(ptr noundef %0, i32 noundef 3, ptr noundef %17, ptr noundef null, i32 noundef 32, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %11) #5
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %47, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.eee_reply_data, ptr %2, i32 0, i32 1, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  store i8 %24, ptr %7, align 1
  %25 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.eee_reply_data, ptr %2, i32 0, i32 1, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  store i8 %31, ptr %6, align 1
  %32 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.eee_reply_data, ptr %2, i32 0, i32 1, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 %38, ptr %5, align 1
  %39 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.eee_reply_data, ptr %2, i32 0, i32 1, i32 7
  %43 = load i32, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 %43, ptr %4, align 4
  %44 = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 0, i32 -90
  br label %47

47:                                               ; preds = %41, %34, %27, %20, %16, %3
  %48 = phi i32 [ %14, %3 ], [ %18, %16 ], [ -90, %34 ], [ -90, %27 ], [ -90, %20 ], [ %46, %41 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_eee(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ethnl_req_info, align 8
  %4 = alloca %struct.ethtool_eee, align 4
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  store i64 0, ptr %3, align 8
  %6 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1
  %8 = getelementptr ptr, ptr %7, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %3, ptr noundef %9, ptr noundef nonnull @init_net, ptr noundef %11, i1 noundef zeroext true) #5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %109, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 42
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ethtool_ops, ptr %17, i32 0, i32 50
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %93, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ethtool_ops, ptr %17, i32 0, i32 51
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %93, label %25

25:                                               ; preds = %21
  call void @rtnl_lock() #5
  %26 = call i32 @ethnl_ops_begin(ptr noundef %15) #5
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %90, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %18, align 4
  %30 = call i32 %29(ptr noundef %15, ptr noundef nonnull %4) #5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %88, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ethtool_eee, ptr %4, i32 0, i32 2
  %34 = getelementptr ptr, ptr %7, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %10, align 4
  %37 = call i32 @ethnl_update_bitset32(ptr noundef %33, i32 noundef 32, ptr noundef %35, ptr noundef nonnull @link_mode_names, ptr noundef %36, ptr noundef nonnull %5) #5
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %88, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.ethtool_eee, ptr %4, i32 0, i32 5
  %41 = getelementptr ptr, ptr %7, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %42, i32 4
  %46 = load i8, ptr %45, align 1
  %47 = icmp ne i8 %46, 0
  %48 = load i32, ptr %40, align 4
  %49 = icmp eq i32 %48, 0
  %50 = xor i1 %47, %49
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = zext i1 %47 to i32
  store i32 %52, ptr %40, align 4
  store i8 1, ptr %5, align 1
  br label %53

53:                                               ; preds = %51, %44, %39
  %54 = getelementptr inbounds %struct.ethtool_eee, ptr %4, i32 0, i32 6
  %55 = getelementptr ptr, ptr %7, i32 6
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %56, i32 4
  %60 = load i8, ptr %59, align 1
  %61 = icmp ne i8 %60, 0
  %62 = load i32, ptr %54, align 4
  %63 = icmp eq i32 %62, 0
  %64 = xor i1 %61, %63
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = zext i1 %61 to i32
  store i32 %66, ptr %54, align 4
  store i8 1, ptr %5, align 1
  br label %67

67:                                               ; preds = %65, %58, %53
  %68 = getelementptr inbounds %struct.ethtool_eee, ptr %4, i32 0, i32 7
  %69 = getelementptr ptr, ptr %7, i32 7
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = getelementptr i8, ptr %70, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = load i32, ptr %68, align 4
  %76 = icmp eq i32 %75, %74
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  store i32 %74, ptr %68, align 4
  store i8 1, ptr %5, align 1
  br label %81

78:                                               ; preds = %72, %67
  %79 = load i8, ptr %5, align 1
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %78, %77
  %82 = load ptr, ptr %16, align 8
  %83 = getelementptr inbounds %struct.ethtool_ops, ptr %82, i32 0, i32 51
  %84 = load ptr, ptr %83, align 4
  %85 = call i32 %84(ptr noundef %15, ptr noundef nonnull %4) #5
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  call void @ethtool_notify(ptr noundef %15, i32 noundef 25, ptr noundef null) #5
  br label %88

88:                                               ; preds = %87, %81, %78, %32, %28
  %89 = phi i32 [ %30, %28 ], [ %37, %32 ], [ %85, %81 ], [ %85, %87 ], [ 0, %78 ]
  call void @ethnl_ops_complete(ptr noundef %15) #5
  br label %90

90:                                               ; preds = %88, %25
  %91 = phi i32 [ %26, %25 ], [ %89, %88 ]
  call void @rtnl_unlock() #5
  %92 = load ptr, ptr %3, align 8
  br label %93

93:                                               ; preds = %90, %21, %14
  %94 = phi ptr [ %92, %90 ], [ %15, %21 ], [ %15, %14 ]
  %95 = phi i32 [ %91, %90 ], [ -95, %21 ], [ -95, %14 ]
  %96 = icmp eq ptr %94, null
  br i1 %96, label %109, label %97

97:                                               ; preds = %93
  %98 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !9
  %99 = getelementptr inbounds %struct.net_device, ptr %94, i32 0, i32 99
  %100 = load ptr, ptr %99, align 8
  %101 = ptrtoint ptr %100 to i32
  %102 = call i32 @llvm.read_register.i32(metadata !0) #5
  %103 = inttoptr i32 %102 to ptr
  %104 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %103) #4, !srcloc !10
  %105 = add i32 %104, %101
  %106 = inttoptr i32 %105 to ptr
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, -1
  store i32 %108, ptr %106, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %98) #5, !srcloc !11
  br label %109

109:                                              ; preds = %97, %93, %2
  %110 = phi i32 [ %12, %2 ], [ %95, %93 ], [ %95, %97 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret i32 %110
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_parse_header_dev_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_update_bitset32(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset32_size(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_put_bitset32(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

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
!9 = !{i64 360219, i64 360280}
!10 = !{i64 378919}
!11 = !{i64 363236}
