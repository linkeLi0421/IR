; ModuleID = '/llk/IR/arch/arm/mach-omap2/clockdomains81xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/clockdomains81xx_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }

@am33xx_clkdm_operations = external dso_local global %struct.clkdm_ops, align 4
@clockdomains_ti814x = internal global [9 x ptr] [ptr @alwon_l3_slow_81xx_clkdm, ptr @alwon_l3_med_81xx_clkdm, ptr @alwon_l3_fast_81xx_clkdm, ptr @alwon_ethernet_81xx_clkdm, ptr @mmu_81xx_clkdm, ptr @mmu_cfg_81xx_clkdm, ptr @default_l3_slow_81xx_clkdm, ptr @default_sata_81xx_clkdm, ptr null], section ".init.data", align 4
@clockdomains_ti816x = internal global [18 x ptr] [ptr @alwon_mpu_816x_clkdm, ptr @alwon_l3_slow_81xx_clkdm, ptr @alwon_l3_med_81xx_clkdm, ptr @alwon_l3_fast_81xx_clkdm, ptr @alwon_ethernet_81xx_clkdm, ptr @mmu_81xx_clkdm, ptr @mmu_cfg_81xx_clkdm, ptr @active_gem_816x_clkdm, ptr @ivahd0_816x_clkdm, ptr @ivahd1_816x_clkdm, ptr @ivahd2_816x_clkdm, ptr @sgx_816x_clkdm, ptr @default_l3_med_816x_clkdm, ptr @default_ducati_816x_clkdm, ptr @default_pci_816x_clkdm, ptr @default_l3_slow_81xx_clkdm, ptr @default_sata_81xx_clkdm, ptr null], section ".init.data", align 4
@alwon_l3_slow_81xx_clkdm = internal global %struct.clockdomain { ptr @.str, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 5120, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@alwon_l3_med_81xx_clkdm = internal global %struct.clockdomain { ptr @.str.2, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 5120, i16 4, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@alwon_l3_fast_81xx_clkdm = internal global %struct.clockdomain { ptr @.str.3, %union.anon { ptr @.str.1 }, i16 0, i8 15, i8 0, i8 0, i8 0, i16 5120, i16 48, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@alwon_ethernet_81xx_clkdm = internal global %struct.clockdomain { ptr @.str.4, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 5120, i16 4, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@mmu_81xx_clkdm = internal global %struct.clockdomain { ptr @.str.5, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 5120, i16 12, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@mmu_cfg_81xx_clkdm = internal global %struct.clockdomain { ptr @.str.6, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 5120, i16 16, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@default_l3_slow_81xx_clkdm = internal global %struct.clockdomain { ptr @.str.7, %union.anon { ptr @.str.8 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 1280, i16 20, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@default_sata_81xx_clkdm = internal global %struct.clockdomain { ptr @.str.9, %union.anon { ptr @.str.8 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 1280, i16 96, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [16 x i8] c"alwon_l3s_clkdm\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"alwon_pwrdm\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"alwon_l3_med_clkdm\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"alwon_l3_fast_clkdm\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"alwon_ethernet_clkdm\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"mmu_clkdm\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"mmu_cfg_clkdm\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"default_l3_slow_clkdm\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"default_pwrdm\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"default_clkdm\00", align 1
@alwon_mpu_816x_clkdm = internal global %struct.clockdomain { ptr @.str.10, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 5120, i16 28, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@active_gem_816x_clkdm = internal global %struct.clockdomain { ptr @.str.11, %union.anon { ptr @.str.12 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 1024, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@ivahd0_816x_clkdm = internal global %struct.clockdomain { ptr @.str.13, %union.anon { ptr @.str.14 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 1536, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@ivahd1_816x_clkdm = internal global %struct.clockdomain { ptr @.str.15, %union.anon { ptr @.str.16 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 1792, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@ivahd2_816x_clkdm = internal global %struct.clockdomain { ptr @.str.17, %union.anon { ptr @.str.18 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 2048, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@sgx_816x_clkdm = internal global %struct.clockdomain { ptr @.str.19, %union.anon { ptr @.str.20 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 2304, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@default_l3_med_816x_clkdm = internal global %struct.clockdomain { ptr @.str.21, %union.anon { ptr @.str.8 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 1280, i16 4, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@default_ducati_816x_clkdm = internal global %struct.clockdomain { ptr @.str.22, %union.anon { ptr @.str.8 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 1280, i16 24, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@default_pci_816x_clkdm = internal global %struct.clockdomain { ptr @.str.23, %union.anon { ptr @.str.8 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 1280, i16 16, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"alwon_mpu_clkdm\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"active_gem_clkdm\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"active_pwrdm\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"ivahd0_clkdm\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"ivahd0_pwrdm\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"ivahd1_clkdm\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"ivahd1_pwrdm\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"ivahd2_clkdm\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"ivahd2_pwrdm\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sgx_clkdm\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sgx_pwrdm\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"default_l3_med_clkdm\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"default_ducati_clkdm\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"default_pci_clkdm\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @ti814x_clockdomains_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @clkdm_register_platform_funcs(ptr noundef nonnull @am33xx_clkdm_operations) #2
  %2 = tail call i32 @clkdm_register_clkdms(ptr noundef nonnull @clockdomains_ti814x) #2
  %3 = tail call i32 @clkdm_complete_init() #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_register_platform_funcs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_register_clkdms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_complete_init() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @ti816x_clockdomains_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @clkdm_register_platform_funcs(ptr noundef nonnull @am33xx_clkdm_operations) #2
  %2 = tail call i32 @clkdm_register_clkdms(ptr noundef nonnull @clockdomains_ti816x) #2
  %3 = tail call i32 @clkdm_complete_init() #2
  ret void
}

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
