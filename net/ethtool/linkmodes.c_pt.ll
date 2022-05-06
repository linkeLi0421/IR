; ModuleID = '/llk/IR/net/ethtool/linkmodes.c_pt.bc'
source_filename = "../net/ethtool/linkmodes.c"
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
%struct.link_mode_info = type { i32, i8, i8 }
%struct.linkmodes_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_link_ksettings, ptr, i8 }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.132, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.132 = type { [3 x i32], [3 x i32], [3 x i32] }
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
%struct.ethnl_req_info = type { ptr, %struct.netdevice_tracker, i32 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_linkmodes_get_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, align 4
@ethnl_linkmodes_request_ops = dso_local local_unnamed_addr constant %struct.ethnl_request_ops { i8 4, i8 4, i16 1, i32 8, i32 100, i8 0, ptr null, ptr @linkmodes_prepare_data, ptr @linkmodes_reply_size, ptr @linkmodes_fill_reply, ptr null }, align 4
@ethnl_linkmodes_set_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, { i8, i8, i16, { %struct.anon } } { i8 3, i8 1, i16 0, { %struct.anon } { %struct.anon { i16 1, i16 8 } } } }>, align 4
@ethnl_set_linkmodes.__msg = internal constant [33 x i8] c"failed to retrieve link settings\00", align 1
@ethnl_set_linkmodes.__msg.1 = internal constant [28 x i8] c"link settings update failed\00", align 1
@linkmodes_prepare_data.__msg = internal constant [33 x i8] c"failed to retrieve link settings\00", align 1
@link_mode_names = external dso_local constant [0 x [32 x i8]], align 1
@ethnl_check_linkmodes.__msg = internal constant [30 x i8] c"master/slave value is invalid\00", align 1
@ethnl_check_linkmodes.__msg.2 = internal constant [23 x i8] c"lanes value is invalid\00", align 1
@init_net = external dso_local global %struct.net, align 64
@ethnl_update_linkmodes.__msg = internal constant [51 x i8] c"master/slave configuration not supported by device\00", align 1
@ethnl_update_linkmodes.__msg.3 = internal constant [44 x i8] c"lanes configuration not supported by device\00", align 1
@link_mode_params = external dso_local local_unnamed_addr constant [0 x %struct.link_mode_info], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @linkmodes_prepare_data(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef readonly %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %1, i32 0, i32 2
  store ptr %5, ptr %6, align 4
  %7 = tail call i32 @ethnl_ops_begin(ptr noundef %4) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @__ethtool_get_link_ksettings(ptr noundef %4, ptr noundef %5) #7
  %11 = icmp slt i32 %10, 0
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.genl_info, ptr %2, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @linkmodes_prepare_data.__msg) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  store ptr @linkmodes_prepare_data.__msg, ptr %16, align 4
  br label %33

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 42
  %21 = load ptr, ptr %20, align 8
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %1, i32 0, i32 1, i32 2
  store i32 0, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %1, i32 0, i32 1, i32 1, i32 2
  %29 = tail call i32 @_find_first_bit_le(ptr noundef %28, i32 noundef 92) #7
  %30 = icmp eq i32 %29, 92
  %31 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %1, i32 0, i32 3
  %32 = zext i1 %30 to i8
  store i8 %32, ptr %31, align 4
  br label %33

33:                                               ; preds = %27, %18, %14
  tail call void @ethnl_ops_complete(ptr noundef %4) #7
  br label %34

