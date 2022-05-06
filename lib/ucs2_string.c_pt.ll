; ModuleID = '/llk/IR/lib/ucs2_string.c_pt.bc'
source_filename = "../lib/ucs2_string.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ucs2_strnlen:\09\09\09\09\09"
module asm "\09.asciz \09\22ucs2_strnlen\22\09\09\09\09\09"
module asm "__kstrtabns_ucs2_strnlen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ucs2_strlen:\09\09\09\09\09"
module asm "\09.asciz \09\22ucs2_strlen\22\09\09\09\09\09"
module asm "__kstrtabns_ucs2_strlen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ucs2_strsize:\09\09\09\09\09"
module asm "\09.asciz \09\22ucs2_strsize\22\09\09\09\09\09"
module asm "__kstrtabns_ucs2_strsize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ucs2_strncmp:\09\09\09\09\09"
module asm "\09.asciz \09\22ucs2_strncmp\22\09\09\09\09\09"
module asm "__kstrtabns_ucs2_strncmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ucs2_utf8size:\09\09\09\09\09"
module asm "\09.asciz \09\22ucs2_utf8size\22\09\09\09\09\09"
module asm "__kstrtabns_ucs2_utf8size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ucs2_as_utf8:\09\09\09\09\09"
module asm "\09.asciz \09\22ucs2_as_utf8\22\09\09\09\09\09"
module asm "__kstrtabns_ucs2_as_utf8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_ucs2_strnlen = external dso_local constant [0 x i8], align 1
@__kstrtabns_ucs2_strnlen = external dso_local constant [0 x i8], align 1
@__ksymtab_ucs2_strnlen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ucs2_strnlen to i32), ptr @__kstrtab_ucs2_strnlen, ptr @__kstrtabns_ucs2_strnlen }, section "___ksymtab+ucs2_strnlen", align 4
@__kstrtab_ucs2_strlen = external dso_local constant [0 x i8], align 1
@__kstrtabns_ucs2_strlen = external dso_local constant [0 x i8], align 1
@__ksymtab_ucs2_strlen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ucs2_strlen to i32), ptr @__kstrtab_ucs2_strlen, ptr @__kstrtabns_ucs2_strlen }, section "___ksymtab+ucs2_strlen", align 4
@__kstrtab_ucs2_strsize = external dso_local constant [0 x i8], align 1
@__kstrtabns_ucs2_strsize = external dso_local constant [0 x i8], align 1
@__ksymtab_ucs2_strsize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ucs2_strsize to i32), ptr @__kstrtab_ucs2_strsize, ptr @__kstrtabns_ucs2_strsize }, section "___ksymtab+ucs2_strsize", align 4
@__kstrtab_ucs2_strncmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_ucs2_strncmp = external dso_local constant [0 x i8], align 1
@__ksymtab_ucs2_strncmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ucs2_strncmp to i32), ptr @__kstrtab_ucs2_strncmp, ptr @__kstrtabns_ucs2_strncmp }, section "___ksymtab+ucs2_strncmp", align 4
@__kstrtab_ucs2_utf8size = external dso_local constant [0 x i8], align 1
@__kstrtabns_ucs2_utf8size = external dso_local constant [0 x i8], align 1
@__ksymtab_ucs2_utf8size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ucs2_utf8size to i32), ptr @__kstrtab_ucs2_utf8size, ptr @__kstrtabns_ucs2_utf8size }, section "___ksymtab+ucs2_utf8size", align 4
@__kstrtab_ucs2_as_utf8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ucs2_as_utf8 = external dso_local constant [0 x i8], align 1
@__ksymtab_ucs2_as_utf8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ucs2_as_utf8 to i32), ptr @__kstrtab_ucs2_as_utf8, ptr @__kstrtabns_ucs2_as_utf8 }, section "___ksymtab+ucs2_as_utf8", align 4
@__UNIQUE_ID_file100 = internal constant [33 x i8] c"ucs2_string.file=lib/ucs2_string\00", section ".modinfo", align 1
@__UNIQUE_ID_license101 = internal constant [27 x i8] c"ucs2_string.license=GPL v2\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_file100, ptr @__UNIQUE_ID_license101, ptr @__ksymtab_ucs2_as_utf8, ptr @__ksymtab_ucs2_strlen, ptr @__ksymtab_ucs2_strncmp, ptr @__ksymtab_ucs2_strnlen, ptr @__ksymtab_ucs2_strsize, ptr @__ksymtab_ucs2_utf8size], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ucs2_strnlen(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load i16, ptr %0, align 2
  %4 = icmp ne i16 %3, 0
  %5 = icmp ne i32 %1, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %7, %2
  %8 = phi i32 [ %11, %7 ], [ 0, %2 ]
  %9 = phi ptr [ %10, %7 ], [ %0, %2 ]
  %10 = getelementptr i16, ptr %9, i32 1
  %11 = add nuw i32 %8, 1
  %12 = load i16, ptr %10, align 2
  %13 = icmp ne i16 %12, 0
  %14 = icmp ult i32 %11, %1
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %7, label %16

