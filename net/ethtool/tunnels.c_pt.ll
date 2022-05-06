; ModuleID = '/llk/IR/net/ethtool/tunnels.c_pt.bc'
source_filename = "../net/ethtool/tunnels.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.10 }
%union.anon.10 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.68, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.68 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.ethnl_req_info = type { ptr, %struct.netdevice_tracker, i32 }
%struct.netdevice_tracker = type {}
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type {}
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.127 = type { ptr }
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
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.udp_tunnel_nic_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.0, %union.anon.128, %union.anon.129, [48 x i8], %union.anon.130, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.132, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.128 = type { ptr }
%union.anon.129 = type { i64 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { i32, ptr }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.134, i32, i32, i32, i16, i16, %union.anon.136, %union.anon.137, %union.anon.138, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.134 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i16 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.114 }
%union.anon.114 = type { [6 x i32], [24 x i8] }
%struct.genl_dumpit_info = type { ptr, %struct.genl_ops, ptr }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_tunnel_info_get_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, align 4
@init_net = external dso_local global %struct.net, align 64
@ethnl_tunnel_info_reply_size.__msg = internal constant [43 x i8] c"device does not report tunnel offload info\00", align 1
@udp_tunnel_type_names = external dso_local constant [0 x [32 x i8]], align 1
@udp_tunnel_nic_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_tunnel_info_doit(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ethnl_req_info, align 8
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 0, ptr %5, align 8
  %7 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store ptr null, ptr %6, align 4, !annotation !9
  %9 = getelementptr ptr, ptr %8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %5, ptr noundef %10, ptr noundef nonnull @init_net, ptr noundef %12, i1 noundef zeroext true) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %192, label %15

15:                                               ; preds = %2
  call void @rtnl_lock() #7
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr inbounds %struct.ethnl_req_info, ptr %5, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 126
  %23 = load ptr, ptr %22, align 16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %15
  %26 = getelementptr %struct.udp_tunnel_nic_info, ptr %23, i32 0, i32 5, i32 0
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %121, label %32

29:                                               ; preds = %15
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_tunnel_info_reply_size.__msg) #7
  %30 = icmp eq ptr %16, null
  br i1 %30, label %176, label %31

31:                                               ; preds = %29
  store ptr @ethnl_tunnel_info_reply_size.__msg, ptr %16, align 4
  br label %176

32:                                               ; preds = %25
  %33 = getelementptr %struct.udp_tunnel_nic_info, ptr %23, i32 0, i32 5, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 %34, ptr %4, align 4
  %35 = call i32 @ethnl_bitset32_size(ptr noundef nonnull %4, ptr noundef null, i32 noundef 3, ptr noundef nonnull @udp_tunnel_type_names, i1 noundef zeroext %20) #7
  %36 = icmp slt i32 %35, 0
  %37 = add nuw i32 %35, 12
  %38 = select i1 %36, i32 %35, i32 %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %176, label %40

40:                                               ; preds = %32
  %41 = add nuw i32 %38, 4
  %42 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds %struct.udp_tunnel_nic_ops, ptr %42, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 %47(ptr noundef %45, i32 noundef 0) #7
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi i32 [ %48, %44 ], [ 0, %40 ]
  %51 = add i32 %41, %50
  %52 = getelementptr %struct.udp_tunnel_nic_info, ptr %23, i32 0, i32 5, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %121, label %55

55:                                               ; preds = %49
  %56 = getelementptr %struct.udp_tunnel_nic_info, ptr %23, i32 0, i32 5, i32 1, i32 1
  %57 = load i32, ptr %56, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 %57, ptr %4, align 4
  %58 = call i32 @ethnl_bitset32_size(ptr noundef nonnull %4, ptr noundef null, i32 noundef 3, ptr noundef nonnull @udp_tunnel_type_names, i1 noundef zeroext %20) #7
  %59 = icmp slt i32 %58, 0
  %60 = add nuw i32 %58, 12
  %61 = select i1 %59, i32 %58, i32 %60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %176, label %63

63:                                               ; preds = %55
  %64 = add i32 %61, %51
  %65 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %5, align 8
  %69 = getelementptr inbounds %struct.udp_tunnel_nic_ops, ptr %65, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 %70(ptr noundef %68, i32 noundef 1) #7
  br label %72

