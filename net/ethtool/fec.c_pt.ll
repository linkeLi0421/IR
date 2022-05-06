; ModuleID = '/llk/IR/net/ethtool/fec.c_pt.bc'
source_filename = "../net/ethtool/fec.c"
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
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.ethtool_fec_stats = type { %struct.ethtool_fec_stat, %struct.ethtool_fec_stat, %struct.ethtool_fec_stat }
%struct.ethtool_fec_stat = type { i64, [8 x i64] }
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
%struct.ethnl_req_info = type { ptr, %struct.netdevice_tracker, i32 }
%struct.fec_reply_data = type { %struct.ethnl_reply_data, [3 x i32], i32, i8, %struct.fec_stat_grp, %struct.fec_stat_grp, %struct.fec_stat_grp }
%struct.ethnl_reply_data = type { ptr }
%struct.fec_stat_grp = type { [9 x i64], i8 }
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
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }

@ethnl_header_policy_stats = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_fec_get_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy_stats } } }>, align 4
@ethnl_fec_request_ops = dso_local local_unnamed_addr constant %struct.ethnl_request_ops { i8 29, i8 30, i16 1, i32 8, i32 264, i8 0, ptr null, ptr @fec_prepare_data, ptr @fec_reply_size, ptr @fec_fill_reply, ptr null }, align 4
@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_fec_set_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, { i8, i8, i16, { %struct.anon } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, { i8, i8, i16, { %struct.anon } } { i8 1, i8 4, i16 0, { %struct.anon } { %struct.anon { i16 0, i16 1 } } } }>, align 4
@link_mode_names = external dso_local constant [0 x [32 x i8]], align 1
@ethnl_set_fec.__msg = internal constant [28 x i8] c"invalid FEC modes requested\00", align 1
@ethnl_set_fec.__msg.1 = internal constant [17 x i8] c"no FEC modes set\00", align 1
@fec_prepare_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [18 x i8] c"net/ethtool/fec.c\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@init_net = external dso_local global %struct.net, align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_prepare_data(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca [3 x i32], align 4
  %5 = alloca %struct.ethtool_fecparam, align 4
  %6 = alloca %struct.ethtool_fec_stats, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false)
  %7 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false)
  %8 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 42
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ethtool_ops, ptr %9, i32 0, i32 59
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %115, label %13

13:                                               ; preds = %3
  %14 = tail call i32 @ethnl_ops_begin(ptr noundef %7) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %115, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %8, align 8
  %18 = getelementptr inbounds %struct.ethtool_ops, ptr %17, i32 0, i32 59
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 %19(ptr noundef %7, ptr noundef nonnull %5) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %114

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ethnl_req_info, ptr %0, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %8, align 8
  %29 = getelementptr inbounds %struct.ethtool_ops, ptr %28, i32 0, i32 58
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(216) %6, i8 -1, i32 216, i1 false) #6
  call void %30(ptr noundef %7, ptr noundef nonnull %6) #6
  %33 = getelementptr inbounds %struct.fec_reply_data, ptr %1, i32 0, i32 4
  call fastcc void @fec_stats_recalc(ptr noundef %33, ptr noundef nonnull %6)
  %34 = getelementptr inbounds %struct.fec_reply_data, ptr %1, i32 0, i32 5
  %35 = getelementptr inbounds %struct.ethtool_fec_stats, ptr %6, i32 0, i32 1
  call fastcc void @fec_stats_recalc(ptr noundef %34, ptr noundef %35)
  %36 = getelementptr inbounds %struct.fec_reply_data, ptr %1, i32 0, i32 6
  %37 = getelementptr inbounds %struct.ethtool_fec_stats, ptr %6, i32 0, i32 2
  call fastcc void @fec_stats_recalc(ptr noundef %36, ptr noundef %37)
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %6) #6
  br label %38

