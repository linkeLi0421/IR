; ModuleID = '/llk/IR/drivers/net/ethernet/asix/ax88796c_spi.c_pt.bc'
source_filename = "../drivers/net/ethernet/asix/ax88796c_spi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.axspi_data = type { ptr, %struct.spi_message, [2 x %struct.spi_transfer], [6 x i8], [6 x i8], i8 }

@ax88796c_rx_cmd_buf = dso_local local_unnamed_addr constant [5 x i8] c"\0B\FF\FF\FF\FF", align 1
@ax88796c_tx_cmd_buf = dso_local local_unnamed_addr constant [4 x i8] c"\02\FF\FF\FF", align 1
@.str = private unnamed_addr constant [23 x i8] c"%s() failed: ret = %d\0A\00", align 1
@__func__.axspi_wakeup = private unnamed_addr constant [13 x i8] c"axspi_wakeup\00", align 1
@__func__.axspi_read_status = private unnamed_addr constant [18 x i8] c"axspi_read_status\00", align 1
@__func__.axspi_read_rxq = private unnamed_addr constant [15 x i8] c"axspi_read_rxq\00", align 1
@__func__.axspi_read_reg = private unnamed_addr constant [15 x i8] c"axspi_read_reg\00", align 1
@__func__.axspi_write_reg = private unnamed_addr constant [16 x i8] c"axspi_write_reg\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @axspi_wakeup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.spi_message, align 4
  %3 = alloca %struct.spi_transfer, align 4
  %4 = getelementptr inbounds %struct.axspi_data, ptr %0, i32 0, i32 3
  store i8 -85, ptr %4, align 4
  %5 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #6
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %6, i8 0, i64 92, i1 false) #6
  store ptr %4, ptr %3, align 4
  %7 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  store i32 1, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #6
  %8 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %8, i8 0, i64 40, i1 false) #6
  store volatile ptr %2, ptr %2, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18
  store ptr %12, ptr %9, align 4
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18, i32 1
  store ptr %2, ptr %13, align 4
  store volatile ptr %12, ptr %2, align 4
  %14 = call i32 @spi_sync(ptr noundef %5, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.axspi_wakeup, i32 noundef %14) #7
  br label %18

18:                                               ; preds = %16, %1
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @axspi_read_status(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.axspi_data, ptr %0, i32 0, i32 3
  store i8 5, ptr %3, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = tail call i32 @spi_write_then_read(ptr noundef %4, ptr noundef %3, i32 noundef 1, ptr noundef %1, i32 noundef 3) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.axspi_read_status, i32 noundef %5) #7
  br label %9

9:                                                ; preds = %7, %2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @axspi_read_rxq(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.axspi_data, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.axspi_data, ptr %0, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(5) %5, ptr noundef nonnull align 1 dereferenceable(5) @ax88796c_rx_cmd_buf, i32 5, i1 false)
  store ptr %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.axspi_data, ptr %0, i32 0, i32 2, i32 0, i32 1
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.axspi_data, ptr %0, i32 0, i32 5
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 5, i32 2
  %11 = getelementptr inbounds %struct.axspi_data, ptr %0, i32 0, i32 2, i32 0, i32 2
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.axspi_data, ptr %0, i32 0, i32 2, i32 0, i32 8
  store i8 8, ptr %12, align 1
  %13 = getelementptr inbounds %struct.axspi_data, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.axspi_data, ptr %0, i32 0, i32 2, i32 0, i32 18
  %15 = getelementptr inbounds %struct.axspi_data, ptr %0, i32 0, i32 1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr %14, ptr %15, align 4
  store ptr %13, ptr %14, align 4
  %17 = getelementptr inbounds %struct.axspi_data, ptr %0, i32 0, i32 2, i32 0, i32 18, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %14, ptr %16, align 4
  %18 = getelementptr %struct.axspi_data, ptr %0, i32 0, i32 2, i32 1
  %19 = getelementptr %struct.axspi_data, ptr %0, i32 0, i32 2, i32 1, i32 1
  store ptr %1, ptr %19, align 4
  store ptr null, ptr %18, align 4
  %20 = getelementptr %struct.axspi_data, ptr %0, i32 0, i32 2, i32 1, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr %struct.axspi_data, ptr %0, i32 0, i32 2, i32 1, i32 8
  store i8 8, ptr %21, align 1
  %22 = getelementptr %struct.axspi_data, ptr %0, i32 0, i32 2, i32 1, i32 18
  %23 = load ptr, ptr %15, align 4
  store ptr %22, ptr %15, align 4
  store ptr %13, ptr %22, align 4
  %24 = getelementptr %struct.axspi_data, ptr %0, i32 0, i32 2, i32 1, i32 18, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %22, ptr %23, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = tail call i32 @spi_sync(ptr noundef %25, ptr noundef %13) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %3
  %29 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.axspi_read_rxq, i32 noundef %26) #7
  br label %30

