; ModuleID = '/llk/IR/lib/irq_regs.c_pt.bc'
source_filename = "../lib/irq_regs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___irq_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22__irq_regs\22\09\09\09\09\09"
module asm "__kstrtabns___irq_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__irq_regs = dso_local global ptr null, section ".data..percpu", align 4
@__kstrtab___irq_regs = external dso_local constant [0 x i8], align 1
@__kstrtabns___irq_regs = external dso_local constant [0 x i8], align 1
@__ksymtab___irq_regs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__irq_regs to i32), ptr @__kstrtab___irq_regs, ptr @__kstrtabns___irq_regs }, section "___ksymtab+__irq_regs", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab___irq_regs], section "llvm.metadata"

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