72:                                               ; preds = %67, %63
  %73 = phi i32 [ %71, %67 ], [ 0, %63 ]
  %74 = add i32 %64, %73
  %75 = getelementptr %struct.udp_tunnel_nic_info, ptr %23, i32 0, i32 5, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %121, label %78

78:                                               ; preds = %72
  %79 = getelementptr %struct.udp_tunnel_nic_info, ptr %23, i32 0, i32 5, i32 2, i32 1
  %80 = load i32, ptr %79, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 %80, ptr %4, align 4
  %81 = call i32 @ethnl_bitset32_size(ptr noundef nonnull %4, ptr noundef null, i32 noundef 3, ptr noundef nonnull @udp_tunnel_type_names, i1 noundef zeroext %20) #7
  %82 = icmp slt i32 %81, 0
  %83 = add nuw i32 %81, 12
  %84 = select i1 %82, i32 %81, i32 %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %176, label %86

86:                                               ; preds = %78
  %87 = add i32 %84, %74
  %88 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %5, align 8
  %92 = getelementptr inbounds %struct.udp_tunnel_nic_ops, ptr %88, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  %94 = call i32 %93(ptr noundef %91, i32 noundef 2) #7
  br label %95

95:                                               ; preds = %90, %86
  %96 = phi i32 [ %94, %90 ], [ 0, %86 ]
  %97 = add i32 %87, %96
  %98 = getelementptr %struct.udp_tunnel_nic_info, ptr %23, i32 0, i32 5, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %121, label %101

101:                                              ; preds = %95
  %102 = getelementptr %struct.udp_tunnel_nic_info, ptr %23, i32 0, i32 5, i32 3, i32 1
  %103 = load i32, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 %103, ptr %4, align 4
  %104 = call i32 @ethnl_bitset32_size(ptr noundef nonnull %4, ptr noundef null, i32 noundef 3, ptr noundef nonnull @udp_tunnel_type_names, i1 noundef zeroext %20) #7
  %105 = icmp slt i32 %104, 0
  %106 = add nuw i32 %104, 12
  %107 = select i1 %105, i32 %104, i32 %106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %176, label %109

109:                                              ; preds = %101
  %110 = add i32 %107, %97
  %111 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %5, align 8
  %115 = getelementptr inbounds %struct.udp_tunnel_nic_ops, ptr %111, i32 0, i32 5
  %116 = load ptr, ptr %115, align 4
  %117 = call i32 %116(ptr noundef %114, i32 noundef 3) #7
  br label %118

118:                                              ; preds = %113, %109
  %119 = phi i32 [ %117, %113 ], [ 0, %109 ]
  %120 = add i32 %110, %119
  br label %121

121:                                              ; preds = %118, %95, %72, %49, %25
  %122 = phi i32 [ 4, %25 ], [ %51, %49 ], [ %74, %72 ], [ %97, %95 ], [ %120, %118 ]
  %123 = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %23, i32 0, i32 4
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4
  %128 = call i32 @ethnl_bitset32_size(ptr noundef nonnull %3, ptr noundef null, i32 noundef 3, ptr noundef nonnull @udp_tunnel_type_names, i1 noundef zeroext %20) #7
  %129 = icmp slt i32 %128, 0
  %130 = add nuw i32 %128, 12
  %131 = select i1 %129, i32 %128, i32 %130
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %176, label %133

133:                                              ; preds = %127
  %134 = add i32 %122, 20
  %135 = add i32 %134, %131
  br label %136

136:                                              ; preds = %133, %121
  %137 = phi i32 [ %135, %133 ], [ %122, %121 ]
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %176, label %139

139:                                              ; preds = %136
  %140 = add nuw i32 %137, 32
  %141 = load ptr, ptr %5, align 8
  %142 = call ptr @ethnl_reply_init(i32 noundef %140, ptr noundef %141, i8 noundef zeroext 29, i16 noundef zeroext 1, ptr noundef %1, ptr noundef nonnull %6) #7
  %143 = icmp eq ptr %142, null
  br i1 %143, label %176, label %144

144:                                              ; preds = %139
  %145 = call fastcc i32 @ethnl_tunnel_info_fill_reply(ptr noundef nonnull %5, ptr noundef nonnull %142)
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %175

