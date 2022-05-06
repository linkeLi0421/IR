; ModuleID = '/llk/IR/net/ethtool/privflags.c_pt.bc'
source_filename = "../net/ethtool/privflags.c"
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
%struct.privflags_reply_data = type { %struct.ethnl_reply_data, ptr, i32, i32 }
%struct.ethnl_reply_data = type { ptr }
%struct.ethnl_req_info = type { ptr, %struct.netdevice_tracker, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_privflags_get_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, align 4
@ethnl_privflags_request_ops = dso_local local_unnamed_addr constant %struct.ethnl_request_ops { i8 13, i8 14, i16 1, i32 8, i32 16, i8 0, ptr null, ptr @privflags_prepare_data, ptr @privflags_reply_size, ptr @privflags_fill_reply, ptr @privflags_cleanup_data }, align 4
@ethnl_privflags_set_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer } }>, align 4
@init_net = external dso_local global %struct.net, align 64
@ethnl_get_priv_flags_info.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [24 x i8] c"net/ethtool/privflags.c\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"device %s reports more than 32 private flags (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"(unnamed net_device)\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @privflags_prepare_data(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 42
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ethtool_ops, ptr %8, i32 0, i32 29
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ethtool_ops, ptr %8, i32 0, i32 31
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ethtool_ops, ptr %8, i32 0, i32 24
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @ethnl_ops_begin(ptr noundef %6) #7
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = call fastcc i32 @ethnl_get_priv_flags_info(ptr noundef %6, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %9, align 4
  %28 = call i32 %27(ptr noundef %6) #7
  %29 = getelementptr inbounds %struct.privflags_reply_data, ptr %1, i32 0, i32 3
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.privflags_reply_data, ptr %1, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  %32 = load i32, ptr %5, align 4
  %33 = getelementptr inbounds %struct.privflags_reply_data, ptr %1, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  br label %34

34:                                               ; preds = %26, %23
  call void @ethnl_ops_complete(ptr noundef %6) #7
  br label %35

35:                                               ; preds = %34, %20, %16, %12, %3
  %36 = phi i32 [ %24, %34 ], [ -95, %16 ], [ -95, %12 ], [ -95, %3 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @privflags_reply_size(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.ethnl_req_info, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %8 = getelementptr inbounds %struct.privflags_reply_data, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 32, %9
  %11 = lshr i32 -1, %10
  store i32 %11, ptr %3, align 4
  %12 = getelementptr inbounds %struct.privflags_reply_data, ptr %1, i32 0, i32 3
  %13 = getelementptr inbounds %struct.privflags_reply_data, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @ethnl_bitset32_size(ptr noundef %12, ptr noundef nonnull %3, i32 noundef %9, ptr noundef %14, i1 noundef zeroext %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @privflags_fill_reply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.ethnl_req_info, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  %9 = getelementptr inbounds %struct.privflags_reply_data, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 32, %10
  %12 = lshr i32 -1, %11
  store i32 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.privflags_reply_data, ptr %2, i32 0, i32 3
  %14 = getelementptr inbounds %struct.privflags_reply_data, ptr %2, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @ethnl_put_bitset32(ptr noundef %0, i32 noundef 2, ptr noundef %13, ptr noundef nonnull %4, i32 noundef %10, ptr noundef %15, i1 noundef zeroext %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @privflags_cleanup_data(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.privflags_reply_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_privflags(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = alloca %struct.ethnl_req_info, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8
  %9 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 0, ptr %7, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4, !annotation !9
  %11 = getelementptr ptr, ptr %10, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %94, label %14

14:                                               ; preds = %2
  %15 = call i32 @ethnl_bitset_is_compact(ptr noundef nonnull %12, ptr noundef nonnull %7) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %94, label %17

17:                                               ; preds = %14
  %18 = getelementptr ptr, ptr %10, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %4, ptr noundef %19, ptr noundef nonnull @init_net, ptr noundef %21, i1 noundef zeroext true) #7
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %94, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 42
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.ethtool_ops, ptr %27, i32 0, i32 29
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %78, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.ethtool_ops, ptr %27, i32 0, i32 30
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %78, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ethtool_ops, ptr %27, i32 0, i32 31
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %78, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ethtool_ops, ptr %27, i32 0, i32 24
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %78, label %43

43:                                               ; preds = %39
  call void @rtnl_lock() #7
  %44 = call i32 @ethnl_ops_begin(ptr noundef %25) #7
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %75, label %46

46:                                               ; preds = %43
  %47 = load i8, ptr %7, align 1, !range !10
  %48 = icmp eq i8 %47, 0
  %49 = select i1 %48, ptr %3, ptr null
  %50 = call fastcc i32 @ethnl_get_priv_flags_info(ptr noundef %25, ptr noundef nonnull %5, ptr noundef %49)
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %28, align 4
  %54 = call i32 %53(ptr noundef %25) #7
  store i32 %54, ptr %8, align 4
  %55 = load i32, ptr %5, align 4
  %56 = load ptr, ptr %11, align 4
  %57 = load ptr, ptr %3, align 4
  %58 = load ptr, ptr %20, align 4
  %59 = call i32 @ethnl_update_bitset32(ptr noundef nonnull %8, i32 noundef %55, ptr noundef %56, ptr noundef %57, ptr noundef %58, ptr noundef nonnull %6) #7
  %60 = icmp slt i32 %59, 0
  %61 = load i8, ptr %6, align 1
  %62 = icmp eq i8 %61, 0
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %52
  %65 = load ptr, ptr %32, align 4
  %66 = load i32, ptr %8, align 4
  %67 = call i32 %65(ptr noundef %25, i32 noundef %66) #7
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  call void @ethtool_notify(ptr noundef %25, i32 noundef 15, ptr noundef null) #7
  br label %70

70:                                               ; preds = %69, %64, %52
  %71 = phi i32 [ %59, %52 ], [ %67, %64 ], [ %67, %69 ]
  %72 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %72) #7
  br label %73

73:                                               ; preds = %70, %46
  %74 = phi i32 [ %50, %46 ], [ %71, %70 ]
  call void @ethnl_ops_complete(ptr noundef %25) #7
  br label %75

75:                                               ; preds = %73, %43
  %76 = phi i32 [ %44, %43 ], [ %74, %73 ]
  call void @rtnl_unlock() #7
  %77 = load ptr, ptr %4, align 8
  br label %78

78:                                               ; preds = %75, %39, %35, %31, %24
  %79 = phi ptr [ %77, %75 ], [ %25, %39 ], [ %25, %35 ], [ %25, %31 ], [ %25, %24 ]
  %80 = phi i32 [ %76, %75 ], [ -95, %39 ], [ -95, %35 ], [ -95, %31 ], [ -95, %24 ]
  %81 = icmp eq ptr %79, null
  br i1 %81, label %94, label %82

82:                                               ; preds = %78
  %83 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !11
  %84 = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 99
  %85 = load ptr, ptr %84, align 8
  %86 = ptrtoint ptr %85 to i32
  %87 = call i32 @llvm.read_register.i32(metadata !0) #7
  %88 = inttoptr i32 %87 to ptr
  %89 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %88) #6, !srcloc !12
  %90 = add i32 %89, %86
  %91 = inttoptr i32 %90 to ptr
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, -1
  store i32 %93, ptr %91, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %83) #7, !srcloc !13
  br label %94

94:                                               ; preds = %82, %78, %17, %14, %2
  %95 = phi i32 [ -22, %2 ], [ %15, %14 ], [ %22, %17 ], [ %80, %78 ], [ %80, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %95
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset_is_compact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_parse_header_dev_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethnl_get_priv_flags_info(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 31
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef 2) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %3
  %11 = icmp eq ptr %2, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %10
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 32) #7
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %15, label %16, !prof !14

15:                                               ; preds = %12
  store ptr null, ptr %2, align 4
  br label %39

16:                                               ; preds = %12
  %17 = extractvalue { i32, i1 } %13, 0
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #8
  store ptr %18, ptr %2, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 24
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %18) #7
  br label %23

23:                                               ; preds = %20, %10
  %24 = icmp ugt i32 %8, 32
  %25 = load i1, ptr @ethnl_get_priv_flags_info.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %37, !prof !14

28:                                               ; preds = %23
  store i1 true, ptr @ethnl_get_priv_flags_info.__already_done, align 1
  %29 = load i8, ptr %0, align 64
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = tail call ptr @strchr(ptr noundef %0, i32 noundef 37) #7
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, ptr %0, ptr @.str.2
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi ptr [ @.str.2, %28 ], [ %34, %31 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %36, i32 noundef %8) #7
  br label %37

37:                                               ; preds = %35, %23
  %38 = tail call i32 @llvm.umin.i32(i32 %8, i32 32)
  store i32 %38, ptr %1, align 4
  br label %39

39:                                               ; preds = %37, %16, %15, %3
  %40 = phi i32 [ 0, %37 ], [ %8, %3 ], [ -12, %16 ], [ -12, %15 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_update_bitset32(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset32_size(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_put_bitset32(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!10 = !{i8 0, i8 2}
!11 = !{i64 360625, i64 360686}
!12 = !{i64 379325}
!13 = !{i64 363642}
!14 = !{!"branch_weights", i32 1, i32 2000}
