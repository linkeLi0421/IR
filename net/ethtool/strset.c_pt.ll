; ModuleID = '/llk/IR/net/ethtool/strset.c_pt.bc'
source_filename = "../net/ethtool/strset.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.strset_info = type { i8, i8, i32, ptr }
%struct.strset_req_info = type { %struct.ethnl_req_info, i32, i8 }
%struct.ethnl_req_info = type { ptr, %struct.netdevice_tracker, i32 }
%struct.netdevice_tracker = type {}
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.strset_reply_data = type { %struct.ethnl_reply_data, [21 x %struct.strset_info] }
%struct.ethnl_reply_data = type { ptr }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type {}
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
%struct.ethtool_phy_ops = type { ptr, ptr, ptr, ptr, ptr }
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
@ethnl_strset_get_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon zeroinitializer } }>, align 4
@ethnl_strset_request_ops = dso_local local_unnamed_addr constant %struct.ethnl_request_ops { i8 1, i8 1, i16 1, i32 16, i32 256, i8 1, ptr @strset_parse_request, ptr @strset_prepare_data, ptr @strset_reply_size, ptr @strset_fill_reply, ptr @strset_cleanup_data }, align 4
@strset_stringsets_policy = internal constant [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }], align 4
@strset_parse_request.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [21 x i8] c"net/ethtool/strset.c\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"unexpected attrtype %u in ETHTOOL_A_STRSET_STRINGSETS\0A\00", align 1
@strset_parse_request.__msg = internal constant [22 x i8] c"unknown string set id\00", align 1
@get_stringset_policy = internal constant [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }], align 4
@nla_parse_nested.__msg = internal constant [24 x i8] c"NLA_F_NESTED is missing\00", align 1
@info_template = internal unnamed_addr constant [21 x %struct.strset_info] [%struct.strset_info { i8 1, i8 0, i32 0, ptr null }, %struct.strset_info { i8 1, i8 0, i32 0, ptr null }, %struct.strset_info { i8 1, i8 0, i32 0, ptr null }, %struct.strset_info zeroinitializer, %struct.strset_info { i8 0, i8 0, i32 64, ptr @netdev_features_strings }, %struct.strset_info { i8 0, i8 0, i32 3, ptr @rss_hash_func_strings }, %struct.strset_info { i8 0, i8 0, i32 5, ptr @tunable_strings }, %struct.strset_info { i8 1, i8 0, i32 0, ptr null }, %struct.strset_info { i8 0, i8 0, i32 4, ptr @phy_tunable_strings }, %struct.strset_info { i8 0, i8 0, i32 92, ptr @link_mode_names }, %struct.strset_info { i8 0, i8 0, i32 15, ptr @netif_msg_class_names }, %struct.strset_info { i8 0, i8 0, i32 8, ptr @wol_mode_names }, %struct.strset_info { i8 0, i8 0, i32 16, ptr @sof_timestamping_names }, %struct.strset_info { i8 0, i8 0, i32 4, ptr @ts_tx_type_names }, %struct.strset_info { i8 0, i8 0, i32 16, ptr @ts_rx_filter_names }, %struct.strset_info { i8 0, i8 0, i32 3, ptr @udp_tunnel_type_names }, %struct.strset_info { i8 0, i8 0, i32 4, ptr @stats_std_names }, %struct.strset_info { i8 0, i8 0, i32 1, ptr @stats_eth_phy_names }, %struct.strset_info { i8 0, i8 0, i32 22, ptr @stats_eth_mac_names }, %struct.strset_info { i8 0, i8 0, i32 3, ptr @stats_eth_ctrl_names }, %struct.strset_info { i8 0, i8 0, i32 4, ptr @stats_rmon_names }], align 4
@strset_prepare_data.__msg = internal constant [41 x i8] c"requested per device strings without dev\00", align 1
@netdev_features_strings = external dso_local constant [64 x [32 x i8]], align 1
@rss_hash_func_strings = external dso_local constant [3 x [32 x i8]], align 1
@tunable_strings = external dso_local constant [5 x [32 x i8]], align 1
@phy_tunable_strings = external dso_local constant [4 x [32 x i8]], align 1
@link_mode_names = external dso_local constant [0 x [32 x i8]], align 1
@netif_msg_class_names = external dso_local constant [0 x [32 x i8]], align 1
@wol_mode_names = external dso_local constant [0 x [32 x i8]], align 1
@sof_timestamping_names = external dso_local constant [0 x [32 x i8]], align 1
@ts_tx_type_names = external dso_local constant [0 x [32 x i8]], align 1
@ts_rx_filter_names = external dso_local constant [0 x [32 x i8]], align 1
@udp_tunnel_type_names = external dso_local constant [0 x [32 x i8]], align 1
@stats_std_names = external dso_local constant [4 x [32 x i8]], align 1
@stats_eth_phy_names = external dso_local constant [1 x [32 x i8]], align 1
@stats_eth_mac_names = external dso_local constant [22 x [32 x i8]], align 1
@stats_eth_ctrl_names = external dso_local constant [3 x [32 x i8]], align 1
@stats_rmon_names = external dso_local constant [4 x [32 x i8]], align 1
@ethtool_phy_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @strset_parse_request(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [2 x ptr], align 8
  %5 = getelementptr ptr, ptr %1, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %87, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %6, i32 4
  %10 = load i16, ptr %6, align 2
  %11 = zext i16 %10 to i32
  %12 = add nsw i32 %11, -4
  %13 = tail call i32 @__nla_validate(ptr noundef %9, i32 noundef %12, i32 noundef 1, ptr noundef nonnull @strset_stringsets_policy, i32 noundef 31, ptr noundef %2) #8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %87, label %15

15:                                               ; preds = %8
  %16 = getelementptr ptr, ptr %1, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ne ptr %17, null
  %19 = getelementptr inbounds %struct.strset_req_info, ptr %0, i32 0, i32 2
  %20 = zext i1 %18 to i8
  store i8 %20, ptr %19, align 4
  %21 = load i16, ptr %6, align 2
  %22 = icmp ugt i16 %21, 7
  br i1 %22, label %23, label %87

23:                                               ; preds = %15
  %24 = zext i16 %21 to i32
  %25 = add nsw i32 %24, -4
  %26 = getelementptr inbounds [2 x ptr], ptr %4, i32 0, i32 1
  %27 = getelementptr inbounds %struct.strset_req_info, ptr %0, i32 0, i32 1
  br label %28

28:                                               ; preds = %76, %23
  %29 = phi ptr [ %9, %23 ], [ %85, %76 ]
  %30 = phi i32 [ %25, %23 ], [ %84, %76 ]
  %31 = load i16, ptr %29, align 2
  %32 = icmp ult i16 %31, 4
  %33 = zext i16 %31 to i32
  %34 = icmp ult i32 %30, %33
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %87, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.nlattr, ptr %29, i32 0, i32 1
  %38 = load i16, ptr %37, align 2
  %39 = and i16 %38, 16383
  %40 = icmp ne i16 %39, 1
  %41 = load i1, ptr @strset_parse_request.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %46, !prof !8

44:                                               ; preds = %36
  %45 = zext i16 %39 to i32
  store i1 true, ptr @strset_parse_request.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %45) #8
  br label %46

