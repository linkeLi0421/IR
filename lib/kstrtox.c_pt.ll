; ModuleID = '/llk/IR/lib/kstrtox.c_pt.bc'
source_filename = "../lib/kstrtox.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtoull:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtoull\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtoull:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtoll:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtoll\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtoll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__kstrtoul:\09\09\09\09\09"
module asm "\09.asciz \09\22_kstrtoul\22\09\09\09\09\09"
module asm "__kstrtabns__kstrtoul:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__kstrtol:\09\09\09\09\09"
module asm "\09.asciz \09\22_kstrtol\22\09\09\09\09\09"
module asm "__kstrtabns__kstrtol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtouint:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtouint\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtouint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtoint:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtoint\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtou16:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtou16\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtou16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtos16:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtos16\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtos16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtou8:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtou8\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtou8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtos8:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtos8\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtos8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtobool:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtobool\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtobool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtobool_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtobool_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtobool_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtoull_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtoull_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtoull_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtoll_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtoll_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtoll_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtoul_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtoul_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtoul_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtol_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtol_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtol_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtouint_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtouint_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtouint_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtoint_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtoint_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtoint_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtou16_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtou16_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtou16_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtos16_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtos16_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtos16_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtou8_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtou8_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtou8_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrtos8_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrtos8_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_kstrtos8_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__kstrtab_kstrtoull = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtoull = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtoull = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtoull to i32), ptr @__kstrtab_kstrtoull, ptr @__kstrtabns_kstrtoull }, section "___ksymtab+kstrtoull", align 4
@__kstrtab_kstrtoll = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtoll = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtoll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtoll to i32), ptr @__kstrtab_kstrtoll, ptr @__kstrtabns_kstrtoll }, section "___ksymtab+kstrtoll", align 4
@__kstrtab__kstrtoul = external dso_local constant [0 x i8], align 1
@__kstrtabns__kstrtoul = external dso_local constant [0 x i8], align 1
@__ksymtab__kstrtoul = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_kstrtoul to i32), ptr @__kstrtab__kstrtoul, ptr @__kstrtabns__kstrtoul }, section "___ksymtab+_kstrtoul", align 4
@__kstrtab__kstrtol = external dso_local constant [0 x i8], align 1
@__kstrtabns__kstrtol = external dso_local constant [0 x i8], align 1
@__ksymtab__kstrtol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_kstrtol to i32), ptr @__kstrtab__kstrtol, ptr @__kstrtabns__kstrtol }, section "___ksymtab+_kstrtol", align 4
@__kstrtab_kstrtouint = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtouint = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtouint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtouint to i32), ptr @__kstrtab_kstrtouint, ptr @__kstrtabns_kstrtouint }, section "___ksymtab+kstrtouint", align 4
@__kstrtab_kstrtoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtoint = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtoint to i32), ptr @__kstrtab_kstrtoint, ptr @__kstrtabns_kstrtoint }, section "___ksymtab+kstrtoint", align 4
@__kstrtab_kstrtou16 = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtou16 = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtou16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtou16 to i32), ptr @__kstrtab_kstrtou16, ptr @__kstrtabns_kstrtou16 }, section "___ksymtab+kstrtou16", align 4
@__kstrtab_kstrtos16 = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtos16 = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtos16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtos16 to i32), ptr @__kstrtab_kstrtos16, ptr @__kstrtabns_kstrtos16 }, section "___ksymtab+kstrtos16", align 4
@__kstrtab_kstrtou8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtou8 = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtou8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtou8 to i32), ptr @__kstrtab_kstrtou8, ptr @__kstrtabns_kstrtou8 }, section "___ksymtab+kstrtou8", align 4
@__kstrtab_kstrtos8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtos8 = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtos8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtos8 to i32), ptr @__kstrtab_kstrtos8, ptr @__kstrtabns_kstrtos8 }, section "___ksymtab+kstrtos8", align 4
@__kstrtab_kstrtobool = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtobool = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtobool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtobool to i32), ptr @__kstrtab_kstrtobool, ptr @__kstrtabns_kstrtobool }, section "___ksymtab+kstrtobool", align 4
@__kstrtab_kstrtobool_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtobool_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtobool_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtobool_from_user to i32), ptr @__kstrtab_kstrtobool_from_user, ptr @__kstrtabns_kstrtobool_from_user }, section "___ksymtab+kstrtobool_from_user", align 4
@__kstrtab_kstrtoull_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtoull_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtoull_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtoull_from_user to i32), ptr @__kstrtab_kstrtoull_from_user, ptr @__kstrtabns_kstrtoull_from_user }, section "___ksymtab+kstrtoull_from_user", align 4
@__kstrtab_kstrtoll_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtoll_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtoll_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtoll_from_user to i32), ptr @__kstrtab_kstrtoll_from_user, ptr @__kstrtabns_kstrtoll_from_user }, section "___ksymtab+kstrtoll_from_user", align 4
@__kstrtab_kstrtoul_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtoul_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtoul_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtoul_from_user to i32), ptr @__kstrtab_kstrtoul_from_user, ptr @__kstrtabns_kstrtoul_from_user }, section "___ksymtab+kstrtoul_from_user", align 4
@__kstrtab_kstrtol_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtol_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtol_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtol_from_user to i32), ptr @__kstrtab_kstrtol_from_user, ptr @__kstrtabns_kstrtol_from_user }, section "___ksymtab+kstrtol_from_user", align 4
@__kstrtab_kstrtouint_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtouint_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtouint_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtouint_from_user to i32), ptr @__kstrtab_kstrtouint_from_user, ptr @__kstrtabns_kstrtouint_from_user }, section "___ksymtab+kstrtouint_from_user", align 4
@__kstrtab_kstrtoint_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtoint_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtoint_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtoint_from_user to i32), ptr @__kstrtab_kstrtoint_from_user, ptr @__kstrtabns_kstrtoint_from_user }, section "___ksymtab+kstrtoint_from_user", align 4
@__kstrtab_kstrtou16_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtou16_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtou16_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtou16_from_user to i32), ptr @__kstrtab_kstrtou16_from_user, ptr @__kstrtabns_kstrtou16_from_user }, section "___ksymtab+kstrtou16_from_user", align 4
@__kstrtab_kstrtos16_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtos16_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtos16_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtos16_from_user to i32), ptr @__kstrtab_kstrtos16_from_user, ptr @__kstrtabns_kstrtos16_from_user }, section "___ksymtab+kstrtos16_from_user", align 4
@__kstrtab_kstrtou8_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtou8_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtou8_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtou8_from_user to i32), ptr @__kstrtab_kstrtou8_from_user, ptr @__kstrtabns_kstrtou8_from_user }, section "___ksymtab+kstrtou8_from_user", align 4
@__kstrtab_kstrtos8_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrtos8_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrtos8_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrtos8_from_user to i32), ptr @__kstrtab_kstrtos8_from_user, ptr @__kstrtabns_kstrtos8_from_user }, section "___ksymtab+kstrtos8_from_user", align 4
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab__kstrtol, ptr @__ksymtab__kstrtoul, ptr @__ksymtab_kstrtobool, ptr @__ksymtab_kstrtobool_from_user, ptr @__ksymtab_kstrtoint, ptr @__ksymtab_kstrtoint_from_user, ptr @__ksymtab_kstrtol_from_user, ptr @__ksymtab_kstrtoll, ptr @__ksymtab_kstrtoll_from_user, ptr @__ksymtab_kstrtos16, ptr @__ksymtab_kstrtos16_from_user, ptr @__ksymtab_kstrtos8, ptr @__ksymtab_kstrtos8_from_user, ptr @__ksymtab_kstrtou16, ptr @__ksymtab_kstrtou16_from_user, ptr @__ksymtab_kstrtou8, ptr @__ksymtab_kstrtou8_from_user, ptr @__ksymtab_kstrtouint, ptr @__ksymtab_kstrtouint_from_user, ptr @__ksymtab_kstrtoul_from_user, ptr @__ksymtab_kstrtoull, ptr @__ksymtab_kstrtoull_from_user], section "llvm.metadata"
@switch.table.kstrtobool = private unnamed_addr constant [6 x i8] c"\00\01\01\01\00\01", align 1

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @_parse_integer_fixup_radix(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  switch i32 %3, label %33 [
    i32 0, label %4
    i32 16, label %23
  ]

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1
  %6 = icmp eq i8 %5, 48
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, -33
  %11 = icmp eq i8 %10, 88
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, 68
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i32 16, ptr %1, align 4
  br label %23

21:                                               ; preds = %12, %7
  store i32 8, ptr %1, align 4
  br label %33

22:                                               ; preds = %4
  store i32 10, ptr %1, align 4
  br label %33

23:                                               ; preds = %20, %2
  %24 = load i8, ptr %0, align 1
  %25 = icmp eq i8 %24, 48
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %0, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, -33
  %30 = icmp eq i8 %29, 88
  %31 = select i1 %30, i32 2, i32 0
  %32 = getelementptr i8, ptr %0, i32 %31
  br label %33

33:                                               ; preds = %26, %23, %22, %21, %2
  %34 = phi ptr [ %0, %23 ], [ %32, %26 ], [ %0, %22 ], [ %0, %21 ], [ %0, %2 ]
  ret ptr %34
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_parse_integer_limit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %46, label %6

6:                                                ; preds = %4
  %7 = zext i32 %1 to i64
  br label %8

8:                                                ; preds = %39, %6
  %9 = phi i32 [ %3, %6 ], [ %13, %39 ]
  %10 = phi i32 [ 0, %6 ], [ %43, %39 ]
  %11 = phi i64 [ 0, %6 ], [ %42, %39 ]
  %12 = phi ptr [ %0, %6 ], [ %44, %39 ]
  %13 = add i32 %9, -1
  %14 = load i8, ptr %12, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %15, 32
  %17 = add i8 %14, -48
  %18 = icmp ult i8 %17, 10
  br i1 %18, label %19, label %21

19:                                               ; preds = %8
  %20 = add nsw i32 %15, -48
  br label %26

21:                                               ; preds = %8
  %22 = add nsw i32 %16, -97
  %23 = icmp ult i32 %22, 6
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = add nsw i32 %16, -87
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i32 [ %20, %19 ], [ %25, %24 ]
  %28 = icmp ult i32 %27, %1
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = icmp ult i64 %11, 1152921504606846976
  %31 = zext i32 %27 to i64
  br i1 %30, label %39, label %32, !prof !8

32:                                               ; preds = %29
  %33 = xor i64 %31, -1
  %34 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %33) #9, !srcloc !9
  %35 = extractvalue { i64, i64 } %34, 1
  %36 = icmp ugt i64 %11, %35
  %37 = or i32 %10, -2147483648
  %38 = select i1 %36, i32 %37, i32 %10
  br label %39

