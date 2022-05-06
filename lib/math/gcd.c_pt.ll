; ModuleID = '/llk/IR/lib/math/gcd.c_pt.bc'
source_filename = "../lib/math/gcd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gcd:\09\09\09\09\09"
module asm "\09.asciz \09\22gcd\22\09\09\09\09\09"
module asm "__kstrtabns_gcd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_gcd = external dso_local constant [0 x i8], align 1
@__kstrtabns_gcd = external dso_local constant [0 x i8], align 1
@__ksymtab_gcd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gcd to i32), ptr @__kstrtab_gcd, ptr @__kstrtabns_gcd }, section "___ksymtab_gpl+gcd", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_gcd], section "llvm.metadata"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @gcd(i32 noundef %0, i32 noundef %1) #0 {
  %3 = or i32 %1, %0
  %4 = icmp ne i32 %0, 0
  %5 = icmp ne i32 %1, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %35

7:                                                ; preds = %2
  %8 = tail call i32 @llvm.cttz.i32(i32 %1, i1 true) #2, !range !8
  %9 = lshr i32 %1, %8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @llvm.cttz.i32(i32 %0, i1 true) #2, !range !8
  %13 = lshr i32 %0, %12
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %21

15:                                               ; preds = %7
  %16 = sub i32 0, %3
  %17 = and i32 %3, %16
  br label %35

18:                                               ; preds = %28, %11
  %19 = sub i32 0, %3
  %20 = and i32 %3, %19
  br label %35

21:                                               ; preds = %28, %11
  %22 = phi i32 [ %33, %28 ], [ %13, %11 ]
  %23 = phi i32 [ %30, %28 ], [ %9, %11 ]
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true) #2, !range !8
  %27 = shl i32 %22, %26
  br label %35

28:                                               ; preds = %21
  %29 = tail call i32 @llvm.umax.i32(i32 %22, i32 %23)
  %30 = tail call i32 @llvm.umin.i32(i32 %22, i32 %23)
  %31 = sub i32 %29, %30
  %32 = tail call i32 @llvm.cttz.i32(i32 %31, i1 false) #2, !range !8
  %33 = lshr i32 %31, %32
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %18, label %21

35:                                               ; preds = %25, %18, %15, %2
  %36 = phi i32 [ %17, %15 ], [ %20, %18 ], [ %27, %25 ], [ %3, %2 ]
  ret i32 %36
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
