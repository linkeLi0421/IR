; ModuleID = '/llk/IR/lib/math/int_sqrt.c_pt.bc'
source_filename = "../lib/math/int_sqrt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_int_sqrt:\09\09\09\09\09"
module asm "\09.asciz \09\22int_sqrt\22\09\09\09\09\09"
module asm "__kstrtabns_int_sqrt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_int_sqrt64:\09\09\09\09\09"
module asm "\09.asciz \09\22int_sqrt64\22\09\09\09\09\09"
module asm "__kstrtabns_int_sqrt64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_int_sqrt = external dso_local constant [0 x i8], align 1
@__kstrtabns_int_sqrt = external dso_local constant [0 x i8], align 1
@__ksymtab_int_sqrt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @int_sqrt to i32), ptr @__kstrtab_int_sqrt, ptr @__kstrtabns_int_sqrt }, section "___ksymtab+int_sqrt", align 4
@__kstrtab_int_sqrt64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_int_sqrt64 = external dso_local constant [0 x i8], align 1
@__ksymtab_int_sqrt64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @int_sqrt64 to i32), ptr @__kstrtab_int_sqrt64, ptr @__kstrtabns_int_sqrt64 }, section "___ksymtab+int_sqrt64", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_int_sqrt, ptr @__ksymtab_int_sqrt64], section "llvm.metadata"

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local i32 @int_sqrt(i32 noundef %0) #0 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 true) #2, !range !8
  %5 = and i32 %4, 30
  %6 = xor i32 %5, 30
  %7 = shl nuw i32 1, %6
  br label %8

8:                                                ; preds = %8, %3
  %9 = phi i32 [ 0, %3 ], [ %18, %8 ]
  %10 = phi i32 [ %7, %3 ], [ %19, %8 ]
  %11 = phi i32 [ %0, %3 ], [ %16, %8 ]
  %12 = add i32 %9, %10
  %13 = lshr i32 %9, 1
  %14 = icmp ult i32 %11, %12
  %15 = select i1 %14, i32 0, i32 %12
  %16 = sub i32 %11, %15
  %17 = select i1 %14, i32 0, i32 %10
  %18 = add nuw i32 %17, %13
  %19 = lshr i32 %10, 2
  %20 = icmp ult i32 %10, 4
  br i1 %20, label %21, label %8

21:                                               ; preds = %8, %1
  %22 = phi i32 [ %0, %1 ], [ %18, %8 ]
  ret i32 %22
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local i32 @int_sqrt64(i64 noundef %0) #0 {
  %2 = icmp ult i64 %0, 4294967296
  br i1 %2, label %3, label %24

3:                                                ; preds = %1
  %4 = trunc i64 %0 to i32
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %47, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 true) #2, !range !8
  %8 = and i32 %7, 30
  %9 = xor i32 %8, 30
  %10 = shl nuw i32 1, %9
  br label %11

11:                                               ; preds = %11, %6
  %12 = phi i32 [ 0, %6 ], [ %21, %11 ]
  %13 = phi i32 [ %10, %6 ], [ %22, %11 ]
  %14 = phi i32 [ %4, %6 ], [ %19, %11 ]
  %15 = add i32 %13, %12
  %16 = lshr i32 %12, 1
  %17 = icmp ult i32 %14, %15
  %18 = select i1 %17, i32 0, i32 %15
  %19 = sub i32 %14, %18
  %20 = select i1 %17, i32 0, i32 %13
  %21 = add nuw i32 %20, %16
  %22 = lshr i32 %13, 2
  %23 = icmp ult i32 %13, 4
  br i1 %23, label %47, label %11

24:                                               ; preds = %1
  %25 = lshr i64 %0, 32
  %26 = trunc i64 %25 to i32
  %27 = tail call i32 @llvm.ctlz.i32(i32 %26, i1 false) #2, !range !8
  %28 = and i32 %27, 62
  %29 = xor i32 %28, 62
  %30 = zext i32 %29 to i64
  %31 = shl nuw i64 1, %30
  br label %32

32:                                               ; preds = %32, %24
  %33 = phi i64 [ 0, %24 ], [ %42, %32 ]
  %34 = phi i64 [ %31, %24 ], [ %43, %32 ]
  %35 = phi i64 [ %0, %24 ], [ %40, %32 ]
  %36 = add i64 %33, %34
  %37 = lshr i64 %33, 1
  %38 = icmp ult i64 %35, %36
  %39 = select i1 %38, i64 0, i64 %36
  %40 = sub i64 %35, %39
  %41 = select i1 %38, i64 0, i64 %34
  %42 = add nuw i64 %41, %37
  %43 = lshr i64 %34, 2
  %44 = icmp ult i64 %34, 4
  br i1 %44, label %45, label %32

45:                                               ; preds = %32
  %46 = trunc i64 %42 to i32
  br label %47

47:                                               ; preds = %45, %11, %3
  %48 = phi i32 [ %46, %45 ], [ %4, %3 ], [ %21, %11 ]
  ret i32 %48
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

attributes #0 = { nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
