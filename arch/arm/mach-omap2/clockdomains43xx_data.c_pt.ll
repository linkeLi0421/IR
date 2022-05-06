; ModuleID = '/llk/IR/arch/arm/mach-omap2/clockdomains43xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/clockdomains43xx_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }

@am43xx_clkdm_operations = external dso_local global %struct.clkdm_ops, align 4
@clockdomains_am43xx = internal global [19 x ptr] [ptr @l4_cefuse_43xx_clkdm, ptr @mpu_43xx_clkdm, ptr @l4ls_43xx_clkdm, ptr @tamper_43xx_clkdm, ptr @l4_rtc_43xx_clkdm, ptr @pruss_ocp_43xx_clkdm, ptr @ocpwp_l3_43xx_clkdm, ptr @l3s_tsc_43xx_clkdm, ptr @lcdc_43xx_clkdm, ptr @dss_43xx_clkdm, ptr @l3_aon_43xx_clkdm, ptr @emif_43xx_clkdm, ptr @l4_wkup_aon_43xx_clkdm, ptr @l3_43xx_clkdm, ptr @l4_wkup_43xx_clkdm, ptr @cpsw_125mhz_43xx_clkdm, ptr @gfx_l3_43xx_clkdm, ptr @l3s_43xx_clkdm, ptr null], section ".init.data", align 4
@l4_cefuse_43xx_clkdm = internal global %struct.clockdomain { ptr @.str, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 0, i8 1, i16 -30976, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@mpu_43xx_clkdm = internal global %struct.clockdomain { ptr @.str.2, %union.anon { ptr @.str.3 }, i16 0, i8 15, i8 0, i8 0, i8 1, i16 -32000, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l4ls_43xx_clkdm = internal global %struct.clockdomain { ptr @.str.4, %union.anon { ptr @.str.5 }, i16 0, i8 3, i8 0, i8 0, i8 1, i16 -30720, i16 1024, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@tamper_43xx_clkdm = internal global %struct.clockdomain { ptr @.str.6, %union.anon { ptr @.str.7 }, i16 0, i8 3, i8 0, i8 0, i8 1, i16 -31232, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l4_rtc_43xx_clkdm = internal global %struct.clockdomain { ptr @.str.8, %union.anon { ptr @.str.9 }, i16 0, i8 3, i8 0, i8 0, i8 1, i16 -31488, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@pruss_ocp_43xx_clkdm = internal global %struct.clockdomain { ptr @.str.10, %union.anon { ptr @.str.5 }, i16 0, i8 3, i8 0, i8 0, i8 1, i16 -30720, i16 768, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@ocpwp_l3_43xx_clkdm = internal global %struct.clockdomain { ptr @.str.11, %union.anon { ptr @.str.5 }, i16 0, i8 3, i8 0, i8 0, i8 1, i16 -30720, i16 3072, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3s_tsc_43xx_clkdm = internal global %struct.clockdomain { ptr @.str.12, %union.anon { ptr @.str.13 }, i16 0, i8 3, i8 0, i8 0, i8 1, i16 10240, i16 256, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@lcdc_43xx_clkdm = internal global %struct.clockdomain { ptr @.str.14, %union.anon { ptr @.str.5 }, i16 0, i8 3, i8 0, i8 0, i8 1, i16 -30720, i16 2048, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@dss_43xx_clkdm = internal global %struct.clockdomain { ptr @.str.15, %union.anon { ptr @.str.5 }, i16 0, i8 3, i8 0, i8 0, i8 1, i16 -30720, i16 2560, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3_aon_43xx_clkdm = internal global %struct.clockdomain { ptr @.str.16, %union.anon { ptr @.str.13 }, i16 0, i8 3, i8 0, i8 0, i8 1, i16 10240, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@emif_43xx_clkdm = internal global %struct.clockdomain { ptr @.str.17, %union.anon { ptr @.str.5 }, i16 0, i8 3, i8 0, i8 0, i8 1, i16 -30720, i16 1792, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l4_wkup_aon_43xx_clkdm = internal global %struct.clockdomain { ptr @.str.18, %union.anon { ptr @.str.13 }, i16 0, i8 0, i8 0, i8 0, i8 1, i16 10240, i16 512, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3_43xx_clkdm = internal global %struct.clockdomain { ptr @.str.19, %union.anon { ptr @.str.5 }, i16 0, i8 3, i8 0, i8 0, i8 1, i16 -30720, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l4_wkup_43xx_clkdm = internal global %struct.clockdomain { ptr @.str.20, %union.anon { ptr @.str.13 }, i16 0, i8 3, i8 0, i8 0, i8 1, i16 10240, i16 768, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@cpsw_125mhz_43xx_clkdm = internal global %struct.clockdomain { ptr @.str.21, %union.anon { ptr @.str.5 }, i16 0, i8 3, i8 0, i8 0, i8 1, i16 -30720, i16 2816, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@gfx_l3_43xx_clkdm = internal global %struct.clockdomain { ptr @.str.22, %union.anon { ptr @.str.23 }, i16 0, i8 3, i8 0, i8 0, i8 1, i16 -31744, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3s_43xx_clkdm = internal global %struct.clockdomain { ptr @.str.24, %union.anon { ptr @.str.5 }, i16 0, i8 3, i8 0, i8 0, i8 1, i16 -30720, i16 512, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [16 x i8] c"l4_cefuse_clkdm\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"cefuse_pwrdm\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"mpu_clkdm\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"mpu_pwrdm\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"l4ls_clkdm\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"per_pwrdm\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"tamper_clkdm\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"tamper_pwrdm\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"l4_rtc_clkdm\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"rtc_pwrdm\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"pruss_ocp_clkdm\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"ocpwp_l3_clkdm\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"l3s_tsc_clkdm\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"wkup_pwrdm\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"lcdc_clkdm\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"dss_clkdm\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"l3_aon_clkdm\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"emif_clkdm\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"l4_wkup_aon_clkdm\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"l3_clkdm\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"l4_wkup_clkdm\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"cpsw_125mhz_clkdm\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"gfx_l3_clkdm\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"gfx_pwrdm\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"l3s_clkdm\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @am43xx_clockdomains_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @clkdm_register_platform_funcs(ptr noundef nonnull @am43xx_clkdm_operations) #2
  %2 = tail call i32 @clkdm_register_clkdms(ptr noundef nonnull @clockdomains_am43xx) #2
  %3 = tail call i32 @clkdm_complete_init() #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_register_platform_funcs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_register_clkdms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_complete_init() local_unnamed_addr #1

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
