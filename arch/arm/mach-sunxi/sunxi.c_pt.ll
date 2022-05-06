; ModuleID = '/llk/IR/arch/arm/mach-sunxi/sunxi.c_pt.bc'
source_filename = "../arch/arm/mach-sunxi/sunxi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [31 x i8] c"Allwinner sun4i/sun5i Families\00", align 1
@sunxi_board_dt_compat = internal constant [6 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr null], align 4
@__mach_desc_SUNXI_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @sunxi_board_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Allwinner sun6i (A31) Family\00", align 1
@sun6i_board_dt_compat = internal constant [3 x ptr] [ptr @.str.12, ptr @.str.13, ptr null], align 4
@__mach_desc_SUN6I_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.1, i32 0, ptr @sun6i_board_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun6i_timer_init, ptr null, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Allwinner sun7i (A20) Family\00", align 1
@sun7i_board_dt_compat = internal constant [2 x ptr] [ptr @.str.14, ptr null], align 4
@__mach_desc_SUN7I_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.2, i32 0, ptr @sun7i_board_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Allwinner sun8i Family\00", align 1
@sun8i_board_dt_compat = internal constant [8 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr null], align 4
@__mach_desc_SUN8I_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.3, i32 0, ptr @sun8i_board_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun6i_timer_init, ptr null, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Allwinner A83t board\00", align 1
@sun8i_a83t_cntvoff_board_dt_compat = internal constant [2 x ptr] [ptr @.str.22, ptr null], align 4
@__mach_desc_SUN8I_A83T_CNTVOFF_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.4, i32 0, ptr @sun8i_a83t_cntvoff_board_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun8i_a83t_cntvoff_init, ptr null, ptr @sun6i_timer_init, ptr null, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Allwinner sun9i Family\00", align 1
@sun9i_board_dt_compat = internal constant [2 x ptr] [ptr @.str.23, ptr null], align 4
@__mach_desc_SUN9I_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.5, i32 0, ptr @sun9i_board_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Allwinner suniv Family\00", align 1
@suniv_board_dt_compat = internal constant [2 x ptr] [ptr @.str.24, ptr null], align 4
@__mach_desc_SUNIV_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.6, i32 0, ptr @suniv_board_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"allwinner,sun4i-a10\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"allwinner,sun5i-a10s\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"allwinner,sun5i-a13\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"allwinner,sun5i-r8\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"nextthing,gr8\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"allwinner,sun6i-a31\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"allwinner,sun6i-a31s\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"allwinner,sun7i-a20\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"allwinner,sun8i-a23\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"allwinner,sun8i-a33\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"allwinner,sun8i-h2-plus\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"allwinner,sun8i-h3\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"allwinner,sun8i-r40\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"allwinner,sun8i-v3\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"allwinner,sun8i-v3s\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"allwinner,sun8i-a83t\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"allwinner,sun9i-a80\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"allwinner,suniv-f1c100s\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__mach_desc_SUN6I_DT, ptr @__mach_desc_SUN7I_DT, ptr @__mach_desc_SUN8I_A83T_CNTVOFF_DT, ptr @__mach_desc_SUN8I_DT, ptr @__mach_desc_SUN9I_DT, ptr @__mach_desc_SUNIV_DT, ptr @__mach_desc_SUNXI_DT], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun6i_timer_init() #0 section ".init.text" {
  tail call void @of_clk_init(ptr noundef null) #3
  tail call void @sun6i_reset_init() #4
  tail call void @timer_probe() #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun8i_a83t_cntvoff_init() #0 section ".init.text" {
  tail call void @secure_cntvoff_init() #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @sun6i_reset_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @timer_probe() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @secure_cntvoff_init() local_unnamed_addr #1

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