30:                                               ; preds = %28, %3
  ret i32 %26
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @axspi_write_txq(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.spi_message, align 4
  %5 = alloca %struct.spi_transfer, align 4
  %6 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #6
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %7, i8 0, i64 92, i1 false) #6
  store ptr %1, ptr %5, align 4
  %8 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  store i32 %2, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #6
  %9 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %9, i8 0, i64 40, i1 false) #6
  store volatile ptr %4, ptr %4, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %11 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18
  store ptr %13, ptr %10, align 4
  store ptr %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18, i32 1
  store ptr %4, ptr %14, align 4
  store volatile ptr %13, ptr %4, align 4
  %15 = call i32 @spi_sync(ptr noundef %6, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #6
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @axspi_read_reg(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.axspi_data, ptr %0, i32 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i32 4, i32 3
  %7 = getelementptr inbounds %struct.axspi_data, ptr %0, i32 0, i32 3
  store i8 3, ptr %7, align 4
  %8 = getelementptr %struct.axspi_data, ptr %0, i32 0, i32 3, i32 1
  store i8 %1, ptr %8, align 1
  %9 = getelementptr %struct.axspi_data, ptr %0, i32 0, i32 3, i32 2
  store i8 -1, ptr %9, align 2
  %10 = getelementptr %struct.axspi_data, ptr %0, i32 0, i32 3, i32 3
  store i8 -1, ptr %10, align 1
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.axspi_data, ptr %0, i32 0, i32 4
  %13 = tail call i32 @spi_write_then_read(ptr noundef %11, ptr noundef %7, i32 noundef %6, ptr noundef %12, i32 noundef 2) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.axspi_read_reg, i32 noundef %13) #7
  br label %19

17:                                               ; preds = %2
  %18 = load i16, ptr %12, align 2
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i16 [ -1, %15 ], [ %18, %17 ]
  ret i16 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @axspi_write_reg(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.spi_message, align 4
  %5 = alloca %struct.spi_transfer, align 4
  %6 = getelementptr inbounds %struct.axspi_data, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.axspi_data, ptr %0, i32 0, i32 3, i32 4
  store i16 0, ptr %7, align 4
  store i8 -40, ptr %6, align 4
  %8 = getelementptr %struct.axspi_data, ptr %0, i32 0, i32 3, i32 1
  store i8 %1, ptr %8, align 1
  %9 = trunc i16 %2 to i8
  %10 = getelementptr %struct.axspi_data, ptr %0, i32 0, i32 3, i32 2
  store i8 %9, ptr %10, align 2
  %11 = lshr i16 %2, 8
  %12 = trunc i16 %11 to i8
  %13 = getelementptr %struct.axspi_data, ptr %0, i32 0, i32 3, i32 3
  store i8 %12, ptr %13, align 1
  %14 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #6
  %15 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %15, i8 0, i64 92, i1 false) #6
  store ptr %6, ptr %5, align 4
  %16 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  store i32 4, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #6
  %17 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %17, i8 0, i64 40, i1 false) #6
  store volatile ptr %4, ptr %4, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %19 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18
  store ptr %21, ptr %18, align 4
  store ptr %4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18, i32 1
  store ptr %4, ptr %22, align 4
  store volatile ptr %21, ptr %4, align 4
  %23 = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.axspi_write_reg, i32 noundef %23) #7
  br label %27

27:                                               ; preds = %25, %3
  ret i32 %23
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
