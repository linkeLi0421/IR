; ModuleID = '/llk/IR/drivers/net/can/dev/netlink.c_pt.bc'
source_filename = "../drivers/net/can/dev/netlink.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.130, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.130 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.can_tdc_const = type { i32, i32, i32, i32, i32, i32 }
%struct.can_ctrlmode = type { i32, i32 }
%struct.can_berr_counter = type { i16, i16 }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }

@.str = private unnamed_addr constant [4 x i8] c"can\00", align 1
@can_policy = internal constant [18 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 32, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 48, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 32, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 48, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.48 zeroinitializer }], align 4
@can_link_ops = dso_local global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 0, ptr null, ptr @can_setup, i8 1, i32 17, ptr @can_policy, ptr @can_validate, ptr @can_newlink, ptr @can_changelink, ptr @can_dellink, ptr @can_get_size, ptr @can_fill_info, ptr @can_get_xstats_size, ptr @can_fill_xstats, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@can_tdc_policy = internal constant [10 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], align 4
@nla_parse_nested.__msg = internal constant [24 x i8] c"NLA_F_NESTED is missing\00", align 1
@can_changelink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"drivers/net/can/dev/netlink.c\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"arbitration bitrate surpasses transceiver capabilities of %d bps\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"canfd data bitrate surpasses transceiver capabilities of %d bps\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_setup(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @can_validate(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef %2) #1 {
  %4 = alloca [10 x ptr], align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %81, label %6

6:                                                ; preds = %3
  %7 = getelementptr ptr, ptr %1, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %72, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 4
  %12 = getelementptr i8, ptr %8, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1536
  %15 = load i32, ptr %11, align 4
  %16 = and i32 %13, 32
  %17 = and i32 %16, %15
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq i32 %14, 1536
  br i1 %19, label %81, label %20

20:                                               ; preds = %10
  %21 = icmp eq i32 %14, 0
  %22 = getelementptr ptr, ptr %1, i32 16
  %23 = load ptr, ptr %22, align 4
  %24 = icmp ne ptr %23, null
  %25 = xor i1 %21, %24
  br i1 %25, label %26, label %81

26:                                               ; preds = %20
  br i1 %24, label %27, label %59

27:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !8
  %28 = getelementptr inbounds %struct.nlattr, ptr %23, i32 0, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = icmp sgt i16 %29, -1
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #8
  %32 = icmp eq ptr %2, null
  br i1 %32, label %53, label %33

33:                                               ; preds = %31
  store ptr @nla_parse_nested.__msg, ptr %2, align 4
  %34 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 1
  store ptr %23, ptr %34, align 4
  %35 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 2
  store ptr null, ptr %35, align 4
  br label %53

36:                                               ; preds = %27
  %37 = getelementptr i8, ptr %23, i32 4
  %38 = load i16, ptr %23, align 2
  %39 = zext i16 %38 to i32
  %40 = add nsw i32 %39, -4
  %41 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 9, ptr noundef %37, i32 noundef %40, ptr noundef nonnull @can_tdc_policy, i32 noundef 31, ptr noundef %2) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = getelementptr inbounds [10 x ptr], ptr %4, i32 0, i32 7
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = and i32 %13, 512
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %53

50:                                               ; preds = %43
  %51 = and i32 %13, 1024
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50, %47, %36, %33, %31
  %54 = phi i32 [ -95, %50 ], [ -95, %47 ], [ %41, %36 ], [ -22, %33 ], [ -22, %31 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #8
  br label %81

55:                                               ; preds = %50, %47
  %56 = getelementptr inbounds [10 x ptr], ptr %4, i32 0, i32 8
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #8
  br i1 %58, label %81, label %59

59:                                               ; preds = %55, %26
  br i1 %18, label %68, label %60

60:                                               ; preds = %59
  %61 = getelementptr ptr, ptr %1, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %81, label %64

64:                                               ; preds = %60
  %65 = getelementptr ptr, ptr %1, i32 9
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %81, label %80

68:                                               ; preds = %59
  %69 = getelementptr ptr, ptr %1, i32 9
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %81

72:                                               ; preds = %6
  %73 = getelementptr ptr, ptr %1, i32 9
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %72, %68
  %77 = getelementptr ptr, ptr %1, i32 16
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %64
  br label %81

81:                                               ; preds = %80, %76, %72, %68, %64, %60, %55, %53, %20, %10, %3
  %82 = phi i32 [ 0, %80 ], [ 0, %3 ], [ -95, %64 ], [ -95, %60 ], [ -95, %76 ], [ %54, %53 ], [ -95, %20 ], [ -95, %10 ], [ -95, %55 ], [ -95, %72 ], [ -95, %68 ]
  ret i32 %82
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @can_newlink(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4) #2 {
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @can_changelink(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) #1 {
  %5 = alloca %struct.can_bittiming, align 4
  %6 = alloca %struct.can_bittiming, align 4
  %7 = getelementptr i8, ptr %0, i32 1408
  %8 = tail call i32 @rtnl_is_locked() #8
  %9 = icmp eq i32 %8, 0
  %10 = load i1, ptr @can_changelink.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %4
  store i1 true, ptr @can_changelink.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 165, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 165) #8
  br label %14