46:                                               ; preds = %44, %36
  br i1 %40, label %87, label %47

47:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !9
  %48 = load i16, ptr %37, align 2
  %49 = icmp sgt i16 %48, -1
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #8
  %51 = icmp eq ptr %2, null
  br i1 %51, label %65, label %52

52:                                               ; preds = %50
  store ptr @nla_parse_nested.__msg, ptr %2, align 4
  %53 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 1
  store ptr %29, ptr %53, align 4
  %54 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 2
  store ptr null, ptr %54, align 4
  br label %65

55:                                               ; preds = %47
  %56 = getelementptr i8, ptr %29, i32 4
  %57 = load i16, ptr %29, align 2
  %58 = zext i16 %57 to i32
  %59 = add nsw i32 %58, -4
  %60 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 1, ptr noundef %56, i32 noundef %59, ptr noundef nonnull @get_stringset_policy, i32 noundef 31, ptr noundef %2) #8
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %26, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62, %55, %52, %50
  %66 = phi i32 [ -22, %50 ], [ -22, %52 ], [ %60, %55 ], [ -22, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %87

67:                                               ; preds = %62
  %68 = getelementptr i8, ptr %63, i32 4
  %69 = load i32, ptr %68, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  %70 = icmp ugt i32 %69, 20
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  call void @do_trace_netlink_extack(ptr noundef nonnull @strset_parse_request.__msg) #8
  %72 = icmp eq ptr %2, null
  br i1 %72, label %87, label %73

73:                                               ; preds = %71
  store ptr @strset_parse_request.__msg, ptr %2, align 4
  %74 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 1
  store ptr %29, ptr %74, align 4
  %75 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 2
  store ptr null, ptr %75, align 4
  br label %87

76:                                               ; preds = %67
  %77 = shl nuw nsw i32 1, %69
  %78 = load i32, ptr %27, align 4
  %79 = or i32 %78, %77
  store i32 %79, ptr %27, align 4
  %80 = load i16, ptr %29, align 2
  %81 = zext i16 %80 to i32
  %82 = add nuw nsw i32 %81, 3
  %83 = and i32 %82, 131068
  %84 = sub nsw i32 %30, %83
  %85 = getelementptr i8, ptr %29, i32 %83
  %86 = icmp sgt i32 %84, 3
  br i1 %86, label %28, label %87

87:                                               ; preds = %76, %73, %71, %65, %46, %28, %15, %8, %3
  %88 = phi i32 [ 0, %3 ], [ %13, %8 ], [ %66, %65 ], [ -95, %71 ], [ -95, %73 ], [ 0, %15 ], [ 0, %28 ], [ 0, %76 ], [ -22, %46 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @strset_prepare_data(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef readonly %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.strset_reply_data, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(252) %5, ptr noundef nonnull align 4 dereferenceable(252) @info_template, i32 252, i1 false)
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.strset_req_info, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %26, %7
  %11 = phi i32 [ 0, %7 ], [ %27, %26 ]
  %12 = shl nuw nsw i32 1, %11
  %13 = and i32 %9, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %10
  %16 = getelementptr %struct.strset_reply_data, ptr %1, i32 0, i32 1, i32 %11
  %17 = load i8, ptr %16, align 4, !range !10
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = icmp eq ptr %2, null
  br i1 %20, label %148, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.genl_info, ptr %2, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @strset_prepare_data.__msg) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %148, label %25

25:                                               ; preds = %21
  store ptr @strset_prepare_data.__msg, ptr %23, align 4
  br label %148

26:                                               ; preds = %15, %10
  %27 = add nuw nsw i32 %11, 1
  %28 = icmp eq i32 %27, 21
  br i1 %28, label %148, label %10

29:                                               ; preds = %3
  %30 = tail call i32 @ethnl_ops_begin(ptr noundef nonnull %4) #8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %135, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.strset_req_info, ptr %0, i32 0, i32 1
  %34 = getelementptr inbounds %struct.strset_req_info, ptr %0, i32 0, i32 2
  %35 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 42
  %36 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 120
  br label %37

37:                                               ; preds = %130, %32
  %38 = phi i32 [ 0, %32 ], [ %131, %130 ]
  %39 = load i32, ptr %33, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = shl nuw nsw i32 1, %38
  %43 = and i32 %39, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %130, label %45

45:                                               ; preds = %41
  %46 = getelementptr %struct.strset_reply_data, ptr %1, i32 0, i32 1, i32 %38
  %47 = load i8, ptr %46, align 4, !range !10
  br label %60

48:                                               ; preds = %37
  %49 = getelementptr %struct.strset_reply_data, ptr %1, i32 0, i32 1, i32 %38
  %50 = load i8, ptr %49, align 4, !range !10
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = getelementptr %struct.strset_reply_data, ptr %1, i32 0, i32 1, i32 %38, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %130, label %56

56:                                               ; preds = %52, %48
  %57 = load ptr, ptr %1, align 4
  %58 = icmp eq ptr %57, null
  %59 = xor i1 %51, %58
  br i1 %59, label %60, label %130

60:                                               ; preds = %56, %45
  %61 = phi i8 [ %47, %45 ], [ %50, %56 ]
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %130, label %63

63:                                               ; preds = %60
  %64 = load i8, ptr %34, align 4, !range !10
  %65 = icmp ne i8 %64, 0
  %66 = load ptr, ptr @ethtool_phy_ops, align 4
  %67 = load ptr, ptr %35, align 8
  %68 = icmp eq i32 %38, 7
  br i1 %68, label %69, label %83

69:                                               ; preds = %63
  %70 = load ptr, ptr %36, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %83, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.ethtool_ops, ptr %67, i32 0, i32 61
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  %76 = icmp ne ptr %66, null
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load ptr, ptr %66, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = tail call i32 %79(ptr noundef nonnull %70) #8
  br label %93

83:                                               ; preds = %78, %72, %69, %63
  %84 = getelementptr inbounds %struct.ethtool_ops, ptr %67, i32 0, i32 31
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %127, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.ethtool_ops, ptr %67, i32 0, i32 24
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %127, label %91

91:                                               ; preds = %87
  %92 = tail call i32 %85(ptr noundef nonnull %4, i32 noundef %38) #8
  br label %93

93:                                               ; preds = %91, %81
  %94 = phi i32 [ %82, %81 ], [ %92, %91 ]
  %95 = icmp slt i32 %94, 1
  %96 = or i1 %65, %95
  %97 = select i1 %95, i32 0, i32 %94
  br i1 %96, label %127, label %98

98:                                               ; preds = %93
  %99 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %94, i32 32) #8
  %100 = extractvalue { i32, i1 } %99, 1
  br i1 %100, label %134, label %101, !prof !8

