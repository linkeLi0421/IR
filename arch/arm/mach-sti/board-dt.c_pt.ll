; ModuleID = '/llk/IR/arch/arm/mach-sti/board-dt.c_pt.bc'
source_filename = "../arch/arm/mach-sti/board-dt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [35 x i8] c"STi SoC with Flattened Device Tree\00", align 1
@stih41x_dt_match = internal constant [6 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr null], section ".init.rodata", align 4
@sti_smp_ops = external dso_local constant %struct.smp_operations, align 4
@__mach_desc_STM = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @stih41x_dt_match, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 810024960, i32 -1073737729, ptr null, ptr @sti_smp_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"st,stih415\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"st,stih416\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"st,stih407\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"st,stih410\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"st,stih418\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__mach_desc_STM], section "llvm.metadata"

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
