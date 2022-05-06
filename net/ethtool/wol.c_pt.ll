; ModuleID = '/llk/IR/net/ethtool/wol.c_pt.bc'
source_filename = "../net/ethtool/wol.c"
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
%struct.wol_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_wolinfo, i8 }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethnl_req_info = type { ptr, %struct.netdevice_tracker, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_wol_get_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, align 4
@ethnl_wol_request_ops = dso_local local_unnamed_addr constant %struct.ethnl_request_ops { i8 9, i8 9, i16 1, i32 8, i32 28, i8 0, ptr null, ptr @wol_prepare_data, ptr @wol_reply_size, ptr @wol_fill_reply, ptr null }, align 4
@ethnl_wol_set_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 6, %union.anon zeroinitializer } }>, align 4
@__const.ethnl_set_wol.wol = private unnamed_addr constant { i32, i32, i32, [6 x i8], [2 x i8] } { i32 5, i32 0, i32 0, [6 x i8] zeroinitializer, [2 x i8] zeroinitializer }, align 4
@wol_mode_names = external dso_local constant [0 x [32 x i8]], align 1
@ethnl_set_wol.__msg = internal constant [35 x i8] c"cannot enable unsupported WoL mode\00", align 1
@ethnl_set_wol.__msg.1 = internal constant [47 x i8] c"magicsecure not supported, cannot set password\00", align 1
@init_net = external dso_local global %struct.net, align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wol_prepare_data(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef readnone %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 42
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @ethnl_ops_begin(ptr noundef %4) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.wol_reply_data, ptr %1, i32 0, i32 1
  tail call void %16(ptr noundef %4, ptr noundef %17) #7
  tail call void @ethnl_ops_complete(ptr noundef %4) #7
  %18 = icmp eq ptr %2, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.wol_reply_data, ptr %1, i32 0, i32 1, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 64
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %19, %13
  %25 = phi i1 [ false, %13 ], [ %23, %19 ]
  %26 = getelementptr inbounds %struct.wol_reply_data, ptr %1, i32 0, i32 2
  %27 = zext i1 %25 to i8
  store i8 %27, ptr %26, align 4
  br label %28

28:                                               ; preds = %24, %10, %3
  %29 = phi i32 [ 0, %24 ], [ -95, %3 ], [ %11, %10 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wol_reply_size(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ethnl_req_info, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp ne i32 %5, 0
  %7 = getelementptr inbounds %struct.wol_reply_data, ptr %1, i32 0, i32 1, i32 2
  %8 = getelementptr inbounds %struct.wol_reply_data, ptr %1, i32 0, i32 1, i32 1
  %9 = tail call i32 @ethnl_bitset32_size(ptr noundef %7, ptr noundef %8, i32 noundef 8, ptr noundef nonnull @wol_mode_names, i1 noundef zeroext %6) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wol_reply_data, ptr %1, i32 0, i32 2
  %13 = load i8, ptr %12, align 4, !range !9
  %14 = icmp eq i8 %13, 0
  %15 = add nuw i32 %9, 12
  %16 = select i1 %14, i32 %9, i32 %15
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i32 [ %9, %2 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wol_fill_reply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ethnl_req_info, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  %8 = getelementptr inbounds %struct.wol_reply_data, ptr %2, i32 0, i32 1, i32 2
  %9 = getelementptr inbounds %struct.wol_reply_data, ptr %2, i32 0, i32 1, i32 1
  %10 = tail call i32 @ethnl_put_bitset32(ptr noundef %0, i32 noundef 2, ptr noundef %8, ptr noundef %9, i32 noundef 8, ptr noundef nonnull @wol_mode_names, i1 noundef zeroext %7) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wol_reply_data, ptr %2, i32 0, i32 2
  %14 = load i8, ptr %13, align 4, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.wol_reply_data, ptr %2, i32 0, i32 1, i32 3
  %18 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 6, ptr noundef %17) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %12
  br label %21

21:                                               ; preds = %20, %16, %3
  %22 = phi i32 [ 0, %20 ], [ %10, %3 ], [ -90, %16 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_wol(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ethtool_wolinfo, align 4
  %4 = alloca %struct.ethnl_req_info, align 8
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) @__const.ethnl_set_wol.wol, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8
  %6 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1
  %8 = getelementptr ptr, ptr %7, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %4, ptr noundef %9, ptr noundef nonnull @init_net, ptr noundef %11, i1 noundef zeroext true) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %114, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 42
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ethtool_ops, ptr %17, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %98, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ethtool_ops, ptr %17, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %98, label %25

25:                                               ; preds = %21
  call void @rtnl_lock() #7
  %26 = call i32 @ethnl_ops_begin(ptr noundef %15) #7
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %95, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %16, align 8
  %30 = getelementptr inbounds %struct.ethtool_ops, ptr %29, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  call void %31(ptr noundef %15, ptr noundef nonnull %3) #7
  %32 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %3, i32 0, i32 2
  %33 = getelementptr ptr, ptr %7, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %10, align 4
  %36 = call i32 @ethnl_update_bitset32(ptr noundef %32, i32 noundef 8, ptr noundef %34, ptr noundef nonnull @wol_mode_names, ptr noundef %35, ptr noundef nonnull %5) #7
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %93, label %38

38:                                               ; preds = %28
  %39 = load i32, ptr %32, align 4
  %40 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %3, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %39, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %10, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_wol.__msg) #7
  %47 = icmp eq ptr %46, null
  br i1 %47, label %93, label %48

48:                                               ; preds = %45
  store ptr @ethnl_set_wol.__msg, ptr %46, align 4
  %49 = load ptr, ptr %33, align 4
  %50 = getelementptr inbounds %struct.netlink_ext_ack, ptr %46, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.netlink_ext_ack, ptr %46, i32 0, i32 2
  store ptr null, ptr %51, align 4
  br label %93

52:                                               ; preds = %38
  %53 = getelementptr ptr, ptr %7, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %76, label %56

56:                                               ; preds = %52
  %57 = and i32 %41, 64
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load ptr, ptr %10, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_wol.__msg.1) #7
  %61 = icmp eq ptr %60, null
  br i1 %61, label %93, label %62

62:                                               ; preds = %59
  store ptr @ethnl_set_wol.__msg.1, ptr %60, align 4
  %63 = load ptr, ptr %53, align 4
  %64 = getelementptr inbounds %struct.netlink_ext_ack, ptr %60, i32 0, i32 1
  store ptr %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.netlink_ext_ack, ptr %60, i32 0, i32 2
  store ptr null, ptr %65, align 4
  br label %93

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %3, i32 0, i32 3
  %68 = load i16, ptr %54, align 2
  %69 = zext i16 %68 to i32
  %70 = add nsw i32 %69, -4
  %71 = call i32 @llvm.umin.i32(i32 %70, i32 6) #7
  %72 = getelementptr i8, ptr %54, i32 4
  %73 = call i32 @bcmp(ptr %67, ptr %72, i32 %71) #7
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %66
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %67, ptr align 1 %72, i32 %71, i1 false) #7
  store i8 1, ptr %5, align 1
  br label %79

