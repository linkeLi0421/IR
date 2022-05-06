; ModuleID = '/llk/IR/net/ethtool/stats.c_pt.bc'
source_filename = "../net/ethtool/stats.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.stats_req_info = type { %struct.ethnl_req_info, [1 x i32] }
%struct.ethnl_req_info = type { ptr, %struct.netdevice_tracker, i32 }
%struct.netdevice_tracker = type {}
%struct.stats_reply_data = type { %struct.ethnl_reply_data, %union.anon.138, ptr }
%struct.ethnl_reply_data = type { ptr }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { %struct.ethtool_eth_phy_stats, %struct.ethtool_eth_mac_stats, %struct.ethtool_eth_ctrl_stats, %struct.ethtool_rmon_stats }
%struct.ethtool_eth_phy_stats = type { i64 }
%struct.ethtool_eth_mac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_eth_ctrl_stats = type { i64, i64, i64 }
%struct.ethtool_rmon_stats = type { i64, i64, i64, i64, [10 x i64], [10 x i64] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.0, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.133, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.0 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.15 }
%union.anon.15 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.133 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ethtool_rmon_hist_range = type { i16, i16 }

@stats_std_names = dso_local constant [4 x [32 x i8]] [[32 x i8] c"eth-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"eth-mac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"eth-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rmon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@stats_eth_phy_names = dso_local local_unnamed_addr constant [1 x [32 x i8]] [[32 x i8] c"SymbolErrorDuringCarrier\00\00\00\00\00\00\00\00"], align 1
@stats_eth_mac_names = dso_local local_unnamed_addr constant [22 x [32 x i8]] [[32 x i8] c"FramesTransmittedOK\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"SingleCollisionFrames\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MultipleCollisionFrames\00\00\00\00\00\00\00\00\00", [32 x i8] c"FramesReceivedOK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FrameCheckSequenceErrors\00\00\00\00\00\00\00\00", [32 x i8] c"AlignmentErrors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OctetsTransmittedOK\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FramesWithDeferredXmissions\00\00\00\00\00", [32 x i8] c"LateCollisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FramesAbortedDueToXSColls\00\00\00\00\00\00\00", [32 x i8] c"FramesLostDueToIntMACXmitError\00\00", [32 x i8] c"CarrierSenseErrors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OctetsReceivedOK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FramesLostDueToIntMACRcvError\00\00\00", [32 x i8] c"MulticastFramesXmittedOK\00\00\00\00\00\00\00\00", [32 x i8] c"BroadcastFramesXmittedOK\00\00\00\00\00\00\00\00", [32 x i8] c"FramesWithExcessiveDeferral\00\00\00\00\00", [32 x i8] c"MulticastFramesReceivedOK\00\00\00\00\00\00\00", [32 x i8] c"BroadcastFramesReceivedOK\00\00\00\00\00\00\00", [32 x i8] c"InRangeLengthErrors\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutOfRangeLengthField\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FrameTooLongErrors\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@stats_eth_ctrl_names = dso_local local_unnamed_addr constant [3 x [32 x i8]] [[32 x i8] c"MACControlFramesTransmitted\00\00\00\00\00", [32 x i8] c"MACControlFramesReceived\00\00\00\00\00\00\00\00", [32 x i8] c"UnsupportedOpcodesReceived\00\00\00\00\00\00"], align 1
@stats_rmon_names = dso_local local_unnamed_addr constant [4 x [32 x i8]] [[32 x i8] c"etherStatsUndersizePkts\00\00\00\00\00\00\00\00\00", [32 x i8] c"etherStatsOversizePkts\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"etherStatsFragments\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"etherStatsJabbers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_stats_get_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer } }>, align 4
@ethnl_stats_request_ops = dso_local local_unnamed_addr constant %struct.ethnl_request_ops { i8 32, i8 33, i16 2, i32 12, i32 416, i8 0, ptr @stats_parse_request, ptr @stats_prepare_data, ptr @stats_reply_size, ptr @stats_fill_reply, ptr null }, align 4
@stats_parse_request.__msg = internal constant [19 x i8] c"no stats requested\00", align 1
@.str = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stats_parse_request(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1
  %5 = getelementptr inbounds %struct.stats_req_info, ptr %0, i32 0, i32 1
  %6 = getelementptr ptr, ptr %1, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @ethnl_update_bitset(ptr noundef %5, i32 noundef 4, ptr noundef %7, ptr noundef nonnull @stats_std_names, ptr noundef %2, ptr noundef nonnull %4) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i8, ptr %4, align 1, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  call void @do_trace_netlink_extack(ptr noundef nonnull @stats_parse_request.__msg) #5
  %14 = icmp eq ptr %2, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  store ptr @stats_parse_request.__msg, ptr %2, align 4
  br label %16

16:                                               ; preds = %15, %13, %10, %3
  %17 = phi i32 [ %8, %3 ], [ -22, %15 ], [ -22, %13 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stats_prepare_data(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = tail call i32 @ethnl_ops_begin(ptr noundef %4) #5
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %58, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(400) %8, i8 -1, i32 400, i1 false)
  %9 = getelementptr inbounds %struct.stats_req_info, ptr %0, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 42
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ethtool_ops, ptr %15, i32 0, i32 65
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void %17(ptr noundef %4, ptr noundef %8) #5
  br label %20

20:                                               ; preds = %19, %13, %7
  %21 = load volatile i32, ptr %9, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 42
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.ethtool_ops, ptr %26, i32 0, i32 66
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1
  tail call void %28(ptr noundef %4, ptr noundef %31) #5
  br label %32

32:                                               ; preds = %30, %24, %20
  %33 = load volatile i32, ptr %9, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 42
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.ethtool_ops, ptr %38, i32 0, i32 67
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 2
  tail call void %40(ptr noundef %4, ptr noundef %43) #5
  br label %44

44:                                               ; preds = %42, %36, %32
  %45 = load volatile i32, ptr %9, align 4
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 42
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.ethtool_ops, ptr %50, i32 0, i32 68
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 3
  %56 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 2
  tail call void %52(ptr noundef %4, ptr noundef %55, ptr noundef %56) #5
  br label %57

57:                                               ; preds = %54, %48, %44
  tail call void @ethnl_ops_complete(ptr noundef %4) #5
  br label %58

58:                                               ; preds = %57, %3
  %59 = phi i32 [ 0, %57 ], [ %5, %3 ]
  ret i32 %59
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stats_reply_size(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.stats_req_info, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = load volatile i32, ptr %3, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = add nuw nsw i32 %5, %10
  %12 = load volatile i32, ptr %3, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = add nuw nsw i32 %11, %16
  %18 = load volatile i32, ptr %3, align 4
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = add nuw nsw i32 %17, %22
  %24 = select i1 %20, i32 0, i32 400
  %25 = mul nuw nsw i32 %23, 20
  %26 = add nuw nsw i32 %25, %24
  %27 = shl nuw nsw i32 %5, 4
  %28 = or i32 %27, 352
  %29 = select i1 %8, i32 %27, i32 %28
  %30 = add nuw nsw i32 %29, 48
  %31 = select i1 %14, i32 %29, i32 %30
  %32 = add nuw nsw i32 %31, 384
  %33 = select i1 %20, i32 %31, i32 %32
  %34 = add i32 %26, %33
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stats_fill_reply(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.stats_req_info, ptr %1, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %45, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 32772, i32 noundef 0, ptr noundef null) #5
  %14 = icmp slt i32 %13, 0
  %15 = icmp eq ptr %12, null
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %65, label %17

17:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4
  %18 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 17, ptr %4, align 4
  %21 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.stats_reply_data, ptr %2, i32 0, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 0, i64 noundef %25) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load ptr, ptr %11, align 8
  %30 = ptrtoint ptr %29 to i32
  %31 = ptrtoint ptr %12 to i32
  %32 = sub i32 %30, %31
  %33 = trunc i32 %32 to i16
  store i16 %33, ptr %12, align 2
  br label %45

34:                                               ; preds = %23, %20, %17
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = icmp ugt ptr %36, %12
  br i1 %37, label %38, label %40, !prof !9

38:                                               ; preds = %34
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #5
  %39 = load ptr, ptr %35, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi ptr [ %39, %38 ], [ %36, %34 ]
  %42 = ptrtoint ptr %12 to i32
  %43 = ptrtoint ptr %41 to i32
  %44 = sub i32 %42, %43
  call void @skb_trim(ptr noundef %0, i32 noundef %44) #5
  br label %65

45:                                               ; preds = %28, %3
  %46 = load volatile i32, ptr %6, align 4
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = call fastcc i32 @stats_put_stats(ptr noundef %0, ptr noundef %2, i32 noundef 1, i32 noundef 18, ptr noundef nonnull @stats_put_mac_stats)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %49, %45
  %53 = load volatile i32, ptr %6, align 4
  %54 = and i32 %53, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = call fastcc i32 @stats_put_stats(ptr noundef %0, ptr noundef %2, i32 noundef 2, i32 noundef 19, ptr noundef nonnull @stats_put_ctrl_stats)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56, %52
  %60 = load volatile i32, ptr %6, align 4
  %61 = and i32 %60, 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call fastcc i32 @stats_put_stats(ptr noundef %0, ptr noundef %2, i32 noundef 3, i32 noundef 20, ptr noundef nonnull @stats_put_rmon_stats)
  br label %65

65:                                               ; preds = %63, %59, %56, %49, %40, %10
  %66 = phi i32 [ %57, %56 ], [ %64, %63 ], [ 0, %59 ], [ %50, %49 ], [ -90, %40 ], [ -90, %10 ]
  ret i32 %66
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_update_bitset(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stats_put_stats(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 32772, i32 noundef 0, ptr noundef null) #5
  %11 = icmp slt i32 %10, 0
  %12 = icmp eq ptr %9, null
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %40, label %14

14:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 %2, ptr %7, align 4
  %15 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store i32 %3, ptr %6, align 4
  %18 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = call i32 %4(ptr noundef %0, ptr noundef %1) #5, !callees !10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load ptr, ptr %8, align 8
  %25 = ptrtoint ptr %24 to i32
  %26 = ptrtoint ptr %9 to i32
  %27 = sub i32 %25, %26
  %28 = trunc i32 %27 to i16
  store i16 %28, ptr %9, align 2
  br label %40

29:                                               ; preds = %20, %17, %14
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = icmp ugt ptr %31, %9
  br i1 %32, label %33, label %35, !prof !9

33:                                               ; preds = %29
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #5
  %34 = load ptr, ptr %30, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi ptr [ %34, %33 ], [ %31, %29 ]
  %37 = ptrtoint ptr %9 to i32
  %38 = ptrtoint ptr %36 to i32
  %39 = sub i32 %37, %38
  call void @skb_trim(ptr noundef %0, i32 noundef %39) #5
  br label %40

40:                                               ; preds = %35, %23, %5
  %41 = phi i32 [ -90, %35 ], [ 0, %23 ], [ -90, %5 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stats_put_mac_stats(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 0, i64 noundef %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %113

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 1, i64 noundef %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %113

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 2, i64 noundef %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %113

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 3
  %19 = load i64, ptr %18, align 8
  %20 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 3, i64 noundef %19)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %113

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 4
  %24 = load i64, ptr %23, align 8
  %25 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 4, i64 noundef %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %113

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 5
  %29 = load i64, ptr %28, align 8
  %30 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 5, i64 noundef %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %113

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 6
  %34 = load i64, ptr %33, align 8
  %35 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 6, i64 noundef %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %113

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 7
  %39 = load i64, ptr %38, align 8
  %40 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 7, i64 noundef %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %113

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 8
  %44 = load i64, ptr %43, align 8
  %45 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 8, i64 noundef %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %113

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 9
  %49 = load i64, ptr %48, align 8
  %50 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 9, i64 noundef %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %113

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 10
  %54 = load i64, ptr %53, align 8
  %55 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 10, i64 noundef %54)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %113

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 11
  %59 = load i64, ptr %58, align 8
  %60 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 11, i64 noundef %59)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %113

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 12
  %64 = load i64, ptr %63, align 8
  %65 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 12, i64 noundef %64)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %113

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 13
  %69 = load i64, ptr %68, align 8
  %70 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 13, i64 noundef %69)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %113

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 14
  %74 = load i64, ptr %73, align 8
  %75 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 14, i64 noundef %74)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %113

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 15
  %79 = load i64, ptr %78, align 8
  %80 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 15, i64 noundef %79)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %113

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 16
  %84 = load i64, ptr %83, align 8
  %85 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 16, i64 noundef %84)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 17
  %89 = load i64, ptr %88, align 8
  %90 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 17, i64 noundef %89)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 18
  %94 = load i64, ptr %93, align 8
  %95 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 18, i64 noundef %94)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 19
  %99 = load i64, ptr %98, align 8
  %100 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 19, i64 noundef %99)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 20
  %104 = load i64, ptr %103, align 8
  %105 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 20, i64 noundef %104)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 21
  %109 = load i64, ptr %108, align 8
  %110 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 21, i64 noundef %109)
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %111, i32 0, i32 -90
  br label %113