14:                                               ; preds = %13, %4
  %15 = getelementptr ptr, ptr %2, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %58, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  %19 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %18
  %24 = getelementptr i8, ptr %0, i32 1436
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %0, i32 1636
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %55, label %31

31:                                               ; preds = %27, %23
  %32 = getelementptr i8, ptr %16, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef align 1 dereferenceable(32) %32, i32 32, i1 false)
  %33 = getelementptr i8, ptr %0, i32 1528
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %0, i32 1524
  %36 = load i32, ptr %35, align 4
  %37 = call i32 @can_get_bittiming(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %25, ptr noundef %34, i32 noundef %36) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %31
  %40 = getelementptr i8, ptr %0, i32 1540
  %41 = load i32, ptr %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = load i32, ptr %5, align 4
  %44 = icmp ugt i32 %43, %41
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %41) #9
  br label %55

47:                                               ; preds = %39
  %48 = getelementptr i8, ptr %0, i32 1444
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %48, ptr noundef nonnull align 4 dereferenceable(32) %5, i32 32, i1 false)
  %49 = getelementptr i8, ptr %0, i32 1636
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = call i32 %50(ptr noundef %0) #8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52, %46, %31, %27, %18
  %56 = phi i32 [ %53, %52 ], [ %37, %31 ], [ -95, %27 ], [ -16, %18 ], [ -22, %46 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  br label %231

57:                                               ; preds = %52, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  br label %58

58:                                               ; preds = %57, %14
  %59 = getelementptr ptr, ptr %2, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %111, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %231

67:                                               ; preds = %62
  %68 = getelementptr i8, ptr %60, i32 4
  %69 = getelementptr i8, ptr %0, i32 1580
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i8, ptr %0, i32 1584
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr i8, ptr %60, i32 8
  %74 = load i32, ptr %73, align 4
  %75 = load i32, ptr %68, align 4
  %76 = and i32 %75, %74
  %77 = or i32 %72, %70
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %231

81:                                               ; preds = %67
  %82 = xor i32 %72, -1
  %83 = and i32 %70, %82
  %84 = and i32 %76, 32
  %85 = icmp eq i32 %84, 0
  %86 = and i32 %83, -129
  %87 = select i1 %85, i32 %86, i32 %83
  %88 = and i32 %87, %76
  %89 = icmp eq i32 %88, %87
  br i1 %89, label %90, label %231

90:                                               ; preds = %81
  %91 = xor i32 %75, -1
  %92 = and i32 %70, %91
  %93 = or i32 %92, %76
  store i32 %93, ptr %69, align 4
  %94 = and i32 %93, 32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = getelementptr i8, ptr %0, i32 1476
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %97, i8 0, i32 32, i1 false)
  %98 = and i32 %93, -1537
  store i32 %98, ptr %69, align 4
  %99 = getelementptr i8, ptr %0, i32 1512
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %99, i8 0, i32 12, i1 false)
  br label %100

100:                                              ; preds = %96, %90
  %101 = phi i32 [ %98, %96 ], [ %93, %90 ]
  %102 = phi i32 [ 16, %96 ], [ 72, %90 ]
  %103 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %102, ptr %103, align 4
  %104 = load i32, ptr %68, align 4
  %105 = and i32 %104, 1536
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %100
  %108 = load i32, ptr %73, align 4
  %109 = or i32 %108, -1537
  %110 = and i32 %101, %109
  store i32 %110, ptr %69, align 4
  br label %111

