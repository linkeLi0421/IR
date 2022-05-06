; ModuleID = '/llk/IR/lib/bcd.c_pt.bc'
source_filename = "../lib/bcd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__bcd2bin:\09\09\09\09\09"
module asm "\09.asciz \09\22_bcd2bin\22\09\09\09\09\09"
module asm "__kstrtabns__bcd2bin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__bin2bcd:\09\09\09\09\09"
module asm "\09.asciz \09\22_bin2bcd\22\09\09\09\09\09"
module asm "__kstrtabns__bin2bcd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab__bcd2bin = external dso_local constant [0 x i8], align 1
@__kstrtabns__bcd2bin = external dso_local constant [0 x i8], align 1
@__ksymtab__bcd2bin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_bcd2bin to i32), ptr @__kstrtab__bcd2bin, ptr @__kstrtabns__bcd2bin }, section "___ksymtab+_bcd2bin", align 4
@__kstrtab__bin2bcd = external dso_local constant [0 x i8], align 1
@__kstrtabns__bin2bcd = external dso_local constant [0 x i8], align 1
@__ksymtab__bin2bcd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_bin2bcd to i32), ptr @__kstrtab__bin2bcd, ptr @__kstrtabns__bin2bcd }, section "___ksymtab+_bin2bcd", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab__bcd2bin, ptr @__ksymtab__bin2bcd], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @_bcd2bin(i8 noundef zeroext %0) #0 {
  %2 = zext i8 %0 to i32
  %3 = and i32 %2, 15
  %4 = lshr i32 %2, 4
  %5 = mul nuw nsw i32 %4, 10
  %6 = add nuw nsw i32 %5, %3
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @_bin2bcd(i32 noundef %0) #0 {
  %2 = udiv i32 %0, 10
  %3 = shl i32 %2, 4
  %4 = mul i32 %2, 10
  %5 = sub i32 %0, %4
  %6 = or i32 %3, %5
  %7 = trunc i32 %6 to i8
  ret i8 %7
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