147:                                              ; preds = %144
  call void @rtnl_unlock() #7
  %148 = load ptr, ptr %5, align 8
  %149 = icmp eq ptr %148, null
  br i1 %149, label %162, label %150

150:                                              ; preds = %147
  %151 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !10
  %152 = getelementptr inbounds %struct.net_device, ptr %148, i32 0, i32 99
  %153 = load ptr, ptr %152, align 8
  %154 = ptrtoint ptr %153 to i32
  %155 = call i32 @llvm.read_register.i32(metadata !0) #7
  %156 = inttoptr i32 %155 to ptr
  %157 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %156) #5, !srcloc !11
  %158 = add i32 %157, %154
  %159 = inttoptr i32 %158 to ptr
  %160 = load i32, ptr %159, align 4
  %161 = add i32 %160, -1
  store i32 %161, ptr %159, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %151) #7, !srcloc !12
  br label %162

162:                                              ; preds = %150, %147
  %163 = load ptr, ptr %6, align 4
  %164 = getelementptr i8, ptr %163, i32 -20
  %165 = getelementptr inbounds %struct.sk_buff, ptr %142, i32 0, i32 14
  %166 = load ptr, ptr %165, align 8
  %167 = ptrtoint ptr %166 to i32
  %168 = ptrtoint ptr %164 to i32
  %169 = sub i32 %167, %168
  store i32 %169, ptr %164, align 4
  %170 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 1
  %171 = load i32, ptr %170, align 4
  %172 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %173 = call i32 @netlink_unicast(ptr noundef %172, ptr noundef nonnull %142, i32 noundef %171, i32 noundef 64) #7
  %174 = call i32 @llvm.smin.i32(i32 %173, i32 0) #7
  br label %192

175:                                              ; preds = %144
  call void @kfree_skb_reason(ptr noundef nonnull %142, i32 noundef 0) #7
  br label %176

176:                                              ; preds = %175, %139, %136, %127, %101, %78, %55, %32, %31, %29
  %177 = phi i32 [ %137, %136 ], [ %145, %175 ], [ -12, %139 ], [ %107, %101 ], [ %84, %78 ], [ %61, %55 ], [ %38, %32 ], [ %131, %127 ], [ -95, %29 ], [ -95, %31 ]
  call void @rtnl_unlock() #7
  %178 = load ptr, ptr %5, align 8
  %179 = icmp eq ptr %178, null
  br i1 %179, label %192, label %180

180:                                              ; preds = %176
  %181 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !10
  %182 = getelementptr inbounds %struct.net_device, ptr %178, i32 0, i32 99
  %183 = load ptr, ptr %182, align 8
  %184 = ptrtoint ptr %183 to i32
  %185 = call i32 @llvm.read_register.i32(metadata !0) #7
  %186 = inttoptr i32 %185 to ptr
  %187 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %186) #5, !srcloc !11
  %188 = add i32 %187, %184
  %189 = inttoptr i32 %188 to ptr
  %190 = load i32, ptr %189, align 4
  %191 = add i32 %190, -1
  store i32 %191, ptr %189, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %181) #7, !srcloc !12
  br label %192