101:                                              ; preds = %98
  %102 = extractvalue { i32, i1 } %99, 0
  %103 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %102, i32 noundef 3520) #9
  %104 = icmp eq ptr %103, null
  br i1 %104, label %134, label %105

105:                                              ; preds = %101
  br i1 %68, label %106, label %121

106:                                              ; preds = %105
  %107 = load ptr, ptr %36, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %121, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.ethtool_ops, ptr %67, i32 0, i32 61
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  %113 = icmp ne ptr %66, null
  %114 = select i1 %112, i1 %113, i1 false
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.ethtool_phy_ops, ptr %66, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = tail call i32 %117(ptr noundef nonnull %107, ptr noundef nonnull %103) #8
  br label %124

121:                                              ; preds = %115, %109, %106, %105
  %122 = getelementptr inbounds %struct.ethtool_ops, ptr %67, i32 0, i32 24
  %123 = load ptr, ptr %122, align 4
  tail call void %123(ptr noundef nonnull %4, i32 noundef %38, ptr noundef nonnull %103) #8
  br label %124

124:                                              ; preds = %121, %119
  %125 = getelementptr %struct.strset_reply_data, ptr %1, i32 0, i32 1, i32 %38, i32 3
  store ptr %103, ptr %125, align 4
  %126 = getelementptr %struct.strset_reply_data, ptr %1, i32 0, i32 1, i32 %38, i32 1
  store i8 1, ptr %126, align 1
  br label %127