34:                                               ; preds = %33, %3
  %35 = phi i32 [ %10, %33 ], [ %7, %3 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @linkmodes_reply_size(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ethnl_req_info, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp ne i32 %5, 0
  %7 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %1, i32 0, i32 1, i32 1
  %8 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %1, i32 0, i32 1, i32 1, i32 1
  %9 = tail call i32 @ethnl_bitset_size(ptr noundef %8, ptr noundef %7, i32 noundef 92, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %6) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %2
  %12 = add nuw i32 %9, 32
  %13 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %1, i32 0, i32 3
  %14 = load i8, ptr %13, align 4, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %1, i32 0, i32 1, i32 1, i32 2
  %18 = tail call i32 @ethnl_bitset_size(ptr noundef %17, ptr noundef null, i32 noundef 92, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %6) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = add i32 %18, %12
  br label %22

22:                                               ; preds = %20, %11
  %23 = phi i32 [ %12, %11 ], [ %21, %20 ]
  %24 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 11
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  %27 = add i32 %23, 8
  %28 = select i1 %26, i32 %23, i32 %27
  %29 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 12
  %30 = load i8, ptr %29, align 2
  %31 = icmp eq i8 %30, 0
  %32 = add i32 %28, 8
  %33 = select i1 %31, i32 %28, i32 %32
  br label %34

34:                                               ; preds = %22, %16, %2
  %35 = phi i32 [ %9, %2 ], [ %18, %16 ], [ %33, %22 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @linkmodes_fill_reply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = getelementptr inbounds %struct.ethnl_req_info, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  %14 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %2, i32 0, i32 1, i32 0, i32 5
  %15 = load i8, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #7
  store i8 %15, ptr %9, align 1
  %16 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %63

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %2, i32 0, i32 1, i32 1
  %20 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %2, i32 0, i32 1, i32 1, i32 1
  %21 = call i32 @ethnl_put_bitset(ptr noundef %0, i32 noundef 3, ptr noundef %20, ptr noundef %19, i32 noundef 92, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %13) #7
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %63, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %2, i32 0, i32 3
  %25 = load i8, ptr %24, align 4, !range !9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %2, i32 0, i32 1, i32 1, i32 2
  %29 = call i32 @ethnl_put_bitset(ptr noundef %0, i32 noundef 4, ptr noundef %28, ptr noundef null, i32 noundef 92, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %13) #7
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %27, %23
  %32 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %2, i32 0, i32 1, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 %33, ptr %8, align 4
  %34 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %2, i32 0, i32 1, i32 0, i32 2
  %38 = load i8, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 %38, ptr %7, align 1
  %39 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %2, i32 0, i32 1, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 %43, ptr %6, align 4
  %46 = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %45, %41
  %49 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %2, i32 0, i32 1, i32 0, i32 11
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 %50, ptr %5, align 1
  %53 = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52, %48
  %56 = getelementptr inbounds %struct.linkmodes_reply_data, ptr %2, i32 0, i32 1, i32 0, i32 12
  %57 = load i8, ptr %56, align 2
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 %57, ptr %4, align 1
  %60 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %55
  br label %63

63:                                               ; preds = %62, %59, %52, %45, %36, %31, %27, %18, %3
  %64 = phi i32 [ 0, %62 ], [ -90, %3 ], [ -90, %18 ], [ -90, %27 ], [ -90, %36 ], [ -90, %31 ], [ -90, %45 ], [ -90, %52 ], [ -90, %59 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_linkmodes(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [3 x i32], align 4
  %4 = alloca %struct.ethtool_link_ksettings, align 4
  %5 = alloca %struct.ethnl_req_info, align 8
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %4, i8 0, i32 88, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 0, ptr %5, align 8
  %7 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 0, ptr %6, align 1
  %9 = getelementptr ptr, ptr %8, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %10, i32 4
  %14 = load i8, ptr %13, align 1
  %15 = add i8 %14, -2
  %16 = icmp ult i8 %15, 4
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_check_linkmodes.__msg) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %254, label %21

21:                                               ; preds = %17
  store ptr @ethnl_check_linkmodes.__msg, ptr %19, align 4
  br label %36

22:                                               ; preds = %12, %2
  %23 = getelementptr ptr, ptr %8, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %24, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @llvm.ctpop.i32(i32 %28) #7, !range !10
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %42, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_check_linkmodes.__msg.2) #7
  %34 = icmp eq ptr %33, null
  br i1 %34, label %254, label %35

35:                                               ; preds = %31
  store ptr @ethnl_check_linkmodes.__msg.2, ptr %33, align 4
  br label %36

36:                                               ; preds = %35, %21
  %37 = phi ptr [ %33, %35 ], [ %19, %21 ]
  %38 = phi ptr [ %24, %35 ], [ %10, %21 ]
  %39 = phi i32 [ -22, %35 ], [ -95, %21 ]
  %40 = getelementptr inbounds %struct.netlink_ext_ack, ptr %37, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  %41 = getelementptr inbounds %struct.netlink_ext_ack, ptr %37, i32 0, i32 2
  store ptr null, ptr %41, align 4
  br label %254

42:                                               ; preds = %26, %22
  %43 = getelementptr ptr, ptr %8, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %5, ptr noundef %44, ptr noundef nonnull @init_net, ptr noundef %46, i1 noundef zeroext true) #7
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %254, label %49

49:                                               ; preds = %42
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 42
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.ethtool_ops, ptr %52, i32 0, i32 56
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %238, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.ethtool_ops, ptr %52, i32 0, i32 57
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %238, label %60

60:                                               ; preds = %56
  call void @rtnl_lock() #7
  %61 = call i32 @ethnl_ops_begin(ptr noundef %50) #7
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %235, label %63

63:                                               ; preds = %60
  %64 = call i32 @__ethtool_get_link_ksettings(ptr noundef %50, ptr noundef nonnull %4) #7
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load ptr, ptr %45, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_linkmodes.__msg) #7
  %68 = icmp eq ptr %67, null
  br i1 %68, label %233, label %69

69:                                               ; preds = %66
  store ptr @ethnl_set_linkmodes.__msg, ptr %67, align 4
  br label %233

70:                                               ; preds = %63
  %71 = load ptr, ptr %9, align 4
  %72 = icmp eq ptr %71, null
  %73 = xor i1 %72, true
  %74 = getelementptr inbounds %struct.ethtool_link_settings, ptr %4, i32 0, i32 11
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %75, 0
  %77 = select i1 %73, i1 %76, i1 false
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load ptr, ptr %45, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_update_linkmodes.__msg) #7
  %80 = icmp eq ptr %79, null
  br i1 %80, label %233, label %81