76:                                               ; preds = %66, %52
  %77 = load i8, ptr %5, align 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %76, %75
  %80 = load ptr, ptr %16, align 8
  %81 = getelementptr inbounds %struct.ethtool_ops, ptr %80, i32 0, i32 7
  %82 = load ptr, ptr %81, align 4
  %83 = call i32 %82(ptr noundef %15, ptr noundef nonnull %3) #7
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load i32, ptr %32, align 4
  %87 = icmp ne i32 %86, 0
  %88 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 124
  %89 = zext i1 %87 to i8
  %90 = load i8, ptr %88, align 1
  %91 = and i8 %90, -2
  %92 = or i8 %91, %89
  store i8 %92, ptr %88, align 1
  call void @ethtool_notify(ptr noundef %15, i32 noundef 10, ptr noundef null) #7
  br label %93

93:                                               ; preds = %85, %79, %76, %62, %59, %48, %45, %28
  %94 = phi i32 [ %36, %28 ], [ %83, %79 ], [ 0, %85 ], [ %36, %76 ], [ -22, %48 ], [ -22, %45 ], [ -22, %62 ], [ -22, %59 ]
  call void @ethnl_ops_complete(ptr noundef %15) #7
  br label %95

95:                                               ; preds = %93, %25
  %96 = phi i32 [ %26, %25 ], [ %94, %93 ]
  call void @rtnl_unlock() #7
  %97 = load ptr, ptr %4, align 8
  br label %98

98:                                               ; preds = %95, %21, %14
  %99 = phi ptr [ %97, %95 ], [ %15, %21 ], [ %15, %14 ]
  %100 = phi i32 [ %96, %95 ], [ -95, %21 ], [ -95, %14 ]
  %101 = icmp eq ptr %99, null
  br i1 %101, label %114, label %102

102:                                              ; preds = %98
  %103 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !10
  %104 = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 99
  %105 = load ptr, ptr %104, align 8
  %106 = ptrtoint ptr %105 to i32
  %107 = call i32 @llvm.read_register.i32(metadata !0) #7
  %108 = inttoptr i32 %107 to ptr
  %109 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %108) #4, !srcloc !11
  %110 = add i32 %109, %106
  %111 = inttoptr i32 %110 to ptr
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, -1
  store i32 %113, ptr %111, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %103) #7, !srcloc !12
  br label %114

114:                                              ; preds = %102, %98, %2
  %115 = phi i32 [ %12, %2 ], [ %100, %98 ], [ %100, %102 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #7
  ret i32 %115
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_parse_header_dev_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_update_bitset32(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset32_size(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_put_bitset32(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
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
!9 = !{i8 0, i8 2}
!10 = !{i64 359487, i64 359548}
!11 = !{i64 378187}
!12 = !{i64 362504}
