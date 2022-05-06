; ModuleID = '/llk/IR/lib/zlib_inflate/inflate_syms.c_pt.bc'
source_filename = "../lib/zlib_inflate/inflate_syms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_inflate_workspacesize:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_inflate_workspacesize\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_inflate_workspacesize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_inflate:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_inflate\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_inflate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_inflateInit2:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_inflateInit2\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_inflateInit2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_inflateEnd:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_inflateEnd\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_inflateEnd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_inflateReset:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_inflateReset\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_inflateReset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_inflateIncomp:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_inflateIncomp\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_inflateIncomp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_inflate_blob:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_inflate_blob\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_inflate_blob:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_zlib_inflate_workspacesize = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_inflate_workspacesize = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_inflate_workspacesize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_inflate_workspacesize to i32), ptr @__kstrtab_zlib_inflate_workspacesize, ptr @__kstrtabns_zlib_inflate_workspacesize }, section "___ksymtab+zlib_inflate_workspacesize", align 4
@__kstrtab_zlib_inflate = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_inflate = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_inflate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_inflate to i32), ptr @__kstrtab_zlib_inflate, ptr @__kstrtabns_zlib_inflate }, section "___ksymtab+zlib_inflate", align 4
@__kstrtab_zlib_inflateInit2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_inflateInit2 = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_inflateInit2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_inflateInit2 to i32), ptr @__kstrtab_zlib_inflateInit2, ptr @__kstrtabns_zlib_inflateInit2 }, section "___ksymtab+zlib_inflateInit2", align 4
@__kstrtab_zlib_inflateEnd = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_inflateEnd = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_inflateEnd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_inflateEnd to i32), ptr @__kstrtab_zlib_inflateEnd, ptr @__kstrtabns_zlib_inflateEnd }, section "___ksymtab+zlib_inflateEnd", align 4
@__kstrtab_zlib_inflateReset = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_inflateReset = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_inflateReset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_inflateReset to i32), ptr @__kstrtab_zlib_inflateReset, ptr @__kstrtabns_zlib_inflateReset }, section "___ksymtab+zlib_inflateReset", align 4
@__kstrtab_zlib_inflateIncomp = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_inflateIncomp = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_inflateIncomp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_inflateIncomp to i32), ptr @__kstrtab_zlib_inflateIncomp, ptr @__kstrtabns_zlib_inflateIncomp }, section "___ksymtab+zlib_inflateIncomp", align 4
@__kstrtab_zlib_inflate_blob = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_inflate_blob = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_inflate_blob = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_inflate_blob to i32), ptr @__kstrtab_zlib_inflate_blob, ptr @__kstrtabns_zlib_inflate_blob }, section "___ksymtab+zlib_inflate_blob", align 4
@__UNIQUE_ID_file100 = internal constant [48 x i8] c"zlib_inflate.file=lib/zlib_inflate/zlib_inflate\00", section ".modinfo", align 1
@__UNIQUE_ID_license101 = internal constant [25 x i8] c"zlib_inflate.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_file100, ptr @__UNIQUE_ID_license101, ptr @__ksymtab_zlib_inflate, ptr @__ksymtab_zlib_inflateEnd, ptr @__ksymtab_zlib_inflateIncomp, ptr @__ksymtab_zlib_inflateInit2, ptr @__ksymtab_zlib_inflateReset, ptr @__ksymtab_zlib_inflate_blob, ptr @__ksymtab_zlib_inflate_workspacesize], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate_workspacesize() #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateEnd(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateReset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateIncomp(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate_blob(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

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