81:                                               ; preds = %78
  store ptr @ethnl_update_linkmodes.__msg, ptr %79, align 4
  %82 = getelementptr inbounds %struct.netlink_ext_ack, ptr %79, i32 0, i32 1
  store ptr %71, ptr %82, align 4
  %83 = getelementptr inbounds %struct.netlink_ext_ack, ptr %79, i32 0, i32 2
  store ptr null, ptr %83, align 4
  br label %233

84:                                               ; preds = %70
  store i8 0, ptr %6, align 1
  %85 = getelementptr ptr, ptr %8, i32 5
  %86 = load ptr, ptr %85, align 4
  %87 = icmp ne ptr %86, null
  %88 = load ptr, ptr %23, align 4
  %89 = icmp ne ptr %88, null
  %90 = getelementptr ptr, ptr %8, i32 6
  %91 = load ptr, ptr %90, align 4
  %92 = icmp ne ptr %91, null
  %93 = getelementptr inbounds %struct.ethtool_link_settings, ptr %4, i32 0, i32 5
  %94 = getelementptr ptr, ptr %8, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %104, label %97

97:                                               ; preds = %84
  %98 = getelementptr i8, ptr %95, i32 4
  %99 = load i8, ptr %98, align 1
  %100 = load i8, ptr %93, align 1
  %101 = icmp eq i8 %100, %99
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  store i8 %99, ptr %93, align 1
  store i8 1, ptr %6, align 1
  %103 = load ptr, ptr %23, align 4
  br label %106

104:                                              ; preds = %84
  %105 = load i8, ptr %93, align 1
  br label %106

106:                                              ; preds = %104, %102, %97
  %107 = phi i8 [ %105, %104 ], [ %99, %102 ], [ %99, %97 ]
  %108 = phi ptr [ %88, %104 ], [ %103, %102 ], [ %88, %97 ]
  %109 = icmp eq ptr %108, null
  %110 = icmp eq i8 %107, 0
  br i1 %109, label %123, label %111

111:                                              ; preds = %106
  br i1 %110, label %112, label %126

112:                                              ; preds = %111
  %113 = load ptr, ptr %51, align 8
  %114 = load i8, ptr %113, align 4
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load ptr, ptr %45, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_update_linkmodes.__msg.3) #7
  %119 = icmp eq ptr %118, null
  br i1 %119, label %233, label %120

120:                                              ; preds = %117
  store ptr @ethnl_update_linkmodes.__msg.3, ptr %118, align 4
  %121 = getelementptr inbounds %struct.netlink_ext_ack, ptr %118, i32 0, i32 1
  store ptr %108, ptr %121, align 4
  %122 = getelementptr inbounds %struct.netlink_ext_ack, ptr %118, i32 0, i32 2
  store ptr null, ptr %122, align 4
  br label %233

123:                                              ; preds = %106
  br i1 %110, label %124, label %126

124:                                              ; preds = %123
  %125 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %4, i32 0, i32 2
  store i32 0, ptr %125, align 4
  br label %126

