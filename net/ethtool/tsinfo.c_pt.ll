; ModuleID = '/llk/IR/net/ethtool/tsinfo.c_pt.bc'
source_filename = "../net/ethtool/tsinfo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tsinfo_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_ts_info }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethnl_req_info = type { ptr, %struct.netdevice_tracker, i32 }
%struct.netdevice_tracker = type {}

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_tsinfo_get_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, align 4
@ethnl_tsinfo_request_ops = dso_local local_unnamed_addr constant %struct.ethnl_request_ops { i8 25, i8 26, i16 1, i32 8, i32 48, i8 0, ptr null, ptr @tsinfo_prepare_data, ptr @tsinfo_reply_size, ptr @tsinfo_fill_reply, ptr null }, align 4
@sof_timestamping_names = external dso_local constant [0 x [32 x i8]], align 1
@ts_tx_type_names = external dso_local constant [0 x [32 x i8]], align 1
@ts_rx_filter_names = external dso_local constant [0 x [32 x i8]], align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tsinfo_prepare_data(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = tail call i32 @ethnl_ops_begin(ptr noundef %4) #3
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tsinfo_reply_data, ptr %1, i32 0, i32 1
  %9 = tail call i32 @__ethtool_get_ts_info(ptr noundef %4, ptr noundef %8) #3
  tail call void @ethnl_ops_complete(ptr noundef %4) #3
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ %5, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tsinfo_reply_size(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ethnl_req_info, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp ne i32 %5, 0
  %7 = getelementptr inbounds %struct.tsinfo_reply_data, ptr %1, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @ethnl_bitset32_size(ptr noundef %7, ptr noundef null, i32 noundef 16, ptr noundef nonnull @sof_timestamping_names, i1 noundef zeroext %6) #3
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %10, %2
  %14 = phi i32 [ 0, %2 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.tsinfo_reply_data, ptr %1, i32 0, i32 1, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @ethnl_bitset32_size(ptr noundef %15, ptr noundef null, i32 noundef 4, ptr noundef nonnull @ts_tx_type_names, i1 noundef zeroext %6) #3
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %18
  %22 = add nuw i32 %19, %14
  br label %23

23:                                               ; preds = %21, %13
  %24 = phi i32 [ %22, %21 ], [ %14, %13 ]
  %25 = getelementptr inbounds %struct.tsinfo_reply_data, ptr %1, i32 0, i32 1, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @ethnl_bitset32_size(ptr noundef %25, ptr noundef null, i32 noundef 16, ptr noundef nonnull @ts_rx_filter_names, i1 noundef zeroext %6) #3
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = add i32 %29, %24
  br label %33

33:                                               ; preds = %31, %23
  %34 = phi i32 [ %32, %31 ], [ %24, %23 ]
  %35 = getelementptr inbounds %struct.tsinfo_reply_data, ptr %1, i32 0, i32 1, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %34, 8
  %38 = icmp slt i32 %36, 0
  %39 = select i1 %38, i32 %34, i32 %37
  br label %40

40:                                               ; preds = %33, %28, %18, %10
  %41 = phi i32 [ %11, %10 ], [ %19, %18 ], [ %29, %28 ], [ %39, %33 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tsinfo_fill_reply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.ethnl_req_info, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  %9 = getelementptr inbounds %struct.tsinfo_reply_data, ptr %2, i32 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = tail call i32 @ethnl_put_bitset32(ptr noundef %0, i32 noundef 2, ptr noundef %9, ptr noundef null, i32 noundef 16, ptr noundef nonnull @sof_timestamping_names, i1 noundef zeroext %8) #3
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %12, %3
  %16 = getelementptr inbounds %struct.tsinfo_reply_data, ptr %2, i32 0, i32 1, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @ethnl_put_bitset32(ptr noundef %0, i32 noundef 3, ptr noundef %16, ptr noundef null, i32 noundef 4, ptr noundef nonnull @ts_tx_type_names, i1 noundef zeroext %8) #3
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %19, %15
  %23 = getelementptr inbounds %struct.tsinfo_reply_data, ptr %2, i32 0, i32 1, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @ethnl_put_bitset32(ptr noundef %0, i32 noundef 4, ptr noundef %23, ptr noundef null, i32 noundef 16, ptr noundef nonnull @ts_rx_filter_names, i1 noundef zeroext %8) #3
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %struct.tsinfo_reply_data, ptr %2, i32 0, i32 1, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 %31, ptr %4, align 4
  %34 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %29
  br label %37

37:                                               ; preds = %36, %33, %26, %19, %12
  %38 = phi i32 [ 0, %36 ], [ %13, %12 ], [ %20, %19 ], [ %27, %26 ], [ -90, %33 ]
  ret i32 %38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset32_size(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_put_bitset32(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