38:                                               ; preds = %32, %27, %22
  %39 = getelementptr inbounds %struct.ethtool_fecparam, ptr %5, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = load i1, ptr @fec_prepare_data.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %46, !prof !9

45:                                               ; preds = %38
  store i1 true, ptr @fec_prepare_data.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef null) #6
  br label %46

46:                                               ; preds = %45, %38
  %47 = getelementptr inbounds %struct.ethtool_fecparam, ptr %5, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.fec_reply_data, ptr %1, i32 0, i32 3
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = trunc i32 %48 to i8
  %53 = lshr i8 %52, 1
  %54 = and i8 %53, 1
  store i8 %54, ptr %49, align 1
  br label %55

55:                                               ; preds = %51, %46
  %56 = and i32 %48, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = getelementptr %struct.fec_reply_data, ptr %1, i32 0, i32 1, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %60, 131072
  store i32 %61, ptr %59, align 4
  br label %62

62:                                               ; preds = %58, %55
  %63 = and i32 %48, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = getelementptr %struct.fec_reply_data, ptr %1, i32 0, i32 1, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = or i32 %67, 262144
  store i32 %68, ptr %66, align 4
  br label %69

69:                                               ; preds = %65, %62
  %70 = and i32 %48, 16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = getelementptr %struct.fec_reply_data, ptr %1, i32 0, i32 1, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = or i32 %74, 524288
  store i32 %75, ptr %73, align 4
  br label %76

76:                                               ; preds = %72, %69
  %77 = and i32 %48, 32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = getelementptr %struct.fec_reply_data, ptr %1, i32 0, i32 1, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = or i32 %81, 1024
  store i32 %82, ptr %80, align 4
  br label %83

83:                                               ; preds = %79, %76
  %84 = getelementptr inbounds %struct.ethtool_fecparam, ptr %5, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds i32, ptr %4, i32 1
  store i32 131072, ptr %89, align 4
  br label %90

90:                                               ; preds = %88, %83
  %91 = phi i32 [ 131072, %88 ], [ 0, %83 ]
  %92 = and i32 %85, 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds i32, ptr %4, i32 1
  %96 = or i32 %91, 262144
  store i32 %96, ptr %95, align 4
  br label %97

97:                                               ; preds = %94, %90
  %98 = phi i32 [ %96, %94 ], [ %91, %90 ]
  %99 = and i32 %85, 16
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds i32, ptr %4, i32 1
  %103 = or i32 %98, 524288
  store i32 %103, ptr %102, align 4
  br label %104

104:                                              ; preds = %101, %97
  %105 = and i32 %85, 32
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds i32, ptr %4, i32 2
  store i32 1024, ptr %108, align 4
  br label %109

109:                                              ; preds = %107, %104
  %110 = call i32 @_find_first_bit_le(ptr noundef nonnull %4, i32 noundef 92) #6
  %111 = getelementptr inbounds %struct.fec_reply_data, ptr %1, i32 0, i32 2
  %112 = icmp eq i32 %110, 92
  %113 = select i1 %112, i32 0, i32 %110
  store i32 %113, ptr %111, align 8
  br label %114

114:                                              ; preds = %109, %16
  call void @ethnl_ops_complete(ptr noundef %7) #6
  br label %115

