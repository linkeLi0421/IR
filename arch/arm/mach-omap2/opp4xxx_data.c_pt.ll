; ModuleID = '/llk/IR/arch/arm/mach-omap2/opp4xxx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/opp4xxx_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_volt_data = type { i32, i32, i8, i8 }

@omap443x_vdd_mpu_volt_data = dso_local local_unnamed_addr global [6 x %struct.omap_volt_data] [%struct.omap_volt_data { i32 1025000, i32 576, i8 -12, i8 12 }, %struct.omap_volt_data { i32 1200000, i32 579, i8 -7, i8 22 }, %struct.omap_volt_data { i32 1325000, i32 582, i8 -6, i8 35 }, %struct.omap_volt_data { i32 1388000, i32 585, i8 -6, i8 39 }, %struct.omap_volt_data { i32 1398000, i32 588, i8 -6, i8 39 }, %struct.omap_volt_data zeroinitializer], align 4
@omap443x_vdd_iva_volt_data = dso_local local_unnamed_addr global [4 x %struct.omap_volt_data] [%struct.omap_volt_data { i32 950000, i32 556, i8 -12, i8 12 }, %struct.omap_volt_data { i32 1114000, i32 559, i8 -7, i8 22 }, %struct.omap_volt_data { i32 1291000, i32 562, i8 -6, i8 35 }, %struct.omap_volt_data zeroinitializer], align 4
@omap443x_vdd_core_volt_data = dso_local local_unnamed_addr global [3 x %struct.omap_volt_data] [%struct.omap_volt_data { i32 962000, i32 596, i8 -12, i8 12 }, %struct.omap_volt_data { i32 1127000, i32 599, i8 -7, i8 22 }, %struct.omap_volt_data zeroinitializer], align 4
@omap446x_vdd_mpu_volt_data = dso_local local_unnamed_addr global [5 x %struct.omap_volt_data] [%struct.omap_volt_data { i32 1025000, i32 576, i8 -12, i8 12 }, %struct.omap_volt_data { i32 1200000, i32 579, i8 -7, i8 22 }, %struct.omap_volt_data { i32 1313000, i32 582, i8 -6, i8 35 }, %struct.omap_volt_data { i32 1375000, i32 585, i8 -6, i8 39 }, %struct.omap_volt_data zeroinitializer], align 4
@omap446x_vdd_iva_volt_data = dso_local local_unnamed_addr global [5 x %struct.omap_volt_data] [%struct.omap_volt_data { i32 1025000, i32 556, i8 -12, i8 12 }, %struct.omap_volt_data { i32 1200000, i32 559, i8 -7, i8 22 }, %struct.omap_volt_data { i32 1313000, i32 562, i8 -6, i8 35 }, %struct.omap_volt_data { i32 1375000, i32 565, i8 -6, i8 35 }, %struct.omap_volt_data zeroinitializer], align 4
@omap446x_vdd_core_volt_data = dso_local local_unnamed_addr global [4 x %struct.omap_volt_data] [%struct.omap_volt_data { i32 1025000, i32 596, i8 -12, i8 12 }, %struct.omap_volt_data { i32 1200000, i32 599, i8 -7, i8 22 }, %struct.omap_volt_data { i32 1250000, i32 602, i8 -7, i8 22 }, %struct.omap_volt_data zeroinitializer], align 4

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
