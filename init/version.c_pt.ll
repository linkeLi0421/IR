; ModuleID = '/llk/IR/init/version.c_pt.bc'
source_filename = "../init/version.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_uts_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22init_uts_ns\22\09\09\09\09\09"
module asm "__kstrtabns_init_uts_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.user_namespace = type opaque
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.21 = type { %struct.elf32_note, [6 x i8], [2 x i8], [1 x i8] }
%struct.elf32_note = type { i32, i32, i32 }
%struct.anon.22 = type { %struct.elf32_note, [6 x i8], i32 }

@init_user_ns = external dso_local global %struct.user_namespace, align 1
@init_uts_ns = dso_local global %struct.uts_namespace { %struct.new_utsname { [65 x i8] c"Linux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [65 x i8] c"(none)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [65 x i8] c"5.17.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [65 x i8] c"#1 SMP Wed May 4 14:42:06 UTC 2022\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [65 x i8] c"arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [65 x i8] c"(none)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, ptr @init_user_ns, ptr null, %struct.ns_common { %struct.atomic_t zeroinitializer, ptr null, i32 -268435458, %struct.refcount_struct { %struct.atomic_t { i32 2 } } } }, align 4
@__kstrtab_init_uts_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_uts_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_init_uts_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_uts_ns to i32), ptr @__kstrtab_init_uts_ns, ptr @__kstrtabns_init_uts_ns }, section "___ksymtab_gpl+init_uts_ns", align 4
@linux_banner = dso_local local_unnamed_addr constant [211 x i8] c"Linux version 5.17.0 (root@c39fd5fa402c) (clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18), GNU ld (GNU Binutils for Ubuntu) 2.34) #1 SMP Wed May 4 14:42:06 UTC 2022\0A\00", align 1
@linux_proc_banner = dso_local local_unnamed_addr constant [172 x i8] c"%s version %s (root@c39fd5fa402c) (clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18), GNU ld (GNU Binutils for Ubuntu) 2.34) %s\0A\00", align 1
@_note_48 = internal constant %struct.anon.21 { %struct.elf32_note { i32 6, i32 1, i32 256 }, [6 x i8] c"Linux\00", [2 x i8] undef, [1 x i8] zeroinitializer }, section ".note.Linux", align 4
@_note_49 = internal constant %struct.anon.22 { %struct.elf32_note { i32 6, i32 4, i32 257 }, [6 x i8] c"Linux\00", i32 0 }, section ".note.Linux", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_init_uts_ns, ptr @_note_48, ptr @_note_49], section "llvm.metadata"

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
