; ModuleID = '/llk/IR/net/sunrpc/sysctl.c_pt.bc'
source_filename = "../net/sunrpc/sysctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_debug\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_debug\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfsd_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22nfsd_debug\22\09\09\09\09\09"
module asm "__kstrtabns_nfsd_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nlm_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22nlm_debug\22\09\09\09\09\09"
module asm "__kstrtabns_nlm_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@rpc_debug = dso_local global i32 0, align 4
@__kstrtab_rpc_debug = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_debug = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_debug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_debug to i32), ptr @__kstrtab_rpc_debug, ptr @__kstrtabns_rpc_debug }, section "___ksymtab_gpl+rpc_debug", align 4
@nfs_debug = dso_local global i32 0, align 4
@__kstrtab_nfs_debug = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_debug = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_debug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_debug to i32), ptr @__kstrtab_nfs_debug, ptr @__kstrtabns_nfs_debug }, section "___ksymtab_gpl+nfs_debug", align 4
@nfsd_debug = dso_local global i32 0, align 4
@__kstrtab_nfsd_debug = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfsd_debug = external dso_local constant [0 x i8], align 1
@__ksymtab_nfsd_debug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfsd_debug to i32), ptr @__kstrtab_nfsd_debug, ptr @__kstrtabns_nfsd_debug }, section "___ksymtab_gpl+nfsd_debug", align 4
@nlm_debug = dso_local global i32 0, align 4
@__kstrtab_nlm_debug = external dso_local constant [0 x i8], align 1
@__kstrtabns_nlm_debug = external dso_local constant [0 x i8], align 1
@__ksymtab_nlm_debug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nlm_debug to i32), ptr @__kstrtab_nlm_debug, ptr @__kstrtabns_nlm_debug }, section "___ksymtab_gpl+nlm_debug", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_nfs_debug, ptr @__ksymtab_nfsd_debug, ptr @__ksymtab_nlm_debug, ptr @__ksymtab_rpc_debug], section "llvm.metadata"

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
