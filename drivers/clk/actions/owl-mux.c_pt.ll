; ModuleID = '/llk/IR/drivers/clk/actions/owl-mux.c_pt.bc'
source_filename = "../drivers/clk/actions/owl-mux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.owl_mux_hw = type { i32, i8, i8 }

@owl_mux_ops = dso_local local_unnamed_addr constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate, ptr @owl_mux_set_parent, ptr @owl_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @owl_mux_helper_get_parent(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = load ptr, ptr %0, align 4
  %5 = load i32, ptr %1, align 4
  %6 = call i32 @regmap_read(ptr noundef %4, i32 noundef %5, ptr noundef nonnull %3) #3
  %7 = load i32, ptr %3, align 4
  %8 = getelementptr inbounds %struct.owl_mux_hw, ptr %1, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = lshr i32 %7, %10
  %12 = getelementptr inbounds %struct.owl_mux_hw, ptr %1, i32 0, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nsw i32 -1, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %11, %16
  %18 = trunc i32 %17 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  ret i8 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @owl_mux_helper_set_parent(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = load ptr, ptr %0, align 4
  %6 = load i32, ptr %1, align 4
  %7 = call i32 @regmap_read(ptr noundef %5, i32 noundef %6, ptr noundef nonnull %4) #3
  %8 = getelementptr inbounds %struct.owl_mux_hw, ptr %1, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = shl nsw i32 -1, %10
  %12 = getelementptr inbounds %struct.owl_mux_hw, ptr %1, i32 0, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = add nuw nsw i32 %10, %14
  %16 = sub nsw i32 32, %15
  %17 = lshr i32 -1, %16
  %18 = and i32 %17, %11
  %19 = xor i32 %18, -1
  %20 = load i32, ptr %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, ptr %4, align 4
  %22 = load ptr, ptr %0, align 4
  %23 = load i32, ptr %1, align 4
  %24 = zext i8 %2 to i32
  %25 = shl i32 %24, %10
  %26 = or i32 %21, %25
  %27 = call i32 @regmap_write(ptr noundef %22, i32 noundef %23, i32 noundef %26) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_mux_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = call i32 @regmap_read(ptr noundef %6, i32 noundef %7, ptr noundef nonnull %3) #3
  %9 = getelementptr i8, ptr %0, i32 -8
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = shl nsw i32 -1, %11
  %13 = getelementptr i8, ptr %0, i32 -7
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %11, %15
  %17 = sub nsw i32 32, %16
  %18 = lshr i32 -1, %17
  %19 = and i32 %18, %12
  %20 = xor i32 %19, -1
  %21 = load i32, ptr %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, ptr %3, align 4
  %23 = load ptr, ptr %5, align 4
  %24 = load i32, ptr %4, align 4
  %25 = zext i8 %1 to i32
  %26 = shl i32 %25, %11
  %27 = or i32 %22, %26
  %28 = call i32 @regmap_write(ptr noundef %23, i32 noundef %24, i32 noundef %27) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @owl_mux_get_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = call i32 @regmap_read(ptr noundef %5, i32 noundef %6, ptr noundef nonnull %2) #3
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr i8, ptr %0, i32 -8
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = lshr i32 %8, %11
  %13 = getelementptr i8, ptr %0, i32 -7
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nsw i32 -1, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %12, %17
  %19 = trunc i32 %18 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret i8 %19
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
