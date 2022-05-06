; ModuleID = '/llk/IR/drivers/clk/tegra/clk-tegra-super-gen4.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra-super-gen4.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_super_gen_info = type { i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }

@tegra_super_gen_info_gen4 = internal constant %struct.tegra_super_gen_info { i32 4, ptr @sclk_parents, ptr @cclk_g_parents, ptr @cclk_lp_parents, i32 8, i32 16, i32 10 }, align 4
@tegra_super_gen_info_gen5 = internal constant %struct.tegra_super_gen_info { i32 5, ptr @sclk_parents_gen5, ptr @cclk_g_parents_gen5, ptr @cclk_lp_parents_gen5, i32 8, i32 16, i32 16 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"cclk_g\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"cclk_lp\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pll_x\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"pll_ref\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"pll_x_out0\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"sclk_mux\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@sysrate_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"hclk_div\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"pclk_div\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@sclk_parents = internal global [8 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], align 4
@cclk_g_parents = internal global [16 x ptr] [ptr @.str.11, ptr @.str.19, ptr @.str.17, ptr @.str.20, ptr @.str.14, ptr @.str.13, ptr @.str.16, ptr @.str.16, ptr @.str.2, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.21], align 4
@cclk_lp_parents = internal global [10 x ptr] [ptr @.str.11, ptr @.str.19, ptr @.str.17, ptr @.str.20, ptr @.str.14, ptr @.str.13, ptr @.str.16, ptr @.str.16, ptr @.str.2, ptr @.str.4], align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"clk_m\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"pll_c_out1\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"pll_p_out4\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"pll_p\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"pll_p_out2\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"unused\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"clk_32k\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"pll_m_out1\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"pll_c\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"pll_m\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"dfllCPU_out\00", align 1
@sclk_parents_gen5 = internal global [8 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.22, ptr @.str.14, ptr @.str.15, ptr @.str.23, ptr @.str.17, ptr @.str.24], align 4
@cclk_g_parents_gen5 = internal global [16 x ptr] [ptr @.str.11, ptr @.str.16, ptr @.str.17, ptr @.str.16, ptr @.str.14, ptr @.str.13, ptr @.str.16, ptr @.str.16, ptr @.str.2, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.21], align 4
@cclk_lp_parents_gen5 = internal global [16 x ptr] [ptr @.str.11, ptr @.str.16, ptr @.str.17, ptr @.str.16, ptr @.str.14, ptr @.str.13, ptr @.str.16, ptr @.str.16, ptr @.str.2, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.21], align 4
@.str.22 = private unnamed_addr constant [12 x i8] c"pll_c4_out3\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"pll_c4_out1\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"pll_c4_out2\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tegra_super_clk_gen4_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 section ".init.text" {
  tail call fastcc void @tegra_super_clk_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @tegra_super_gen_info_gen4) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tegra_super_clk_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 section ".init.text" {
  %6 = tail call ptr @tegra_lookup_dt_id(i32 noundef 28, ptr noundef %2) #3
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 5
  %11 = getelementptr inbounds %struct.tegra_super_gen_info, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_super_gen_info, ptr %4, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i8
  %16 = getelementptr i8, ptr %0, i32 872
  br i1 %10, label %17, label %19

17:                                               ; preds = %8
  %18 = tail call ptr @tegra_clk_register_super_mux(ptr noundef nonnull @.str, ptr noundef %12, i8 noundef zeroext %15, i32 noundef 4, ptr noundef %16, i8 noundef zeroext 2, i8 noundef zeroext 4, i8 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef null) #3
  br label %21

19:                                               ; preds = %8
  %20 = tail call ptr @tegra_clk_register_super_mux(ptr noundef nonnull @.str, ptr noundef %12, i8 noundef zeroext %15, i32 noundef 4, ptr noundef %16, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #3
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ]
  store ptr %22, ptr %6, align 4
  br label %23

23:                                               ; preds = %21, %5
  %24 = tail call ptr @tegra_lookup_dt_id(i32 noundef 29, ptr noundef %2) #3
  %25 = icmp eq ptr %24, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %4, align 4
  %28 = icmp eq i32 %27, 5
  %29 = getelementptr inbounds %struct.tegra_super_gen_info, ptr %4, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.tegra_super_gen_info, ptr %4, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = trunc i32 %32 to i8
  %34 = getelementptr i8, ptr %0, i32 880
  br i1 %28, label %35, label %37

35:                                               ; preds = %26
  %36 = tail call ptr @tegra_clk_register_super_mux(ptr noundef nonnull @.str.1, ptr noundef %30, i8 noundef zeroext %33, i32 noundef 4, ptr noundef %34, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef null) #3
  br label %39

37:                                               ; preds = %26
  %38 = tail call ptr @tegra_clk_register_super_mux(ptr noundef nonnull @.str.1, ptr noundef %30, i8 noundef zeroext %33, i32 noundef 4, ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext 4, i8 noundef zeroext 8, i8 noundef zeroext 9, ptr noundef null) #3
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi ptr [ %36, %35 ], [ %38, %37 ]
  store ptr %40, ptr %24, align 4
  br label %41

41:                                               ; preds = %39, %23
  tail call fastcc void @tegra_sclk_init(ptr noundef %0, ptr noundef %2, ptr noundef %4) #2
  %42 = tail call ptr @tegra_lookup_dt_id(i32 noundef 182, ptr noundef %2) #3
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = tail call ptr @tegra_clk_register_pllxc(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef %3, ptr noundef null) #3
  store ptr %45, ptr %42, align 4
  %46 = tail call ptr @tegra_lookup_dt_id(i32 noundef 183, ptr noundef %2) #3
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  store ptr %49, ptr %46, align 4
  br label %50

50:                                               ; preds = %48, %44, %41
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tegra_super_clk_gen5_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 section ".init.text" {
  tail call fastcc void @tegra_super_clk_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @tegra_super_gen_info_gen5) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_lookup_dt_id(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_super_mux(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tegra_sclk_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 section ".init.text" {
  %4 = tail call ptr @tegra_lookup_dt_id(i32 noundef 294, ptr noundef %1) #3
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tegra_super_gen_info, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_super_gen_info, ptr %2, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = trunc i32 %10 to i8
  %12 = getelementptr i8, ptr %0, i32 40
  %13 = tail call ptr @tegra_clk_register_super_mux(ptr noundef nonnull @.str.5, ptr noundef %8, i8 noundef zeroext %11, i32 noundef 4, ptr noundef %12, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #3
  store ptr %13, ptr %4, align 4
  %14 = tail call ptr @tegra_lookup_dt_id(i32 noundef 208, ptr noundef %1) #3
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %6
  %17 = getelementptr i8, ptr %0, i32 44
  %18 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 2048, ptr noundef %17, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @sysrate_lock) #3
  store ptr %18, ptr %14, align 4
  br label %30

19:                                               ; preds = %3
  %20 = tail call ptr @tegra_lookup_dt_id(i32 noundef 208, ptr noundef %1) #3
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tegra_super_gen_info, ptr %2, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tegra_super_gen_info, ptr %2, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = trunc i32 %26 to i8
  %28 = getelementptr i8, ptr %0, i32 40
  %29 = tail call ptr @tegra_clk_register_super_mux(ptr noundef nonnull @.str.6, ptr noundef %24, i8 noundef zeroext %27, i32 noundef 2052, ptr noundef %28, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #3
  store ptr %29, ptr %20, align 4
  br label %30

30:                                               ; preds = %22, %19, %16, %6
  %31 = tail call ptr @tegra_lookup_dt_id(i32 noundef 82, ptr noundef %1) #3
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %0, i32 48
  %35 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef %34, i8 noundef zeroext 4, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @sysrate_lock) #3
  %36 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef 2052, ptr noundef %34, i8 noundef zeroext 7, i8 noundef zeroext 1, ptr noundef nonnull @sysrate_lock) #3
  store ptr %36, ptr %31, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = tail call ptr @tegra_lookup_dt_id(i32 noundef 136, ptr noundef %1) #3
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr i8, ptr %0, i32 48
  %42 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef %41, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @sysrate_lock) #3
  %43 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef 2052, ptr noundef %41, i8 noundef zeroext 3, i8 noundef zeroext 1, ptr noundef nonnull @sysrate_lock) #3
  store ptr %43, ptr %38, align 4
  br label %44

44:                                               ; preds = %40, %37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllxc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold }
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
