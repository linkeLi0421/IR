; ModuleID = '/llk/IR/lib/zlib_deflate/deflate_syms.c_pt.bc'
source_filename = "../lib/zlib_deflate/deflate_syms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_deflate_workspacesize:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_deflate_workspacesize\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_deflate_workspacesize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_deflate_dfltcc_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_deflate_dfltcc_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_deflate_dfltcc_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_deflate:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_deflate\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_deflate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_deflateInit2:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_deflateInit2\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_deflateInit2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_deflateEnd:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_deflateEnd\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_deflateEnd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_deflateReset:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_deflateReset\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_deflateReset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_zlib_deflate_workspacesize = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_deflate_workspacesize = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_deflate_workspacesize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_deflate_workspacesize to i32), ptr @__kstrtab_zlib_deflate_workspacesize, ptr @__kstrtabns_zlib_deflate_workspacesize }, section "___ksymtab+zlib_deflate_workspacesize", align 4
@__kstrtab_zlib_deflate_dfltcc_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_deflate_dfltcc_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_deflate_dfltcc_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_deflate_dfltcc_enabled to i32), ptr @__kstrtab_zlib_deflate_dfltcc_enabled, ptr @__kstrtabns_zlib_deflate_dfltcc_enabled }, section "___ksymtab+zlib_deflate_dfltcc_enabled", align 4
@__kstrtab_zlib_deflate = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_deflate = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_deflate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_deflate to i32), ptr @__kstrtab_zlib_deflate, ptr @__kstrtabns_zlib_deflate }, section "___ksymtab+zlib_deflate", align 4
@__kstrtab_zlib_deflateInit2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_deflateInit2 = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_deflateInit2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_deflateInit2 to i32), ptr @__kstrtab_zlib_deflateInit2, ptr @__kstrtabns_zlib_deflateInit2 }, section "___ksymtab+zlib_deflateInit2", align 4
@__kstrtab_zlib_deflateEnd = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_deflateEnd = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_deflateEnd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_deflateEnd to i32), ptr @__kstrtab_zlib_deflateEnd, ptr @__kstrtabns_zlib_deflateEnd }, section "___ksymtab+zlib_deflateEnd", align 4
@__kstrtab_zlib_deflateReset = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_deflateReset = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_deflateReset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_deflateReset to i32), ptr @__kstrtab_zlib_deflateReset, ptr @__kstrtabns_zlib_deflateReset }, section "___ksymtab+zlib_deflateReset", align 4
@__UNIQUE_ID_file100 = internal constant [48 x i8] c"zlib_deflate.file=lib/zlib_deflate/zlib_deflate\00", section ".modinfo", align 1
@__UNIQUE_ID_license101 = internal constant [25 x i8] c"zlib_deflate.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_file100, ptr @__UNIQUE_ID_license101, ptr @__ksymtab_zlib_deflate, ptr @__ksymtab_zlib_deflateEnd, ptr @__ksymtab_zlib_deflateInit2, ptr @__ksymtab_zlib_deflateReset, ptr @__ksymtab_zlib_deflate_dfltcc_enabled, ptr @__ksymtab_zlib_deflate_workspacesize], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate_workspacesize(i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate_dfltcc_enabled() #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateInit2(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateEnd(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateReset(ptr noundef) #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

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
