; ModuleID = '/llk/IR/arch/arm/mm/proc-syms.c_pt.bc'
source_filename = "../arch/arm/mm/proc-syms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_processor:\09\09\09\09\09"
module asm "\09.asciz \09\22processor\22\09\09\09\09\09"
module asm "__kstrtabns_processor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_cache\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_user:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_user\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_tlb:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_tlb\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_tlb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_user_fns = type { ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }

@processor = external dso_local global %struct.processor, align 4
@__kstrtab_processor = external dso_local constant [0 x i8], align 1
@__kstrtabns_processor = external dso_local constant [0 x i8], align 1
@__ksymtab_processor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @processor to i32), ptr @__kstrtab_processor, ptr @__kstrtabns_processor }, section "___ksymtab+processor", align 4
@cpu_cache = external dso_local global %struct.cpu_cache_fns, align 4
@__kstrtab_cpu_cache = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_cache = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_cache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_cache to i32), ptr @__kstrtab_cpu_cache, ptr @__kstrtabns_cpu_cache }, section "___ksymtab+cpu_cache", align 4
@cpu_user = external dso_local global %struct.cpu_user_fns, align 4
@__kstrtab_cpu_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_user = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_user to i32), ptr @__kstrtab_cpu_user, ptr @__kstrtabns_cpu_user }, section "___ksymtab+cpu_user", align 4
@cpu_tlb = external dso_local global %struct.cpu_tlb_fns, align 4
@__kstrtab_cpu_tlb = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_tlb = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_tlb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_tlb to i32), ptr @__kstrtab_cpu_tlb, ptr @__kstrtabns_cpu_tlb }, section "___ksymtab+cpu_tlb", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_cpu_cache, ptr @__ksymtab_cpu_tlb, ptr @__ksymtab_cpu_user, ptr @__ksymtab_processor], section "llvm.metadata"

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
