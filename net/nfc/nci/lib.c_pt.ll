; ModuleID = '/llk/IR/net/nfc/nci/lib.c_pt.bc'
source_filename = "../net/nfc/nci/lib.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_to_errno:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_to_errno\22\09\09\09\09\09"
module asm "__kstrtabns_nci_to_errno:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_nci_to_errno = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_to_errno = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_to_errno = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_to_errno to i32), ptr @__kstrtab_nci_to_errno, ptr @__kstrtabns_nci_to_errno }, section "___ksymtab+nci_to_errno", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_nci_to_errno], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @nci_to_errno(i8 noundef zeroext %0) #0 {
  switch i8 %0, label %12 [
    i8 0, label %13
    i8 1, label %2
    i8 2, label %3
    i8 4, label %4
    i8 5, label %5
    i8 6, label %5
    i8 9, label %5
    i8 -79, label %5
    i8 -62, label %5
    i8 7, label %6
    i8 8, label %6
    i8 10, label %7
    i8 -96, label %8
    i8 -95, label %9
    i8 -64, label %9
    i8 -80, label %10
    i8 -63, label %10
    i8 -78, label %11
    i8 -61, label %11
  ]

2:                                                ; preds = %1
  br label %13

3:                                                ; preds = %1
  br label %13

4:                                                ; preds = %1
  br label %13

5:                                                ; preds = %1, %1, %1, %1, %1
  br label %13

6:                                                ; preds = %1, %1
  br label %13

7:                                                ; preds = %1
  br label %13

8:                                                ; preds = %1
  br label %13

9:                                                ; preds = %1, %1
  br label %13

10:                                               ; preds = %1, %1
  br label %13

11:                                               ; preds = %1, %1
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2, %1
  %14 = phi i32 [ -38, %12 ], [ -110, %11 ], [ -70, %10 ], [ -111, %9 ], [ -114, %8 ], [ -90, %7 ], [ -56, %6 ], [ -71, %5 ], [ -112, %4 ], [ -74, %3 ], [ -16, %2 ], [ 0, %1 ]
  ret i32 %14
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
