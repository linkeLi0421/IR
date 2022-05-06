; ModuleID = '/llk/IR/arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_hwmod_class_sysconfig = type { i32, i32, i32, i16, ptr, i8, i8 }
%struct.omap_hwmod_class = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysc_regbits = type opaque

@.str = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@omap2_uart_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 80, i32 84, i32 88, i16 167, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@omap2_uart_class = dso_local local_unnamed_addr global %struct.omap_hwmod_class { ptr @.str, ptr @omap2_uart_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"venc\00", align 1
@omap2_venc_hwmod_class = dso_local local_unnamed_addr global %struct.omap_hwmod_class { ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"l3\00", align 1
@l3_hwmod_class = dso_local local_unnamed_addr global %struct.omap_hwmod_class { ptr @.str.2, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"l4\00", align 1
@l4_hwmod_class = dso_local local_unnamed_addr global %struct.omap_hwmod_class { ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"mpu\00", align 1
@mpu_hwmod_class = dso_local local_unnamed_addr global %struct.omap_hwmod_class { ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"iva\00", align 1
@iva_hwmod_class = dso_local local_unnamed_addr global %struct.omap_hwmod_class { ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@omap_hwmod_sysc_type1 = external dso_local global %struct.sysc_regbits, align 1
@omap2_hdq1w_sysc = dso_local global %struct.omap_hwmod_class_sysconfig { i32 0, i32 20, i32 24, i16 131, ptr @omap_hwmod_sysc_type1, i8 0, i8 0 }, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"hdq1w\00", align 1
@omap2_hdq1w_class = dso_local local_unnamed_addr global %struct.omap_hwmod_class { ptr @.str.6, ptr @omap2_hdq1w_sysc, ptr null, ptr @omap_hdq1w_reset, ptr null, ptr null }, align 4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hdq1w_reset(ptr noundef) #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

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
