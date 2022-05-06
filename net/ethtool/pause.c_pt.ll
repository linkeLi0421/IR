; ModuleID = '/llk/IR/net/ethtool/pause.c_pt.bc'
source_filename = "../net/ethtool/pause.c"
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
%struct.pause_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_pauseparam, %struct.ethtool_pause_stats }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_pause_stats = type { i64, i64 }
%struct.ethnl_req_info = type { ptr, %struct.netdevice_tracker, i32 }
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
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }

@ethnl_header_policy_stats = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_pause_get_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy_stats } } }>, align 4
@ethnl_pause_request_ops = dso_local local_unnamed_addr constant %struct.ethnl_request_ops { i8 21, i8 22, i16 1, i32 8, i32 40, i8 0, ptr null, ptr @pause_prepare_data, ptr @pause_reply_size, ptr @pause_fill_reply, ptr null }, align 4
@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_pause_set_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer } }>, align 4
@.str = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@init_net = external dso_local global %struct.net, align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pause_prepare_data(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 42
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.pause_reply_data, ptr %1, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %11, i8 -1, i32 16, i1 false) #6
  %12 = tail call i32 @ethnl_ops_begin(ptr noundef %4) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_ops, ptr %15, i32 0, i32 21
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.pause_reply_data, ptr %1, i32 0, i32 1
  tail call void %17(ptr noundef %4, ptr noundef %18) #6
  %19 = getelementptr inbounds %struct.ethnl_req_info, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %14
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_ops, ptr %24, i32 0, i32 20
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void %26(ptr noundef %4, ptr noundef %11) #6
  br label %29

29:                                               ; preds = %28, %23, %14
  tail call void @ethnl_ops_complete(ptr noundef %4) #6
  br label %30

30:                                               ; preds = %29, %10, %3
  %31 = phi i32 [ 0, %29 ], [ -95, %3 ], [ %12, %10 ]
  ret i32 %31
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pause_reply_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.ethnl_req_info, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 24, i32 52
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pause_fill_reply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds %struct.pause_reply_data, ptr %2, i32 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #6
  store i8 %12, ptr %8, align 1
  %13 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %72

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.pause_reply_data, ptr %2, i32 0, i32 1, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #6
  store i8 %19, ptr %7, align 1
  %20 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %72

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.pause_reply_data, ptr %2, i32 0, i32 1, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 %26, ptr %6, align 1
  %27 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %72

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.ethnl_req_info, ptr %1, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %72, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %36 = load ptr, ptr %35, align 8
  %37 = call i32 @nla_put(ptr noundef %0, i32 noundef 32773, i32 noundef 0, ptr noundef null) #6
  %38 = icmp slt i32 %37, 0
  %39 = icmp eq ptr %36, null
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %72, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.pause_reply_data, ptr %2, i32 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = icmp eq i64 %43, -1
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 %43, ptr %5, align 8
  %46 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %5, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45, %41
  %49 = getelementptr inbounds %struct.pause_reply_data, ptr %2, i32 0, i32 2, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %66, label %52

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 %50, ptr %4, align 8
  %53 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %4, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %52, %45
  %56 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %57 = load ptr, ptr %56, align 4
  %58 = icmp ugt ptr %57, %36
  br i1 %58, label %59, label %61, !prof !9

59:                                               ; preds = %55
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  %60 = load ptr, ptr %56, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi ptr [ %60, %59 ], [ %57, %55 ]
  %63 = ptrtoint ptr %36 to i32
  %64 = ptrtoint ptr %62 to i32
  %65 = sub i32 %63, %64
  call void @skb_trim(ptr noundef %0, i32 noundef %65) #6
  br label %72

66:                                               ; preds = %52, %48
  %67 = load ptr, ptr %35, align 8
  %68 = ptrtoint ptr %67 to i32
  %69 = ptrtoint ptr %36 to i32
  %70 = sub i32 %68, %69
  %71 = trunc i32 %70 to i16
  store i16 %71, ptr %36, align 2
  br label %72

