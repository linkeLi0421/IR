; ModuleID = '/llk/IR/crypto/hash_info.c_pt.bc'
source_filename = "../crypto/hash_info.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hash_algo_name:\09\09\09\09\09"
module asm "\09.asciz \09\22hash_algo_name\22\09\09\09\09\09"
module asm "__kstrtabns_hash_algo_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hash_digest_size:\09\09\09\09\09"
module asm "\09.asciz \09\22hash_digest_size\22\09\09\09\09\09"
module asm "__kstrtabns_hash_digest_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"md4\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"rmd160\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"rmd128\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"rmd256\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"rmd320\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"wp256\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"wp384\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"wp512\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"tgr128\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"tgr160\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"tgr192\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"sm3\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"streebog256\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"streebog512\00", align 1
@hash_algo_name = dso_local constant [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], align 4
@__kstrtab_hash_algo_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_hash_algo_name = external dso_local constant [0 x i8], align 1
@__ksymtab_hash_algo_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hash_algo_name to i32), ptr @__kstrtab_hash_algo_name, ptr @__kstrtabns_hash_algo_name }, section "___ksymtab_gpl+hash_algo_name", align 4
@hash_digest_size = dso_local constant [20 x i32] [i32 16, i32 16, i32 20, i32 20, i32 32, i32 48, i32 64, i32 28, i32 16, i32 32, i32 40, i32 32, i32 48, i32 64, i32 16, i32 20, i32 24, i32 32, i32 32, i32 64], align 4
@__kstrtab_hash_digest_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_hash_digest_size = external dso_local constant [0 x i8], align 1
@__ksymtab_hash_digest_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hash_digest_size to i32), ptr @__kstrtab_hash_digest_size, ptr @__kstrtabns_hash_digest_size }, section "___ksymtab_gpl+hash_digest_size", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_hash_algo_name, ptr @__ksymtab_hash_digest_size], section "llvm.metadata"

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
