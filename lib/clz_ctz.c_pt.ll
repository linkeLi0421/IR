; ModuleID = '/llk/IR/lib/clz_ctz.c_pt.bc'
source_filename = "../lib/clz_ctz.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ctzsi2:\09\09\09\09\09"
module asm "\09.asciz \09\22__ctzsi2\22\09\09\09\09\09"
module asm "__kstrtabns___ctzsi2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clzsi2:\09\09\09\09\09"
module asm "\09.asciz \09\22__clzsi2\22\09\09\09\09\09"
module asm "__kstrtabns___clzsi2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clzdi2:\09\09\09\09\09"
module asm "\09.asciz \09\22__clzdi2\22\09\09\09\09\09"
module asm "__kstrtabns___clzdi2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ctzdi2:\09\09\09\09\09"
module asm "\09.asciz \09\22__ctzdi2\22\09\09\09\09\09"
module asm "__kstrtabns___ctzdi2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab___ctzsi2 = external dso_local constant [0 x i8], align 1
@__kstrtabns___ctzsi2 = external dso_local constant [0 x i8], align 1
@__ksymtab___ctzsi2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ctzsi2 to i32), ptr @__kstrtab___ctzsi2, ptr @__kstrtabns___ctzsi2 }, section "___ksymtab+__ctzsi2", align 4
@__kstrtab___clzsi2 = external dso_local constant [0 x i8], align 1
@__kstrtabns___clzsi2 = external dso_local constant [0 x i8], align 1
@__ksymtab___clzsi2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clzsi2 to i32), ptr @__kstrtab___clzsi2, ptr @__kstrtabns___clzsi2 }, section "___ksymtab+__clzsi2", align 4
@__kstrtab___clzdi2 = external dso_local constant [0 x i8], align 1
@__kstrtabns___clzdi2 = external dso_local constant [0 x i8], align 1
@__ksymtab___clzdi2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clzdi2 to i32), ptr @__kstrtab___clzdi2, ptr @__kstrtabns___clzdi2 }, section "___ksymtab+__clzdi2", align 4
@__kstrtab___ctzdi2 = external dso_local constant [0 x i8], align 1
@__kstrtabns___ctzdi2 = external dso_local constant [0 x i8], align 1
@__ksymtab___ctzdi2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ctzdi2 to i32), ptr @__kstrtab___ctzdi2, ptr @__kstrtabns___ctzdi2 }, section "___ksymtab+__ctzdi2", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab___clzdi2, ptr @__ksymtab___clzsi2, ptr @__ksymtab___ctzdi2, ptr @__ksymtab___ctzsi2], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @__ctzsi2(i32 noundef %0) #0 {
  %2 = tail call i32 @llvm.cttz.i32(i32 %0, i1 false) #2, !range !8
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @__clzsi2(i32 noundef %0) #0 {
  %2 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 false) #2, !range !8
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @__clzdi2(i32 noundef %0) #0 {
  %2 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 false) #2, !range !8
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @__ctzdi2(i32 noundef %0) #0 {
  %2 = tail call i32 @llvm.cttz.i32(i32 %0, i1 false) #2, !range !8
  ret i32 %2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }

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
!8 = !{i32 0, i32 33}
