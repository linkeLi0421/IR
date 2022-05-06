; ModuleID = '/llk/IR/drivers/clk/ti/dpll44xx.c_pt.bc'
source_filename = "../drivers/clk/ti/dpll44xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpll_data = type { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, i32, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@clkhwops_omap4_dpllmx = dso_local local_unnamed_addr constant %struct.clk_hw_omap_ops { ptr null, ptr null, ptr @omap4_dpllmx_allow_gatectrl, ptr @omap4_dpllmx_deny_gatectrl }, align 4
@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap4_dpllmx_allow_gatectrl(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr @ti_clk_ll_ops, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 7
  %11 = tail call i32 %9(ptr noundef %10) #2
  %12 = select i1 %7, i32 -257, i32 -1025
  %13 = and i32 %11, %12
  %14 = load ptr, ptr @ti_clk_ll_ops, align 4
  %15 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void %16(i32 noundef %13, ptr noundef %10) #2
  br label %17

17:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap4_dpllmx_deny_gatectrl(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 256, i32 1024
  %9 = load ptr, ptr @ti_clk_ll_ops, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 7
  %12 = tail call i32 %10(ptr noundef %11) #2
  %13 = or i32 %12, %8
  %14 = load ptr, ptr @ti_clk_ll_ops, align 4
  %15 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void %16(i32 noundef %13, ptr noundef %11) #2
  br label %17

17:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap4_dpll_regm4xen_recalc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @omap2_get_dpll_rate(ptr noundef nonnull %0) #2
  %10 = load ptr, ptr @ti_clk_ll_ops, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dpll_data, ptr %6, i32 0, i32 5
  %13 = tail call i32 %11(ptr noundef %12) #2
  %14 = and i32 %13, 2048
  %15 = icmp eq i32 %14, 0
  %16 = shl i32 %9, 2
  %17 = select i1 %15, i32 %9, i32 %16
  br label %18

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ %17, %8 ], [ 0, %4 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_get_dpll_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap4_dpll_regm4xen_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 9
  store i8 0, ptr %10, align 2
  %11 = tail call i32 @omap2_dpll_round_rate(ptr noundef nonnull %0, i32 noundef %1, ptr noundef null) #2
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = lshr i32 %1, 2
  %15 = tail call i32 @omap2_dpll_round_rate(ptr noundef nonnull %0, i32 noundef %14, ptr noundef null) #2
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %41, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 2
  store i32 %20, ptr %18, align 4
  store i8 1, ptr %10, align 2
  br label %21

21:                                               ; preds = %17, %9
  %22 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @clk_hw_get_rate(ptr noundef %23) #2
  %25 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 12
  %26 = load i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = add nuw nsw i32 %27, 1
  %29 = udiv i32 %24, %28
  %30 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 8
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = mul i32 %29, %32
  %34 = icmp slt i32 %29, 1000000
  %35 = icmp slt i32 %33, 100000000
  %36 = select i1 %34, i1 %35, i1 false
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 10
  store i8 %37, ptr %38, align 1
  %39 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %21, %13, %5, %3
  %42 = phi i32 [ %40, %21 ], [ -22, %5 ], [ -22, %3 ], [ -1, %13 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_dpll_round_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap4_dpll_regm4xen_determine_rate(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %66, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %66, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_hw_get_rate(ptr noundef %11) #2
  %13 = load i32, ptr %1, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 16
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 32
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %15, %9
  %21 = icmp eq ptr %0, null
  br i1 %21, label %57, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %6, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %57, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.dpll_data, ptr %23, i32 0, i32 9
  store i8 0, ptr %26, align 2
  %27 = tail call i32 @omap2_dpll_round_rate(ptr noundef nonnull %0, i32 noundef %13, ptr noundef null) #2
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = lshr i32 %13, 2
  %31 = tail call i32 @omap2_dpll_round_rate(ptr noundef nonnull %0, i32 noundef %30, ptr noundef null) #2
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %57, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.dpll_data, ptr %23, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 %35, 2
  store i32 %36, ptr %34, align 4
  store i8 1, ptr %26, align 2
  br label %37

37:                                               ; preds = %33, %25
  %38 = getelementptr inbounds %struct.dpll_data, ptr %23, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @clk_hw_get_rate(ptr noundef %39) #2
  %41 = getelementptr inbounds %struct.dpll_data, ptr %23, i32 0, i32 12
  %42 = load i8, ptr %41, align 2
  %43 = zext i8 %42 to i32
  %44 = add nuw nsw i32 %43, 1
  %45 = udiv i32 %40, %44
  %46 = getelementptr inbounds %struct.dpll_data, ptr %23, i32 0, i32 8
  %47 = load i16, ptr %46, align 4
  %48 = zext i16 %47 to i32
  %49 = mul i32 %45, %48
  %50 = icmp slt i32 %45, 1000000
  %51 = icmp slt i32 %49, 100000000
  %52 = select i1 %50, i1 %51, i1 false
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.dpll_data, ptr %23, i32 0, i32 10
  store i8 %53, ptr %54, align 1
  %55 = getelementptr inbounds %struct.dpll_data, ptr %23, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  br label %57

57:                                               ; preds = %37, %29, %22, %20
  %58 = phi i32 [ %56, %37 ], [ -22, %22 ], [ -22, %20 ], [ -1, %29 ]
  store i32 %58, ptr %1, align 4
  %59 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 4
  br label %60

60:                                               ; preds = %57, %15
  %61 = phi ptr [ %59, %57 ], [ %10, %15 ]
  %62 = phi i32 [ %58, %57 ], [ %12, %15 ]
  %63 = load ptr, ptr %61, align 4
  %64 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %62, ptr %65, align 4
  br label %66

66:                                               ; preds = %60, %5, %2
  %67 = phi i32 [ 0, %60 ], [ -22, %2 ], [ -22, %5 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
