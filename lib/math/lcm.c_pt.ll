; ModuleID = '/llk/IR/lib/math/lcm.c_pt.bc'
source_filename = "../lib/math/lcm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lcm:\09\09\09\09\09"
module asm "\09.asciz \09\22lcm\22\09\09\09\09\09"
module asm "__kstrtabns_lcm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lcm_not_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22lcm_not_zero\22\09\09\09\09\09"
module asm "__kstrtabns_lcm_not_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_lcm = external dso_local constant [0 x i8], align 1
@__kstrtabns_lcm = external dso_local constant [0 x i8], align 1
@__ksymtab_lcm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lcm to i32), ptr @__kstrtab_lcm, ptr @__kstrtabns_lcm }, section "___ksymtab_gpl+lcm", align 4
@__kstrtab_lcm_not_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_lcm_not_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_lcm_not_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lcm_not_zero to i32), ptr @__kstrtab_lcm_not_zero, ptr @__kstrtabns_lcm_not_zero }, section "___ksymtab_gpl+lcm_not_zero", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_lcm, ptr @__ksymtab_lcm_not_zero], section "llvm.metadata"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @lcm(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp ne i32 %0, 0
  %4 = icmp ne i32 %1, 0
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call i32 @gcd(i32 noundef %0, i32 noundef %1) #2
  %8 = udiv i32 %0, %7
  %9 = mul i32 %8, %1
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @lcm_not_zero(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp ne i32 %0, 0
  %4 = icmp ne i32 %1, 0
  %5 = and i1 %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 %0, i32 %1
  br label %14

9:                                                ; preds = %2
  %10 = tail call i32 @gcd(i32 noundef %0, i32 noundef %1) #2
  %11 = udiv i32 %0, %10
  %12 = mul i32 %11, %1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %6
  %15 = phi i32 [ %8, %6 ], [ %1, %9 ]
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ %15, %14 ], [ %12, %9 ]
  ret i32 %17
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readnone willreturn }

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
