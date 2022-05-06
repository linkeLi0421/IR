; ModuleID = '/llk/IR/arch/arm/mach-omap2/clockdomains2xxx_3xxx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/clockdomains2xxx_3xxx_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clkdm_dep = type { ptr, ptr, i16, i16 }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }

@.str = private unnamed_addr constant [14 x i8] c"core_l3_clkdm\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"core_l4_clkdm\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"mpu_clkdm\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"wkup_clkdm\00", align 1
@gfx_24xx_wkdeps = dso_local local_unnamed_addr global [5 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.1, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@dsp_24xx_wkdeps = dso_local local_unnamed_addr global [5 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.1, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"wkup_pwrdm\00", align 1
@wkup_common_clkdm = dso_local local_unnamed_addr global %struct.clockdomain { ptr @.str.3, %union.anon { ptr @.str.4 }, i16 0, i8 32, i8 0, i8 4, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4

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
