; ModuleID = '/llk/IR/arch/arm/mach-bcm/bcm2711.c_pt.bc'
source_filename = "../arch/arm/mach-bcm/bcm2711.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"BCM2711\00", align 1
@bcm2711_compat = internal constant [2 x ptr] [ptr @.str.1, ptr null], align 4
@bcm2836_smp_ops = external dso_local constant %struct.smp_operations, align 4
@__mach_desc_BCM2711 = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @bcm2711_compat, i32 0, i32 1073741824, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr @bcm2836_smp_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"brcm,bcm2711\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__mach_desc_BCM2711], section "llvm.metadata"

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