113:                                              ; preds = %107, %102, %97, %92, %87, %82, %77, %72, %67, %62, %57, %52, %47, %42, %37, %32, %27, %22, %17, %12, %7, %2
  %114 = phi i32 [ -90, %102 ], [ -90, %97 ], [ -90, %92 ], [ -90, %87 ], [ -90, %82 ], [ -90, %77 ], [ -90, %72 ], [ -90, %67 ], [ -90, %62 ], [ -90, %57 ], [ -90, %52 ], [ -90, %47 ], [ -90, %42 ], [ -90, %37 ], [ -90, %32 ], [ -90, %27 ], [ -90, %22 ], [ -90, %17 ], [ -90, %12 ], [ -90, %7 ], [ -90, %2 ], [ %112, %107 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stats_put_ctrl_stats(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 0, i64 noundef %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 2, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 1, i64 noundef %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 2, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 2, i64 noundef %14)
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 0, i32 -90
  br label %18

18:                                               ; preds = %12, %7, %2
  %19 = phi i32 [ -90, %7 ], [ -90, %2 ], [ %17, %12 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stats_put_rmon_stats(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 3
  %4 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 3, i32 4
  %5 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call fastcc i32 @stats_put_rmon_hist(ptr noundef %0, i32 noundef 5, ptr noundef %4, ptr noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 3, i32 5
  %11 = load ptr, ptr %5, align 8
  %12 = tail call fastcc i32 @stats_put_rmon_hist(ptr noundef %0, i32 noundef 6, ptr noundef %10, ptr noundef %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = load i64, ptr %3, align 8
  %16 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 0, i64 noundef %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 3, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 1, i64 noundef %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 3, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 2, i64 noundef %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.stats_reply_data, ptr %1, i32 0, i32 1, i32 0, i32 3, i32 3
  %30 = load i64, ptr %29, align 8
  %31 = tail call fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext 3, i64 noundef %30)
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 0, i32 -90
  br label %34

34:                                               ; preds = %28, %23, %18, %14, %9, %2
  %35 = phi i32 [ -90, %9 ], [ -90, %2 ], [ -90, %23 ], [ -90, %18 ], [ -90, %14 ], [ %33, %28 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stat_put(ptr noundef %0, i16 noundef zeroext %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = icmp eq i64 %2, -1
  br i1 %5, label %34, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 32772, i32 noundef 0, ptr noundef null) #5
  %10 = icmp slt i32 %9, 0
  %11 = icmp eq ptr %8, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %34, label %13

13:                                               ; preds = %6
  %14 = zext i16 %1 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  store i64 %2, ptr %4, align 8
  %15 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef %14, i32 noundef 8, ptr noundef nonnull %4, i32 noundef -1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ugt ptr %19, %8
  br i1 %20, label %21, label %23, !prof !9

21:                                               ; preds = %17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #5
  %22 = load ptr, ptr %18, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi ptr [ %22, %21 ], [ %19, %17 ]
  %25 = ptrtoint ptr %8 to i32
  %26 = ptrtoint ptr %24 to i32
  %27 = sub i32 %25, %26
  call void @skb_trim(ptr noundef %0, i32 noundef %27) #5
  br label %34

28:                                               ; preds = %13
  %29 = load ptr, ptr %7, align 8
  %30 = ptrtoint ptr %29 to i32
  %31 = ptrtoint ptr %8 to i32
  %32 = sub i32 %30, %31
  %33 = trunc i32 %32 to i16
  store i16 %33, ptr %8, align 2
  br label %34

34:                                               ; preds = %28, %23, %6, %3
  %35 = phi i32 [ %15, %23 ], [ 0, %28 ], [ 0, %3 ], [ -90, %6 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stats_put_rmon_hist(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = icmp eq ptr %3, null
  br i1 %8, label %66, label %9

9:                                                ; preds = %4
  %10 = or i32 %1, 32768
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  br label %12

12:                                               ; preds = %52, %9
  %13 = phi i32 [ 0, %9 ], [ %53, %52 ]
  %14 = getelementptr %struct.ethtool_rmon_hist_range, ptr %3, i32 %13
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr %struct.ethtool_rmon_hist_range, ptr %3, i32 %13, i32 1
  %19 = load i16, ptr %18, align 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %66, label %21

21:                                               ; preds = %17, %12
  %22 = getelementptr i64, ptr %2, i32 %13
  %23 = load i64, ptr %22, align 8
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %52, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %11, align 8
  %27 = call i32 @nla_put(ptr noundef %0, i32 noundef %10, i32 noundef 0, ptr noundef null) #5
  %28 = icmp slt i32 %27, 0
  %29 = icmp eq ptr %26, null
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %66, label %31

31:                                               ; preds = %25
  %32 = load i16, ptr %14, align 2
  %33 = zext i16 %32 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 %33, ptr %7, align 4
  %34 = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %31
  %37 = getelementptr %struct.ethtool_rmon_hist_range, ptr %3, i32 %13, i32 1
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store i32 %39, ptr %6, align 4
  %40 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load i64, ptr %22, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  store i64 %43, ptr %5, align 8
  %44 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 9, i32 noundef 8, ptr noundef nonnull %5, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load ptr, ptr %11, align 8
  %48 = ptrtoint ptr %47 to i32
  %49 = ptrtoint ptr %26 to i32
  %50 = sub i32 %48, %49
  %51 = trunc i32 %50 to i16
  store i16 %51, ptr %26, align 2
  br label %52

52:                                               ; preds = %46, %21
  %53 = add nuw nsw i32 %13, 1
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %66, label %12

55:                                               ; preds = %42, %36, %31
  %56 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %57 = load ptr, ptr %56, align 4
  %58 = icmp ugt ptr %57, %26
  br i1 %58, label %59, label %61, !prof !9

59:                                               ; preds = %55
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #5
  %60 = load ptr, ptr %56, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi ptr [ %60, %59 ], [ %57, %55 ]
  %63 = ptrtoint ptr %26 to i32
  %64 = ptrtoint ptr %62 to i32
  %65 = sub i32 %63, %64
  call void @skb_trim(ptr noundef %0, i32 noundef %65) #5
  br label %66

66:                                               ; preds = %61, %52, %25, %17, %4
  %67 = phi i32 [ -90, %61 ], [ 0, %4 ], [ 0, %52 ], [ 0, %17 ], [ -90, %25 ]
  ret i32 %67
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = distinct !{ptr @stats_put_ctrl_stats, ptr @stats_put_mac_stats, null, ptr @stats_put_rmon_stats}