111:                                              ; preds = %107, %100, %58
  %112 = phi i1 [ false, %107 ], [ true, %100 ], [ true, %58 ]
  %113 = getelementptr ptr, ptr %2, i32 6
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %125, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %118 = load i32, ptr %117, align 8
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %231

121:                                              ; preds = %116
  %122 = getelementptr i8, ptr %114, i32 4
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr i8, ptr %0, i32 1588
  store i32 %123, ptr %124, align 4
  br label %125

125:                                              ; preds = %121, %111
  %126 = getelementptr ptr, ptr %2, i32 7
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %137, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %131 = load i32, ptr %130, align 8
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %231, label %134

134:                                              ; preds = %129
  %135 = call i32 @can_restart_now(ptr noundef %0) #8
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %231

137:                                              ; preds = %134, %125
  %138 = getelementptr ptr, ptr %2, i32 9
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %201, label %141

141:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #8
  %142 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %143 = load i32, ptr %142, align 8
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %198

146:                                              ; preds = %141
  %147 = getelementptr i8, ptr %0, i32 1440
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = getelementptr i8, ptr %0, i32 1640
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %198, label %154

154:                                              ; preds = %150, %146
  %155 = getelementptr i8, ptr %139, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, ptr noundef align 1 dereferenceable(32) %155, i32 32, i1 false)
  %156 = getelementptr i8, ptr %0, i32 1532
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr i8, ptr %0, i32 1536
  %159 = load i32, ptr %158, align 4
  %160 = call i32 @can_get_bittiming(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %148, ptr noundef %157, i32 noundef %159) #8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %198

162:                                              ; preds = %154
  %163 = getelementptr i8, ptr %0, i32 1540
  %164 = load i32, ptr %163, align 4
  %165 = icmp ne i32 %164, 0
  %166 = load i32, ptr %6, align 4
  %167 = icmp ugt i32 %166, %164
  %168 = select i1 %165, i1 %167, i1 false
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %164) #9
  br label %198

170:                                              ; preds = %162
  %171 = getelementptr i8, ptr %0, i32 1512
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %171, i8 0, i32 12, i1 false)
  %172 = getelementptr ptr, ptr %2, i32 16
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %182, label %175

175:                                              ; preds = %170
  %176 = call fastcc i32 @can_tdc_changelink(ptr noundef %7, ptr noundef nonnull %173, ptr noundef %3)
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %190, label %178

178:                                              ; preds = %175
  %179 = getelementptr i8, ptr %0, i32 1580
  %180 = load i32, ptr %179, align 4
  %181 = and i32 %180, -1537
  store i32 %181, ptr %179, align 4
  br label %198

182:                                              ; preds = %170
  br i1 %112, label %183, label %190

183:                                              ; preds = %182
  %184 = getelementptr i8, ptr %0, i32 1508
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr i8, ptr %0, i32 1476
  %187 = getelementptr i8, ptr %0, i32 1580
  %188 = getelementptr i8, ptr %0, i32 1584
  %189 = load i32, ptr %188, align 4
  call void @can_calc_tdco(ptr noundef %171, ptr noundef %185, ptr noundef %186, ptr noundef %187, i32 noundef %189) #8
  br label %190

190:                                              ; preds = %183, %182, %175
  %191 = getelementptr i8, ptr %0, i32 1476
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %191, ptr noundef nonnull align 4 dereferenceable(32) %6, i32 32, i1 false)
  %192 = getelementptr i8, ptr %0, i32 1640
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %200, label %195