126:                                              ; preds = %124, %123, %112, %111
  %127 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %4, i32 0, i32 1, i32 1
  %128 = getelementptr ptr, ptr %8, i32 3
  %129 = load ptr, ptr %128, align 4
  %130 = load ptr, ptr %45, align 4
  %131 = call i32 @ethnl_update_bitset(ptr noundef %127, i32 noundef 92, ptr noundef %129, ptr noundef nonnull @link_mode_names, ptr noundef %130, ptr noundef nonnull %6) #7
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %233, label %133

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.ethtool_link_settings, ptr %4, i32 0, i32 1
  %135 = load ptr, ptr %85, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %143, label %137

137:                                              ; preds = %133
  %138 = getelementptr i8, ptr %135, i32 4
  %139 = load i32, ptr %138, align 4
  %140 = load i32, ptr %134, align 4
  %141 = icmp eq i32 %140, %139
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  store i32 %139, ptr %134, align 4
  store i8 1, ptr %6, align 1
  br label %143

143:                                              ; preds = %142, %137, %133
  %144 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %4, i32 0, i32 2
  br i1 %109, label %151, label %145

145:                                              ; preds = %143
  %146 = getelementptr i8, ptr %108, i32 4
  %147 = load i32, ptr %146, align 4
  %148 = load i32, ptr %144, align 4
  %149 = icmp eq i32 %148, %147
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  store i32 %147, ptr %144, align 4
  store i8 1, ptr %6, align 1
  br label %151

151:                                              ; preds = %150, %145, %143
  %152 = getelementptr inbounds %struct.ethtool_link_settings, ptr %4, i32 0, i32 2
  %153 = load ptr, ptr %90, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %161, label %155

155:                                              ; preds = %151
  %156 = getelementptr i8, ptr %153, i32 4
  %157 = load i8, ptr %156, align 1
  %158 = load i8, ptr %152, align 4
  %159 = icmp eq i8 %158, %157
  br i1 %159, label %161, label %160

160:                                              ; preds = %155
  store i8 %157, ptr %152, align 4
  store i8 1, ptr %6, align 1
  br label %161

161:                                              ; preds = %160, %155, %151
  br i1 %72, label %168, label %162

162:                                              ; preds = %161
  %163 = getelementptr i8, ptr %71, i32 4
  %164 = load i8, ptr %163, align 1
  %165 = load i8, ptr %74, align 1
  %166 = icmp eq i8 %165, %164
  br i1 %166, label %168, label %167

167:                                              ; preds = %162
  store i8 %164, ptr %74, align 1
  store i8 1, ptr %6, align 1
  br label %168

168:                                              ; preds = %167, %162, %161
  %169 = load ptr, ptr %128, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %219

171:                                              ; preds = %168
  %172 = load i8, ptr %93, align 1
  %173 = icmp ne i8 %172, 0
  %174 = select i1 %87, i1 true, i1 %89
  %175 = select i1 %174, i1 true, i1 %92
  %176 = select i1 %173, i1 %175, i1 false
  br i1 %176, label %177, label %219

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %4, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef align 4 dereferenceable(12) %127, i32 12, i1 false) #7
  %179 = xor i1 %87, true
  br label %180

180:                                              ; preds = %212, %177
  %181 = phi i32 [ 0, %177 ], [ %213, %212 ]
  %182 = getelementptr [0 x %struct.link_mode_info], ptr @link_mode_params, i32 0, i32 %181
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %212, label %185

185:                                              ; preds = %180
  %186 = lshr i32 %181, 5
  %187 = getelementptr i32, ptr %178, i32 %186
  %188 = load volatile i32, ptr %187, align 4
  %189 = and i32 %181, 31
  %190 = shl nuw i32 1, %189
  %191 = and i32 %188, %190
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %211, label %193

193:                                              ; preds = %185
  %194 = load i32, ptr %134, align 4
  %195 = icmp eq i32 %183, %194
  %196 = select i1 %179, i1 true, i1 %195
  br i1 %196, label %197, label %211

197:                                              ; preds = %193
  br i1 %89, label %198, label %204

198:                                              ; preds = %197
  %199 = getelementptr [0 x %struct.link_mode_info], ptr @link_mode_params, i32 0, i32 %181, i32 1
  %200 = load i8, ptr %199, align 4
  %201 = zext i8 %200 to i32
  %202 = load i32, ptr %144, align 4
  %203 = icmp eq i32 %202, %201
  br i1 %203, label %204, label %211