115:                                              ; preds = %114, %13, %3
  %116 = phi i32 [ %20, %114 ], [ -95, %3 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_reply_size(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ethnl_req_info, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp ne i32 %5, 0
  %7 = getelementptr inbounds %struct.fec_reply_data, ptr %1, i32 0, i32 1
  %8 = tail call i32 @ethnl_bitset_size(ptr noundef %7, ptr noundef null, i32 noundef 92, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %6) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 16, i32 244
  %15 = add nuw i32 %14, %8
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i32 [ %8, %2 ], [ %15, %10 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_fill_reply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.ethnl_req_info, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  %10 = getelementptr inbounds %struct.fec_reply_data, ptr %2, i32 0, i32 1
  %11 = tail call i32 @ethnl_put_bitset(ptr noundef %0, i32 noundef 2, ptr noundef %10, ptr noundef null, i32 noundef 92, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %9) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %77, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.fec_reply_data, ptr %2, i32 0, i32 3
  %15 = load i8, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 %15, ptr %5, align 1
  %16 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %77

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.fec_reply_data, ptr %2, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 %20, ptr %4, align 4
  %23 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %77

25:                                               ; preds = %22, %18
  %26 = load i32, ptr %6, align 4
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %77, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %31 = load ptr, ptr %30, align 8
  %32 = call i32 @nla_put(ptr noundef %0, i32 noundef 32773, i32 noundef 0, ptr noundef null) #6
  %33 = icmp slt i32 %32, 0
  %34 = icmp eq ptr %31, null
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %77, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.fec_reply_data, ptr %2, i32 0, i32 4
  %38 = getelementptr inbounds %struct.fec_reply_data, ptr %2, i32 0, i32 4, i32 1
  %39 = load i8, ptr %38, align 8
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 3
  %42 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 2, i32 noundef %41, ptr noundef %37, i32 noundef 1) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.fec_reply_data, ptr %2, i32 0, i32 5
  %46 = getelementptr inbounds %struct.fec_reply_data, ptr %2, i32 0, i32 5, i32 1
  %47 = load i8, ptr %46, align 8
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 3
  %50 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 3, i32 noundef %49, ptr noundef %45, i32 noundef 1) #6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.fec_reply_data, ptr %2, i32 0, i32 6
  %54 = getelementptr inbounds %struct.fec_reply_data, ptr %2, i32 0, i32 6, i32 1
  %55 = load i8, ptr %54, align 8
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 3
  %58 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 4, i32 noundef %57, ptr noundef %53, i32 noundef 1) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %52, %44, %36
  %61 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %62 = load ptr, ptr %61, align 4
  %63 = icmp ugt ptr %62, %31
  br i1 %63, label %64, label %66, !prof !9

64:                                               ; preds = %60
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  %65 = load ptr, ptr %61, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi ptr [ %65, %64 ], [ %62, %60 ]
  %68 = ptrtoint ptr %31 to i32
  %69 = ptrtoint ptr %67 to i32
  %70 = sub i32 %68, %69
  call void @skb_trim(ptr noundef %0, i32 noundef %70) #6
  br label %77

71:                                               ; preds = %52
  %72 = load ptr, ptr %30, align 8
  %73 = ptrtoint ptr %72 to i32
  %74 = ptrtoint ptr %31 to i32
  %75 = sub i32 %73, %74
  %76 = trunc i32 %75 to i16
  store i16 %76, ptr %31, align 2
  br label %77