72:                                               ; preds = %66, %61, %34, %29, %22, %15, %3
  %73 = phi i32 [ -90, %22 ], [ -90, %15 ], [ -90, %3 ], [ 0, %66 ], [ 0, %29 ], [ -90, %61 ], [ -90, %34 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_pause(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ethtool_pauseparam, align 4
  %4 = alloca %struct.ethnl_req_info, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false)
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
  br i1 %12, label %102, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 42
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.ethtool_ops, ptr %16, i32 0, i32 21
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %86, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.ethtool_ops, ptr %16, i32 0, i32 22
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %86, label %24

24:                                               ; preds = %20
  call void @rtnl_lock() #6
  %25 = call i32 @ethnl_ops_begin(ptr noundef %14) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %83, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %17, align 4
  call void %28(ptr noundef %14, ptr noundef nonnull %3) #6
  %29 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %3, i32 0, i32 1
  %30 = getelementptr ptr, ptr %6, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %27
  %34 = getelementptr i8, ptr %31, i32 4
  %35 = load i8, ptr %34, align 1
  %36 = icmp ne i8 %35, 0
  %37 = load i32, ptr %29, align 4
  %38 = icmp eq i32 %37, 0
  %39 = xor i1 %36, %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = zext i1 %36 to i32
  store i32 %41, ptr %29, align 4
  br label %42

42:                                               ; preds = %40, %33, %27
  %43 = phi i8 [ 0, %27 ], [ 0, %33 ], [ 1, %40 ]
  %44 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %3, i32 0, i32 2
  %45 = getelementptr ptr, ptr %6, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %42
  %49 = getelementptr i8, ptr %46, i32 4
  %50 = load i8, ptr %49, align 1
  %51 = icmp ne i8 %50, 0
  %52 = load i32, ptr %44, align 4
  %53 = icmp eq i32 %52, 0
  %54 = xor i1 %51, %53
  br i1 %54, label %57, label %55

55:                                               ; preds = %48
  %56 = zext i1 %51 to i32
  store i32 %56, ptr %44, align 4
  br label %57

57:                                               ; preds = %55, %48, %42
  %58 = phi i8 [ %43, %42 ], [ %43, %48 ], [ 1, %55 ]
  %59 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %3, i32 0, i32 3
  %60 = getelementptr ptr, ptr %6, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %72, label %63

63:                                               ; preds = %57
  %64 = getelementptr i8, ptr %61, i32 4
  %65 = load i8, ptr %64, align 1
  %66 = icmp ne i8 %65, 0
  %67 = load i32, ptr %59, align 4
  %68 = icmp eq i32 %67, 0
  %69 = xor i1 %66, %68
  br i1 %69, label %72, label %70

70:                                               ; preds = %63
  %71 = zext i1 %66 to i32
  store i32 %71, ptr %59, align 4
  br label %74

72:                                               ; preds = %63, %57
  %73 = icmp eq i8 %58, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %72, %70
  %75 = load ptr, ptr %15, align 8
  %76 = getelementptr inbounds %struct.ethtool_ops, ptr %75, i32 0, i32 22
  %77 = load ptr, ptr %76, align 4
  %78 = call i32 %77(ptr noundef %14, ptr noundef nonnull %3) #6
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  call void @ethtool_notify(ptr noundef %14, i32 noundef 23, ptr noundef null) #6
  br label %81

81:                                               ; preds = %80, %74, %72
  %82 = phi i32 [ %78, %74 ], [ %78, %80 ], [ 0, %72 ]
  call void @ethnl_ops_complete(ptr noundef %14) #6
  br label %83

83:                                               ; preds = %81, %24
  %84 = phi i32 [ %25, %24 ], [ %82, %81 ]
  call void @rtnl_unlock() #6
  %85 = load ptr, ptr %4, align 8
  br label %86

86:                                               ; preds = %83, %20, %13
  %87 = phi ptr [ %85, %83 ], [ %14, %20 ], [ %14, %13 ]
  %88 = phi i32 [ %84, %83 ], [ -95, %20 ], [ -95, %13 ]
  %89 = icmp eq ptr %87, null
  br i1 %89, label %102, label %90

90:                                               ; preds = %86
  %91 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !10
  %92 = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 99
  %93 = load ptr, ptr %92, align 8
  %94 = ptrtoint ptr %93 to i32
  %95 = call i32 @llvm.read_register.i32(metadata !0) #6
  %96 = inttoptr i32 %95 to ptr
  %97 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %96) #5, !srcloc !11
  %98 = add i32 %97, %94
  %99 = inttoptr i32 %98 to ptr
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, -1
  store i32 %101, ptr %99, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %91) #6, !srcloc !12
  br label %102

102:                                              ; preds = %90, %86, %2
  %103 = phi i32 [ %11, %2 ], [ %88, %86 ], [ %88, %90 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 %103
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
declare dso_local void @ethtool_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 360028, i64 360089}
!11 = !{i64 378728}
!12 = !{i64 363045}