127:                                              ; preds = %124, %93, %87, %83
  %128 = phi i32 [ 0, %83 ], [ 0, %87 ], [ %97, %93 ], [ %94, %124 ]
  %129 = getelementptr %struct.strset_reply_data, ptr %1, i32 0, i32 1, i32 %38, i32 2
  store i32 %128, ptr %129, align 4
  br label %130

130:                                              ; preds = %127, %60, %56, %52, %41
  %131 = add nuw nsw i32 %38, 1
  %132 = icmp eq i32 %131, 21
  br i1 %132, label %133, label %37

133:                                              ; preds = %130
  tail call void @ethnl_ops_complete(ptr noundef nonnull %4) #8
  br label %148

134:                                              ; preds = %101, %98
  tail call void @ethnl_ops_complete(ptr noundef nonnull %4) #8
  br label %135

135:                                              ; preds = %134, %29
  %136 = phi i32 [ %30, %29 ], [ -12, %134 ]
  br label %137

137:                                              ; preds = %145, %135
  %138 = phi i32 [ 0, %135 ], [ %146, %145 ]
  %139 = getelementptr %struct.strset_reply_data, ptr %1, i32 0, i32 1, i32 %138, i32 1
  %140 = load i8, ptr %139, align 1, !range !10
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = getelementptr %struct.strset_reply_data, ptr %1, i32 0, i32 1, i32 %138, i32 3
  %144 = load ptr, ptr %143, align 4
  tail call void @kfree(ptr noundef %144) #8
  store ptr null, ptr %143, align 4
  store i8 0, ptr %139, align 1
  br label %145