204:                                              ; preds = %198, %197
  br i1 %92, label %205, label %210

205:                                              ; preds = %204
  %206 = getelementptr [0 x %struct.link_mode_info], ptr @link_mode_params, i32 0, i32 %181, i32 2
  %207 = load i8, ptr %206, align 1
  %208 = load i8, ptr %152, align 4
  %209 = icmp eq i8 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %205, %204
  call void @_set_bit(i32 noundef %181, ptr noundef %127) #7
  br label %212

211:                                              ; preds = %205, %198, %193, %185
  call void @_clear_bit(i32 noundef %181, ptr noundef %127) #7
  br label %212

212:                                              ; preds = %211, %210, %180
  %213 = add nuw nsw i32 %181, 1
  %214 = icmp eq i32 %213, 92
  br i1 %214, label %215, label %180

215:                                              ; preds = %212
  %216 = call i32 @__bitmap_equal(ptr noundef nonnull %3, ptr noundef %127, i32 noundef 92) #7
  %217 = icmp eq i32 %216, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  store i8 1, ptr %6, align 1
  br label %222

219:                                              ; preds = %215, %171, %168
  %220 = load i8, ptr %6, align 1
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %233, label %222

222:                                              ; preds = %219, %218
  %223 = load ptr, ptr %51, align 8
  %224 = getelementptr inbounds %struct.ethtool_ops, ptr %223, i32 0, i32 57
  %225 = load ptr, ptr %224, align 4
  %226 = call i32 %225(ptr noundef %50, ptr noundef nonnull %4) #7
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %222
  %229 = load ptr, ptr %45, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_linkmodes.__msg.1) #7
  %230 = icmp eq ptr %229, null
  br i1 %230, label %233, label %231

231:                                              ; preds = %228
  store ptr @ethnl_set_linkmodes.__msg.1, ptr %229, align 4
  br label %233

232:                                              ; preds = %222
  call void @ethtool_notify(ptr noundef %50, i32 noundef 5, ptr noundef null) #7
  br label %233

233:                                              ; preds = %232, %231, %228, %219, %126, %120, %117, %81, %78, %69, %66
  %234 = phi i32 [ 0, %219 ], [ %226, %232 ], [ %64, %69 ], [ %64, %66 ], [ %226, %231 ], [ %226, %228 ], [ %131, %126 ], [ -95, %117 ], [ -95, %120 ], [ -95, %78 ], [ -95, %81 ]
  call void @ethnl_ops_complete(ptr noundef %50) #7
  br label %235

235:                                              ; preds = %233, %60
  %236 = phi i32 [ %61, %60 ], [ %234, %233 ]
  call void @rtnl_unlock() #7
  %237 = load ptr, ptr %5, align 8
  br label %238

238:                                              ; preds = %235, %56, %49
  %239 = phi ptr [ %237, %235 ], [ %50, %56 ], [ %50, %49 ]
  %240 = phi i32 [ %236, %235 ], [ -95, %56 ], [ -95, %49 ]
  %241 = icmp eq ptr %239, null
  br i1 %241, label %254, label %242

242:                                              ; preds = %238
  %243 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !11
  %244 = getelementptr inbounds %struct.net_device, ptr %239, i32 0, i32 99
  %245 = load ptr, ptr %244, align 8
  %246 = ptrtoint ptr %245 to i32
  %247 = call i32 @llvm.read_register.i32(metadata !0) #7
  %248 = inttoptr i32 %247 to ptr
  %249 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %248) #5, !srcloc !12
  %250 = add i32 %249, %246
  %251 = inttoptr i32 %250 to ptr
  %252 = load i32, ptr %251, align 4
  %253 = add i32 %252, -1
  store i32 %253, ptr %251, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %243) #7, !srcloc !13
  br label %254

254:                                              ; preds = %242, %238, %42, %36, %31, %17
  %255 = phi i32 [ %47, %42 ], [ %240, %238 ], [ %240, %242 ], [ %39, %36 ], [ -22, %31 ], [ -95, %17 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #7
  ret i32 %255
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
declare dso_local i32 @__ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #3

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
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset_size(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_put_bitset(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_update_bitset(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_equal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind readonly }
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
!10 = !{i32 0, i32 33}
!11 = !{i64 365952, i64 366013}
!12 = !{i64 384652}
!13 = !{i64 368969}
