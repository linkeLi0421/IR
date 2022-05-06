; ModuleID = '/llk/IR/drivers/clk/actions/owl-gate.c_pt.bc'
source_filename = "../drivers/clk/actions/owl-gate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.owl_gate_hw = type { i32, i8, i8 }

@owl_gate_ops = dso_local local_unnamed_addr constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @owl_gate_enable, ptr @owl_gate_disable, ptr @owl_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @owl_gate_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.owl_gate_hw, ptr %1, i32 0, i32 2
  %6 = load i8, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = load ptr, ptr %0, align 4
  %8 = load i32, ptr %1, align 4
  %9 = call i32 @regmap_read(ptr noundef %7, i32 noundef %8, ptr noundef nonnull %4) #3
  %10 = and i8 %6, 1
  %11 = icmp eq i8 %10, 0
  %12 = xor i1 %11, %2
  %13 = getelementptr inbounds %struct.owl_gate_hw, ptr %1, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 1, %15
  br i1 %12, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, ptr %4, align 4
  %19 = or i32 %16, %18
  br label %24

20:                                               ; preds = %3
  %21 = xor i32 %16, -1
  %22 = load i32, ptr %4, align 4
  %23 = and i32 %22, %21
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %23, %20 ], [ %19, %17 ]
  store i32 %25, ptr %4, align 4
  %26 = load ptr, ptr %0, align 4
  %27 = load i32, ptr %1, align 4
  %28 = call i32 @regmap_write(ptr noundef %26, i32 noundef %27, i32 noundef %25) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @owl_gate_clk_is_enabled(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = load ptr, ptr %0, align 4
  %5 = load i32, ptr %1, align 4
  %6 = call i32 @regmap_read(ptr noundef %4, i32 noundef %5, ptr noundef nonnull %3) #3
  %7 = getelementptr inbounds %struct.owl_gate_hw, ptr %1, i32 0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 4
  %13 = getelementptr inbounds %struct.owl_gate_hw, ptr %1, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  br label %23

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.owl_gate_hw, ptr %1, i32 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 1, %19
  %21 = load i32, ptr %3, align 4
  %22 = xor i32 %20, %21
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i32 [ %15, %11 ], [ %19, %16 ]
  %25 = phi i32 [ %12, %11 ], [ %22, %16 ]
  %26 = lshr i32 %25, %24
  %27 = and i32 %26, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_gate_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = getelementptr i8, ptr %0, i32 -7
  %6 = load i8, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = load ptr, ptr %4, align 4
  %8 = load i32, ptr %3, align 4
  %9 = call i32 @regmap_read(ptr noundef %7, i32 noundef %8, ptr noundef nonnull %2) #3
  %10 = and i8 %6, 1
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr i8, ptr %0, i32 -8
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 1, %14
  br i1 %11, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, ptr %2, align 4
  %18 = or i32 %17, %15
  br label %23

19:                                               ; preds = %1
  %20 = xor i32 %15, -1
  %21 = load i32, ptr %2, align 4
  %22 = and i32 %21, %20
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ %22, %19 ], [ %18, %16 ]
  store i32 %24, ptr %2, align 4
  %25 = load ptr, ptr %4, align 4
  %26 = load i32, ptr %3, align 4
  %27 = call i32 @regmap_write(ptr noundef %25, i32 noundef %26, i32 noundef %24) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_gate_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = getelementptr i8, ptr %0, i32 -7
  %6 = load i8, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = load ptr, ptr %4, align 4
  %8 = load i32, ptr %3, align 4
  %9 = call i32 @regmap_read(ptr noundef %7, i32 noundef %8, ptr noundef nonnull %2) #3
  %10 = and i8 %6, 1
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr i8, ptr %0, i32 -8
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 1, %14
  br i1 %11, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, ptr %2, align 4
  %18 = or i32 %17, %15
  br label %23

19:                                               ; preds = %1
  %20 = xor i32 %15, -1
  %21 = load i32, ptr %2, align 4
  %22 = and i32 %21, %20
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ %22, %19 ], [ %18, %16 ]
  store i32 %24, ptr %2, align 4
  %25 = load ptr, ptr %4, align 4
  %26 = load i32, ptr %3, align 4
  %27 = call i32 @regmap_write(ptr noundef %25, i32 noundef %26, i32 noundef %24) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_gate_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = call i32 @regmap_read(ptr noundef %5, i32 noundef %6, ptr noundef nonnull %2) #3
  %8 = getelementptr i8, ptr %0, i32 -7
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, ptr %2, align 4
  %14 = getelementptr i8, ptr %0, i32 -8
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  br label %24

17:                                               ; preds = %1
  %18 = getelementptr i8, ptr %0, i32 -8
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 1, %20
  %22 = load i32, ptr %2, align 4
  %23 = xor i32 %21, %22
  br label %24

24:                                               ; preds = %17, %12
  %25 = phi i32 [ %16, %12 ], [ %20, %17 ]
  %26 = phi i32 [ %13, %12 ], [ %23, %17 ]
  %27 = lshr i32 %26, %25
  %28 = and i32 %27, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret i32 %28
}

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
!8 = !{!"auto-init"}