145:                                              ; preds = %142, %137
  %146 = add nuw nsw i32 %138, 1
  %147 = icmp eq i32 %146, 21
  br i1 %147, label %148, label %137

148:                                              ; preds = %145, %133, %26, %25, %21, %19
  %149 = phi i32 [ 0, %133 ], [ -22, %21 ], [ -22, %25 ], [ -22, %19 ], [ 0, %26 ], [ %136, %145 ]
  ret i32 %149
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @strset_reply_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.strset_req_info, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.strset_req_info, ptr %0, i32 0, i32 2
  br label %7

7:                                                ; preds = %58, %2
  %8 = phi i32 [ 4, %2 ], [ %59, %58 ]
  %9 = phi i32 [ 0, %2 ], [ %60, %58 ]
  br i1 %5, label %14, label %10

10:                                               ; preds = %7
  %11 = shl nuw nsw i32 1, %9
  %12 = and i32 %4, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %58, label %26

14:                                               ; preds = %7
  %15 = getelementptr %struct.strset_reply_data, ptr %1, i32 0, i32 1, i32 %9
  %16 = load i8, ptr %15, align 4, !range !10
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr %struct.strset_reply_data, ptr %1, i32 0, i32 1, i32 %9, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %58, label %22

22:                                               ; preds = %18, %14
  %23 = load ptr, ptr %1, align 4
  %24 = icmp eq ptr %23, null
  %25 = xor i1 %17, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %22, %10
  %27 = load i8, ptr %6, align 4, !range !10
  %28 = icmp ne i8 %27, 0
  %29 = getelementptr %struct.strset_reply_data, ptr %1, i32 0, i32 1, i32 %9, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  %32 = or i1 %28, %31
  %33 = select i1 %31, i32 0, i32 20
  br i1 %32, label %55, label %34

34:                                               ; preds = %26
  %35 = getelementptr %struct.strset_reply_data, ptr %1, i32 0, i32 1, i32 %9, i32 3
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %37, %34
  %38 = phi i32 [ 0, %34 ], [ %47, %37 ]
  %39 = phi i32 [ 0, %34 ], [ %46, %37 ]
  %40 = getelementptr [32 x i8], ptr %36, i32 %38
  %41 = tail call i32 @strnlen(ptr noundef %40, i32 noundef 32) #8
  %42 = add i32 %41, 16
  %43 = and i32 %42, -4
  %44 = add i32 %43, 7
  %45 = and i32 %44, -4
  %46 = add i32 %45, %39
  %47 = add nuw i32 %38, 1
  %48 = icmp eq i32 %47, %30
  br i1 %48, label %49, label %37

49:                                               ; preds = %37
  %50 = add i32 %46, 23
  %51 = and i32 %50, -4
  %52 = add i32 %51, 7
  %53 = and i32 %52, -4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %49, %26
  %56 = phi i32 [ %53, %49 ], [ %33, %26 ]
  %57 = add i32 %56, %8
  br label %58

58:                                               ; preds = %55, %22, %18, %10
  %59 = phi i32 [ %8, %10 ], [ %8, %22 ], [ %57, %55 ], [ %8, %18 ]
  %60 = add nuw nsw i32 %9, 1
  %61 = icmp eq i32 %60, 21
  br i1 %61, label %62, label %7

62:                                               ; preds = %58, %49
  %63 = phi i32 [ %59, %58 ], [ %53, %49 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @strset_fill_reply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 32770, i32 noundef 0, ptr noundef null) #8
  %10 = icmp slt i32 %9, 0
  %11 = icmp eq ptr %8, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %160, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.strset_req_info, ptr %1, i32 0, i32 1
  %15 = getelementptr inbounds %struct.strset_req_info, ptr %1, i32 0, i32 2
  br label %16

