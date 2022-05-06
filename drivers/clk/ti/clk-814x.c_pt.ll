; ModuleID = '/llk/IR/drivers/clk/ti/clk-814x.c_pt.bc'
source_filename = "../drivers/clk/ti/clk-814x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_clkctrl_reg_data = type { i16, ptr, i16, ptr, ptr }
%struct.omap_clkctrl_data = type { i32, ptr }
%struct.ti_dt_clk = type { %struct.clk_lookup, ptr }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }

@dm814_default_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 88, ptr null, i16 32, ptr @.str, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dm814_alwon_clkctrl_regs = internal constant [21 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 336, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 340, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 344, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 348, ptr null, i16 32, ptr @.str.2, ptr null }, %struct.omap_clkctrl_reg_data { i16 352, ptr null, i16 32, ptr @.str.2, ptr null }, %struct.omap_clkctrl_reg_data { i16 356, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 360, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 396, ptr null, i16 160, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data { i16 400, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 464, ptr null, i16 32, ptr @.str.2, ptr null }, %struct.omap_clkctrl_reg_data { i16 476, ptr null, i16 32, ptr @.str.4, ptr null }, %struct.omap_clkctrl_reg_data { i16 496, ptr null, i16 160, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data { i16 500, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 504, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 508, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 512, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 516, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 540, ptr null, i16 32, ptr @.str.6, ptr null }, %struct.omap_clkctrl_reg_data { i16 544, ptr null, i16 32, ptr @.str.6, ptr null }, %struct.omap_clkctrl_reg_data { i16 548, ptr null, i16 32, ptr @.str.6, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dm814_alwon_ethernet_clkctrl_regs = internal constant [1 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.7, ptr null }], section ".init.rodata", align 4
@dm814_clkctrl_data = dso_local local_unnamed_addr constant [4 x %struct.omap_clkctrl_data] [%struct.omap_clkctrl_data { i32 1209533696, ptr @dm814_default_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1209537536, ptr @dm814_alwon_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1209538004, ptr @dm814_alwon_ethernet_clkctrl_regs }, %struct.omap_clkctrl_data zeroinitializer], section ".init.rodata", align 4
@__initcall__kmod_clk_814x__166_78_dm814x_adpll_early_init1 = internal global ptr @dm814x_adpll_early_init, section ".initcall1.init", align 4
@__initcall__kmod_clk_814x__167_107_dm814x_adpll_enable_init_clocks2 = internal global ptr @dm814x_adpll_enable_init_clocks, section ".initcall2.init", align 4
@dm814_clks = internal global [2 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.15, ptr null, ptr null }, ptr @.str.16 }, %struct.ti_dt_clk zeroinitializer], align 4
@timer_clocks_initialized = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [16 x i8] c"pll260dcoclkldo\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"sysclk10_ck\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"sysclk6_ck\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"sysclk18_ck\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"mpu_ck\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"sysclk4_ck\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"sysclk8_ck\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"cpsw_125mhz_gclk\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pllss\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"\013Could not find node for plls\0A\00", align 1
@init_clocks = internal unnamed_addr constant [2 x ptr] [ptr @.str.13, ptr @.str.14], align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"drivers/clk/ti/clk-814x.c\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"could not find init clock %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"could not enable init clock %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"pll040clkout\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"pll290clkout\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"timer_sys_ck\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"devosc_ck\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_clk_814x__166_78_dm814x_adpll_early_init1, ptr @__initcall__kmod_clk_814x__167_107_dm814x_adpll_enable_init_clocks2], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dm814x_adpll_early_init() #0 section ".init.text" {
  %1 = load i1, ptr @timer_clocks_initialized, align 1
  br i1 %1, label %2, label %9

2:                                                ; preds = %0
  %3 = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.8) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #4
  br label %9

7:                                                ; preds = %2
  %8 = tail call i32 @of_platform_populate(ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null) #3
  tail call void @of_node_put(ptr noundef nonnull %3) #3
  br label %9

9:                                                ; preds = %7, %5, %0
  %10 = phi i32 [ 0, %7 ], [ -19, %5 ], [ -19, %0 ]
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dm814x_adpll_enable_init_clocks() #0 section ".init.text" {
  %1 = load i1, ptr @timer_clocks_initialized, align 1
  br i1 %1, label %2, label %19

2:                                                ; preds = %18, %0
  %3 = phi i1 [ false, %18 ], [ true, %0 ]
  %4 = phi i32 [ 1, %18 ], [ 0, %0 ]
  %5 = getelementptr [2 x ptr], ptr @init_clocks, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @clk_get(ptr noundef null, ptr noundef %6) #3
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 97, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %6) #3
  br label %18

10:                                               ; preds = %2
  %11 = tail call i32 @clk_prepare(ptr noundef %7) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = tail call i32 @clk_enable(ptr noundef %7) #3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %7) #3
  br label %17

17:                                               ; preds = %16, %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 101, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %6) #3
  br label %18

18:                                               ; preds = %17, %13, %9
  br i1 %3, label %2, label %19

19:                                               ; preds = %18, %0
  %20 = phi i32 [ -19, %0 ], [ 0, %18 ]
  ret i32 %20
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @dm814x_dt_clk_init() local_unnamed_addr #0 section ".init.text" {
  tail call void @ti_dt_clocks_register(ptr noundef nonnull @dm814_clks) #3
  %1 = tail call i32 @omap2_clk_disable_autoidle_all() #3
  tail call void @ti_clk_add_aliases() #3
  tail call void @omap2_clk_enable_init_clocks(ptr noundef null, i8 noundef zeroext 0) #3
  store i1 true, ptr @timer_clocks_initialized, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_dt_clocks_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_disable_autoidle_all() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_clk_add_aliases() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_enable_init_clocks(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
