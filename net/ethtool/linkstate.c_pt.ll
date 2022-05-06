; ModuleID = '/llk/IR/net/ethtool/linkstate.c_pt.bc'
source_filename = "../net/ethtool/linkstate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.linkstate_reply_data = type { %struct.ethnl_reply_data, i32, i32, i32, i8, %struct.ethtool_link_ext_state_info }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_link_ext_state_info = type { i32, %union.anon.130 }
%union.anon.130 = type { i32 }
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
%struct.netdevice_tracker = type {}
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_linkstate_get_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, align 4
@ethnl_linkstate_request_ops = dso_local local_unnamed_addr constant %struct.ethnl_request_ops { i8 6, i8 6, i16 1, i32 8, i32 28, i8 0, ptr null, ptr @linkstate_prepare_data, ptr @linkstate_reply_size, ptr @linkstate_fill_reply, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @linkstate_prepare_data(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = tail call i32 @ethnl_ops_begin(ptr noundef %4) #4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %76, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @__ethtool_get_link(ptr noundef %4) #4
  %9 = getelementptr inbounds %struct.linkstate_reply_data, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 120
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.phy_device, ptr %11, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %14) #4
  %15 = getelementptr inbounds %struct.phy_device, ptr %11, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.phy_driver, ptr %16, i32 0, i32 38
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 %20(ptr noundef nonnull %11) #4
  br label %24

24:                                               ; preds = %22, %18, %13
  %25 = phi i32 [ %23, %22 ], [ -95, %18 ], [ -95, %13 ]
  tail call void @mutex_unlock(ptr noundef %14) #4
  %26 = icmp slt i32 %25, 0
  %27 = icmp ne i32 %25, -95
  %28 = and i1 %26, %27
  br i1 %28, label %74, label %29

29:                                               ; preds = %24, %7
  %30 = phi i32 [ %25, %24 ], [ -95, %7 ]
  %31 = getelementptr inbounds %struct.linkstate_reply_data, ptr %1, i32 0, i32 2
  store i32 %30, ptr %31, align 4
  %32 = load ptr, ptr %10, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.phy_device, ptr %32, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %35) #4
  %36 = getelementptr inbounds %struct.phy_device, ptr %32, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.phy_driver, ptr %37, i32 0, i32 39
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call i32 %41(ptr noundef nonnull %32) #4
  br label %45

45:                                               ; preds = %43, %39, %34
  %46 = phi i32 [ %44, %43 ], [ -95, %39 ], [ -95, %34 ]
  tail call void @mutex_unlock(ptr noundef %35) #4
  %47 = icmp slt i32 %46, 0
  %48 = icmp ne i32 %46, -95
  %49 = and i1 %47, %48
  br i1 %49, label %74, label %50

50:                                               ; preds = %45, %29
  %51 = phi i32 [ %46, %45 ], [ -95, %29 ]
  %52 = getelementptr inbounds %struct.linkstate_reply_data, ptr %1, i32 0, i32 3
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 42
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.ethtool_ops, ptr %59, i32 0, i32 12
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.linkstate_reply_data, ptr %1, i32 0, i32 5
  %65 = tail call i32 %61(ptr noundef %4, ptr noundef %64) #4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.linkstate_reply_data, ptr %1, i32 0, i32 4
  store i8 1, ptr %68, align 4
  br label %73

69:                                               ; preds = %63
  %70 = freeze i32 %65
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  switch i32 %70, label %74 [
    i32 -61, label %73
    i32 -95, label %73
  ]

73:                                               ; preds = %72, %72, %69, %67, %57, %50
  br label %74

74:                                               ; preds = %73, %72, %45, %24
  %75 = phi i32 [ %25, %24 ], [ %46, %45 ], [ %70, %72 ], [ 0, %73 ]
  tail call void @ethnl_ops_complete(ptr noundef %4) #4
  br label %76

76:                                               ; preds = %74, %3
  %77 = phi i32 [ %75, %74 ], [ %5, %3 ]
  ret i32 %77
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @linkstate_reply_size(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.linkstate_reply_data, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -95
  %6 = select i1 %5, i32 8, i32 16
  %7 = getelementptr inbounds %struct.linkstate_reply_data, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, -95
  %10 = add nuw nsw i32 %6, 8
  %11 = select i1 %9, i32 %6, i32 %10
  %12 = getelementptr inbounds %struct.linkstate_reply_data, ptr %1, i32 0, i32 4
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = add nuw nsw i32 %11, 8
  %16 = select i1 %14, i32 %11, i32 %15
  %17 = getelementptr inbounds %struct.linkstate_reply_data, ptr %1, i32 0, i32 5, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = add nuw nsw i32 %16, 8
  %21 = select i1 %19, i32 %16, i32 %20
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @linkstate_fill_reply(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds %struct.linkstate_reply_data, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = icmp ne i32 %10, 0
  %14 = zext i1 %13 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  store i8 %14, ptr %8, align 1
  %15 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %12, %3
  %18 = getelementptr inbounds %struct.linkstate_reply_data, ptr %2, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, -95
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  store i32 %19, ptr %7, align 4
  %22 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %struct.linkstate_reply_data, ptr %2, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, -95
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  store i32 %26, ptr %6, align 4
  %29 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %28, %24
  %32 = getelementptr inbounds %struct.linkstate_reply_data, ptr %2, i32 0, i32 4
  %33 = load i8, ptr %32, align 4, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.linkstate_reply_data, ptr %2, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = trunc i32 %37 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 %38, ptr %5, align 1
  %39 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.linkstate_reply_data, ptr %2, i32 0, i32 5, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = trunc i32 %43 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #4
  store i8 %46, ptr %4, align 1
  %47 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %41, %31
  br label %50

50:                                               ; preds = %49, %45, %35, %28, %21, %12
  %51 = phi i32 [ 0, %49 ], [ -90, %12 ], [ -90, %21 ], [ -90, %28 ], [ -90, %35 ], [ -90, %45 ]
  ret i32 %51
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