16:                                               ; preds = %139, %13
  %17 = phi i32 [ 0, %13 ], [ %140, %139 ]
  %18 = load i32, ptr %14, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = shl nuw nsw i32 1, %17
  %22 = and i32 %18, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %139, label %24

24:                                               ; preds = %20
  %25 = getelementptr %struct.strset_reply_data, ptr %2, i32 0, i32 1, i32 %17
  %26 = load i8, ptr %25, align 4, !range !10
  br label %39

27:                                               ; preds = %16
  %28 = getelementptr %struct.strset_reply_data, ptr %2, i32 0, i32 1, i32 %17
  %29 = load i8, ptr %28, align 4, !range !10
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr %struct.strset_reply_data, ptr %2, i32 0, i32 1, i32 %17, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %139, label %35

35:                                               ; preds = %31, %27
  %36 = load ptr, ptr %2, align 4
  %37 = icmp eq ptr %36, null
  %38 = xor i1 %30, %37
  br i1 %38, label %39, label %139

39:                                               ; preds = %35, %24
  %40 = phi i8 [ %26, %24 ], [ %29, %35 ]
  %41 = load i8, ptr %15, align 4, !range !10
  %42 = icmp eq i8 %41, 0
  %43 = icmp eq i8 %40, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = getelementptr %struct.strset_reply_data, ptr %2, i32 0, i32 1, i32 %17, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %148, label %48

48:                                               ; preds = %44, %39
  %49 = getelementptr %struct.strset_reply_data, ptr %2, i32 0, i32 1, i32 %17, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %139, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %7, align 8
  %54 = call i32 @nla_put(ptr noundef %0, i32 noundef 32769, i32 noundef 0, ptr noundef null) #8
  %55 = icmp slt i32 %54, 0
  %56 = icmp eq ptr %53, null
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %148, label %58

58:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 %17, ptr %6, align 4
  %59 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %128

61:                                               ; preds = %58
  %62 = load i32, ptr %49, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 %62, ptr %5, align 4
  %63 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %128

65:                                               ; preds = %61
  br i1 %42, label %66, label %122

66:                                               ; preds = %65
  %67 = load ptr, ptr %7, align 8
  %68 = call i32 @nla_put(ptr noundef %0, i32 noundef 32771, i32 noundef 0, ptr noundef null) #8
  %69 = icmp slt i32 %68, 0
  %70 = icmp eq ptr %67, null
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %128, label %72

72:                                               ; preds = %66
  %73 = load i32, ptr %49, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %116, label %75

75:                                               ; preds = %72
  %76 = getelementptr %struct.strset_reply_data, ptr %2, i32 0, i32 1, i32 %17, i32 3
  br label %77

77:                                               ; preds = %105, %75
  %78 = phi i32 [ 0, %75 ], [ %113, %105 ]
  %79 = load ptr, ptr %76, align 4
  %80 = getelementptr [32 x i8], ptr %79, i32 %78
  %81 = load ptr, ptr %7, align 8
  %82 = call i32 @nla_put(ptr noundef %0, i32 noundef 32769, i32 noundef 0, ptr noundef null) #8
  %83 = icmp slt i32 %82, 0
  %84 = icmp eq ptr %81, null
  %85 = select i1 %83, i1 true, i1 %84
  br i1 %85, label %128, label %86

86:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 %78, ptr %4, align 4
  %87 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = call i32 @strnlen(ptr noundef %80, i32 noundef 32) #8
  %91 = add i32 %90, 1
  %92 = call ptr @nla_reserve(ptr noundef %0, i32 noundef 2, i32 noundef %91) #8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %89, %86
  %95 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %96 = load ptr, ptr %95, align 4
  %97 = icmp ugt ptr %96, %81
  br i1 %97, label %98, label %100, !prof !8

98:                                               ; preds = %94
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  %99 = load ptr, ptr %95, align 4
  br label %100

100:                                              ; preds = %98, %94
  %101 = phi ptr [ %99, %98 ], [ %96, %94 ]
  %102 = ptrtoint ptr %81 to i32
  %103 = ptrtoint ptr %101 to i32
  %104 = sub i32 %102, %103
  call void @skb_trim(ptr noundef %0, i32 noundef %104) #8
  br label %128

