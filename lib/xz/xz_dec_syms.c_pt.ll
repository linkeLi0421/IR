; ModuleID = '/llk/IR/lib/xz/xz_dec_syms.c_pt.bc'
source_filename = "../lib/xz/xz_dec_syms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xz_dec_init:\09\09\09\09\09"
module asm "\09.asciz \09\22xz_dec_init\22\09\09\09\09\09"
module asm "__kstrtabns_xz_dec_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xz_dec_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22xz_dec_reset\22\09\09\09\09\09"
module asm "__kstrtabns_xz_dec_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xz_dec_run:\09\09\09\09\09"
module asm "\09.asciz \09\22xz_dec_run\22\09\09\09\09\09"
module asm "__kstrtabns_xz_dec_run:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xz_dec_end:\09\09\09\09\09"
module asm "\09.asciz \09\22xz_dec_end\22\09\09\09\09\09"
module asm "__kstrtabns_xz_dec_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }

@__kstrtab_xz_dec_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_xz_dec_init = external dso_local constant [0 x i8], align 1
@__ksymtab_xz_dec_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xz_dec_init to i32), ptr @__kstrtab_xz_dec_init, ptr @__kstrtabns_xz_dec_init }, section "___ksymtab+xz_dec_init", align 4
@__kstrtab_xz_dec_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_xz_dec_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_xz_dec_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xz_dec_reset to i32), ptr @__kstrtab_xz_dec_reset, ptr @__kstrtabns_xz_dec_reset }, section "___ksymtab+xz_dec_reset", align 4
@__kstrtab_xz_dec_run = external dso_local constant [0 x i8], align 1
@__kstrtabns_xz_dec_run = external dso_local constant [0 x i8], align 1
@__ksymtab_xz_dec_run = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xz_dec_run to i32), ptr @__kstrtab_xz_dec_run, ptr @__kstrtabns_xz_dec_run }, section "___ksymtab+xz_dec_run", align 4
@__kstrtab_xz_dec_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_xz_dec_end = external dso_local constant [0 x i8], align 1
@__ksymtab_xz_dec_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xz_dec_end to i32), ptr @__kstrtab_xz_dec_end, ptr @__kstrtabns_xz_dec_end }, section "___ksymtab+xz_dec_end", align 4
@__UNIQUE_ID_description100 = internal constant [35 x i8] c"xz_dec.description=XZ decompressor\00", section ".modinfo", align 1
@__UNIQUE_ID_version101 = internal constant [19 x i8] c"xz_dec.version=1.1\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"xz_dec\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_author102 = internal constant [70 x i8] c"xz_dec.author=Lasse Collin <lasse.collin@tukaani.org> and Igor Pavlov\00", section ".modinfo", align 1
@__UNIQUE_ID_file103 = internal constant [26 x i8] c"xz_dec.file=lib/xz/xz_dec\00", section ".modinfo", align 1
@__UNIQUE_ID_license104 = internal constant [19 x i8] c"xz_dec.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author102, ptr @__UNIQUE_ID_description100, ptr @__UNIQUE_ID_file103, ptr @__UNIQUE_ID_license104, ptr @__UNIQUE_ID_version101, ptr @__ksymtab_xz_dec_end, ptr @__ksymtab_xz_dec_init, ptr @__ksymtab_xz_dec_reset, ptr @__ksymtab_xz_dec_run, ptr @__modver_attr], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xz_dec_init(i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @xz_dec_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xz_dec_run(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @xz_dec_end(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

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
