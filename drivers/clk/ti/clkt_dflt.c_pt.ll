; ModuleID = '/llk/IR/drivers/clk/ti/clkt_dflt.c_pt.bc'
source_filename = "../drivers/clk/ti/clkt_dflt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.ti_clk_features = type { i32, i32, i32, i32, i32, i8, i8 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [27 x i8] c"drivers/clk/ti/clkt_dflt.c\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: could not enable %s's clockdomain %s: %d\0A\00", align 1
@__func__.omap2_dflt_clk_enable = private unnamed_addr constant [22 x i8] c"omap2_dflt_clk_enable\00", align 1
@clkhwops_wait = dso_local local_unnamed_addr constant %struct.clk_hw_omap_ops { ptr @omap2_clk_dflt_find_idlest, ptr @omap2_clk_dflt_find_companion, ptr null, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"\013omap clock: module associated with clock %s didn't enable in %d tries\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @omap2_clk_dflt_find_companion(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 4
  %5 = load i64, ptr %4, align 4
  store i64 %5, ptr %1, align 4
  %6 = getelementptr inbounds %struct.clk_omap_reg, ptr %1, i32 0, i32 1
  %7 = lshr i64 %5, 32
  %8 = trunc i64 %7 to i16
  %9 = xor i16 %8, 16
  store i16 %9, ptr %6, align 4
  %10 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 5
  %11 = load i8, ptr %10, align 4
  store i8 %11, ptr %2, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap2_clk_dflt_find_idlest(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 4
  %6 = load i64, ptr %5, align 4
  store i64 %6, ptr %1, align 4
  %7 = getelementptr inbounds %struct.clk_omap_reg, ptr %1, i32 0, i32 1
  %8 = lshr i64 %6, 32
  %9 = trunc i64 %8 to i16
  %10 = and i16 %9, -241
  %11 = or i16 %10, 32
  store i16 %11, ptr %7, align 4
  %12 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 5
  %13 = load i8, ptr %12, align 4
  store i8 %13, ptr %2, align 1
  %14 = tail call ptr @ti_clk_get_features() #5
  %15 = getelementptr inbounds %struct.ti_clk_features, ptr %14, i32 0, i32 6
  %16 = load i8, ptr %15, align 1
  store i8 %16, ptr %3, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_get_features() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_dflt_clk_enable(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.clk_omap_reg, align 8
  %3 = alloca %struct.clk_omap_reg, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = tail call ptr @ti_clk_get_features() #5
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @ti_clk_ll_ops, align 4
  %19 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %20(ptr noundef nonnull %15, ptr noundef %22) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = tail call ptr @clk_hw_get_name(ptr noundef %0) #5
  %27 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap2_dflt_clk_enable, ptr noundef %26, ptr noundef %28, i32 noundef %23) #5
  br label %112

29:                                               ; preds = %17, %13, %1
  %30 = load ptr, ptr @ti_clk_ll_ops, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 4
  %33 = tail call i32 %31(ptr noundef %32) #5
  %34 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 16
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 5
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = shl nuw i32 1, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %33, %42
  %44 = or i32 %41, %33
  %45 = select i1 %37, i32 %44, i32 %43
  %46 = load ptr, ptr @ti_clk_ll_ops, align 4
  %47 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void %48(i32 noundef %45, ptr noundef %32) #5
  %49 = load ptr, ptr @ti_clk_ll_ops, align 4
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 %50(ptr noundef %32) #5
  %52 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 11
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %112, label %55

55:                                               ; preds = %29
  %56 = load ptr, ptr %53, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %112, label %58

58:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  store i64 0, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #5
  store i16 0, ptr %8, align 2, !annotation !8
  %59 = getelementptr inbounds %struct.clk_hw_omap_ops, ptr %53, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  call void %60(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %4) #5
  %63 = load ptr, ptr @ti_clk_ll_ops, align 4
  %64 = load ptr, ptr %63, align 4
  %65 = call i32 %64(ptr noundef nonnull %2) #5
  %66 = load i8, ptr %4, align 1
  %67 = zext i8 %66 to i32
  %68 = shl nuw i32 1, %67
  %69 = and i32 %68, %65
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %111, label %71

71:                                               ; preds = %62
  %72 = load ptr, ptr %52, align 4
  br label %73

73:                                               ; preds = %71, %58
  %74 = phi ptr [ %72, %71 ], [ %53, %58 ]
  %75 = load ptr, ptr %74, align 4
  call void %75(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #5
  %76 = load ptr, ptr @ti_clk_ll_ops, align 4
  %77 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %76, i32 0, i32 7
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 %78(ptr noundef nonnull %3, ptr noundef nonnull %8, ptr noundef nonnull %7) #5
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %102, label %81

81:                                               ; preds = %73
  %82 = load i8, ptr %5, align 1
  %83 = zext i8 %82 to i32
  %84 = shl nuw i32 1, %83
  %85 = load i8, ptr %6, align 1
  %86 = call ptr @clk_hw_get_name(ptr noundef %0) #5
  %87 = icmp eq i8 %85, 0
  %88 = select i1 %87, i32 %84, i32 0
  br label %89

89:                                               ; preds = %96, %81
  %90 = phi i32 [ 0, %81 ], [ %98, %96 ]
  %91 = load ptr, ptr @ti_clk_ll_ops, align 4
  %92 = load ptr, ptr %91, align 4
  %93 = call i32 %92(ptr noundef nonnull %3) #5
  %94 = and i32 %93, %84
  %95 = icmp eq i32 %94, %88
  br i1 %95, label %111, label %96

96:                                               ; preds = %89
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %97(i32 noundef 214748) #5
  %98 = add nuw nsw i32 %90, 1
  %99 = icmp eq i32 %98, 100000
  br i1 %99, label %100, label %89

100:                                              ; preds = %96
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %86, i32 noundef 100000) #6
  br label %111

102:                                              ; preds = %73
  %103 = load ptr, ptr @ti_clk_ll_ops, align 4
  %104 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %103, i32 0, i32 6
  %105 = load ptr, ptr %104, align 4
  %106 = load i16, ptr %8, align 2
  %107 = load i8, ptr %7, align 1
  %108 = zext i8 %107 to i16
  %109 = load i8, ptr %5, align 1
  %110 = call i32 %105(i8 noundef zeroext 0, i16 noundef signext %106, i16 noundef zeroext %108, i8 noundef zeroext %109) #5
  br label %111

111:                                              ; preds = %102, %100, %89, %62
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  br label %112

112:                                              ; preds = %111, %55, %29, %25
  %113 = phi i32 [ %23, %25 ], [ 0, %111 ], [ 0, %55 ], [ 0, %29 ]
  ret i32 %113
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap2_dflt_clk_disable(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 4
  %5 = tail call i32 %3(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 5
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 1, %12
  %14 = or i32 %13, %5
  %15 = xor i32 %13, -1
  %16 = and i32 %5, %15
  %17 = select i1 %9, i32 %16, i32 %14
  %18 = load ptr, ptr @ti_clk_ll_ops, align 4
  %19 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void %20(i32 noundef %17, ptr noundef %4) #5
  %21 = tail call ptr @ti_clk_get_features() #5
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @ti_clk_ll_ops, align 4
  %31 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %30, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %32(ptr noundef nonnull %27, ptr noundef %34) #5
  br label %36

36:                                               ; preds = %29, %25, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_dflt_clk_is_enabled(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 4
  %5 = tail call i32 %3(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 5
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 1, %12
  %14 = select i1 %9, i32 0, i32 %13
  %15 = xor i32 %5, %14
  %16 = lshr i32 %15, %12
  %17 = and i32 %16, 1
  ret i32 %17
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