39:                                               ; preds = %32, %29
  %40 = phi i32 [ %38, %32 ], [ %10, %29 ]
  %41 = mul i64 %11, %7
  %42 = add i64 %41, %31
  %43 = add i32 %40, 1
  %44 = getelementptr i8, ptr %12, i32 1
  %45 = icmp eq i32 %13, 0
  br i1 %45, label %46, label %8

46:                                               ; preds = %39, %26, %21, %4
  %47 = phi i64 [ 0, %4 ], [ %11, %26 ], [ %11, %21 ], [ %42, %39 ]
  %48 = phi i32 [ 0, %4 ], [ %10, %26 ], [ %10, %21 ], [ %43, %39 ]
  store i64 %47, ptr %2, align 8
  ret i32 %48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_parse_integer(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = tail call i32 @_parse_integer_limit(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 2147483647)
  ret i32 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i8, ptr %0, align 1
  %7 = icmp eq i8 %6, 43
  %8 = zext i1 %7 to i32
  %9 = getelementptr i8, ptr %0, i32 %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !10
  %10 = call ptr @_parse_integer_fixup_radix(ptr noundef %9, ptr noundef nonnull %4) #10
  %11 = load i32, ptr %4, align 4
  %12 = call i32 @_parse_integer(ptr noundef %10, i32 noundef %11, ptr noundef nonnull %5) #10
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = icmp eq i32 %12, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %14
  %17 = getelementptr i8, ptr %10, i32 %12
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 10
  %20 = zext i1 %19 to i32
  %21 = getelementptr i8, ptr %17, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i64, ptr %5, align 8
  store i64 %25, ptr %2, align 8
  br label %26

26:                                               ; preds = %24, %16, %14, %3
  %27 = phi i32 [ 0, %24 ], [ -34, %3 ], [ -22, %14 ], [ -22, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  ret i32 %27
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtoll(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store i64 0, ptr %6, align 8, !annotation !10
  %7 = load i8, ptr %0, align 1
  %8 = icmp eq i8 %7, 45
  br i1 %8, label %9, label %31

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !10
  %11 = call ptr @_parse_integer_fixup_radix(ptr noundef %10, ptr noundef nonnull %4) #10
  %12 = load i32, ptr %4, align 4
  %13 = call i32 @_parse_integer(ptr noundef %11, i32 noundef %12, ptr noundef nonnull %5) #10
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %15
  %18 = getelementptr i8, ptr %11, i32 %13
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 10
  %21 = zext i1 %20 to i32
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %17, %15, %9
  %26 = phi i32 [ -22, %17 ], [ -22, %15 ], [ -34, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %39

27:                                               ; preds = %17
  %28 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %29 = sub i64 0, %28
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %39, label %37

31:                                               ; preds = %3
  %32 = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6)
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load i64, ptr %6, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34, %27
  %38 = phi i64 [ %29, %27 ], [ %35, %34 ]
  store i64 %38, ptr %2, align 8
  br label %39

39:                                               ; preds = %37, %34, %31, %27, %25
  %40 = phi i32 [ 0, %37 ], [ -34, %27 ], [ %32, %31 ], [ -34, %34 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_kstrtoul(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !10
  %5 = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %4, align 8
  %9 = icmp ult i64 %8, 4294967296
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = trunc i64 %8 to i32
  store i32 %11, ptr %2, align 4
  br label %12

12:                                               ; preds = %10, %7, %3
  %13 = phi i32 [ 0, %10 ], [ %5, %3 ], [ -34, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_kstrtol(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !10
  %5 = call i32 @kstrtoll(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %4, align 8
  %9 = trunc i64 %8 to i32
  %10 = sext i32 %9 to i64
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 %9, ptr %2, align 4
  br label %13

13:                                               ; preds = %12, %7, %3
  %14 = phi i32 [ 0, %12 ], [ %5, %3 ], [ -34, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %14
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtouint(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !10
  %5 = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %4, align 8
  %9 = icmp ult i64 %8, 4294967296
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = trunc i64 %8 to i32
  store i32 %11, ptr %2, align 4
  br label %12

12:                                               ; preds = %10, %7, %3
  %13 = phi i32 [ 0, %10 ], [ %5, %3 ], [ -34, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %13
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtoint(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !10
  %5 = call i32 @kstrtoll(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %4, align 8
  %9 = trunc i64 %8 to i32
  %10 = sext i32 %9 to i64
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 %9, ptr %2, align 4
  br label %13

13:                                               ; preds = %12, %7, %3
  %14 = phi i32 [ 0, %12 ], [ %5, %3 ], [ -34, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %14
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtou16(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !10
  %5 = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %4, align 8
  %9 = icmp ult i64 %8, 65536
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = trunc i64 %8 to i16
  store i16 %11, ptr %2, align 2
  br label %12

12:                                               ; preds = %10, %7, %3
  %13 = phi i32 [ 0, %10 ], [ %5, %3 ], [ -34, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %13
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtos16(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !10
  %5 = call i32 @kstrtoll(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %4, align 8
  %9 = trunc i64 %8 to i16
  %10 = sext i16 %9 to i64
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i16 %9, ptr %2, align 2
  br label %13

13:                                               ; preds = %12, %7, %3
  %14 = phi i32 [ 0, %12 ], [ %5, %3 ], [ -34, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %14
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtou8(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !10
  %5 = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %4, align 8
  %9 = icmp ult i64 %8, 256
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = trunc i64 %8 to i8
  store i8 %11, ptr %2, align 1
  br label %12

12:                                               ; preds = %10, %7, %3
  %13 = phi i32 [ 0, %10 ], [ %5, %3 ], [ -34, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %13
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtos8(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !10
  %5 = call i32 @kstrtoll(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %4, align 8
  %9 = trunc i64 %8 to i8
  %10 = sext i8 %9 to i64
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i8 %9, ptr %2, align 1
  br label %13

13:                                               ; preds = %12, %7, %3
  %14 = phi i32 [ 0, %12 ], [ %5, %3 ], [ -34, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @kstrtobool(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1
  switch i8 %5, label %24 [
    i8 121, label %22
    i8 89, label %22
    i8 49, label %22
    i8 110, label %6
    i8 78, label %6
    i8 48, label %6
    i8 111, label %7
    i8 79, label %7
  ]

6:                                                ; preds = %4, %4, %4
  br label %22

7:                                                ; preds = %4, %4
  %8 = getelementptr i8, ptr %0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = add nsw i32 %10, -70
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 29)
  %13 = icmp ult i32 %12, 6
  br i1 %13, label %14, label %24

14:                                               ; preds = %7
  %15 = trunc i32 %12 to i8
  %16 = lshr i8 51, %15
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds [6 x i8], ptr @switch.table.kstrtobool, i32 0, i32 %12
  %21 = load i8, ptr %20, align 1
  br label %22

22:                                               ; preds = %19, %6, %4, %4, %4
  %23 = phi i8 [ 0, %6 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ %21, %19 ]
  store i8 %23, ptr %1, align 1
  br label %24

24:                                               ; preds = %22, %14, %7, %4, %2
  %25 = phi i32 [ -22, %2 ], [ -22, %4 ], [ -22, %7 ], [ 0, %22 ], [ -22, %14 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtobool_from_user(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !10
  %5 = tail call i32 @llvm.umin.i32(i32 %1, i32 3)
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %5, i32 -1090519040) #9, !srcloc !11
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16, !prof !8

9:                                                ; preds = %3
  %10 = tail call ptr @llvm.thread.pointer() #10
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #11, !srcloc !12
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #10, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %15 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %5) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi i32 [ %15, %9 ], [ %5, %3 ]
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19, !prof !8

19:                                               ; preds = %16
  %20 = sub i32 %5, %17
  %21 = getelementptr i8, ptr %4, i32 %20
  call void @llvm.memset.p0.i32(ptr align 1 %21, i8 0, i32 %17, i1 false) #10
  br label %25

22:                                               ; preds = %16
  %23 = getelementptr [4 x i8], ptr %4, i32 0, i32 %5
  store i8 0, ptr %23, align 1
  %24 = call i32 @kstrtobool(ptr noundef nonnull %4, ptr noundef %2)
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i32 [ %24, %22 ], [ -14, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %26
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtoull_from_user(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = alloca [67 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 67, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(67) %5, i8 0, i32 67, i1 false), !annotation !10
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 66)
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %6, i32 -1090519040) #9, !srcloc !11
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17, !prof !8

10:                                               ; preds = %4
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #11, !srcloc !12
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %6) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  br label %17

17:                                               ; preds = %10, %4
  %18 = phi i32 [ %16, %10 ], [ %6, %4 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !8

20:                                               ; preds = %17
  %21 = sub i32 %6, %18
  %22 = getelementptr i8, ptr %5, i32 %21
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %18, i1 false) #10
  br label %26

23:                                               ; preds = %17
  %24 = getelementptr [67 x i8], ptr %5, i32 0, i32 %6
  store i8 0, ptr %24, align 1
  %25 = call i32 @kstrtoull(ptr noundef nonnull %5, i32 noundef %2, ptr noundef %3)
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %25, %23 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 67, ptr nonnull %5) #10
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtoll_from_user(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = alloca [67 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 67, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(67) %5, i8 0, i32 67, i1 false), !annotation !10
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 66)
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %6, i32 -1090519040) #9, !srcloc !11
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17, !prof !8

10:                                               ; preds = %4
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #11, !srcloc !12
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %6) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  br label %17

17:                                               ; preds = %10, %4
  %18 = phi i32 [ %16, %10 ], [ %6, %4 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !8

20:                                               ; preds = %17
  %21 = sub i32 %6, %18
  %22 = getelementptr i8, ptr %5, i32 %21
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %18, i1 false) #10
  br label %26

23:                                               ; preds = %17
  %24 = getelementptr [67 x i8], ptr %5, i32 0, i32 %6
  store i8 0, ptr %24, align 1
  %25 = call i32 @kstrtoll(ptr noundef nonnull %5, i32 noundef %2, ptr noundef %3)
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %25, %23 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 67, ptr nonnull %5) #10
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtoul_from_user(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = alloca i64, align 8
  %6 = alloca [35 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(35) %6, i8 0, i32 35, i1 false), !annotation !10
  %7 = tail call i32 @llvm.umin.i32(i32 %1, i32 34)
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %7, i32 -1090519040) #9, !srcloc !11
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18, !prof !8

11:                                               ; preds = %4
  %12 = tail call ptr @llvm.thread.pointer() #10
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #11, !srcloc !12
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #10, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %17 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %7) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  br label %18

18:                                               ; preds = %11, %4
  %19 = phi i32 [ %17, %11 ], [ %7, %4 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21, !prof !8

21:                                               ; preds = %18
  %22 = sub i32 %7, %19
  %23 = getelementptr i8, ptr %6, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %19, i1 false) #10
  br label %35

24:                                               ; preds = %18
  %25 = getelementptr [35 x i8], ptr %6, i32 0, i32 %7
  store i8 0, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !10
  %26 = call i32 @kstrtoull(ptr noundef nonnull %6, i32 noundef %2, ptr noundef nonnull %5) #10
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load i64, ptr %5, align 8
  %30 = icmp ult i64 %29, 4294967296
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = trunc i64 %29 to i32
  store i32 %32, ptr %3, align 4
  br label %33

33:                                               ; preds = %31, %28, %24
  %34 = phi i32 [ 0, %31 ], [ %26, %24 ], [ -34, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %35

35:                                               ; preds = %33, %21
  %36 = phi i32 [ %34, %33 ], [ -14, %21 ]
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %6) #10
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtol_from_user(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = alloca i64, align 8
  %6 = alloca [35 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(35) %6, i8 0, i32 35, i1 false), !annotation !10
  %7 = tail call i32 @llvm.umin.i32(i32 %1, i32 34)
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %7, i32 -1090519040) #9, !srcloc !11
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18, !prof !8

11:                                               ; preds = %4
  %12 = tail call ptr @llvm.thread.pointer() #10
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #11, !srcloc !12
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #10, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %17 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %7) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  br label %18

18:                                               ; preds = %11, %4
  %19 = phi i32 [ %17, %11 ], [ %7, %4 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21, !prof !8

21:                                               ; preds = %18
  %22 = sub i32 %7, %19
  %23 = getelementptr i8, ptr %6, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %19, i1 false) #10
  br label %36

24:                                               ; preds = %18
  %25 = getelementptr [35 x i8], ptr %6, i32 0, i32 %7
  store i8 0, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !10
  %26 = call i32 @kstrtoll(ptr noundef nonnull %6, i32 noundef %2, ptr noundef nonnull %5) #10
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load i64, ptr %5, align 8
  %30 = trunc i64 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 %30, ptr %3, align 4
  br label %34

34:                                               ; preds = %33, %28, %24
  %35 = phi i32 [ 0, %33 ], [ %26, %24 ], [ -34, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %36

36:                                               ; preds = %34, %21
  %37 = phi i32 [ %35, %34 ], [ -14, %21 ]
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %6) #10
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtouint_from_user(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = alloca [35 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(35) %5, i8 0, i32 35, i1 false), !annotation !10
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 34)
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %6, i32 -1090519040) #9, !srcloc !11
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17, !prof !8

10:                                               ; preds = %4
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #11, !srcloc !12
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %6) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  br label %17

17:                                               ; preds = %10, %4
  %18 = phi i32 [ %16, %10 ], [ %6, %4 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !8

20:                                               ; preds = %17
  %21 = sub i32 %6, %18
  %22 = getelementptr i8, ptr %5, i32 %21
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %18, i1 false) #10
  br label %26

23:                                               ; preds = %17
  %24 = getelementptr [35 x i8], ptr %5, i32 0, i32 %6
  store i8 0, ptr %24, align 1
  %25 = call i32 @kstrtouint(ptr noundef nonnull %5, i32 noundef %2, ptr noundef %3)
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %25, %23 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %5) #10
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtoint_from_user(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = alloca [35 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(35) %5, i8 0, i32 35, i1 false), !annotation !10
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 34)
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %6, i32 -1090519040) #9, !srcloc !11
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17, !prof !8

10:                                               ; preds = %4
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #11, !srcloc !12
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %6) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  br label %17

17:                                               ; preds = %10, %4
  %18 = phi i32 [ %16, %10 ], [ %6, %4 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !8

20:                                               ; preds = %17
  %21 = sub i32 %6, %18
  %22 = getelementptr i8, ptr %5, i32 %21
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %18, i1 false) #10
  br label %26

23:                                               ; preds = %17
  %24 = getelementptr [35 x i8], ptr %5, i32 0, i32 %6
  store i8 0, ptr %24, align 1
  %25 = call i32 @kstrtoint(ptr noundef nonnull %5, i32 noundef %2, ptr noundef %3)
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %25, %23 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %5) #10
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtou16_from_user(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = alloca [19 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(19) %5, i8 0, i32 19, i1 false), !annotation !10
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 18)
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %6, i32 -1090519040) #9, !srcloc !11
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17, !prof !8

10:                                               ; preds = %4
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #11, !srcloc !12
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %6) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  br label %17

17:                                               ; preds = %10, %4
  %18 = phi i32 [ %16, %10 ], [ %6, %4 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !8

20:                                               ; preds = %17
  %21 = sub i32 %6, %18
  %22 = getelementptr i8, ptr %5, i32 %21
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %18, i1 false) #10
  br label %26

23:                                               ; preds = %17
  %24 = getelementptr [19 x i8], ptr %5, i32 0, i32 %6
  store i8 0, ptr %24, align 1
  %25 = call i32 @kstrtou16(ptr noundef nonnull %5, i32 noundef %2, ptr noundef %3)
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %25, %23 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %5) #10
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtos16_from_user(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = alloca [19 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(19) %5, i8 0, i32 19, i1 false), !annotation !10
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 18)
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %6, i32 -1090519040) #9, !srcloc !11
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17, !prof !8

10:                                               ; preds = %4
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #11, !srcloc !12
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %6) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  br label %17

17:                                               ; preds = %10, %4
  %18 = phi i32 [ %16, %10 ], [ %6, %4 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !8

20:                                               ; preds = %17
  %21 = sub i32 %6, %18
  %22 = getelementptr i8, ptr %5, i32 %21
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %18, i1 false) #10
  br label %26

23:                                               ; preds = %17
  %24 = getelementptr [19 x i8], ptr %5, i32 0, i32 %6
  store i8 0, ptr %24, align 1
  %25 = call i32 @kstrtos16(ptr noundef nonnull %5, i32 noundef %2, ptr noundef %3)
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %25, %23 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %5) #10
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtou8_from_user(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = alloca [11 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %5, i8 0, i32 11, i1 false), !annotation !10
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 10)
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %6, i32 -1090519040) #9, !srcloc !11
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17, !prof !8

10:                                               ; preds = %4
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #11, !srcloc !12
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %6) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  br label %17

17:                                               ; preds = %10, %4
  %18 = phi i32 [ %16, %10 ], [ %6, %4 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !8

20:                                               ; preds = %17
  %21 = sub i32 %6, %18
  %22 = getelementptr i8, ptr %5, i32 %21
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %18, i1 false) #10
  br label %26

23:                                               ; preds = %17
  %24 = getelementptr [11 x i8], ptr %5, i32 0, i32 %6
  store i8 0, ptr %24, align 1
  %25 = call i32 @kstrtou8(ptr noundef nonnull %5, i32 noundef %2, ptr noundef %3)
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %25, %23 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %5) #10
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kstrtos8_from_user(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = alloca [11 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %5, i8 0, i32 11, i1 false), !annotation !10
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 10)
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %6, i32 -1090519040) #9, !srcloc !11
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17, !prof !8

10:                                               ; preds = %4
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #11, !srcloc !12
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %6) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  br label %17

17:                                               ; preds = %10, %4
  %18 = phi i32 [ %16, %10 ], [ %6, %4 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !8

20:                                               ; preds = %17
  %21 = sub i32 %6, %18
  %22 = getelementptr i8, ptr %5, i32 %21
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %18, i1 false) #10
  br label %26

23:                                               ; preds = %17
  %24 = getelementptr [11 x i8], ptr %5, i32 0, i32 %6
  store i8 0, ptr %24, align 1
  %25 = call i32 @kstrtos8(ptr noundef nonnull %5, i32 noundef %2, ptr noundef %3)
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %25, %23 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %5) #10
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree noinline nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2147763079, i64 2147763359, i64 2147763693, i64 2147764027}
!10 = !{!"auto-init"}
!11 = !{i64 2149916992, i64 2149917017}
!12 = !{i64 2413104}
!13 = !{i64 2413301}
!14 = !{i64 2149898580}