195:                                              ; preds = %190
  %196 = call i32 %193(ptr noundef %0) #8
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %195, %178, %169, %154, %150, %141
  %199 = phi i32 [ %196, %195 ], [ %160, %154 ], [ -95, %150 ], [ -16, %141 ], [ %176, %178 ], [ -22, %169 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8
  br label %231

200:                                              ; preds = %195, %190
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8
  br label %201

201:                                              ; preds = %200, %137
  %202 = getelementptr ptr, ptr %2, i32 11
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %231, label %205

205:                                              ; preds = %201
  %206 = getelementptr i8, ptr %203, i32 4
  %207 = load i16, ptr %206, align 2
  %208 = getelementptr i8, ptr %0, i32 1548
  %209 = load i32, ptr %208, align 4
  %210 = getelementptr i8, ptr %0, i32 1648
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %231, label %213

213:                                              ; preds = %205
  %214 = icmp eq i32 %209, 0
  br i1 %214, label %231, label %215

215:                                              ; preds = %213
  %216 = getelementptr i8, ptr %0, i32 1552
  %217 = load ptr, ptr %216, align 4
  br label %221

218:                                              ; preds = %221
  %219 = add nuw i32 %222, 1
  %220 = icmp eq i32 %219, %209
  br i1 %220, label %231, label %221

221:                                              ; preds = %218, %215
  %222 = phi i32 [ 0, %215 ], [ %219, %218 ]
  %223 = getelementptr i16, ptr %217, i32 %222
  %224 = load i16, ptr %223, align 2
  %225 = icmp eq i16 %207, %224
  br i1 %225, label %226, label %218

226:                                              ; preds = %221
  %227 = call i32 %211(ptr noundef %0, i16 noundef zeroext %207) #8
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = getelementptr i8, ptr %0, i32 1556
  store i16 %207, ptr %230, align 4
  br label %231

231:                                              ; preds = %229, %226, %218, %213, %205, %201, %198, %134, %129, %116, %81, %67, %62, %55
  %232 = phi i32 [ -16, %116 ], [ -22, %129 ], [ %135, %134 ], [ %56, %55 ], [ %199, %198 ], [ 0, %229 ], [ 0, %201 ], [ -95, %81 ], [ -95, %67 ], [ -16, %62 ], [ %227, %226 ], [ -95, %205 ], [ -22, %213 ], [ -22, %218 ]
  ret i32 %232
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @can_dellink(ptr nocapture noundef %0, ptr nocapture noundef %1) #2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @can_get_size(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 1444
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 0, i32 36
  %6 = getelementptr i8, ptr %0, i32 1436
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = add nuw nsw i32 %5, 52
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = getelementptr i8, ptr %0, i32 1656
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, i32 36, i32 44
  %15 = add nuw nsw i32 %10, %14
  %16 = getelementptr i8, ptr %0, i32 1476
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = add nuw nsw i32 %15, 36
  %20 = select i1 %18, i32 %15, i32 %19
  %21 = getelementptr i8, ptr %0, i32 1440
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = add nuw nsw i32 %20, 52
  %25 = select i1 %23, i32 %20, i32 %24
  %26 = getelementptr i8, ptr %0, i32 1552
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %1
  %30 = add nuw nsw i32 %25, 8
  %31 = getelementptr i8, ptr %0, i32 1548
  %32 = load i32, ptr %31, align 4
  %33 = shl i32 %32, 1
  %34 = add i32 %33, 7
  %35 = and i32 %34, -4
  %36 = add i32 %30, %35
  br label %37

37:                                               ; preds = %29, %1
  %38 = phi i32 [ %36, %29 ], [ %25, %1 ]
  %39 = getelementptr i8, ptr %0, i32 1528
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %0, i32 1524
  %44 = load i32, ptr %43, align 4
  %45 = shl i32 %44, 2
  %46 = add i32 %45, 7
  %47 = and i32 %46, -4
  %48 = add i32 %47, %38
  br label %49

49:                                               ; preds = %42, %37
  %50 = phi i32 [ %48, %42 ], [ %38, %37 ]
  %51 = getelementptr i8, ptr %0, i32 1532
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = getelementptr i8, ptr %0, i32 1536
  %56 = load i32, ptr %55, align 4
  %57 = shl i32 %56, 2
  %58 = add i32 %57, 7
  %59 = and i32 %58, -4
  %60 = add i32 %59, %50
  br label %61

61:                                               ; preds = %54, %49
  %62 = phi i32 [ %60, %54 ], [ %50, %49 ]
  %63 = getelementptr i8, ptr %0, i32 1508
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %94, label %66

66:                                               ; preds = %61
  %67 = getelementptr i8, ptr %0, i32 1584
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 1024
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 20, i32 36
  %72 = getelementptr inbounds %struct.can_tdc_const, ptr %64, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  %75 = add nuw nsw i32 %71, 16
  %76 = select i1 %74, i32 %71, i32 %75
  %77 = getelementptr i8, ptr %0, i32 1580
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 1536
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %66
  %82 = and i32 %78, 1024
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = getelementptr i8, ptr %0, i32 1660
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84, %81
  %89 = or i32 %76, 8
  br label %90

90:                                               ; preds = %88, %84
  %91 = phi i32 [ %89, %88 ], [ %76, %84 ]
  %92 = select i1 %74, i32 8, i32 16
  %93 = add nuw nsw i32 %91, %92
  br label %94

94:                                               ; preds = %90, %66, %61
  %95 = phi i32 [ 0, %61 ], [ %76, %66 ], [ %93, %90 ]
  %96 = add i32 %62, 16
  %97 = add i32 %96, %95
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @can_fill_info(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.can_ctrlmode, align 8
  %7 = alloca %struct.can_berr_counter, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr i8, ptr %1, i32 1408
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8, !annotation !8
  %10 = getelementptr inbounds %struct.can_ctrlmode, ptr %6, i32 0, i32 1
  %11 = getelementptr i8, ptr %1, i32 1580
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  %13 = getelementptr i8, ptr %1, i32 1576
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %8, align 4
  %15 = getelementptr i8, ptr %1, i32 1652
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 %16(ptr noundef %1, ptr noundef nonnull %8) #8
  br label %20

20:                                               ; preds = %18, %2
  %21 = getelementptr i8, ptr %1, i32 1444
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 32, ptr noundef %21) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %121

27:                                               ; preds = %24, %20
  %28 = getelementptr i8, ptr %1, i32 1436
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 48, ptr noundef nonnull %29) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %121