105:                                              ; preds = %89
  %106 = getelementptr i8, ptr %92, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %106, ptr align 1 %80, i32 %90, i1 false) #8
  %107 = getelementptr i8, ptr %106, i32 %90
  store i8 0, ptr %107, align 1
  %108 = load ptr, ptr %7, align 8
  %109 = ptrtoint ptr %108 to i32
  %110 = ptrtoint ptr %81 to i32
  %111 = sub i32 %109, %110
  %112 = trunc i32 %111 to i16
  store i16 %112, ptr %81, align 2
  %113 = add nuw i32 %78, 1
  %114 = load i32, ptr %49, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %77, label %116

116:                                              ; preds = %105, %72
  %117 = load ptr, ptr %7, align 8
  %118 = ptrtoint ptr %117 to i32
  %119 = ptrtoint ptr %67 to i32
  %120 = sub i32 %118, %119
  %121 = trunc i32 %120 to i16
  store i16 %121, ptr %67, align 2
  br label %122

122:                                              ; preds = %116, %65
  %123 = load ptr, ptr %7, align 8
  %124 = ptrtoint ptr %123 to i32
  %125 = ptrtoint ptr %53 to i32
  %126 = sub i32 %124, %125
  %127 = trunc i32 %126 to i16
  store i16 %127, ptr %53, align 2
  br label %139

128:                                              ; preds = %100, %77, %66, %61, %58
  %129 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %130 = load ptr, ptr %129, align 4
  %131 = icmp ugt ptr %130, %53
  br i1 %131, label %132, label %134, !prof !8

132:                                              ; preds = %128
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  %133 = load ptr, ptr %129, align 4
  br label %134

134:                                              ; preds = %132, %128
  %135 = phi ptr [ %133, %132 ], [ %130, %128 ]
  %136 = ptrtoint ptr %53 to i32
  %137 = ptrtoint ptr %135 to i32
  %138 = sub i32 %136, %137
  call void @skb_trim(ptr noundef %0, i32 noundef %138) #8
  br label %148

139:                                              ; preds = %122, %48, %35, %31, %20
  %140 = add nuw nsw i32 %17, 1
  %141 = icmp eq i32 %140, 21
  br i1 %141, label %142, label %16

142:                                              ; preds = %139
  %143 = load ptr, ptr %7, align 8
  %144 = ptrtoint ptr %143 to i32
  %145 = ptrtoint ptr %8 to i32
  %146 = sub i32 %144, %145
  %147 = trunc i32 %146 to i16
  store i16 %147, ptr %8, align 2
  br label %160

148:                                              ; preds = %134, %52, %44
  %149 = phi i32 [ -90, %134 ], [ -95, %44 ], [ -90, %52 ]
  %150 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %151 = load ptr, ptr %150, align 4
  %152 = icmp ugt ptr %151, %8
  br i1 %152, label %153, label %155, !prof !8

153:                                              ; preds = %148
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  %154 = load ptr, ptr %150, align 4
  br label %155

155:                                              ; preds = %153, %148
  %156 = phi ptr [ %154, %153 ], [ %151, %148 ]
  %157 = ptrtoint ptr %8 to i32
  %158 = ptrtoint ptr %156 to i32
  %159 = sub i32 %157, %158
  call void @skb_trim(ptr noundef %0, i32 noundef %159) #8
  br label %160

160:                                              ; preds = %155, %142, %3
  %161 = phi i32 [ %149, %155 ], [ 0, %142 ], [ -90, %3 ]
  ret i32 %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @strset_cleanup_data(ptr nocapture noundef %0) #0 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %4 = getelementptr %struct.strset_reply_data, ptr %0, i32 0, i32 1, i32 %3, i32 1
  %5 = load i8, ptr %4, align 1, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr %struct.strset_reply_data, ptr %0, i32 0, i32 1, i32 %3, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #8
  store ptr null, ptr %8, align 4
  store i8 0, ptr %4, align 1
  br label %10

10:                                               ; preds = %7, %2
  %11 = add nuw nsw i32 %3, 1
  %12 = icmp eq i32 %11, 21
  br i1 %12, label %13, label %2

13:                                               ; preds = %10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_validate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
