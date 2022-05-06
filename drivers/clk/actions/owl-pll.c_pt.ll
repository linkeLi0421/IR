; ModuleID = '/llk/IR/drivers/clk/actions/owl-pll.c_pt.bc'
source_filename = "../drivers/clk/actions/owl-pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_pll_table = type { i32, i32 }

@owl_pll_ops = dso_local local_unnamed_addr constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @owl_pll_enable, ptr @owl_pll_disable, ptr @owl_pll_is_enabled, ptr null, ptr null, ptr null, ptr @owl_pll_recalc_rate, ptr @owl_pll_round_rate, ptr null, ptr null, ptr null, ptr @owl_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_pll_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = call i32 @regmap_read(ptr noundef %5, i32 noundef %6, ptr noundef nonnull %2) #5
  %8 = getelementptr i8, ptr %0, i32 -16
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 1, %10
  %12 = load i32, ptr %2, align 4
  %13 = or i32 %11, %12
  store i32 %13, ptr %2, align 4
  %14 = load ptr, ptr %4, align 4
  %15 = load i32, ptr %3, align 4
  %16 = call i32 @regmap_write(ptr noundef %14, i32 noundef %15, i32 noundef %13) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_pll_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = call i32 @regmap_read(ptr noundef %5, i32 noundef %6, ptr noundef nonnull %2) #5
  %8 = getelementptr i8, ptr %0, i32 -16
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 1, %10
  %12 = xor i32 %11, -1
  %13 = load i32, ptr %2, align 4
  %14 = and i32 %13, %12
  store i32 %14, ptr %2, align 4
  %15 = load ptr, ptr %4, align 4
  %16 = load i32, ptr %3, align 4
  %17 = call i32 @regmap_write(ptr noundef %15, i32 noundef %16, i32 noundef %14) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_pll_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = call i32 @regmap_read(ptr noundef %5, i32 noundef %6, ptr noundef nonnull %2) #5
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr i8, ptr %0, i32 -16
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = lshr i32 %8, %11
  %13 = and i32 %12, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -24
  %5 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr i8, ptr %0, i32 -8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 4
  %11 = load i32, ptr %4, align 4
  %12 = call i32 @regmap_read(ptr noundef %10, i32 noundef %11, ptr noundef nonnull %3) #5
  %13 = load i32, ptr %3, align 4
  %14 = getelementptr i8, ptr %0, i32 -15
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = lshr i32 %13, %16
  %18 = getelementptr i8, ptr %0, i32 -14
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i32
  %21 = shl nsw i32 -1, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %17, %22
  store i32 %23, ptr %3, align 4
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr inbounds %struct.clk_pll_table, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %64, label %28

28:                                               ; preds = %9
  %29 = load i32, ptr %24, align 4
  %30 = icmp eq i32 %29, %23
  br i1 %30, label %64, label %31

31:                                               ; preds = %36, %28
  %32 = phi ptr [ %37, %36 ], [ %24, %28 ]
  %33 = getelementptr %struct.clk_pll_table, ptr %32, i32 1, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %64, label %36

36:                                               ; preds = %31
  %37 = getelementptr %struct.clk_pll_table, ptr %32, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, %23
  br i1 %39, label %64, label %31

40:                                               ; preds = %2
  %41 = getelementptr i8, ptr %0, i32 -14
  %42 = load i8, ptr %41, align 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %0, i32 -20
  %46 = load i32, ptr %45, align 4
  br label %64

47:                                               ; preds = %40
  %48 = load ptr, ptr %5, align 4
  %49 = load i32, ptr %4, align 4
  %50 = call i32 @regmap_read(ptr noundef %48, i32 noundef %49, ptr noundef nonnull %3) #5
  %51 = load i32, ptr %3, align 4
  %52 = getelementptr i8, ptr %0, i32 -15
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = lshr i32 %51, %54
  %56 = load i8, ptr %41, align 2
  %57 = zext i8 %56 to i32
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = and i32 %55, %59
  %61 = getelementptr i8, ptr %0, i32 -20
  %62 = load i32, ptr %61, align 4
  %63 = mul i32 %60, %62
  br label %64

