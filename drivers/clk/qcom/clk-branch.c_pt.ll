; ModuleID = '/llk/IR/drivers/clk/qcom/clk-branch.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-branch.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_branch_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_branch_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_branch_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_branch2_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_branch2_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_branch2_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_branch2_aon_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_branch2_aon_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_branch2_aon_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_branch_simple_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_branch_simple_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_branch_simple_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_branch_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_branch_enable, ptr @clk_branch_disable, ptr @clk_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_branch_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_branch_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_branch_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_branch_ops to i32), ptr @__kstrtab_clk_branch_ops, ptr @__kstrtabns_clk_branch_ops }, section "___ksymtab_gpl+clk_branch_ops", align 4
@clk_branch2_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_branch2_enable, ptr @clk_branch2_disable, ptr @clk_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_branch2_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_branch2_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_branch2_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_branch2_ops to i32), ptr @__kstrtab_clk_branch2_ops, ptr @__kstrtabns_clk_branch2_ops }, section "___ksymtab_gpl+clk_branch2_ops", align 4
@clk_branch2_aon_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_branch2_enable, ptr null, ptr @clk_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_branch2_aon_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_branch2_aon_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_branch2_aon_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_branch2_aon_ops to i32), ptr @__kstrtab_clk_branch2_aon_ops, ptr @__kstrtabns_clk_branch2_aon_ops }, section "___ksymtab_gpl+clk_branch2_aon_ops", align 4
@clk_branch_simple_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_enable_regmap, ptr @clk_disable_regmap, ptr @clk_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_branch_simple_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_branch_simple_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_branch_simple_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_branch_simple_ops to i32), ptr @__kstrtab_clk_branch_simple_ops, ptr @__kstrtabns_clk_branch_simple_ops }, section "___ksymtab_gpl+clk_branch_simple_ops", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [30 x i8] c"drivers/clk/qcom/clk-branch.c\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s status stuck at 'o%s'\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_clk_branch2_aon_ops, ptr @__ksymtab_clk_branch2_ops, ptr @__ksymtab_clk_branch_ops, ptr @__ksymtab_clk_branch_simple_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_branch_enable(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @clk_branch_toggle(ptr noundef %0, i1 noundef zeroext true, ptr noundef nonnull @clk_branch_check_halt)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_branch_disable(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @clk_branch_toggle(ptr noundef %0, i1 noundef zeroext false, ptr noundef nonnull @clk_branch_check_halt)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_branch2_enable(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @clk_branch_toggle(ptr noundef %0, i1 noundef zeroext true, ptr noundef nonnull @clk_branch2_check_halt)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_branch2_disable(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @clk_branch_toggle(ptr noundef %0, i1 noundef zeroext false, ptr noundef nonnull @clk_branch2_check_halt)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_branch_toggle(ptr noundef %0, i1 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -12
  br i1 %1, label %6, label %9

6:                                                ; preds = %3
  %7 = tail call i32 @clk_enable_regmap(ptr noundef %0) #3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %55

9:                                                ; preds = %3
  tail call void @clk_disable_regmap(ptr noundef %0) #3
  br label %10

10:                                               ; preds = %9, %6
  %11 = getelementptr i8, ptr %0, i32 -2
  %12 = load i8, ptr %11, align 2
  %13 = icmp sgt i8 %12, -1
  %14 = tail call ptr @clk_hw_get_name(ptr noundef %0) #3
  %15 = load i8, ptr %11, align 2
  %16 = icmp eq i8 %15, 3
  br i1 %16, label %55, label %17

17:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 0, ptr %4, align 4, !annotation !8
  %18 = load i32, ptr %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  br label %34

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %0, i32 12
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @regmap_read(ptr noundef %23, i32 noundef %18, ptr noundef nonnull %4) #3
  %25 = load i32, ptr %4, align 4
  %26 = getelementptr i8, ptr %0, i32 -4
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %25
  %31 = icmp eq i32 %30, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  br i1 %31, label %32, label %55

32:                                               ; preds = %21
  %33 = load i8, ptr %11, align 2
  br label %34

34:                                               ; preds = %32, %20
  %35 = phi i8 [ %33, %32 ], [ %15, %20 ]
  %36 = icmp ne i8 %35, 2
  %37 = select i1 %1, i1 true, i1 %13
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 2147480) #3
  br label %55

41:                                               ; preds = %34
  %42 = icmp ugt i8 %35, 1
  %43 = xor i1 %1, true
  %44 = select i1 %43, i1 true, i1 %13
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %55, label %46

46:                                               ; preds = %49, %41
  %47 = phi i32 [ %51, %49 ], [ 199, %41 ]
  %48 = call zeroext i1 %2(ptr noundef %5, i1 noundef zeroext %1) #3, !callees !9
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748) #3
  %51 = add nsw i32 %47, -1
  %52 = icmp eq i32 %47, 0
  br i1 %52, label %53, label %46

53:                                               ; preds = %49
  %54 = select i1 %1, ptr @.str.2, ptr @.str.3
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 92, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %14, ptr noundef nonnull %54) #3
  br label %55

55:                                               ; preds = %53, %46, %41, %39, %21, %10, %6
  %56 = phi i32 [ %7, %6 ], [ 0, %21 ], [ 0, %10 ], [ -16, %53 ], [ 0, %39 ], [ 0, %41 ], [ 0, %46 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @clk_branch_check_halt(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.clk_branch, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.clk_branch, ptr %0, i32 0, i32 5, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_branch, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %3) #3
  %12 = getelementptr inbounds %struct.clk_branch, ptr %0, i32 0, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 1, %14
  %16 = load i32, ptr %3, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  %19 = icmp ne i32 %17, 0
  %20 = select i1 %6, i1 %18, i1 %19
  %21 = xor i1 %20, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  ret i1 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @clk_branch2_check_halt(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.clk_branch, ptr %0, i32 0, i32 5, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_branch, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %3) #3
  %9 = load i32, ptr %3, align 4
  br i1 %1, label %10, label %15

10:                                               ; preds = %2
  %11 = and i32 %9, -268435456
  %12 = icmp sgt i32 %9, -1
  %13 = icmp eq i32 %11, 536870912
  %14 = or i1 %12, %13
  br label %17

15:                                               ; preds = %2
  %16 = icmp slt i32 %9, 0
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi i1 [ %14, %10 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  ret i1 %18
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!9 = !{ptr @clk_branch2_check_halt, ptr @clk_branch_check_halt}
