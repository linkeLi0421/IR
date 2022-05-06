; ModuleID = '/llk/IR/arch/arm/mach-stm32/board-dt.c_pt.bc'
source_filename = "../arch/arm/mach-stm32/board-dt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [28 x i8] c"STM32 (Device Tree Support)\00", align 1
@stm32_compat = internal constant [11 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr null], section ".init.rodata", align 4
@__mach_desc_STM32DT = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @stm32_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"st,stm32f429\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"st,stm32f469\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"st,stm32f746\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"st,stm32f769\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"st,stm32h743\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"st,stm32h750\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"st,stm32mp131\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"st,stm32mp133\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"st,stm32mp135\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"st,stm32mp157\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__mach_desc_STM32DT], section "llvm.metadata"

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
