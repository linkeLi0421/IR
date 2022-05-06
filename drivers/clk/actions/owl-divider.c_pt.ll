; ModuleID = '/llk/IR/drivers/clk/actions/owl-divider.c_pt.bc'
source_filename = "../drivers/clk/actions/owl-divider.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.owl_clk_common = type { ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.owl_divider_hw = type { i32, i8, i8, i8, ptr }

@owl_divider_ops = dso_local local_unnamed_addr constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @owl_divider_recalc_rate, ptr @owl_divider_round_rate, ptr null, ptr null, ptr null, ptr @owl_divider_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @owl_divider_helper_round_rate(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.owl_clk_common, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.owl_divider_hw, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.owl_divider_hw, ptr %1, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.owl_divider_hw, ptr %1, i32 0, i32 3
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = tail call ptr @clk_hw_get_parent(ptr noundef %5) #3
  %14 = tail call i32 @divider_round_rate_parent(ptr noundef %5, ptr noundef %13, i32 noundef %2, ptr noundef %3, ptr noundef %7, i8 noundef zeroext %9, i32 noundef %12) #3
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @owl_divider_helper_recalc_rate(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = load ptr, ptr %0, align 4
  %6 = load i32, ptr %1, align 4
  %7 = call i32 @regmap_read(ptr noundef %5, i32 noundef %6, ptr noundef nonnull %4) #3
  %8 = load i32, ptr %4, align 4
  %9 = getelementptr inbounds %struct.owl_divider_hw, ptr %1, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = lshr i32 %8, %11
  %13 = getelementptr inbounds %struct.owl_divider_hw, ptr %1, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nsw i32 -1, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %12, %17
  %19 = getelementptr inbounds %struct.owl_clk_common, ptr %0, i32 0, i32 1
  %20 = getelementptr inbounds %struct.owl_divider_hw, ptr %1, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.owl_divider_hw, ptr %1, i32 0, i32 3
  %23 = load i8, ptr %22, align 2
  %24 = zext i8 %23 to i32
  %25 = call i32 @divider_recalc_rate(ptr noundef %19, i32 noundef %2, i32 noundef %18, ptr noundef %21, i32 noundef %24, i32 noundef %15) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @owl_divider_helper_set_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.owl_divider_hw, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.owl_divider_hw, ptr %1, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = tail call i32 @divider_get_val(i32 noundef %2, i32 noundef %3, ptr noundef %7, i8 noundef zeroext %9, i32 noundef 0) #3
  %11 = load ptr, ptr %0, align 4
  %12 = load i32, ptr %1, align 4
  %13 = call i32 @regmap_read(ptr noundef %11, i32 noundef %12, ptr noundef nonnull %5) #3
  %14 = getelementptr inbounds %struct.owl_divider_hw, ptr %1, i32 0, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = shl nsw i32 -1, %16
  %18 = load i8, ptr %8, align 1
  %19 = zext i8 %18 to i32
  %20 = add nuw nsw i32 %16, %19
  %21 = sub nsw i32 32, %20
  %22 = lshr i32 -1, %21
  %23 = and i32 %22, %17
  %24 = xor i32 %23, -1
  %25 = load i32, ptr %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, ptr %5, align 4
  %27 = load ptr, ptr %0, align 4
  %28 = load i32, ptr %1, align 4
  %29 = shl i32 %10, %16
  %30 = or i32 %26, %29
  %31 = call i32 @regmap_write(ptr noundef %27, i32 noundef %28, i32 noundef %30) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_divider_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = call i32 @regmap_read(ptr noundef %6, i32 noundef %7, ptr noundef nonnull %3) #3
  %9 = load i32, ptr %3, align 4
  %10 = getelementptr i8, ptr %0, i32 -12
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = lshr i32 %9, %12
  %14 = getelementptr i8, ptr %0, i32 -11
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nsw i32 -1, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %13, %18
  %20 = getelementptr i8, ptr %0, i32 -8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %0, i32 -10
  %23 = load i8, ptr %22, align 2
  %24 = zext i8 %23 to i32
  %25 = call i32 @divider_recalc_rate(ptr noundef %0, i32 noundef %1, i32 noundef %19, ptr noundef %21, i32 noundef %24, i32 noundef %16) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_divider_round_rate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -11
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr i8, ptr %0, i32 -10
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #3
  %12 = tail call i32 @divider_round_rate_parent(ptr noundef %0, ptr noundef %11, i32 noundef %1, ptr noundef %2, ptr noundef %5, i8 noundef zeroext %7, i32 noundef %10) #3
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_divider_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -11
  %10 = load i8, ptr %9, align 1
  %11 = tail call i32 @divider_get_val(i32 noundef %1, i32 noundef %2, ptr noundef %8, i8 noundef zeroext %10, i32 noundef 0) #3
  %12 = load ptr, ptr %6, align 4
  %13 = load i32, ptr %5, align 4
  %14 = call i32 @regmap_read(ptr noundef %12, i32 noundef %13, ptr noundef nonnull %4) #3
  %15 = getelementptr i8, ptr %0, i32 -12
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = shl nsw i32 -1, %17
  %19 = load i8, ptr %9, align 1
  %20 = zext i8 %19 to i32
  %21 = add nuw nsw i32 %17, %20
  %22 = sub nsw i32 32, %21
  %23 = lshr i32 -1, %22
  %24 = and i32 %23, %18
  %25 = xor i32 %24, -1
  %26 = load i32, ptr %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, ptr %4, align 4
  %28 = load ptr, ptr %6, align 4
  %29 = load i32, ptr %5, align 4
  %30 = shl i32 %11, %17
  %31 = or i32 %27, %30
  %32 = call i32 @regmap_write(ptr noundef %28, i32 noundef %29, i32 noundef %31) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

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
