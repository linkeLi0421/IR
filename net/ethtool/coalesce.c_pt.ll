; ModuleID = '/llk/IR/net/ethtool/coalesce.c_pt.bc'
source_filename = "../net/ethtool/coalesce.c"
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
%struct.coalesce_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_coalesce, %struct.kernel_ethtool_coalesce, i32 }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_ethtool_coalesce = type { i8, i8 }
%struct.ethnl_req_info = type { ptr, %struct.netdevice_tracker, i32 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_coalesce_get_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, align 4
@ethnl_coalesce_request_ops = dso_local local_unnamed_addr constant %struct.ethnl_request_ops { i8 19, i8 20, i16 1, i32 8, i32 104, i8 0, ptr null, ptr @coalesce_prepare_data, ptr @coalesce_reply_size, ptr @coalesce_fill_reply, ptr null }, align 4
@ethnl_coalesce_set_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon } }, { i8, i8, i16, { %struct.anon } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, { i8, i8, i16, { %struct.anon } } { i8 1, i8 4, i16 0, { %struct.anon } { %struct.anon { i16 0, i16 1 } } }, { i8, i8, i16, { %struct.anon } } { i8 1, i8 4, i16 0, { %struct.anon } { %struct.anon { i16 0, i16 1 } } } }>, align 4
@ethnl_set_coalesce.__msg = internal constant [39 x i8] c"cannot modify an unsupported parameter\00", align 1
@init_net = external dso_local global %struct.net, align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @coalesce_prepare_data(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef readonly %2) #0 {
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
  %13 = getelementptr inbounds %struct.ethtool_ops, ptr %12, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.ethtool_ops, ptr %12, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.coalesce_reply_data, ptr %1, i32 0, i32 3
  store i32 %18, ptr %19, align 4
  %20 = tail call i32 @ethnl_ops_begin(ptr noundef %10) #6
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %11, align 8
  %24 = getelementptr inbounds %struct.ethtool_ops, ptr %23, i32 0, i32 16
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.coalesce_reply_data, ptr %1, i32 0, i32 1
  %27 = getelementptr inbounds %struct.coalesce_reply_data, ptr %1, i32 0, i32 2
  %28 = tail call i32 %25(ptr noundef %10, ptr noundef %26, ptr noundef %27, ptr noundef %9) #6
  tail call void @ethnl_ops_complete(ptr noundef %10) #6
  br label %29

29:                                               ; preds = %22, %16, %8
  %30 = phi i32 [ %28, %22 ], [ -95, %8 ], [ %20, %16 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @coalesce_reply_size(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #1 {
  ret i32 192
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @coalesce_fill_reply(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 2
  %25 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %26, 1
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #6
  store i32 %28, ptr %23, align 4
  %34 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %23) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %244

36:                                               ; preds = %33, %3
  %37 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  %40 = and i32 %26, 2
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #6
  store i32 %38, ptr %22, align 4
  %44 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %22) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %244

46:                                               ; preds = %43, %36
  %47 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  %50 = and i32 %26, 4
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #6
  store i32 %48, ptr %21, align 4
  %54 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %21) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %244

56:                                               ; preds = %53, %46
  %57 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  %60 = and i32 %26, 8
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #6
  store i32 %58, ptr %20, align 4
  %64 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %20) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #6
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %244

66:                                               ; preds = %63, %56
  %67 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  %70 = and i32 %26, 16
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #6
  store i32 %68, ptr %19, align 4
  %74 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %19) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #6
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %244

76:                                               ; preds = %73, %66
  %77 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  %80 = and i32 %26, 32
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #6
  store i32 %78, ptr %18, align 4
  %84 = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %18) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #6
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %244

86:                                               ; preds = %83, %76
  %87 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 7
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  %90 = and i32 %26, 64
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %89, i1 %91, i1 false
  br i1 %92, label %96, label %93

93:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #6
  store i32 %88, ptr %17, align 4
  %94 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %17) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #6
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %244

96:                                               ; preds = %93, %86
  %97 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 8
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  %100 = and i32 %26, 128
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %99, i1 %101, i1 false
  br i1 %102, label %106, label %103

103:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #6
  store i32 %98, ptr %16, align 4
  %104 = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %16) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #6
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %244

106:                                              ; preds = %103, %96
  %107 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 9
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  %110 = and i32 %26, 256
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %109, i1 %111, i1 false
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #6
  store i32 %108, ptr %15, align 4
  %114 = call i32 @nla_put(ptr noundef %0, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #6
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %244

116:                                              ; preds = %113, %106
  %117 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 10
  %118 = load i32, ptr %117, align 4
  %119 = call fastcc zeroext i1 @coalesce_put_bool(ptr noundef %0, i16 noundef zeroext 11, i32 noundef %118, i32 noundef %26)
  br i1 %119, label %244, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 11
  %122 = load i32, ptr %121, align 4
  %123 = call fastcc zeroext i1 @coalesce_put_bool(ptr noundef %0, i16 noundef zeroext 12, i32 noundef %122, i32 noundef %26)
  br i1 %123, label %244, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 12
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 0
  %128 = and i32 %26, 2048
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %127, i1 %129, i1 false
  br i1 %130, label %134, label %131

131:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #6
  store i32 %126, ptr %14, align 4
  %132 = call i32 @nla_put(ptr noundef %0, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #6
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %244

134:                                              ; preds = %131, %124
  %135 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 13
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 0
  %138 = and i32 %26, 4096
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %137, i1 %139, i1 false
  br i1 %140, label %144, label %141

141:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #6
  store i32 %136, ptr %13, align 4
  %142 = call i32 @nla_put(ptr noundef %0, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #6
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %244

144:                                              ; preds = %141, %134
  %145 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 14
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  %148 = and i32 %26, 8192
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %147, i1 %149, i1 false
  br i1 %150, label %154, label %151

151:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  store i32 %146, ptr %12, align 4
  %152 = call i32 @nla_put(ptr noundef %0, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %244

154:                                              ; preds = %151, %144
  %155 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 15
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 0
  %158 = and i32 %26, 16384
  %159 = icmp eq i32 %158, 0
  %160 = select i1 %157, i1 %159, i1 false
  br i1 %160, label %164, label %161

161:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  store i32 %156, ptr %11, align 4
  %162 = call i32 @nla_put(ptr noundef %0, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %244

164:                                              ; preds = %161, %154
  %165 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 16
  %166 = load i32, ptr %165, align 4
  %167 = icmp eq i32 %166, 0
  %168 = and i32 %26, 32768
  %169 = icmp eq i32 %168, 0
  %170 = select i1 %167, i1 %169, i1 false
  br i1 %170, label %174, label %171

171:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  store i32 %166, ptr %10, align 4
  %172 = call i32 @nla_put(ptr noundef %0, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %244

174:                                              ; preds = %171, %164
  %175 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 17
  %176 = load i32, ptr %175, align 4
  %177 = icmp eq i32 %176, 0
  %178 = and i32 %26, 65536
  %179 = icmp eq i32 %178, 0
  %180 = select i1 %177, i1 %179, i1 false
  br i1 %180, label %184, label %181

181:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  store i32 %176, ptr %9, align 4
  %182 = call i32 @nla_put(ptr noundef %0, i32 noundef 18, i32 noundef 4, ptr noundef nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %244

184:                                              ; preds = %181, %174
  %185 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 18
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  %188 = and i32 %26, 131072
  %189 = icmp eq i32 %188, 0
  %190 = select i1 %187, i1 %189, i1 false
  br i1 %190, label %194, label %191

191:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 %186, ptr %8, align 4
  %192 = call i32 @nla_put(ptr noundef %0, i32 noundef 19, i32 noundef 4, ptr noundef nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %244

194:                                              ; preds = %191, %184
  %195 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 19
  %196 = load i32, ptr %195, align 4
  %197 = icmp eq i32 %196, 0
  %198 = and i32 %26, 262144
  %199 = icmp eq i32 %198, 0
  %200 = select i1 %197, i1 %199, i1 false
  br i1 %200, label %204, label %201

201:                                              ; preds = %194
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 %196, ptr %7, align 4
  %202 = call i32 @nla_put(ptr noundef %0, i32 noundef 20, i32 noundef 4, ptr noundef nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %244

204:                                              ; preds = %201, %194
  %205 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 20
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 0
  %208 = and i32 %26, 524288
  %209 = icmp eq i32 %208, 0
  %210 = select i1 %207, i1 %209, i1 false
  br i1 %210, label %214, label %211

211:                                              ; preds = %204
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 %206, ptr %6, align 4
  %212 = call i32 @nla_put(ptr noundef %0, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %244

214:                                              ; preds = %211, %204
  %215 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 21
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq i32 %216, 0
  %218 = and i32 %26, 1048576
  %219 = icmp eq i32 %218, 0
  %220 = select i1 %217, i1 %219, i1 false
  br i1 %220, label %224, label %221

221:                                              ; preds = %214
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 %216, ptr %5, align 4
  %222 = call i32 @nla_put(ptr noundef %0, i32 noundef 22, i32 noundef 4, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %244

224:                                              ; preds = %221, %214
  %225 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 1, i32 22
  %226 = load i32, ptr %225, align 4
  %227 = icmp eq i32 %226, 0
  %228 = and i32 %26, 2097152
  %229 = icmp eq i32 %228, 0
  %230 = select i1 %227, i1 %229, i1 false
  br i1 %230, label %234, label %231

231:                                              ; preds = %224
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 %226, ptr %4, align 4
  %232 = call i32 @nla_put(ptr noundef %0, i32 noundef 23, i32 noundef 4, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %244

234:                                              ; preds = %231, %224
  %235 = load i8, ptr %24, align 1
  %236 = zext i8 %235 to i32
  %237 = call fastcc zeroext i1 @coalesce_put_bool(ptr noundef %0, i16 noundef zeroext 24, i32 noundef %236, i32 noundef %26)
  br i1 %237, label %244, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.coalesce_reply_data, ptr %2, i32 0, i32 2, i32 1
  %240 = load i8, ptr %239, align 1
  %241 = zext i8 %240 to i32
  %242 = call fastcc zeroext i1 @coalesce_put_bool(ptr noundef %0, i16 noundef zeroext 25, i32 noundef %241, i32 noundef %26)
  %243 = select i1 %242, i32 -90, i32 0
  br label %244

244:                                              ; preds = %238, %234, %231, %221, %211, %201, %191, %181, %171, %161, %151, %141, %131, %120, %116, %113, %103, %93, %83, %73, %63, %53, %43, %33
  %245 = phi i32 [ -90, %234 ], [ -90, %231 ], [ -90, %221 ], [ -90, %211 ], [ -90, %201 ], [ -90, %191 ], [ -90, %181 ], [ -90, %171 ], [ -90, %161 ], [ -90, %151 ], [ -90, %141 ], [ -90, %131 ], [ -90, %120 ], [ -90, %116 ], [ -90, %113 ], [ -90, %103 ], [ -90, %93 ], [ -90, %83 ], [ -90, %73 ], [ -90, %63 ], [ -90, %53 ], [ -90, %43 ], [ -90, %33 ], [ %243, %238 ]
  ret i32 %245
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_coalesce(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.kernel_ethtool_coalesce, align 2
  %4 = alloca %struct.ethtool_coalesce, align 4
  %5 = alloca %struct.ethnl_req_info, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %4, i8 0, i32 92, i1 false)
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
  br i1 %13, label %379, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 42
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ethtool_ops, ptr %17, i32 0, i32 16
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %363, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ethtool_ops, ptr %17, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %363, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ethtool_ops, ptr %17, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %46, %25
  %29 = phi i32 [ 2, %25 ], [ %47, %46 ]
  %30 = getelementptr ptr, ptr %7, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %28
  %34 = add nsw i32 %29, -2
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %27
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load ptr, ptr %10, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_coalesce.__msg) #6
  %40 = icmp eq ptr %39, null
  br i1 %40, label %363, label %41

41:                                               ; preds = %38
  %42 = getelementptr ptr, ptr %7, i32 %29
  store ptr @ethnl_set_coalesce.__msg, ptr %39, align 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.netlink_ext_ack, ptr %39, i32 0, i32 1
  store ptr %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.netlink_ext_ack, ptr %39, i32 0, i32 2
  store ptr null, ptr %45, align 4
  br label %363

46:                                               ; preds = %33, %28
  %47 = add nuw nsw i32 %29, 1
  %48 = icmp eq i32 %47, 26
  br i1 %48, label %49, label %28

49:                                               ; preds = %46
  call void @rtnl_lock() #6
  %50 = call i32 @ethnl_ops_begin(ptr noundef %15) #6
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %361, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %18, align 4
  %54 = load ptr, ptr %10, align 4
  %55 = call i32 %53(ptr noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %54) #6
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %359, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 1
  %59 = getelementptr ptr, ptr %7, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = getelementptr i8, ptr %60, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %58, align 4
  %66 = icmp eq i32 %65, %64
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i32 %64, ptr %58, align 4
  br label %68

68:                                               ; preds = %67, %62, %57
  %69 = phi i8 [ 0, %57 ], [ 0, %62 ], [ 1, %67 ]
  %70 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 2
  %71 = getelementptr ptr, ptr %7, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = getelementptr i8, ptr %72, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = load i32, ptr %70, align 4
  %78 = icmp eq i32 %77, %76
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  store i32 %76, ptr %70, align 4
  br label %80

80:                                               ; preds = %79, %74, %68
  %81 = phi i8 [ %69, %68 ], [ %69, %74 ], [ 1, %79 ]
  %82 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 3
  %83 = getelementptr ptr, ptr %7, i32 4
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = getelementptr i8, ptr %84, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = load i32, ptr %82, align 4
  %90 = icmp eq i32 %89, %88
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  store i32 %88, ptr %82, align 4
  br label %92

92:                                               ; preds = %91, %86, %80
  %93 = phi i8 [ %81, %80 ], [ %81, %86 ], [ 1, %91 ]
  %94 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 4
  %95 = getelementptr ptr, ptr %7, i32 5
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = getelementptr i8, ptr %96, i32 4
  %100 = load i32, ptr %99, align 4
  %101 = load i32, ptr %94, align 4
  %102 = icmp eq i32 %101, %100
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  store i32 %100, ptr %94, align 4
  br label %104

104:                                              ; preds = %103, %98, %92
  %105 = phi i8 [ %93, %92 ], [ %93, %98 ], [ 1, %103 ]
  %106 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 5
  %107 = getelementptr ptr, ptr %7, i32 6
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %104
  %111 = getelementptr i8, ptr %108, i32 4
  %112 = load i32, ptr %111, align 4
  %113 = load i32, ptr %106, align 4
  %114 = icmp eq i32 %113, %112
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  store i32 %112, ptr %106, align 4
  br label %116

116:                                              ; preds = %115, %110, %104
  %117 = phi i8 [ %105, %104 ], [ %105, %110 ], [ 1, %115 ]
  %118 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 6
  %119 = getelementptr ptr, ptr %7, i32 7
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = getelementptr i8, ptr %120, i32 4
  %124 = load i32, ptr %123, align 4
  %125 = load i32, ptr %118, align 4
  %126 = icmp eq i32 %125, %124
  br i1 %126, label %128, label %127

127:                                              ; preds = %122
  store i32 %124, ptr %118, align 4
  br label %128

128:                                              ; preds = %127, %122, %116
  %129 = phi i8 [ %117, %116 ], [ %117, %122 ], [ 1, %127 ]
  %130 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 7
  %131 = getelementptr ptr, ptr %7, i32 8
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %140, label %134

134:                                              ; preds = %128
  %135 = getelementptr i8, ptr %132, i32 4
  %136 = load i32, ptr %135, align 4
  %137 = load i32, ptr %130, align 4
  %138 = icmp eq i32 %137, %136
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  store i32 %136, ptr %130, align 4
  br label %140

140:                                              ; preds = %139, %134, %128
  %141 = phi i8 [ %129, %128 ], [ %129, %134 ], [ 1, %139 ]
  %142 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 8
  %143 = getelementptr ptr, ptr %7, i32 9
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = getelementptr i8, ptr %144, i32 4
  %148 = load i32, ptr %147, align 4
  %149 = load i32, ptr %142, align 4
  %150 = icmp eq i32 %149, %148
  br i1 %150, label %152, label %151

151:                                              ; preds = %146
  store i32 %148, ptr %142, align 4
  br label %152

152:                                              ; preds = %151, %146, %140
  %153 = phi i8 [ %141, %140 ], [ %141, %146 ], [ 1, %151 ]
  %154 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 9
  %155 = getelementptr ptr, ptr %7, i32 10
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %164, label %158

158:                                              ; preds = %152
  %159 = getelementptr i8, ptr %156, i32 4
  %160 = load i32, ptr %159, align 4
  %161 = load i32, ptr %154, align 4
  %162 = icmp eq i32 %161, %160
  br i1 %162, label %164, label %163

163:                                              ; preds = %158
  store i32 %160, ptr %154, align 4
  br label %164

164:                                              ; preds = %163, %158, %152
  %165 = phi i8 [ %153, %152 ], [ %153, %158 ], [ 1, %163 ]
  %166 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 10
  %167 = getelementptr ptr, ptr %7, i32 11
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %179, label %170

170:                                              ; preds = %164
  %171 = getelementptr i8, ptr %168, i32 4
  %172 = load i8, ptr %171, align 1
  %173 = icmp ne i8 %172, 0
  %174 = load i32, ptr %166, align 4
  %175 = icmp eq i32 %174, 0
  %176 = xor i1 %173, %175
  br i1 %176, label %179, label %177

177:                                              ; preds = %170
  %178 = zext i1 %173 to i32
  store i32 %178, ptr %166, align 4
  br label %179

179:                                              ; preds = %177, %170, %164
  %180 = phi i8 [ %165, %164 ], [ %165, %170 ], [ 1, %177 ]
  %181 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 11
  %182 = getelementptr ptr, ptr %7, i32 12
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %194, label %185

185:                                              ; preds = %179
  %186 = getelementptr i8, ptr %183, i32 4
  %187 = load i8, ptr %186, align 1
  %188 = icmp ne i8 %187, 0
  %189 = load i32, ptr %181, align 4
  %190 = icmp eq i32 %189, 0
  %191 = xor i1 %188, %190
  br i1 %191, label %194, label %192

192:                                              ; preds = %185
  %193 = zext i1 %188 to i32
  store i32 %193, ptr %181, align 4
  br label %194

194:                                              ; preds = %192, %185, %179
  %195 = phi i8 [ %180, %179 ], [ %180, %185 ], [ 1, %192 ]
  %196 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 12
  %197 = getelementptr ptr, ptr %7, i32 13
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %206, label %200

200:                                              ; preds = %194
  %201 = getelementptr i8, ptr %198, i32 4
  %202 = load i32, ptr %201, align 4
  %203 = load i32, ptr %196, align 4
  %204 = icmp eq i32 %203, %202
  br i1 %204, label %206, label %205

205:                                              ; preds = %200
  store i32 %202, ptr %196, align 4
  br label %206

206:                                              ; preds = %205, %200, %194
  %207 = phi i8 [ %195, %194 ], [ %195, %200 ], [ 1, %205 ]
  %208 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 13
  %209 = getelementptr ptr, ptr %7, i32 14
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %218, label %212

212:                                              ; preds = %206
  %213 = getelementptr i8, ptr %210, i32 4
  %214 = load i32, ptr %213, align 4
  %215 = load i32, ptr %208, align 4
  %216 = icmp eq i32 %215, %214
  br i1 %216, label %218, label %217

217:                                              ; preds = %212
  store i32 %214, ptr %208, align 4
  br label %218

218:                                              ; preds = %217, %212, %206
  %219 = phi i8 [ %207, %206 ], [ %207, %212 ], [ 1, %217 ]
  %220 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 14
  %221 = getelementptr ptr, ptr %7, i32 15
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %230, label %224

224:                                              ; preds = %218
  %225 = getelementptr i8, ptr %222, i32 4
  %226 = load i32, ptr %225, align 4
  %227 = load i32, ptr %220, align 4
  %228 = icmp eq i32 %227, %226
  br i1 %228, label %230, label %229

229:                                              ; preds = %224
  store i32 %226, ptr %220, align 4
  br label %230

230:                                              ; preds = %229, %224, %218
  %231 = phi i8 [ %219, %218 ], [ %219, %224 ], [ 1, %229 ]
  %232 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 15
  %233 = getelementptr ptr, ptr %7, i32 16
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %242, label %236

236:                                              ; preds = %230
  %237 = getelementptr i8, ptr %234, i32 4
  %238 = load i32, ptr %237, align 4
  %239 = load i32, ptr %232, align 4
  %240 = icmp eq i32 %239, %238
  br i1 %240, label %242, label %241

241:                                              ; preds = %236
  store i32 %238, ptr %232, align 4
  br label %242

242:                                              ; preds = %241, %236, %230
  %243 = phi i8 [ %231, %230 ], [ %231, %236 ], [ 1, %241 ]
  %244 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 16
  %245 = getelementptr ptr, ptr %7, i32 17
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %254, label %248

248:                                              ; preds = %242
  %249 = getelementptr i8, ptr %246, i32 4
  %250 = load i32, ptr %249, align 4
  %251 = load i32, ptr %244, align 4
  %252 = icmp eq i32 %251, %250
  br i1 %252, label %254, label %253

253:                                              ; preds = %248
  store i32 %250, ptr %244, align 4
  br label %254

254:                                              ; preds = %253, %248, %242
  %255 = phi i8 [ %243, %242 ], [ %243, %248 ], [ 1, %253 ]
  %256 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 17
  %257 = getelementptr ptr, ptr %7, i32 18
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %266, label %260

260:                                              ; preds = %254
  %261 = getelementptr i8, ptr %258, i32 4
  %262 = load i32, ptr %261, align 4
  %263 = load i32, ptr %256, align 4
  %264 = icmp eq i32 %263, %262
  br i1 %264, label %266, label %265

265:                                              ; preds = %260
  store i32 %262, ptr %256, align 4
  br label %266

266:                                              ; preds = %265, %260, %254
  %267 = phi i8 [ %255, %254 ], [ %255, %260 ], [ 1, %265 ]
  %268 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 18
  %269 = getelementptr ptr, ptr %7, i32 19
  %270 = load ptr, ptr %269, align 4
  %271 = icmp eq ptr %270, null
  br i1 %271, label %278, label %272

272:                                              ; preds = %266
  %273 = getelementptr i8, ptr %270, i32 4
  %274 = load i32, ptr %273, align 4
  %275 = load i32, ptr %268, align 4
  %276 = icmp eq i32 %275, %274
  br i1 %276, label %278, label %277

277:                                              ; preds = %272
  store i32 %274, ptr %268, align 4
  br label %278

278:                                              ; preds = %277, %272, %266
  %279 = phi i8 [ %267, %266 ], [ %267, %272 ], [ 1, %277 ]
  %280 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 19
  %281 = getelementptr ptr, ptr %7, i32 20
  %282 = load ptr, ptr %281, align 4
  %283 = icmp eq ptr %282, null
  br i1 %283, label %290, label %284

284:                                              ; preds = %278
  %285 = getelementptr i8, ptr %282, i32 4
  %286 = load i32, ptr %285, align 4
  %287 = load i32, ptr %280, align 4
  %288 = icmp eq i32 %287, %286
  br i1 %288, label %290, label %289

289:                                              ; preds = %284
  store i32 %286, ptr %280, align 4
  br label %290

290:                                              ; preds = %289, %284, %278
  %291 = phi i8 [ %279, %278 ], [ %279, %284 ], [ 1, %289 ]
  %292 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 20
  %293 = getelementptr ptr, ptr %7, i32 21
  %294 = load ptr, ptr %293, align 4
  %295 = icmp eq ptr %294, null
  br i1 %295, label %302, label %296

296:                                              ; preds = %290
  %297 = getelementptr i8, ptr %294, i32 4
  %298 = load i32, ptr %297, align 4
  %299 = load i32, ptr %292, align 4
  %300 = icmp eq i32 %299, %298
  br i1 %300, label %302, label %301

301:                                              ; preds = %296
  store i32 %298, ptr %292, align 4
  br label %302

302:                                              ; preds = %301, %296, %290
  %303 = phi i8 [ %291, %290 ], [ %291, %296 ], [ 1, %301 ]
  %304 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 21
  %305 = getelementptr ptr, ptr %7, i32 22
  %306 = load ptr, ptr %305, align 4
  %307 = icmp eq ptr %306, null
  br i1 %307, label %314, label %308

308:                                              ; preds = %302
  %309 = getelementptr i8, ptr %306, i32 4
  %310 = load i32, ptr %309, align 4
  %311 = load i32, ptr %304, align 4
  %312 = icmp eq i32 %311, %310
  br i1 %312, label %314, label %313

313:                                              ; preds = %308
  store i32 %310, ptr %304, align 4
  br label %314

314:                                              ; preds = %313, %308, %302
  %315 = phi i8 [ %303, %302 ], [ %303, %308 ], [ 1, %313 ]
  %316 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 22
  %317 = getelementptr ptr, ptr %7, i32 23
  %318 = load ptr, ptr %317, align 4
  %319 = icmp eq ptr %318, null
  br i1 %319, label %326, label %320

320:                                              ; preds = %314
  %321 = getelementptr i8, ptr %318, i32 4
  %322 = load i32, ptr %321, align 4
  %323 = load i32, ptr %316, align 4
  %324 = icmp eq i32 %323, %322
  br i1 %324, label %326, label %325

325:                                              ; preds = %320
  store i32 %322, ptr %316, align 4
  br label %326

326:                                              ; preds = %325, %320, %314
  %327 = phi i8 [ %315, %314 ], [ %315, %320 ], [ 1, %325 ]
  %328 = getelementptr ptr, ptr %7, i32 24
  %329 = load ptr, ptr %328, align 4
  %330 = icmp eq ptr %329, null
  br i1 %330, label %337, label %331

331:                                              ; preds = %326
  %332 = getelementptr i8, ptr %329, i32 4
  %333 = load i8, ptr %332, align 1
  %334 = load i8, ptr %3, align 2
  %335 = icmp eq i8 %334, %333
  br i1 %335, label %337, label %336

336:                                              ; preds = %331
  store i8 %333, ptr %3, align 2
  br label %337

337:                                              ; preds = %336, %331, %326
  %338 = phi i8 [ %327, %326 ], [ %327, %331 ], [ 1, %336 ]
  %339 = getelementptr inbounds %struct.kernel_ethtool_coalesce, ptr %3, i32 0, i32 1
  %340 = getelementptr ptr, ptr %7, i32 25
  %341 = load ptr, ptr %340, align 4
  %342 = icmp eq ptr %341, null
  br i1 %342, label %349, label %343

343:                                              ; preds = %337
  %344 = getelementptr i8, ptr %341, i32 4
  %345 = load i8, ptr %344, align 1
  %346 = load i8, ptr %339, align 1
  %347 = icmp eq i8 %346, %345
  br i1 %347, label %349, label %348

348:                                              ; preds = %343
  store i8 %345, ptr %339, align 1
  br label %351

349:                                              ; preds = %343, %337
  %350 = icmp eq i8 %338, 0
  br i1 %350, label %359, label %351

351:                                              ; preds = %349, %348
  %352 = load ptr, ptr %16, align 8
  %353 = getelementptr inbounds %struct.ethtool_ops, ptr %352, i32 0, i32 17
  %354 = load ptr, ptr %353, align 4
  %355 = load ptr, ptr %10, align 4
  %356 = call i32 %354(ptr noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %355) #6
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %359, label %358

358:                                              ; preds = %351
  call void @ethtool_notify(ptr noundef %15, i32 noundef 21, ptr noundef null) #6
  br label %359

359:                                              ; preds = %358, %351, %349, %52
  %360 = phi i32 [ %55, %52 ], [ %356, %351 ], [ %356, %358 ], [ 0, %349 ]
  call void @ethnl_ops_complete(ptr noundef %15) #6
  br label %361

361:                                              ; preds = %359, %49
  %362 = phi i32 [ %50, %49 ], [ %360, %359 ]
  call void @rtnl_unlock() #6
  br label %363

363:                                              ; preds = %361, %41, %38, %21, %14
  %364 = phi i32 [ %362, %361 ], [ -95, %21 ], [ -95, %14 ], [ -22, %41 ], [ -22, %38 ]
  %365 = load ptr, ptr %5, align 8
  %366 = icmp eq ptr %365, null
  br i1 %366, label %379, label %367

367:                                              ; preds = %363
  %368 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !9
  %369 = getelementptr inbounds %struct.net_device, ptr %365, i32 0, i32 99
  %370 = load ptr, ptr %369, align 8
  %371 = ptrtoint ptr %370 to i32
  %372 = call i32 @llvm.read_register.i32(metadata !0) #6
  %373 = inttoptr i32 %372 to ptr
  %374 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %373) #5, !srcloc !10
  %375 = add i32 %374, %371
  %376 = inttoptr i32 %375 to ptr
  %377 = load i32, ptr %376, align 4
  %378 = add i32 %377, -1
  store i32 %378, ptr %376, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %368) #6, !srcloc !11
  br label %379

379:                                              ; preds = %367, %363, %2
  %380 = phi i32 [ %12, %2 ], [ %364, %363 ], [ %364, %367 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  ret i32 %380
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_parse_header_dev_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @coalesce_put_bool(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = icmp ne i32 %2, 0
  %7 = zext i16 %1 to i32
  br i1 %6, label %13, label %8

8:                                                ; preds = %4
  %9 = add nsw i32 %7, -2
  %10 = shl nuw i32 1, %9
  %11 = and i32 %10, %3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8, %4
  %14 = zext i1 %6 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 %14, ptr %5, align 1
  %15 = call i32 @nla_put(ptr noundef %0, i32 noundef %7, i32 noundef 1, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i1 [ %16, %13 ], [ false, %8 ]
  ret i1 %18
}

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
!9 = !{i64 369071, i64 369132}
!10 = !{i64 387771}
!11 = !{i64 372088}
