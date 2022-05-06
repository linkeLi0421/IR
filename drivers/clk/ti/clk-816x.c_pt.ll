; ModuleID = '/llk/IR/drivers/clk/ti/clk-816x.c_pt.bc'
source_filename = "../drivers/clk/ti/clk-816x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_clkctrl_reg_data = type { i16, ptr, i16, ptr, ptr }
%struct.omap_clkctrl_data = type { i32, ptr }
%struct.ti_dt_clk = type { %struct.clk_lookup, ptr }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }

@dm816_default_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 88, ptr null, i16 32, ptr @.str, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dm816_alwon_clkctrl_regs = internal constant [30 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 336, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 340, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 344, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 348, ptr null, i16 32, ptr @.str, ptr null }, %struct.omap_clkctrl_reg_data { i16 352, ptr null, i16 32, ptr @.str, ptr null }, %struct.omap_clkctrl_reg_data { i16 356, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 360, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 368, ptr null, i16 32, ptr @.str.2, ptr null }, %struct.omap_clkctrl_reg_data { i16 372, ptr null, i16 32, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data { i16 376, ptr null, i16 32, ptr @.str.4, ptr null }, %struct.omap_clkctrl_reg_data { i16 380, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 384, ptr null, i16 32, ptr @.str.6, ptr null }, %struct.omap_clkctrl_reg_data { i16 388, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 392, ptr null, i16 32, ptr @.str.8, ptr null }, %struct.omap_clkctrl_reg_data { i16 396, ptr null, i16 160, ptr @.str.9, ptr null }, %struct.omap_clkctrl_reg_data { i16 400, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 404, ptr null, i16 32, ptr @.str, ptr null }, %struct.omap_clkctrl_reg_data { i16 408, ptr null, i16 32, ptr @.str, ptr null }, %struct.omap_clkctrl_reg_data { i16 432, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 464, ptr null, i16 32, ptr @.str, ptr null }, %struct.omap_clkctrl_reg_data { i16 468, ptr null, i16 160, ptr @.str.10, ptr null }, %struct.omap_clkctrl_reg_data { i16 472, ptr null, i16 160, ptr @.str.10, ptr null }, %struct.omap_clkctrl_reg_data { i16 476, ptr null, i16 32, ptr @.str.11, ptr null }, %struct.omap_clkctrl_reg_data { i16 496, ptr null, i16 160, ptr @.str.9, ptr null }, %struct.omap_clkctrl_reg_data { i16 500, ptr null, i16 32, ptr @.str.12, ptr null }, %struct.omap_clkctrl_reg_data { i16 504, ptr null, i16 32, ptr @.str.12, ptr null }, %struct.omap_clkctrl_reg_data { i16 508, ptr null, i16 32, ptr @.str.12, ptr null }, %struct.omap_clkctrl_reg_data { i16 512, ptr null, i16 32, ptr @.str.12, ptr null }, %struct.omap_clkctrl_reg_data { i16 516, ptr null, i16 32, ptr @.str.12, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dm816_clkctrl_data = dso_local local_unnamed_addr constant [3 x %struct.omap_clkctrl_data] [%struct.omap_clkctrl_data { i32 1209533696, ptr @dm816_default_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1209537536, ptr @dm816_alwon_clkctrl_regs }, %struct.omap_clkctrl_data zeroinitializer], section ".init.rodata", align 4
@dm816x_clks = internal global [5 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.13, ptr null, ptr null }, ptr @.str.14 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.15, ptr null, ptr null }, ptr @.str.14 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.16, ptr null, ptr null }, ptr @.str.9 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.17, ptr null, ptr null }, ptr @.str.18 }, %struct.ti_dt_clk zeroinitializer], align 4
@enable_init_clks = internal global [4 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str], align 4
@.str = private unnamed_addr constant [11 x i8] c"sysclk6_ck\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"sysclk10_ck\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"timer1_fck\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"timer2_fck\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"timer3_fck\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"timer4_fck\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"timer5_fck\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"timer6_fck\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"timer7_fck\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"sysclk18_ck\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"sysclk24_ck\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"sysclk2_ck\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"sysclk4_ck\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"sys_clkin\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"sys_clkin_ck\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"timer_sys_ck\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"timer_32k_ck\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"timer_ext_ck\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"tclkin_ck\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"ddr_pll_clk1\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"ddr_pll_clk2\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"ddr_pll_clk3\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @dm816x_dt_clk_init() local_unnamed_addr #0 section ".init.text" {
  tail call void @ti_dt_clocks_register(ptr noundef nonnull @dm816x_clks) #2
  %1 = tail call i32 @omap2_clk_disable_autoidle_all() #2
  tail call void @ti_clk_add_aliases() #2
  tail call void @omap2_clk_enable_init_clocks(ptr noundef nonnull @enable_init_clks, i8 noundef zeroext 4) #2
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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
