; ModuleID = '/llk/IR/drivers/clk/tegra/clk-tegra-fixed.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra-fixed.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@osc_ctrl_ctx = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"drivers/clk/tegra/clk-tegra-fixed.c\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"osc\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"osc_div2\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"osc_div4\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"clk_m\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pll_ref\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"clk_32k\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @tegra_osc_clk_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5, ptr noundef writeonly %6) local_unnamed_addr #0 section ".init.text" {
  %8 = getelementptr i8, ptr %0, i32 80
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !8
  %10 = and i32 %9, -268434446
  store i32 %10, ptr @osc_ctrl_ctx, align 4
  %11 = lshr i32 %9, 28
  %12 = icmp ult i32 %11, %3
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  store i32 0, ptr %5, align 4
  br label %18

14:                                               ; preds = %7
  %15 = getelementptr i32, ptr %2, i32 %11
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef null) #3
  br label %50

19:                                               ; preds = %14
  %20 = tail call ptr @tegra_lookup_dt_id(i32 noundef 37, ptr noundef %1) #3
  %21 = icmp eq ptr %20, null
  br i1 %21, label %50, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %5, align 4
  %24 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef %23) #3
  store ptr %24, ptr %20, align 4
  %25 = tail call ptr @tegra_lookup_dt_id(i32 noundef 38, ptr noundef %1) #3
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 1, i32 noundef 2) #3
  store ptr %28, ptr %25, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = tail call ptr @tegra_lookup_dt_id(i32 noundef 39, ptr noundef %1) #3
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 1, i32 noundef 4) #3
  store ptr %33, ptr %30, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = tail call ptr @tegra_lookup_dt_id(i32 noundef 36, ptr noundef %1) #3
  %36 = icmp eq ptr %35, null
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 1, i32 noundef %4) #3
  store ptr %38, ptr %35, align 4
  %39 = lshr i32 %9, 26
  %40 = and i32 %39, 3
  %41 = tail call ptr @tegra_lookup_dt_id(i32 noundef 171, ptr noundef %1) #3
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %37
  %44 = shl nuw nsw i32 1, %40
  %45 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 1, i32 noundef %44) #3
  store ptr %45, ptr %41, align 4
  %46 = icmp eq ptr %6, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %5, align 4
  %49 = lshr i32 %48, %40
  store i32 %49, ptr %6, align 4
  br label %50

50:                                               ; preds = %47, %43, %37, %34, %19, %18
  %51 = phi i32 [ -22, %18 ], [ 0, %19 ], [ 0, %34 ], [ 0, %37 ], [ 0, %47 ], [ 0, %43 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_lookup_dt_id(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tegra_fixed_clk_init(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @tegra_lookup_dt_id(i32 noundef 33, ptr noundef %0) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 32768) #3
  store ptr %5, ptr %2, align 4
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_clk_osc_resume(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 80
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #3, !srcloc !8
  %4 = and i32 %3, 268434445
  %5 = load i32, ptr @osc_ctrl_ctx, align 4
  %6 = or i32 %4, %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %6) #3, !srcloc !9
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 429496) #3
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 362138}
!9 = !{i64 361720}
!10 = !{i64 2151143154}