77:                                               ; preds = %71, %66, %29, %25, %22, %13, %3
  %78 = phi i32 [ %11, %3 ], [ -90, %22 ], [ -90, %13 ], [ 0, %71 ], [ 0, %25 ], [ -90, %66 ], [ -90, %29 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_fec(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [3 x i32], align 4
  %4 = alloca %struct.ethnl_req_info, align 8
  %5 = alloca %struct.ethtool_fecparam, align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 0, ptr %6, align 1
  %9 = getelementptr ptr, ptr %8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %4, ptr noundef %10, ptr noundef nonnull @init_net, ptr noundef %12, i1 noundef zeroext true) #6
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %160, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 42
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.ethtool_ops, ptr %18, i32 0, i32 59
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %144, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.ethtool_ops, ptr %18, i32 0, i32 60
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %144, label %26

26:                                               ; preds = %22
  call void @rtnl_lock() #6
  %27 = call i32 @ethnl_ops_begin(ptr noundef %16) #6
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %141, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %19, align 4
  %31 = call i32 %30(ptr noundef %16, ptr noundef nonnull %5) #6
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %139, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ethtool_fecparam, ptr %5, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = trunc i32 %35 to i8
  %37 = lshr i8 %36, 1
  %38 = and i8 %37, 1
  %39 = and i32 %35, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds i32, ptr %3, i32 1
  store i32 131072, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %33
  %44 = phi i32 [ 131072, %41 ], [ 0, %33 ]
  %45 = and i32 %35, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds i32, ptr %3, i32 1
  %49 = or i32 %44, 262144
  store i32 %49, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = phi i32 [ %49, %47 ], [ %44, %43 ]
  %52 = and i32 %35, 16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds i32, ptr %3, i32 1
  %56 = or i32 %51, 524288
  store i32 %56, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = and i32 %35, 32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds i32, ptr %3, i32 2
  store i32 1024, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = getelementptr ptr, ptr %8, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %11, align 4
  %66 = call i32 @ethnl_update_bitset(ptr noundef nonnull %3, i32 noundef 92, ptr noundef %64, ptr noundef nonnull @link_mode_names, ptr noundef %65, ptr noundef nonnull %6) #6
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %139, label %68

68:                                               ; preds = %62
  %69 = getelementptr ptr, ptr %8, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %70, i32 4
  %74 = load i8, ptr %73, align 1
  %75 = icmp eq i8 %38, %74
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  store i8 1, ptr %6, align 1
  br label %80

77:                                               ; preds = %72, %68
  %78 = load i8, ptr %6, align 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %139, label %80

80:                                               ; preds = %77, %76
  %81 = phi i8 [ %74, %76 ], [ %38, %77 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false) #6
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  store i32 2, ptr %34, align 4
  br label %84

84:                                               ; preds = %83, %80
  %85 = phi i32 [ 2, %83 ], [ 0, %80 ]
  %86 = getelementptr inbounds i32, ptr %3, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = lshr i32 %87, 15
  %89 = and i32 %88, 4
  %90 = or i32 %89, %85
  %91 = lshr i32 %87, 15
  %92 = and i32 %91, 8
  %93 = or i32 %92, %90
  %94 = and i32 %87, 393216
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %84
  store i32 %93, ptr %34, align 4
  br label %97

97:                                               ; preds = %96, %84
  %98 = and i32 %87, -917505
  store i32 %98, ptr %86, align 4
  %99 = and i32 %87, 524288
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = or i32 %93, 16
  store i32 %102, ptr %34, align 4
  br label %103

103:                                              ; preds = %101, %97
  %104 = phi i32 [ %102, %101 ], [ %93, %97 ]
  %105 = getelementptr inbounds i32, ptr %3, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, -1025
  store i32 %107, ptr %105, align 4
  %108 = and i32 %106, 1024
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %103
  %111 = or i32 %104, 32
  store i32 %111, ptr %34, align 4
  br label %112

112:                                              ; preds = %110, %103
  %113 = call i32 @_find_first_bit_le(ptr noundef nonnull %3, i32 noundef 92) #6
  %114 = icmp eq i32 %113, 92
  br i1 %114, label %122, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %11, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_fec.__msg) #6
  %117 = icmp eq ptr %116, null
  br i1 %117, label %139, label %118

118:                                              ; preds = %115
  store ptr @ethnl_set_fec.__msg, ptr %116, align 4
  %119 = load ptr, ptr %63, align 4
  %120 = getelementptr inbounds %struct.netlink_ext_ack, ptr %116, i32 0, i32 1
  store ptr %119, ptr %120, align 4
  %121 = getelementptr inbounds %struct.netlink_ext_ack, ptr %116, i32 0, i32 2
  store ptr null, ptr %121, align 4
  br label %139

122:                                              ; preds = %112
  %123 = load i32, ptr %34, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load ptr, ptr %11, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_fec.__msg.1) #6
  %127 = icmp eq ptr %126, null
  br i1 %127, label %139, label %128

