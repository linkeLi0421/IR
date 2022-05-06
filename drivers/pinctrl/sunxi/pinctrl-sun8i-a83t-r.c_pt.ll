; ModuleID = '/llk/IR/drivers/pinctrl/sunxi/pinctrl-sun8i-a83t-r.c_pt.bc'
source_filename = "../drivers/pinctrl/sunxi/pinctrl-sun8i-a83t-r.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sunxi_pinctrl_desc = type { ptr, i32, i32, i32, ptr, i8, i8, i32 }
%struct.sunxi_desc_pin = type { %struct.pinctrl_pin_desc, i32, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.sunxi_desc_function = type { i32, ptr, i8, i8, i8 }

@__initcall__kmod_pinctrl_sun8i_a83t_r__202_128_sun8i_a83t_r_pinctrl_driver_init6 = internal global ptr @sun8i_a83t_r_pinctrl_driver_init, section ".initcall6.init", align 4
@sun8i_a83t_r_pinctrl_driver = internal global %struct.platform_driver { ptr @sun8i_a83t_r_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun8i_a83t_r_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [21 x i8] c"sun8i-a83t-r-pinctrl\00", align 1
@sun8i_a83t_r_pinctrl_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-r-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sun8i_a83t_r_pinctrl_data = internal constant %struct.sunxi_pinctrl_desc { ptr @sun8i_a83t_r_pins, i32 13, i32 352, i32 1, ptr null, i8 0, i8 0, i32 0 }, align 4
@sun8i_a83t_r_pins = internal constant [13 x %struct.sunxi_desc_pin] [%struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 352, ptr @.str.1, ptr null }, i32 0, ptr @.compoundliteral }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 353, ptr @.str.7, ptr null }, i32 0, ptr @.compoundliteral.8 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 354, ptr @.str.9, ptr null }, i32 0, ptr @.compoundliteral.11 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 355, ptr @.str.12, ptr null }, i32 0, ptr @.compoundliteral.13 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 356, ptr @.str.14, ptr null }, i32 0, ptr @.compoundliteral.16 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 357, ptr @.str.17, ptr null }, i32 0, ptr @.compoundliteral.18 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 358, ptr @.str.19, ptr null }, i32 0, ptr @.compoundliteral.20 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 359, ptr @.str.21, ptr null }, i32 0, ptr @.compoundliteral.22 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 360, ptr @.str.23, ptr null }, i32 0, ptr @.compoundliteral.24 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 361, ptr @.str.25, ptr null }, i32 0, ptr @.compoundliteral.26 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 362, ptr @.str.27, ptr null }, i32 0, ptr @.compoundliteral.29 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 363, ptr @.str.30, ptr null }, i32 0, ptr @.compoundliteral.31 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 364, ptr @.str.32, ptr null }, i32 0, ptr @.compoundliteral.34 }], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"PL0\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"gpio_in\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"gpio_out\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"s_rsb\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"s_i2c\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.compoundliteral = internal global [6 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"PL1\00", align 1
@.compoundliteral.8 = internal global [6 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 1 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"PL2\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"s_uart\00", align 1
@.compoundliteral.11 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.10, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 2 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"PL3\00", align 1
@.compoundliteral.13 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.10, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 3 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"PL4\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"s_jtag\00", align 1
@.compoundliteral.16 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.15, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 4 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"PL5\00", align 1
@.compoundliteral.18 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.15, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 5 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.19 = private unnamed_addr constant [4 x i8] c"PL6\00", align 1
@.compoundliteral.20 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.15, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 6 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.21 = private unnamed_addr constant [4 x i8] c"PL7\00", align 1
@.compoundliteral.22 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.15, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 7 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.23 = private unnamed_addr constant [4 x i8] c"PL8\00", align 1
@.compoundliteral.24 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 8 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"PL9\00", align 1
@.compoundliteral.26 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 9 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"PL10\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"s_pwm\00", align 1
@.compoundliteral.29 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.28, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 10 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.30 = private unnamed_addr constant [5 x i8] c"PL11\00", align 1
@.compoundliteral.31 = internal global [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 11 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.32 = private unnamed_addr constant [5 x i8] c"PL12\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"s_cir_rx\00", align 1
@.compoundliteral.34 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.33, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 12 }, %struct.sunxi_desc_function zeroinitializer], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_sun8i_a83t_r__202_128_sun8i_a83t_r_pinctrl_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun8i_a83t_r_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun8i_a83t_r_pinctrl_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_a83t_r_pinctrl_probe(ptr noundef %0) #2 {
  %2 = tail call i32 @sunxi_pinctrl_init_with_variant(ptr noundef %0, ptr noundef nonnull @sun8i_a83t_r_pinctrl_data, i32 noundef 0) #3
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_pinctrl_init_with_variant(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
