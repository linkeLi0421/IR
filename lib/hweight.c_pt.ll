; ModuleID = '/llk/IR/lib/hweight.c_pt.bc'
source_filename = "../lib/hweight.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sw_hweight32:\09\09\09\09\09"
module asm "\09.asciz \09\22__sw_hweight32\22\09\09\09\09\09"
module asm "__kstrtabns___sw_hweight32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sw_hweight16:\09\09\09\09\09"
module asm "\09.asciz \09\22__sw_hweight16\22\09\09\09\09\09"
module asm "__kstrtabns___sw_hweight16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sw_hweight8:\09\09\09\09\09"
module asm "\09.asciz \09\22__sw_hweight8\22\09\09\09\09\09"
module asm "__kstrtabns___sw_hweight8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sw_hweight64:\09\09\09\09\09"
module asm "\09.asciz \09\22__sw_hweight64\22\09\09\09\09\09"
module asm "__kstrtabns___sw_hweight64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab___sw_hweight32 = external dso_local constant [0 x i8], align 1
@__kstrtabns___sw_hweight32 = external dso_local constant [0 x i8], align 1
@__ksymtab___sw_hweight32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sw_hweight32 to i32), ptr @__kstrtab___sw_hweight32, ptr @__kstrtabns___sw_hweight32 }, section "___ksymtab+__sw_hweight32", align 4
@__kstrtab___sw_hweight16 = external dso_local constant [0 x i8], align 1
@__kstrtabns___sw_hweight16 = external dso_local constant [0 x i8], align 1
@__ksymtab___sw_hweight16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sw_hweight16 to i32), ptr @__kstrtab___sw_hweight16, ptr @__kstrtabns___sw_hweight16 }, section "___ksymtab+__sw_hweight16", align 4
@__kstrtab___sw_hweight8 = external dso_local constant [0 x i8], align 1
@__kstrtabns___sw_hweight8 = external dso_local constant [0 x i8], align 1
@__ksymtab___sw_hweight8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sw_hweight8 to i32), ptr @__kstrtab___sw_hweight8, ptr @__kstrtabns___sw_hweight8 }, section "___ksymtab+__sw_hweight8", align 4
@__kstrtab___sw_hweight64 = external dso_local constant [0 x i8], align 1
@__kstrtabns___sw_hweight64 = external dso_local constant [0 x i8], align 1
@__ksymtab___sw_hweight64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sw_hweight64 to i32), ptr @__kstrtab___sw_hweight64, ptr @__kstrtabns___sw_hweight64 }, section "___ksymtab+__sw_hweight64", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab___sw_hweight16, ptr @__ksymtab___sw_hweight32, ptr @__ksymtab___sw_hweight64, ptr @__ksymtab___sw_hweight8], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @__sw_hweight32(i32 noundef %0) #0 {
  %2 = lshr i32 %0, 1
  %3 = and i32 %2, 1431655765
  %4 = sub i32 %0, %3
  %5 = and i32 %4, 858993459
  %6 = lshr i32 %4, 2
  %7 = and i32 %6, 858993459
  %8 = add nuw nsw i32 %7, %5
  %9 = lshr i32 %8, 4
  %10 = add nuw nsw i32 %9, %8
  %11 = and i32 %10, 252645135
  %12 = lshr i32 %11, 8
  %13 = add nuw nsw i32 %12, %11
  %14 = lshr i32 %13, 16
  %15 = add nuw nsw i32 %14, %13
  %16 = and i32 %15, 63
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @__sw_hweight16(i32 noundef %0) #0 {
  %2 = lshr i32 %0, 1
  %3 = and i32 %2, 21845
  %4 = sub i32 %0, %3
  %5 = and i32 %4, 13107
  %6 = lshr i32 %4, 2
  %7 = and i32 %6, 13107
  %8 = add nuw nsw i32 %7, %5
  %9 = lshr i32 %8, 4
  %10 = add nuw nsw i32 %9, %8
  %11 = and i32 %10, 3855
  %12 = lshr i32 %11, 8
  %13 = add nuw nsw i32 %12, %11
  %14 = and i32 %13, 31
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @__sw_hweight8(i32 noundef %0) #0 {
  %2 = lshr i32 %0, 1
  %3 = and i32 %2, 85
  %4 = sub i32 %0, %3
  %5 = and i32 %4, 51
  %6 = lshr i32 %4, 2
  %7 = and i32 %6, 51
  %8 = add nuw nsw i32 %7, %5
  %9 = lshr i32 %8, 4
  %10 = add nuw nsw i32 %9, %8
  %11 = and i32 %10, 15
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @__sw_hweight64(i64 noundef %0) #0 {
  %2 = lshr i64 %0, 32
  %3 = trunc i64 %2 to i32
  %4 = lshr i32 %3, 1
  %5 = and i32 %4, 1431655765
  %6 = sub i32 %3, %5
  %7 = and i32 %6, 858993459
  %8 = lshr i32 %6, 2
  %9 = and i32 %8, 858993459
  %10 = add nuw nsw i32 %9, %7
  %11 = lshr i32 %10, 4
  %12 = add nuw nsw i32 %11, %10
  %13 = and i32 %12, 252645135
  %14 = lshr i32 %13, 8
  %15 = add nuw nsw i32 %14, %13
  %16 = lshr i32 %15, 16
  %17 = add nuw nsw i32 %16, %15
  %18 = and i32 %17, 63
  %19 = trunc i64 %0 to i32
  %20 = lshr i32 %19, 1
  %21 = and i32 %20, 1431655765
  %22 = sub i32 %19, %21
  %23 = and i32 %22, 858993459
  %24 = lshr i32 %22, 2
  %25 = and i32 %24, 858993459
  %26 = add nuw nsw i32 %25, %23
  %27 = lshr i32 %26, 4
  %28 = add nuw nsw i32 %27, %26
  %29 = and i32 %28, 252645135
  %30 = lshr i32 %29, 8
  %31 = add nuw nsw i32 %30, %29
  %32 = lshr i32 %31, 16
  %33 = add nuw nsw i32 %32, %31
  %34 = and i32 %33, 63
  %35 = add nuw nsw i32 %18, %34
  ret i32 %35
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
