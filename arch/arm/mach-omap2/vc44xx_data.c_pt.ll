; ModuleID = '/llk/IR/arch/arm/mach-omap2/vc44xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/vc44xx_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_vc_common = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.omap_vc_channel = type { i16, i16, i16, i8, i8, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.omap_vc_param = type { i32, i32, i32, i32 }

@omap4_vc_common = internal constant %struct.omap_vc_common { i32 -16777216, i32 16777216, i8 -96, i8 16, i8 0, i8 8, i8 24, i8 16, i8 8, i8 0, i8 -88, i8 24, i8 8, i8 7 }, align 4
@omap4_vc_mpu = dso_local local_unnamed_addr global %struct.omap_vc_channel { i16 0, i16 0, i16 0, i8 0, i8 0, ptr @omap4_vc_common, i32 8323072, i32 16711680, i32 16711680, i8 -104, i8 -120, i8 -116, i8 -112, i8 -92, i8 16, i8 3 }, align 4
@omap4_vc_iva = dso_local local_unnamed_addr global %struct.omap_vc_channel { i16 0, i16 0, i16 0, i8 0, i8 0, ptr @omap4_vc_common, i32 32512, i32 65280, i32 65280, i8 -100, i8 -120, i8 -116, i8 -112, i8 -92, i8 8, i8 0 }, align 4
@omap4_vc_core = dso_local local_unnamed_addr global %struct.omap_vc_channel { i16 0, i16 0, i16 0, i8 0, i8 0, ptr @omap4_vc_common, i32 127, i32 255, i32 255, i8 -108, i8 -120, i8 -116, i8 -112, i8 -92, i8 0, i8 0 }, align 4
@omap4_mpu_vc_data = dso_local local_unnamed_addr global %struct.omap_vc_param { i32 1375000, i32 1375000, i32 837500, i32 0 }, align 4
@omap4_iva_vc_data = dso_local local_unnamed_addr global %struct.omap_vc_param { i32 1375000, i32 1375000, i32 837500, i32 0 }, align 4
@omap4_core_vc_data = dso_local local_unnamed_addr global %struct.omap_vc_param { i32 1375000, i32 1375000, i32 837500, i32 0 }, align 4

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
