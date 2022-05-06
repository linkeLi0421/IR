; ModuleID = '/llk/IR/lib/math/rational.c_pt.bc'
source_filename = "../lib/math/rational.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rational_best_approximation:\09\09\09\09\09"
module asm "\09.asciz \09\22rational_best_approximation\22\09\09\09\09\09"
module asm "__kstrtabns_rational_best_approximation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_rational_best_approximation = external dso_local constant [0 x i8], align 1
@__kstrtabns_rational_best_approximation = external dso_local constant [0 x i8], align 1
@__ksymtab_rational_best_approximation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rational_best_approximation to i32), ptr @__kstrtab_rational_best_approximation, ptr @__kstrtabns_rational_best_approximation }, section "___ksymtab+rational_best_approximation", align 4
@__UNIQUE_ID_file102 = internal constant [32 x i8] c"rational.file=lib/math/rational\00", section ".modinfo", align 1
@__UNIQUE_ID_license103 = internal constant [24 x i8] c"rational.license=GPL v2\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_file102, ptr @__UNIQUE_ID_license103, ptr @__ksymtab_rational_best_approximation], section "llvm.metadata"

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local void @rational_best_approximation(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #0 {
  br label %7

7:                                                ; preds = %15, %6
  %8 = phi i32 [ 1, %6 ], [ %10, %15 ]
  %9 = phi i32 [ 1, %6 ], [ %22, %15 ]
  %10 = phi i32 [ 0, %6 ], [ %24, %15 ]
  %11 = phi i32 [ 0, %6 ], [ %9, %15 ]
  %12 = phi i32 [ %1, %6 ], [ %20, %15 ]
  %13 = phi i32 [ %0, %6 ], [ %12, %15 ]
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %56, label %15

15:                                               ; preds = %7
  %16 = freeze i32 %13
  %17 = freeze i32 %12
  %18 = udiv i32 %16, %17
  %19 = mul i32 %18, %17
  %20 = sub i32 %16, %19
  %21 = mul i32 %18, %9
  %22 = add i32 %21, %11
  %23 = mul i32 %18, %10
  %24 = add i32 %23, %8
  %25 = icmp ugt i32 %22, %2
  %26 = icmp ugt i32 %24, %3
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %28, label %7

28:                                               ; preds = %15
  %29 = icmp eq i32 %10, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = sub i32 %3, %8
  %32 = udiv i32 %31, %10
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ %32, %30 ], [ -1, %28 ]
  %35 = icmp eq i32 %9, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = sub i32 %2, %11
  %38 = udiv i32 %37, %9
  %39 = tail call i32 @llvm.umin.i32(i32 %34, i32 %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i32 [ %39, %36 ], [ %34, %33 ]
  br i1 %29, label %51, label %42

42:                                               ; preds = %40
  %43 = shl i32 %41, 1
  %44 = icmp ugt i32 %43, %18
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = icmp eq i32 %43, %18
  br i1 %46, label %47, label %56

47:                                               ; preds = %45
  %48 = mul i32 %12, %8
  %49 = mul i32 %20, %10
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47, %42, %40
  %52 = mul i32 %41, %9
  %53 = add i32 %52, %11
  %54 = mul i32 %41, %10
  %55 = add i32 %54, %8
  br label %56

56:                                               ; preds = %51, %47, %45, %7
  %57 = phi i32 [ %9, %45 ], [ %9, %47 ], [ %53, %51 ], [ %9, %7 ]
  %58 = phi i32 [ %10, %45 ], [ %10, %47 ], [ %55, %51 ], [ %10, %7 ]
  store i32 %57, ptr %4, align 4
  store i32 %58, ptr %5, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

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