128:                                              ; preds = %125
  store ptr @ethnl_set_fec.__msg.1, ptr %126, align 4
  %129 = load ptr, ptr %63, align 4
  %130 = getelementptr inbounds %struct.netlink_ext_ack, ptr %126, i32 0, i32 1
  store ptr %129, ptr %130, align 4
  %131 = getelementptr inbounds %struct.netlink_ext_ack, ptr %126, i32 0, i32 2
  store ptr null, ptr %131, align 4
  br label %139

132:                                              ; preds = %122
  %133 = load ptr, ptr %17, align 8
  %134 = getelementptr inbounds %struct.ethtool_ops, ptr %133, i32 0, i32 60
  %135 = load ptr, ptr %134, align 4
  %136 = call i32 %135(ptr noundef %16, ptr noundef nonnull %5) #6
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %132
  call void @ethtool_notify(ptr noundef %16, i32 noundef 31, ptr noundef null) #6
  br label %139

139:                                              ; preds = %138, %132, %128, %125, %118, %115, %77, %62, %29
  %140 = phi i32 [ %31, %29 ], [ %66, %62 ], [ %136, %132 ], [ %136, %138 ], [ 0, %77 ], [ -22, %118 ], [ -22, %115 ], [ -22, %128 ], [ -22, %125 ]
  call void @ethnl_ops_complete(ptr noundef %16) #6
  br label %141

141:                                              ; preds = %139, %26
  %142 = phi i32 [ %27, %26 ], [ %140, %139 ]
  call void @rtnl_unlock() #6
  %143 = load ptr, ptr %4, align 8
  br label %144

144:                                              ; preds = %141, %22, %15
  %145 = phi ptr [ %143, %141 ], [ %16, %22 ], [ %16, %15 ]
  %146 = phi i32 [ %142, %141 ], [ -95, %22 ], [ -95, %15 ]
  %147 = icmp eq ptr %145, null
  br i1 %147, label %160, label %148

148:                                              ; preds = %144
  %149 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !10
  %150 = getelementptr inbounds %struct.net_device, ptr %145, i32 0, i32 99
  %151 = load ptr, ptr %150, align 8
  %152 = ptrtoint ptr %151 to i32
  %153 = call i32 @llvm.read_register.i32(metadata !0) #6
  %154 = inttoptr i32 %153 to ptr
  %155 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %154) #5, !srcloc !11
  %156 = add i32 %155, %152
  %157 = inttoptr i32 %156 to ptr
  %158 = load i32, ptr %157, align 4
  %159 = add i32 %158, -1
  store i32 %159, ptr %157, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %149) #6, !srcloc !12
  br label %160