64:                                               ; preds = %47, %44, %36, %31, %28, %9
  %65 = phi i32 [ %46, %44 ], [ %63, %47 ], [ 0, %9 ], [ %26, %28 ], [ 0, %31 ], [ %34, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %65
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @owl_pll_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.clk_pll_table, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %53, label %11

11:                                               ; preds = %16, %7
  %12 = phi i32 [ %21, %16 ], [ %9, %7 ]
  %13 = phi ptr [ %19, %16 ], [ %5, %7 ]
  %14 = phi ptr [ %18, %16 ], [ %5, %7 ]
  %15 = icmp eq i32 %12, %1
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = icmp ult i32 %12, %1
  %18 = select i1 %17, ptr %13, ptr %14
  %19 = getelementptr %struct.clk_pll_table, ptr %13, i32 1
  %20 = getelementptr %struct.clk_pll_table, ptr %13, i32 1, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %11

23:                                               ; preds = %16, %11
  %24 = phi ptr [ %13, %11 ], [ %18, %16 ]
  %25 = getelementptr inbounds %struct.clk_pll_table, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  br label %53

27:                                               ; preds = %3
  %28 = getelementptr i8, ptr %0, i32 -14
  %29 = load i8, ptr %28, align 2
  %30 = icmp eq i8 %29, 0
  %31 = getelementptr i8, ptr %0, i32 -20
  %32 = load i32, ptr %31, align 4
  br i1 %30, label %53, label %33

33:                                               ; preds = %27
  %34 = lshr i32 %32, 1
  %35 = add i32 %34, %1
  %36 = udiv i32 %35, %32
  %37 = getelementptr i8, ptr %0, i32 -13
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = getelementptr i8, ptr %0, i32 -12
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = tail call i32 @llvm.umin.i32(i32 %36, i32 %44) #5
  br label %46

46:                                               ; preds = %41, %33
  %47 = phi i32 [ %39, %33 ], [ %45, %41 ]
  %48 = zext i8 %29 to i32
  %49 = shl nsw i32 -1, %48
  %50 = xor i32 %49, -1
  %51 = and i32 %47, %50
  %52 = mul i32 %51, %32
  br label %53

53:                                               ; preds = %46, %27, %23, %7
  %54 = phi i32 [ %52, %46 ], [ 0, %7 ], [ %26, %23 ], [ %32, %27 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_pll_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -24
  %6 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr i8, ptr %0, i32 -14
  %8 = load i8, ptr %7, align 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %76, label %10

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 -8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.clk_pll_table, ptr %12, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %23, %14
  %19 = phi i32 [ %28, %23 ], [ %16, %14 ]
  %20 = phi ptr [ %26, %23 ], [ %12, %14 ]
  %21 = phi ptr [ %25, %23 ], [ %12, %14 ]
  %22 = icmp eq i32 %19, %1
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = icmp ult i32 %19, %1
  %25 = select i1 %24, ptr %20, ptr %21
  %26 = getelementptr %struct.clk_pll_table, ptr %20, i32 1
  %27 = getelementptr %struct.clk_pll_table, ptr %20, i32 1, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %18

30:                                               ; preds = %23, %18, %14
  %31 = phi ptr [ %12, %14 ], [ %25, %23 ], [ %20, %18 ]
  %32 = load i32, ptr %31, align 4
  br label %54

33:                                               ; preds = %10
  %34 = getelementptr i8, ptr %0, i32 -20
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, 1
  %37 = add i32 %36, %1
  %38 = udiv i32 %37, %35
  %39 = getelementptr i8, ptr %0, i32 -13
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %33
  %44 = getelementptr i8, ptr %0, i32 -12
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i32
  %47 = tail call i32 @llvm.umin.i32(i32 %38, i32 %46) #5
  br label %48

48:                                               ; preds = %43, %33
  %49 = phi i32 [ %41, %33 ], [ %47, %43 ]
  %50 = zext i8 %8 to i32
  %51 = shl nsw i32 -1, %50
  %52 = xor i32 %51, -1
  %53 = and i32 %49, %52
  br label %54

54:                                               ; preds = %48, %30
  %55 = phi i32 [ %32, %30 ], [ %53, %48 ]
  %56 = load ptr, ptr %6, align 4
  %57 = load i32, ptr %5, align 4
  %58 = call i32 @regmap_read(ptr noundef %56, i32 noundef %57, ptr noundef nonnull %4) #5
  %59 = load i8, ptr %7, align 2
  %60 = zext i8 %59 to i32
  %61 = shl nsw i32 -1, %60
  %62 = load i32, ptr %4, align 4
  %63 = and i32 %61, %62
  %64 = getelementptr i8, ptr %0, i32 -15
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl i32 %55, %66
  %68 = or i32 %67, %63
  store i32 %68, ptr %4, align 4
  %69 = load ptr, ptr %6, align 4
  %70 = load i32, ptr %5, align 4
  %71 = call i32 @regmap_write(ptr noundef %69, i32 noundef %70, i32 noundef %68) #5
  %72 = getelementptr i8, ptr %0, i32 -11
  %73 = load i8, ptr %72, align 1
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %75 = zext i8 %73 to i32
  call void %74(i32 noundef %75) #5
  br label %76

76:                                               ; preds = %54, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