34:                                               ; preds = %31, %27
  %35 = getelementptr i8, ptr %1, i32 1544
  %36 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 4, ptr noundef %35) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %121

38:                                               ; preds = %34
  %39 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 %39, ptr %5, align 4
  %40 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %121

42:                                               ; preds = %38
  %43 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %6) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %121

45:                                               ; preds = %42
  %46 = getelementptr i8, ptr %1, i32 1588
  %47 = load i32, ptr %46, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 %47, ptr %4, align 4
  %48 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %121

50:                                               ; preds = %45
  %51 = getelementptr i8, ptr %1, i32 1656
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = call i32 %52(ptr noundef %1, ptr noundef nonnull %7) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %7) #8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %121

60:                                               ; preds = %57, %54, %50
  %61 = getelementptr i8, ptr %1, i32 1476
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef 32, ptr noundef %61) #8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %121

67:                                               ; preds = %64, %60
  %68 = getelementptr i8, ptr %1, i32 1440
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = call i32 @nla_put(ptr noundef %0, i32 noundef 10, i32 noundef 48, ptr noundef nonnull %69) #8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %121

74:                                               ; preds = %71, %67
  %75 = getelementptr i8, ptr %1, i32 1552
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %90, label %78

78:                                               ; preds = %74
  %79 = getelementptr i8, ptr %1, i32 1556
  %80 = load i16, ptr %79, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 %80, ptr %3, align 2
  %81 = call i32 @nla_put(ptr noundef %0, i32 noundef 11, i32 noundef 2, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %121

83:                                               ; preds = %78
  %84 = getelementptr i8, ptr %1, i32 1548
  %85 = load i32, ptr %84, align 4
  %86 = shl i32 %85, 1
  %87 = load ptr, ptr %75, align 4
  %88 = call i32 @nla_put(ptr noundef %0, i32 noundef 12, i32 noundef %86, ptr noundef %87) #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %121

90:                                               ; preds = %83, %74
  %91 = getelementptr i8, ptr %1, i32 1528
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %90
  %95 = getelementptr i8, ptr %1, i32 1524
  %96 = load i32, ptr %95, align 4
  %97 = shl i32 %96, 2
  %98 = call i32 @nla_put(ptr noundef %0, i32 noundef 13, i32 noundef %97, ptr noundef nonnull %92) #8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %94, %90
  %101 = getelementptr i8, ptr %1, i32 1532
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = getelementptr i8, ptr %1, i32 1536
  %106 = load i32, ptr %105, align 4
  %107 = shl i32 %106, 2
  %108 = call i32 @nla_put(ptr noundef %0, i32 noundef 14, i32 noundef %107, ptr noundef nonnull %102) #8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %104, %100
  %111 = getelementptr i8, ptr %1, i32 1540
  %112 = call i32 @nla_put(ptr noundef %0, i32 noundef 15, i32 noundef 4, ptr noundef %111) #8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = call fastcc i32 @can_tdc_fill_info(ptr noundef %0, ptr noundef %1)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = call fastcc i32 @can_ctrlmode_ext_fill_info(ptr noundef %0, ptr noundef %9)
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, i32 0, i32 -90
  br label %121

121:                                              ; preds = %117, %114, %110, %104, %94, %83, %78, %71, %64, %57, %45, %42, %38, %34, %31, %24
  %122 = phi i32 [ -90, %114 ], [ -90, %110 ], [ -90, %104 ], [ -90, %94 ], [ -90, %83 ], [ -90, %78 ], [ -90, %71 ], [ -90, %64 ], [ -90, %57 ], [ -90, %45 ], [ -90, %42 ], [ -90, %38 ], [ -90, %34 ], [ -90, %31 ], [ -90, %24 ], [ %120, %117 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret i32 %122
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @can_get_xstats_size(ptr nocapture noundef readnone %0) #2 {
  ret i32 24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @can_fill_xstats(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %1, i32 1412
  %4 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 24, ptr noundef %3) #8
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 0, i32 -90
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_netlink_register() local_unnamed_addr #1 {
  %1 = tail call i32 @rtnl_link_register(ptr noundef nonnull @can_link_ops) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @can_netlink_unregister() local_unnamed_addr #1 {
  tail call void @rtnl_link_unregister(ptr noundef nonnull @can_link_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_bittiming(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_restart_now(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @can_tdc_changelink(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca [10 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.can_priv, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %77, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.can_priv, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %77, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.nlattr, ptr %1, i32 0, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = icmp sgt i16 %15, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #8
  %18 = icmp eq ptr %2, null
  br i1 %18, label %77, label %19

19:                                               ; preds = %17
  store ptr @nla_parse_nested.__msg, ptr %2, align 4
  %20 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 1
  store ptr %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 2
  store ptr null, ptr %21, align 4
  br label %77

22:                                               ; preds = %13
  %23 = getelementptr i8, ptr %1, i32 4
  %24 = load i16, ptr %1, align 2
  %25 = zext i16 %24 to i32
  %26 = add nsw i32 %25, -4
  %27 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 9, ptr noundef %23, i32 noundef %26, ptr noundef nonnull @can_tdc_policy, i32 noundef 31, ptr noundef %2) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %77

29:                                               ; preds = %22
  %30 = getelementptr inbounds [10 x ptr], ptr %4, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %31, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %6, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %77, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.can_tdc_const, ptr %6, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %35, %40
  br i1 %41, label %77, label %42

42:                                               ; preds = %38, %29
  %43 = phi i32 [ %35, %38 ], [ 0, %29 ]
  %44 = getelementptr inbounds [10 x ptr], ptr %4, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = getelementptr i8, ptr %45, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.can_tdc_const, ptr %6, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %77, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.can_tdc_const, ptr %6, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = icmp ugt i32 %49, %55
  br i1 %56, label %77, label %57

57:                                               ; preds = %53, %42
  %58 = phi i32 [ %49, %53 ], [ 0, %42 ]
  %59 = getelementptr inbounds [10 x ptr], ptr %4, i32 0, i32 9
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = getelementptr i8, ptr %60, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.can_tdc_const, ptr %6, i32 0, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %77, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.can_tdc_const, ptr %6, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = icmp ugt i32 %64, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %68, %57
  %73 = phi i32 [ %64, %68 ], [ 0, %57 ]
  %74 = getelementptr inbounds %struct.can_priv, ptr %0, i32 0, i32 7
  store i32 %43, ptr %74, align 4
  %75 = getelementptr inbounds %struct.can_priv, ptr %0, i32 0, i32 7, i32 1
  store i32 %58, ptr %75, align 4
  %76 = getelementptr inbounds %struct.can_priv, ptr %0, i32 0, i32 7, i32 2
  store i32 %73, ptr %76, align 4
  br label %77

77:                                               ; preds = %72, %68, %62, %53, %47, %38, %33, %22, %19, %17, %8, %3
  %78 = phi i32 [ 0, %72 ], [ -22, %68 ], [ -22, %53 ], [ -22, %38 ], [ -95, %8 ], [ -95, %3 ], [ %27, %22 ], [ -22, %19 ], [ -22, %17 ], [ -22, %33 ], [ -22, %47 ], [ -22, %62 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #8
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_calc_tdco(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @can_tdc_fill_info(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr i8, ptr %1, i32 1512
  %14 = getelementptr i8, ptr %1, i32 1508
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %116, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 32784, i32 noundef 0, ptr noundef null) #8
  %21 = icmp slt i32 %20, 0
  %22 = icmp eq ptr %19, null
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %116, label %24

24:                                               ; preds = %17
  %25 = getelementptr i8, ptr %1, i32 1584
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1024
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = load i32, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  store i32 %30, ptr %11, align 4
  %31 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %105

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.can_tdc_const, ptr %15, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  store i32 %35, ptr %10, align 4
  %36 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %105

38:                                               ; preds = %33, %24
  %39 = getelementptr inbounds %struct.can_tdc_const, ptr %15, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 %40, ptr %9, align 4
  %41 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %105

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.can_tdc_const, ptr %15, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 %45, ptr %8, align 4
  %46 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %105

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.can_tdc_const, ptr %15, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.can_tdc_const, ptr %15, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 %54, ptr %7, align 4
  %55 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %105

57:                                               ; preds = %52
  %58 = load i32, ptr %49, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 %58, ptr %6, align 4
  %59 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %105

61:                                               ; preds = %57, %48
  %62 = getelementptr i8, ptr %1, i32 1580
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 1536
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %99, label %66

66:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  store i32 0, ptr %12, align 4, !annotation !8
  %67 = and i32 %63, 1024
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = load i32, ptr %13, align 4
  store i32 %70, ptr %12, align 4
  br label %80

71:                                               ; preds = %66
  %72 = getelementptr i8, ptr %1, i32 1660
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %84, label %75

75:                                               ; preds = %71
  %76 = call i32 %73(ptr noundef %1, ptr noundef nonnull %12) #8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, ptr %12, align 4
  br label %80

80:                                               ; preds = %78, %69
  %81 = phi i32 [ %79, %78 ], [ %70, %69 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 %81, ptr %5, align 4
  %82 = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %80, %75, %71
  %85 = getelementptr i8, ptr %1, i32 1516
  %86 = load i32, ptr %85, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 %86, ptr %4, align 4
  %87 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load i32, ptr %49, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = getelementptr i8, ptr %1, i32 1520
  %94 = load i32, ptr %93, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 %94, ptr %3, align 4
  %95 = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92, %84, %80
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  br label %105

98:                                               ; preds = %92, %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  br label %99

99:                                               ; preds = %98, %61
  %100 = load ptr, ptr %18, align 8
  %101 = ptrtoint ptr %100 to i32
  %102 = ptrtoint ptr %19 to i32
  %103 = sub i32 %101, %102
  %104 = trunc i32 %103 to i16
  store i16 %104, ptr %19, align 2
  br label %116

105:                                              ; preds = %97, %57, %52, %43, %38, %33, %29
  %106 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %107 = load ptr, ptr %106, align 4
  %108 = icmp ugt ptr %107, %19
  br i1 %108, label %109, label %111, !prof !9

109:                                              ; preds = %105
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  %110 = load ptr, ptr %106, align 4
  br label %111

111:                                              ; preds = %109, %105
  %112 = phi ptr [ %110, %109 ], [ %107, %105 ]
  %113 = ptrtoint ptr %19 to i32
  %114 = ptrtoint ptr %112 to i32
  %115 = sub i32 %113, %114
  call void @skb_trim(ptr noundef %0, i32 noundef %115) #8
  br label %116

116:                                              ; preds = %111, %99, %17, %2
  %117 = phi i32 [ -90, %111 ], [ 0, %99 ], [ 0, %2 ], [ -90, %17 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @can_ctrlmode_ext_fill_info(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 32785, i32 noundef 0, ptr noundef null) #8
  %7 = icmp slt i32 %6, 0
  %8 = icmp eq ptr %5, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %32, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 23
  %12 = load i32, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 %12, ptr %3, align 4
  %13 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ugt ptr %17, %5
  br i1 %18, label %19, label %21, !prof !9

19:                                               ; preds = %15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  %20 = load ptr, ptr %16, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi ptr [ %20, %19 ], [ %17, %15 ]
  %23 = ptrtoint ptr %5 to i32
  %24 = ptrtoint ptr %22 to i32
  %25 = sub i32 %23, %24
  call void @skb_trim(ptr noundef %0, i32 noundef %25) #8
  br label %32

26:                                               ; preds = %10
  %27 = load ptr, ptr %4, align 8
  %28 = ptrtoint ptr %27 to i32
  %29 = ptrtoint ptr %5 to i32
  %30 = sub i32 %28, %29
  %31 = trunc i32 %30 to i16
  store i16 %31, ptr %5, align 2
  br label %32

32:                                               ; preds = %26, %21, %2
  %33 = phi i32 [ -90, %21 ], [ 0, %26 ], [ -90, %2 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
