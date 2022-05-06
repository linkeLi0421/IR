; ModuleID = '/llk/IR/arch/arm/mach-omap2/vp44xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/vp44xx_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_vp_common = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%struct.omap_vp_instance = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.omap_vp_param = type { i32, i32 }
%struct.omap_vp_ops = type { ptr, ptr }

@omap4_vp_common = internal constant %struct.omap_vp_common { i32 -16777216, i32 16711680, i32 65280, i8 8, i8 4, i8 2, i8 1, i8 0, i8 8, i8 0, i8 8, i8 16, i8 24, i8 0, i8 -1, ptr @omap4_vp_ops }, align 4
@omap4_vp_mpu = dso_local local_unnamed_addr global %struct.omap_vp_instance { ptr @omap4_vp_common, i8 88, i8 108, i8 104, i8 96, i8 92, i8 100, i8 2, i8 0 }, align 4
@omap4_vp_iva = dso_local local_unnamed_addr global %struct.omap_vp_instance { ptr @omap4_vp_common, i8 112, i8 -124, i8 -128, i8 120, i8 116, i8 124, i8 1, i8 0 }, align 4
@omap4_vp_core = dso_local local_unnamed_addr global %struct.omap_vp_instance { ptr @omap4_vp_common, i8 64, i8 84, i8 80, i8 72, i8 68, i8 76, i8 0, i8 0 }, align 4
@omap4_mpu_vp_data = dso_local local_unnamed_addr global %struct.omap_vp_param { i32 1410000, i32 830000 }, align 4
@omap4_iva_vp_data = dso_local local_unnamed_addr global %struct.omap_vp_param { i32 1260000, i32 830000 }, align 4
@omap4_core_vp_data = dso_local local_unnamed_addr global %struct.omap_vp_param { i32 1200000, i32 830000 }, align 4
@omap4_vp_ops = internal constant %struct.omap_vp_ops { ptr @omap_prm_vp_check_txdone, ptr @omap_prm_vp_clear_txdone }, align 4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prm_vp_check_txdone(i8 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_prm_vp_clear_txdone(i8 noundef zeroext) #0

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