16:                                               ; preds = %7, %2
  %17 = phi i32 [ 0, %2 ], [ %11, %7 ]
  ret i32 %17
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ucs2_strlen(ptr nocapture noundef readonly %0) #0 {
  %2 = load i16, ptr %0, align 2
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %4, %1
  %5 = phi i32 [ %8, %4 ], [ 0, %1 ]
  %6 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %7 = getelementptr i16, ptr %6, i32 1
  %8 = add nuw i32 %5, 1
  %9 = load i16, ptr %7, align 2
  %10 = icmp ne i16 %9, 0
  %11 = icmp ne i32 %8, -1
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %4, label %13

13:                                               ; preds = %4, %1
  %14 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %14
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ucs2_strsize(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 1
  %4 = load i16, ptr %0, align 2
  %5 = icmp ne i16 %4, 0
  %6 = icmp ugt i32 %1, 1
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %19

8:                                                ; preds = %8, %2
  %9 = phi i32 [ %12, %8 ], [ 0, %2 ]
  %10 = phi ptr [ %11, %8 ], [ %0, %2 ]
  %11 = getelementptr i16, ptr %10, i32 1
  %12 = add nuw nsw i32 %9, 1
  %13 = load i16, ptr %11, align 2
  %14 = icmp ne i16 %13, 0
  %15 = icmp ult i32 %12, %3
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %8, label %17

17:                                               ; preds = %8
  %18 = shl nuw i32 %12, 1
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ 0, %2 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ucs2_strncmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %14, %3
  %6 = phi i32 [ %18, %14 ], [ %2, %3 ]
  %7 = phi ptr [ %17, %14 ], [ %1, %3 ]
  %8 = phi ptr [ %16, %14 ], [ %0, %3 ]
  %9 = load i16, ptr %8, align 2
  %10 = load i16, ptr %7, align 2
  %11 = icmp ult i16 %9, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %5
  %13 = icmp ugt i16 %9, %10
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = icmp eq i16 %9, 0
  %16 = getelementptr i16, ptr %8, i32 1
  %17 = getelementptr i16, ptr %7, i32 1
  %18 = add i32 %6, -1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %15, i1 true, i1 %19
  br i1 %20, label %21, label %5

21:                                               ; preds = %14, %12, %5, %3
  %22 = phi i32 [ 0, %3 ], [ 0, %14 ], [ 1, %12 ], [ -1, %5 ]
  ret i32 %22
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ucs2_utf8size(ptr nocapture noundef readonly %0) #1 {
  %2 = load i16, ptr %0, align 2
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %4, %1
  %5 = phi i16 [ %15, %4 ], [ %2, %1 ]
  %6 = phi i32 [ %12, %4 ], [ 0, %1 ]
  %7 = phi i32 [ %13, %4 ], [ 0, %1 ]
  %8 = icmp ugt i16 %5, 2047
  %9 = icmp ugt i16 %5, 127
  %10 = select i1 %9, i32 2, i32 1
  %11 = select i1 %8, i32 3, i32 %10
  %12 = add i32 %6, %11
  %13 = add i32 %7, 1
  %14 = getelementptr i16, ptr %0, i32 %13
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %4

17:                                               ; preds = %4, %1
  %18 = phi i32 [ 0, %1 ], [ %12, %4 ]
  ret i32 %18
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ucs2_as_utf8(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = load i16, ptr %1, align 2
  %5 = icmp ne i16 %4, 0
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %72

8:                                                ; preds = %8, %3
  %9 = phi i32 [ %12, %8 ], [ 0, %3 ]
  %10 = phi ptr [ %11, %8 ], [ %1, %3 ]
  %11 = getelementptr i16, ptr %10, i32 1
  %12 = add nuw i32 %9, 1
  %13 = load i16, ptr %11, align 2
  %14 = icmp ne i16 %13, 0
  %15 = icmp ult i32 %12, %2
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %8, label %17

17:                                               ; preds = %8
  br i1 %6, label %18, label %76

18:                                               ; preds = %68, %17
  %19 = phi i16 [ %71, %68 ], [ %4, %17 ]
  %20 = phi i32 [ %64, %68 ], [ 0, %17 ]
  %21 = phi i32 [ %69, %68 ], [ 0, %17 ]
  %22 = phi i32 [ %62, %68 ], [ %2, %17 ]
  %23 = icmp ugt i16 %19, 2047
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = icmp ult i32 %22, 3
  br i1 %25, label %76, label %26

26:                                               ; preds = %24
  %27 = add i32 %22, -3
  %28 = lshr i16 %19, 12
  %29 = trunc i16 %28 to i8
  %30 = or i8 %29, -32
  %31 = add i32 %20, 1
  %32 = getelementptr i8, ptr %0, i32 %20
  store i8 %30, ptr %32, align 1
  %33 = lshr i16 %19, 6
  %34 = trunc i16 %33 to i8
  %35 = and i8 %34, 63
  %36 = or i8 %35, -128
  %37 = add i32 %20, 2
  %38 = getelementptr i8, ptr %0, i32 %31
  store i8 %36, ptr %38, align 1
  %39 = trunc i16 %19 to i8
  %40 = and i8 %39, 63
  %41 = or i8 %40, -128
  br label %59

42:                                               ; preds = %18
  %43 = icmp ugt i16 %19, 127
  br i1 %43, label %44, label %56

44:                                               ; preds = %42
  %45 = icmp ult i32 %22, 2
  br i1 %45, label %76, label %46

46:                                               ; preds = %44
  %47 = add i32 %22, -2
  %48 = lshr i16 %19, 6
  %49 = trunc i16 %48 to i8
  %50 = or i8 %49, -64
  %51 = add i32 %20, 1
  %52 = getelementptr i8, ptr %0, i32 %20
  store i8 %50, ptr %52, align 1
  %53 = trunc i16 %19 to i8
  %54 = and i8 %53, 63
  %55 = or i8 %54, -128
  br label %59

56:                                               ; preds = %42
  %57 = add i32 %22, -1
  %58 = trunc i16 %19 to i8
  br label %59

59:                                               ; preds = %56, %46, %26
  %60 = phi i32 [ %51, %46 ], [ %20, %56 ], [ %37, %26 ]
  %61 = phi i8 [ %55, %46 ], [ %58, %56 ], [ %41, %26 ]
  %62 = phi i32 [ %47, %46 ], [ %57, %56 ], [ %27, %26 ]
  %63 = getelementptr i8, ptr %0, i32 %60
  store i8 %61, ptr %63, align 1
  %64 = add i32 %60, 1
  %65 = icmp ne i32 %62, 0
  %66 = icmp ult i32 %21, %9
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = add nuw i32 %21, 1
  %70 = getelementptr i16, ptr %1, i32 %69
  %71 = load i16, ptr %70, align 2
  br label %18

72:                                               ; preds = %59, %3
  %73 = phi i32 [ %2, %3 ], [ %62, %59 ]
  %74 = phi i32 [ 0, %3 ], [ %64, %59 ]
  %75 = icmp eq i32 %73, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72, %44, %24, %17
  %77 = phi i32 [ %74, %72 ], [ 0, %17 ], [ %20, %44 ], [ %20, %24 ]
  %78 = getelementptr i8, ptr %0, i32 %77
  store i8 0, ptr %78, align 1
  br label %79

79:                                               ; preds = %76, %72
  %80 = phi i32 [ %77, %76 ], [ %74, %72 ]
  ret i32 %80
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