192:                                              ; preds = %180, %176, %162, %2
  %193 = phi i32 [ %174, %162 ], [ %13, %2 ], [ %177, %176 ], [ %177, %180 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret i32 %193
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
declare dso_local ptr @ethnl_reply_init(i32 noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethnl_tunnel_info_fill_reply(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.ethnl_req_info, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 126
  %14 = load ptr, ptr %13, align 16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %129, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @nla_put(ptr noundef %1, i32 noundef 32770, i32 noundef 0, ptr noundef null) #7
  %20 = icmp slt i32 %19, 0
  %21 = icmp eq ptr %18, null
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %129, label %23

23:                                               ; preds = %51, %16
  %24 = phi i32 [ %57, %51 ], [ 0, %16 ]
  %25 = getelementptr %struct.udp_tunnel_nic_info, ptr %14, i32 0, i32 5, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %59, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %17, align 8
  %30 = call i32 @nla_put(ptr noundef %1, i32 noundef 32769, i32 noundef 0, ptr noundef null) #7
  %31 = icmp slt i32 %30, 0
  %32 = icmp eq ptr %29, null
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %118, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 %35, ptr %6, align 4
  %36 = call i32 @nla_put(ptr noundef %1, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %106

38:                                               ; preds = %34
  %39 = getelementptr %struct.udp_tunnel_nic_info, ptr %14, i32 0, i32 5, i32 %24, i32 1
  %40 = call i32 @ethnl_put_bitset32(ptr noundef %1, i32 noundef 2, ptr noundef %39, ptr noundef null, i32 noundef 3, ptr noundef nonnull @udp_tunnel_type_names, i1 noundef zeroext %11) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %106

42:                                               ; preds = %38
  %43 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %0, align 4
  %47 = getelementptr inbounds %struct.udp_tunnel_nic_ops, ptr %43, i32 0, i32 6
  %48 = load ptr, ptr %47, align 4
  %49 = call i32 %48(ptr noundef %46, i32 noundef %24, ptr noundef %1) #7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %106

51:                                               ; preds = %45, %42
  %52 = load ptr, ptr %17, align 8
  %53 = ptrtoint ptr %52 to i32
  %54 = ptrtoint ptr %29 to i32
  %55 = sub i32 %53, %54
  %56 = trunc i32 %55 to i16
  store i16 %56, ptr %29, align 2
  %57 = add nuw nsw i32 %24, 1
  %58 = icmp eq i32 %57, 4
  br i1 %58, label %59, label %23

59:                                               ; preds = %51, %23
  %60 = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %14, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %99, label %64

64:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4
  %65 = load ptr, ptr %17, align 8
  %66 = call i32 @nla_put(ptr noundef %1, i32 noundef 32769, i32 noundef 0, ptr noundef null) #7
  %67 = icmp slt i32 %66, 0
  %68 = icmp eq ptr %65, null
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %98, label %70

70:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 1, ptr %5, align 4
  %71 = call i32 @nla_put(ptr noundef %1, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %70
  %74 = call i32 @ethnl_put_bitset32(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %7, ptr noundef null, i32 noundef 3, ptr noundef nonnull @udp_tunnel_type_names, i1 noundef zeroext %11) #7
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %73
  %77 = load ptr, ptr %17, align 8
  %78 = call i32 @nla_put(ptr noundef %1, i32 noundef 32771, i32 noundef 0, ptr noundef null) #7
  %79 = icmp slt i32 %78, 0
  %80 = select i1 %79, ptr null, ptr %77
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 -19182, ptr %4, align 2
  %81 = call i32 @nla_put(ptr noundef %1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4
  %84 = call i32 @nla_put(ptr noundef %1, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %83
  %87 = load ptr, ptr %17, align 8
  %88 = ptrtoint ptr %87 to i32
  %89 = ptrtoint ptr %80 to i32
  %90 = sub i32 %88, %89
  %91 = trunc i32 %90 to i16
  store i16 %91, ptr %80, align 2
  %92 = load ptr, ptr %17, align 8
  %93 = ptrtoint ptr %92 to i32
  %94 = ptrtoint ptr %65 to i32
  %95 = sub i32 %93, %94
  %96 = trunc i32 %95 to i16
  store i16 %96, ptr %65, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  br label %99

97:                                               ; preds = %73, %70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  br label %106

98:                                               ; preds = %64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  br label %118

99:                                               ; preds = %86, %59
  %100 = load ptr, ptr %17, align 8
  %101 = ptrtoint ptr %100 to i32
  %102 = ptrtoint ptr %18 to i32
  %103 = sub i32 %101, %102
  %104 = trunc i32 %103 to i16
  store i16 %104, ptr %18, align 2
  br label %129

105:                                              ; preds = %83, %76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call fastcc void @nla_nest_cancel(ptr noundef %1, ptr noundef %80)
  br label %106

106:                                              ; preds = %105, %97, %45, %38, %34
  %107 = phi ptr [ %65, %105 ], [ %65, %97 ], [ %29, %45 ], [ %29, %38 ], [ %29, %34 ]
  %108 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %109 = load ptr, ptr %108, align 4
  %110 = icmp ugt ptr %109, %107
  br i1 %110, label %111, label %113, !prof !13

111:                                              ; preds = %106
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  %112 = load ptr, ptr %108, align 4
  br label %113

113:                                              ; preds = %111, %106
  %114 = phi ptr [ %112, %111 ], [ %109, %106 ]
  %115 = ptrtoint ptr %107 to i32
  %116 = ptrtoint ptr %114 to i32
  %117 = sub i32 %115, %116
  call void @skb_trim(ptr noundef %1, i32 noundef %117) #7
  br label %118

118:                                              ; preds = %113, %98, %28
  %119 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %120 = load ptr, ptr %119, align 4
  %121 = icmp ugt ptr %120, %18
  br i1 %121, label %122, label %124, !prof !13

122:                                              ; preds = %118
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  %123 = load ptr, ptr %119, align 4
  br label %124

124:                                              ; preds = %122, %118
  %125 = phi ptr [ %123, %122 ], [ %120, %118 ]
  %126 = ptrtoint ptr %18 to i32
  %127 = ptrtoint ptr %125 to i32
  %128 = sub i32 %126, %127
  call void @skb_trim(ptr noundef %1, i32 noundef %128) #7
  br label %129

129:                                              ; preds = %124, %99, %16, %2
  %130 = phi i32 [ -90, %124 ], [ 0, %99 ], [ -95, %2 ], [ -90, %16 ]
  ret i32 %130
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_tunnel_info_start(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13
  %5 = getelementptr inbounds %struct.genl_dumpit_info, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false)
  %7 = getelementptr ptr, ptr %6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @ethnl_parse_header_dev_get(ptr noundef %4, ptr noundef %8, ptr noundef nonnull @init_net, ptr noundef %10, i1 noundef zeroext false) #7
  %12 = load ptr, ptr %4, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %1
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !10
  %16 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 99
  %17 = load ptr, ptr %16, align 8
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #5, !srcloc !11
  %22 = add i32 %21, %18
  %23 = inttoptr i32 %22 to ptr
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -1
  store i32 %25, ptr %23, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #7, !srcloc !12
  store ptr null, ptr %4, align 4
  br label %26

26:                                               ; preds = %14, %1
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_tunnel_info_dumpit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %4 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  tail call void @rtnl_lock() #7
  %6 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 3), align 4
  %7 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %9, 256
  br i1 %10, label %11, label %86

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  br label %14

14:                                               ; preds = %81, %11
  %15 = phi i32 [ %5, %11 ], [ 0, %81 ]
  %16 = phi i32 [ %9, %11 ], [ %84, %81 ]
  %17 = phi i32 [ 0, %11 ], [ %82, %81 ]
  %18 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 24), align 4
  %19 = getelementptr %struct.hlist_head, ptr %18, i32 %16
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = getelementptr i8, ptr %20, i32 -560
  %23 = icmp eq ptr %22, null
  %24 = or i1 %21, %23
  br i1 %24, label %81, label %25

25:                                               ; preds = %72, %14
  %26 = phi i32 [ %74, %72 ], [ 0, %14 ]
  %27 = phi ptr [ %78, %72 ], [ %22, %14 ]
  %28 = phi i32 [ %73, %72 ], [ %17, %14 ]
  %29 = icmp slt i32 %26, %15
  br i1 %29, label %72, label %30

30:                                               ; preds = %25
  %31 = tail call ptr @ethnl_dump_put(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 29) #7
  %32 = icmp eq ptr %31, null
  br i1 %32, label %86, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @ethnl_fill_reply_header(ptr noundef %0, ptr noundef nonnull %27, i16 noundef zeroext 1) #7
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %31, i32 -20
  %38 = icmp eq ptr %37, null
  br i1 %38, label %86, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %13, align 4
  %41 = icmp ugt ptr %40, %37
  br i1 %41, label %42, label %44, !prof !13

42:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  %43 = load ptr, ptr %13, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi ptr [ %43, %42 ], [ %40, %39 ]
  %46 = ptrtoint ptr %37 to i32
  %47 = ptrtoint ptr %45 to i32
  %48 = sub i32 %46, %47
  tail call void @skb_trim(ptr noundef %0, i32 noundef %48) #7
  br label %86

49:                                               ; preds = %33
  store ptr %27, ptr %3, align 4
  %50 = tail call fastcc i32 @ethnl_tunnel_info_fill_reply(ptr noundef %3, ptr noundef %0)
  store ptr null, ptr %3, align 4
  %51 = icmp slt i32 %50, 0
  %52 = getelementptr i8, ptr %31, i32 -20
  br i1 %51, label %53, label %67

53:                                               ; preds = %49
  %54 = icmp eq ptr %52, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %53
  %56 = load ptr, ptr %13, align 4
  %57 = icmp ugt ptr %56, %52
  br i1 %57, label %58, label %60, !prof !13

58:                                               ; preds = %55
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  %59 = load ptr, ptr %13, align 4
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi ptr [ %59, %58 ], [ %56, %55 ]
  %62 = ptrtoint ptr %52 to i32
  %63 = ptrtoint ptr %61 to i32
  %64 = sub i32 %62, %63
  tail call void @skb_trim(ptr noundef %0, i32 noundef %64) #7
  br label %65

65:                                               ; preds = %60, %53
  %66 = icmp eq i32 %50, -95
  br i1 %66, label %72, label %86

67:                                               ; preds = %49
  %68 = load ptr, ptr %12, align 8
  %69 = ptrtoint ptr %68 to i32
  %70 = ptrtoint ptr %52 to i32
  %71 = sub i32 %69, %70
  store i32 %71, ptr %52, align 4
  br label %72

72:                                               ; preds = %67, %65, %25
  %73 = phi i32 [ %28, %25 ], [ -95, %65 ], [ %50, %67 ]
  %74 = add i32 %26, 1
  %75 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 85
  %76 = load ptr, ptr %75, align 16
  %77 = icmp eq ptr %76, null
  %78 = getelementptr i8, ptr %76, i32 -560
  %79 = icmp eq ptr %78, null
  %80 = or i1 %77, %79
  br i1 %80, label %81, label %25

81:                                               ; preds = %72, %14
  %82 = phi i32 [ %17, %14 ], [ %73, %72 ]
  %83 = phi i32 [ 0, %14 ], [ %74, %72 ]
  %84 = add nsw i32 %16, 1
  %85 = icmp eq i32 %84, 256
  br i1 %85, label %86, label %14

86:                                               ; preds = %81, %65, %44, %36, %30, %2
  %87 = phi i32 [ %16, %44 ], [ %16, %36 ], [ %9, %2 ], [ %16, %30 ], [ %16, %65 ], [ 256, %81 ]
  %88 = phi i32 [ %34, %44 ], [ %34, %36 ], [ 0, %2 ], [ %50, %65 ], [ -90, %30 ], [ %82, %81 ]
  %89 = phi i32 [ %26, %44 ], [ %26, %36 ], [ 0, %2 ], [ %26, %30 ], [ %26, %65 ], [ %83, %81 ]
  tail call void @rtnl_unlock() #7
  store i32 %87, ptr %8, align 4
  store i32 %89, ptr %4, align 4
  %90 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 10
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %86
  %96 = load i32, ptr %7, align 4
  %97 = icmp eq i32 %96, %93
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.nlmsghdr, ptr %91, i32 0, i32 2
  %100 = load i16, ptr %99, align 2
  %101 = or i16 %100, 16
  store i16 %101, ptr %99, align 2
  br label %102

102:                                              ; preds = %98, %95, %86
  %103 = load i32, ptr %7, align 4
  store i32 %103, ptr %92, align 4
  %104 = icmp eq i32 %88, -90
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %107 = load i32, ptr %106, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105, %102
  br label %110

110:                                              ; preds = %109, %105
  %111 = phi i32 [ %88, %109 ], [ %107, %105 ]
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ethnl_dump_put(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_fill_reply_header(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset32_size(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_put_bitset32(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nla_nest_cancel(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, %1
  br i1 %7, label %8, label %10, !prof !13

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  %9 = load ptr, ptr %5, align 4
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %9, %8 ], [ %6, %4 ]
  %12 = ptrtoint ptr %1 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  tail call void @skb_trim(ptr noundef %0, i32 noundef %14) #7
  br label %15

15:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{!"auto-init"}
!10 = !{i64 344869, i64 344930}
!11 = !{i64 363569}
!12 = !{i64 347886}
!13 = !{!"branch_weights", i32 1, i32 2000}
