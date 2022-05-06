; ModuleID = '/llk/IR/drivers/clk/tegra/clk-tegra-super-cclk.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra-super-cclk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.tegra_clk_super_mux = type { %struct.clk_hw, ptr, %struct.tegra_clk_frac_div, ptr, i8, i8, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.tegra_clk_frac_div = type { %struct.clk_hw, ptr, i8, i8, i8, i8, ptr }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@cclk_super = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [41 x i8] c"drivers/clk/tegra/clk-tegra-super-cclk.c\00", align 1
@tegra_cclk_super_mux_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cclk_super_determine_rate, ptr @cclk_super_set_parent, ptr @cclk_super_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_cclk_super_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cclk_super_recalc_rate, ptr null, ptr @cclk_super_determine_rate, ptr @cclk_super_set_parent, ptr @cclk_super_get_parent, ptr @cclk_super_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_clk_frac_div_ops = external dso_local constant %struct.clk_ops, align 4
@cclk_on_pllx = internal unnamed_addr global i1 false, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@cclk_super_determine_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra_clk_super_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@cclk_super_determine_rate.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_super_cclk(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #5
  %9 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 12, i1 false), !annotation !8
  %10 = load ptr, ptr @cclk_super, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !9

12:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 133, i32 noundef 9, ptr noundef null) #5
  br label %46

13:                                               ; preds = %7
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 52) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17

17:                                               ; preds = %13
  store ptr %0, ptr %8, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %15, i32 0, i32 1
  store ptr %4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %15, i32 0, i32 8
  store ptr %6, ptr %22, align 8
  %23 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %15, i32 0, i32 4
  store i8 4, ptr %23, align 4
  %24 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %15, i32 0, i32 5
  store i8 %5, ptr %24, align 1
  %25 = getelementptr inbounds %struct.clk_hw, ptr %15, i32 0, i32 2
  store ptr %8, ptr %25, align 8
  %26 = and i8 %5, 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %17
  %29 = getelementptr i8, ptr %4, i32 4
  %30 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %15, i32 0, i32 2, i32 1
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %15, i32 0, i32 2, i32 3
  store i8 16, ptr %31, align 1
  %32 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %15, i32 0, i32 2, i32 4
  store i8 8, ptr %32, align 2
  %33 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %15, i32 0, i32 2, i32 5
  store i8 1, ptr %33, align 1
  %34 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %15, i32 0, i32 2, i32 6
  store ptr %6, ptr %34, align 4
  %35 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %15, i32 0, i32 3
  store ptr @tegra_clk_frac_div_ops, ptr %35, align 8
  br label %36

36:                                               ; preds = %28, %17
  %37 = phi ptr [ @tegra_cclk_super_ops, %28 ], [ @tegra_cclk_super_mux_ops, %17 ]
  %38 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr i8, ptr %4, i32 4
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !10
  %41 = and i32 %40, 2147483647
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %41) #5, !srcloc !11
  %42 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %15) #5
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  call void @kfree(ptr noundef nonnull %15) #5
  br label %46

45:                                               ; preds = %36
  store ptr %15, ptr @cclk_super, align 4
  br label %46

46:                                               ; preds = %45, %44, %13, %12
  %47 = phi ptr [ inttoptr (i32 -16 to ptr), %12 ], [ %42, %45 ], [ %42, %44 ], [ inttoptr (i32 -12 to ptr), %13 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #5
  ret ptr %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_cclk_pre_pllx_rate_change() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cclk_super, align 4
  %2 = icmp eq ptr %1, null
  %3 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %13, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 14), align 4
  %7 = tail call zeroext i8 %6(ptr noundef nonnull %1) #5
  %8 = icmp eq i8 %7, 8
  store i1 %8, ptr @cclk_on_pllx, align 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load ptr, ptr @cclk_super, align 4
  %11 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 13), align 4
  %12 = tail call i32 %11(ptr noundef %10, i8 noundef zeroext 4) #5
  br label %13

13:                                               ; preds = %9, %5, %0
  %14 = phi i32 [ -22, %0 ], [ 0, %9 ], [ 0, %5 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @cclk_super_get_parent(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 14), align 4
  %3 = tail call zeroext i8 %2(ptr noundef %0) #5
  ret i8 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cclk_super_set_parent(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 13), align 4
  %4 = tail call i32 %3(ptr noundef %0, i8 noundef zeroext %1) #5
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_cclk_post_pllx_rate_change() local_unnamed_addr #0 {
  %1 = load i1, ptr @cclk_on_pllx, align 1
  br i1 %1, label %2, label %6

2:                                                ; preds = %0
  %3 = load ptr, ptr @cclk_super, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 13), align 4
  %5 = tail call i32 %4(ptr noundef %3, i8 noundef zeroext 8) #5
  br label %6

6:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cclk_super_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef 4) #5
  %5 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef 8) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  %6 = load i32, ptr %1, align 4
  %7 = icmp eq ptr %4, null
  %8 = icmp eq ptr %5, null
  %9 = select i1 %7, i1 true, i1 %8
  %10 = load i1, ptr @cclk_super_determine_rate.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !12

13:                                               ; preds = %2
  store i1 true, ptr @cclk_super_determine_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef null) #5
  br label %14

14:                                               ; preds = %13, %2
  br i1 %9, label %42, label %15

15:                                               ; preds = %14
  %16 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %4) #5
  store i32 %16, ptr %3, align 4
  %17 = icmp ugt i32 %6, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 5
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 11), align 4
  %25 = call i32 %24(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %3) #5
  %26 = load i32, ptr %3, align 4
  br label %29

27:                                               ; preds = %15
  %28 = tail call i32 @clk_hw_round_rate(ptr noundef nonnull %5, i32 noundef %6) #5
  br label %29

29:                                               ; preds = %27, %23, %18
  %30 = phi i32 [ %28, %27 ], [ %26, %23 ], [ %16, %18 ]
  %31 = phi ptr [ %5, %27 ], [ %4, %23 ], [ %4, %18 ]
  %32 = phi i32 [ %28, %27 ], [ %25, %23 ], [ %16, %18 ]
  %33 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %30, ptr %33, align 4
  %34 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %31, ptr %34, align 4
  store i32 %32, ptr %1, align 4
  %35 = icmp slt i32 %32, 1
  %36 = load i1, ptr @cclk_super_determine_rate.__already_done.1, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !12

39:                                               ; preds = %29
  store i1 true, ptr @cclk_super_determine_rate.__already_done.1, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 9, ptr noundef null) #5
  br label %40

40:                                               ; preds = %39, %29
  %41 = select i1 %35, i32 -22, i32 0
  br label %42

42:                                               ; preds = %40, %14
  %43 = phi i32 [ -22, %14 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cclk_super_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_clk_super_mux, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !10
  %6 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 14), align 4
  %7 = tail call zeroext i8 %6(ptr noundef %0) #5
  %8 = icmp eq i8 %7, 8
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 10), align 4
  %11 = tail call i32 %10(ptr noundef %0, i32 noundef %1) #5
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i32 [ %11, %9 ], [ %1, %2 ]
  %14 = lshr i32 %5, 23
  %15 = and i32 %14, 1
  %16 = lshr i32 %13, %15
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cclk_super_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @tegra_clk_super_ops, i32 0, i32 15), align 4
  %5 = tail call i32 %4(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5
  ret i32 %5
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2846552}
!11 = !{i64 2846134}
!12 = !{!"branch_weights", i32 1, i32 2000}