160:                                              ; preds = %148, %144, %2
  %161 = phi i32 [ %13, %2 ], [ %146, %144 ], [ %146, %148 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  ret i32 %161
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
declare dso_local i32 @ethnl_update_bitset(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fec_stats_recalc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = getelementptr %struct.ethtool_fec_stat, ptr %1, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = icmp eq i64 %4, -1
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = load i64, ptr %1, align 8
  store i64 %7, ptr %0, align 8
  %8 = load i64, ptr %1, align 8
  %9 = icmp ne i64 %8, -1
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.fec_stat_grp, ptr %0, i32 0, i32 1
  store i8 %10, ptr %11, align 8
  br label %68

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.fec_stat_grp, ptr %0, i32 0, i32 1
  store i8 1, ptr %13, align 8
  store i64 0, ptr %0, align 8
  %14 = load i64, ptr %3, align 8
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %68, label %16

16:                                               ; preds = %12
  store i64 %14, ptr %0, align 8
  %17 = load i64, ptr %3, align 8
  store i8 2, ptr %13, align 8
  %18 = getelementptr [9 x i64], ptr %0, i32 0, i32 1
  store i64 %17, ptr %18, align 8
  %19 = getelementptr %struct.ethtool_fec_stat, ptr %1, i32 0, i32 1, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = icmp eq i64 %20, -1
  br i1 %21, label %68, label %22

22:                                               ; preds = %16
  %23 = add i64 %14, %20
  store i64 %23, ptr %0, align 8
  %24 = load i64, ptr %19, align 8
  store i8 3, ptr %13, align 8
  %25 = getelementptr [9 x i64], ptr %0, i32 0, i32 2
  store i64 %24, ptr %25, align 8
  %26 = getelementptr %struct.ethtool_fec_stat, ptr %1, i32 0, i32 1, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = icmp eq i64 %27, -1
  br i1 %28, label %68, label %29

29:                                               ; preds = %22
  %30 = add i64 %23, %27
  store i64 %30, ptr %0, align 8
  %31 = load i64, ptr %26, align 8
  store i8 4, ptr %13, align 8
  %32 = getelementptr [9 x i64], ptr %0, i32 0, i32 3
  store i64 %31, ptr %32, align 8
  %33 = getelementptr %struct.ethtool_fec_stat, ptr %1, i32 0, i32 1, i32 3
  %34 = load i64, ptr %33, align 8
  %35 = icmp eq i64 %34, -1
  br i1 %35, label %68, label %36

36:                                               ; preds = %29
  %37 = add i64 %30, %34
  store i64 %37, ptr %0, align 8
  %38 = load i64, ptr %33, align 8
  store i8 5, ptr %13, align 8
  %39 = getelementptr [9 x i64], ptr %0, i32 0, i32 4
  store i64 %38, ptr %39, align 8
  %40 = getelementptr %struct.ethtool_fec_stat, ptr %1, i32 0, i32 1, i32 4
  %41 = load i64, ptr %40, align 8
  %42 = icmp eq i64 %41, -1
  br i1 %42, label %68, label %43

43:                                               ; preds = %36
  %44 = add i64 %37, %41
  store i64 %44, ptr %0, align 8
  %45 = load i64, ptr %40, align 8
  store i8 6, ptr %13, align 8
  %46 = getelementptr [9 x i64], ptr %0, i32 0, i32 5
  store i64 %45, ptr %46, align 8
  %47 = getelementptr %struct.ethtool_fec_stat, ptr %1, i32 0, i32 1, i32 5
  %48 = load i64, ptr %47, align 8
  %49 = icmp eq i64 %48, -1
  br i1 %49, label %68, label %50

50:                                               ; preds = %43
  %51 = add i64 %44, %48
  store i64 %51, ptr %0, align 8
  %52 = load i64, ptr %47, align 8
  store i8 7, ptr %13, align 8
  %53 = getelementptr [9 x i64], ptr %0, i32 0, i32 6
  store i64 %52, ptr %53, align 8
  %54 = getelementptr %struct.ethtool_fec_stat, ptr %1, i32 0, i32 1, i32 6
  %55 = load i64, ptr %54, align 8
  %56 = icmp eq i64 %55, -1
  br i1 %56, label %68, label %57

57:                                               ; preds = %50
  %58 = add i64 %51, %55
  store i64 %58, ptr %0, align 8
  %59 = load i64, ptr %54, align 8
  store i8 8, ptr %13, align 8
  %60 = getelementptr [9 x i64], ptr %0, i32 0, i32 7
  store i64 %59, ptr %60, align 8
  %61 = getelementptr %struct.ethtool_fec_stat, ptr %1, i32 0, i32 1, i32 7
  %62 = load i64, ptr %61, align 8
  %63 = icmp eq i64 %62, -1
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = add i64 %58, %62
  store i64 %65, ptr %0, align 8
  %66 = load i64, ptr %61, align 8
  store i8 9, ptr %13, align 8
  %67 = getelementptr [9 x i64], ptr %0, i32 0, i32 8
  store i64 %66, ptr %67, align 8
  br label %68

68:                                               ; preds = %64, %57, %50, %43, %36, %29, %22, %16, %12, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset_size(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_put_bitset(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!10 = !{i64 363407, i64 363468}
!11 = !{i64 382107}
!12 = !{i64 366424}
