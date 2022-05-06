; ModuleID = '/llk/IR/lib/find_bit.c_pt.bc'
source_filename = "../lib/find_bit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__find_next_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22_find_next_bit\22\09\09\09\09\09"
module asm "__kstrtabns__find_next_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__find_first_and_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22_find_first_and_bit\22\09\09\09\09\09"
module asm "__kstrtabns__find_first_and_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__find_last_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22_find_last_bit\22\09\09\09\09\09"
module asm "__kstrtabns__find_last_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_next_clump8:\09\09\09\09\09"
module asm "\09.asciz \09\22find_next_clump8\22\09\09\09\09\09"
module asm "__kstrtabns_find_next_clump8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab__find_next_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns__find_next_bit = external dso_local constant [0 x i8], align 1
@__ksymtab__find_next_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_find_next_bit to i32), ptr @__kstrtab__find_next_bit, ptr @__kstrtabns__find_next_bit }, section "___ksymtab+_find_next_bit", align 4
@__kstrtab__find_first_and_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns__find_first_and_bit = external dso_local constant [0 x i8], align 1
@__ksymtab__find_first_and_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_find_first_and_bit to i32), ptr @__kstrtab__find_first_and_bit, ptr @__kstrtabns__find_first_and_bit }, section "___ksymtab+_find_first_and_bit", align 4
@__kstrtab__find_last_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns__find_last_bit = external dso_local constant [0 x i8], align 1
@__ksymtab__find_last_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_find_last_bit to i32), ptr @__kstrtab__find_last_bit, ptr @__kstrtabns__find_last_bit }, section "___ksymtab+_find_last_bit", align 4
@__kstrtab_find_next_clump8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_next_clump8 = external dso_local constant [0 x i8], align 1
@__ksymtab_find_next_clump8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_next_clump8 to i32), ptr @__kstrtab_find_next_clump8, ptr @__kstrtabns_find_next_clump8 }, section "___ksymtab+find_next_clump8", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab__find_first_and_bit, ptr @__ksymtab__find_last_bit, ptr @__ksymtab__find_next_bit, ptr @__ksymtab_find_next_clump8], section "llvm.metadata"

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @_find_next_bit(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = icmp ult i32 %3, %2
  br i1 %7, label %8, label %52, !prof !8

8:                                                ; preds = %6
  %9 = lshr i32 %3, 5
  %10 = getelementptr i32, ptr %0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq ptr %1, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr i32, ptr %1, i32 %9
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %11
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i32 [ %16, %13 ], [ %11, %8 ]
  %19 = xor i32 %18, %4
  %20 = and i32 %3, 31
  %21 = shl nsw i32 -1, %20
  %22 = icmp eq i32 %5, 0
  %23 = tail call i32 @llvm.bswap.i32(i32 %21) #4
  %24 = select i1 %22, i32 %21, i32 %23
  %25 = and i32 %19, %24
  %26 = and i32 %3, -32
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %40, %17
  %29 = phi i32 [ %30, %40 ], [ %26, %17 ]
  %30 = add i32 %29, 32
  %31 = icmp ult i32 %30, %2
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = lshr exact i32 %30, 5
  %34 = getelementptr i32, ptr %0, i32 %33
  %35 = load i32, ptr %34, align 4
  br i1 %12, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr i32, ptr %1, i32 %33
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, %35
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %39, %36 ], [ %35, %32 ]
  %42 = xor i32 %41, %4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %28, label %44

44:                                               ; preds = %40, %17
  %45 = phi i32 [ %25, %17 ], [ %42, %40 ]
  %46 = phi i32 [ %26, %17 ], [ %30, %40 ]
  %47 = tail call i32 @llvm.bswap.i32(i32 %45) #4
  %48 = select i1 %22, i32 %45, i32 %47
  %49 = tail call i32 @llvm.cttz.i32(i32 %48, i1 false) #4, !range !9
  %50 = add i32 %49, %46
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 %2)
  br label %52

52:                                               ; preds = %44, %28, %6
  %53 = phi i32 [ %51, %44 ], [ %2, %6 ], [ %2, %28 ]
  ret i32 %53
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @_find_first_and_bit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4
  %7 = load i32, ptr %1, align 4
  %8 = and i32 %7, %6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %15, %5
  %11 = phi i32 [ %12, %15 ], [ 0, %5 ]
  %12 = add i32 %11, 1
  %13 = shl i32 %12, 5
  %14 = icmp ult i32 %13, %2
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = getelementptr i32, ptr %0, i32 %12
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i32, ptr %1, i32 %12
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %10, label %22

22:                                               ; preds = %15, %5
  %23 = phi i32 [ 0, %5 ], [ %13, %15 ]
  %24 = phi i32 [ %8, %5 ], [ %20, %15 ]
  %25 = tail call i32 @llvm.cttz.i32(i32 %24, i1 true) #4, !range !9
  %26 = or i32 %25, %23
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %2)
  br label %28

28:                                               ; preds = %22, %10, %3
  %29 = phi i32 [ %27, %22 ], [ 0, %3 ], [ %2, %10 ]
  ret i32 %29
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @_find_last_bit(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = sub i32 0, %1
  %6 = and i32 %5, 31
  %7 = lshr i32 -1, %6
  %8 = add i32 %1, -1
  %9 = lshr i32 %8, 5
  br label %10

10:                                               ; preds = %17, %4
  %11 = phi i32 [ %7, %4 ], [ -1, %17 ]
  %12 = phi i32 [ %9, %4 ], [ %18, %17 ]
  %13 = getelementptr i32, ptr %0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = add nsw i32 %12, -1
  %19 = icmp eq i32 %12, 0
  br i1 %19, label %25, label %10

20:                                               ; preds = %10
  %21 = shl i32 %12, 5
  %22 = tail call i32 @llvm.ctlz.i32(i32 %15, i1 true) #4, !range !9
  %23 = or i32 %22, %21
  %24 = xor i32 %23, 31
  br label %25

25:                                               ; preds = %20, %17, %2
  %26 = phi i32 [ %24, %20 ], [ 0, %2 ], [ %1, %17 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @find_next_clump8(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef %2, i32 noundef %3) #4
  %6 = icmp eq i32 %5, %2
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = and i32 %5, -8
  %9 = lshr i32 %5, 5
  %10 = and i32 %5, 24
  %11 = getelementptr i32, ptr %1, i32 %9
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, %10
  %14 = and i32 %13, 255
  store i32 %14, ptr %0, align 4
  br label %15

15:                                               ; preds = %7, %4
  %16 = phi i32 [ %8, %7 ], [ %2, %4 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i32 0, i32 33}
