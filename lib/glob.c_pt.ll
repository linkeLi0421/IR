; ModuleID = '/llk/IR/lib/glob.c_pt.bc'
source_filename = "../lib/glob.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_glob_match:\09\09\09\09\09"
module asm "\09.asciz \09\22glob_match\22\09\09\09\09\09"
module asm "__kstrtabns_glob_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__UNIQUE_ID_description100 = internal constant [34 x i8] c"glob.description=glob(7) matching\00", section ".modinfo", align 1
@__UNIQUE_ID_file101 = internal constant [19 x i8] c"glob.file=lib/glob\00", section ".modinfo", align 1
@__UNIQUE_ID_license102 = internal constant [26 x i8] c"glob.license=Dual MIT/GPL\00", section ".modinfo", align 1
@__kstrtab_glob_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_glob_match = external dso_local constant [0 x i8], align 1
@__ksymtab_glob_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @glob_match to i32), ptr @__kstrtab_glob_match, ptr @__kstrtabns_glob_match }, section "___ksymtab+glob_match", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_description100, ptr @__UNIQUE_ID_file101, ptr @__UNIQUE_ID_license102, ptr @__ksymtab_glob_match], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @glob_match(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %72, %2
  %4 = phi ptr [ %0, %2 ], [ %73, %72 ]
  %5 = phi ptr [ %1, %2 ], [ %74, %72 ]
  %6 = phi ptr [ null, %2 ], [ %10, %72 ]
  %7 = phi ptr [ null, %2 ], [ %75, %72 ]
  br label %8

8:                                                ; preds = %18, %3
  %9 = phi ptr [ %12, %18 ], [ %4, %3 ]
  %10 = phi ptr [ %12, %18 ], [ %6, %3 ]
  %11 = phi ptr [ %5, %18 ], [ %7, %3 ]
  %12 = getelementptr i8, ptr %9, i32 1
  %13 = load i8, ptr %9, align 1
  switch i8 %13, label %61 [
    i8 63, label %14
    i8 42, label %18
    i8 91, label %21
    i8 92, label %56
  ]

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %5, i32 1
  %16 = load i8, ptr %5, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %83, label %72

18:                                               ; preds = %8
  %19 = load i8, ptr %12, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %83, label %8

21:                                               ; preds = %8
  %22 = getelementptr i8, ptr %5, i32 1
  %23 = load i8, ptr %5, align 1
  %24 = load i8, ptr %12, align 1
  %25 = icmp eq i8 %24, 33
  %26 = zext i1 %25 to i32
  %27 = getelementptr i8, ptr %12, i32 %26
  %28 = getelementptr i8, ptr %27, i32 1
  %29 = load i8, ptr %27, align 1
  br label %30

30:                                               ; preds = %44, %21
  %31 = phi i1 [ false, %21 ], [ %51, %44 ]
  %32 = phi ptr [ %28, %21 ], [ %52, %44 ]
  %33 = phi i8 [ %29, %21 ], [ %45, %44 ]
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %64, label %35

35:                                               ; preds = %30
  %36 = load i8, ptr %32, align 1
  %37 = icmp eq i8 %36, 45
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = getelementptr i8, ptr %32, i32 1
  %40 = load i8, ptr %39, align 1
  switch i8 %40, label %41 [
    i8 93, label %44
    i8 0, label %64
  ]

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %32, i32 2
  %43 = load i8, ptr %42, align 1
  br label %44

44:                                               ; preds = %41, %38, %35
  %45 = phi i8 [ %43, %41 ], [ 45, %38 ], [ %36, %35 ]
  %46 = phi ptr [ %42, %41 ], [ %32, %38 ], [ %32, %35 ]
  %47 = phi i8 [ %40, %41 ], [ %33, %38 ], [ %33, %35 ]
  %48 = icmp ule i8 %33, %23
  %49 = icmp ule i8 %23, %47
  %50 = select i1 %48, i1 %49, i1 false
  %51 = or i1 %31, %50
  %52 = getelementptr i8, ptr %46, i32 1
  %53 = icmp eq i8 %45, 93
  br i1 %53, label %54, label %30

54:                                               ; preds = %44
  %55 = xor i1 %25, %51
  br i1 %55, label %72, label %76

56:                                               ; preds = %8
  %57 = getelementptr i8, ptr %5, i32 1
  %58 = load i8, ptr %5, align 1
  %59 = getelementptr i8, ptr %9, i32 2
  %60 = load i8, ptr %12, align 1
  br label %64

61:                                               ; preds = %8
  %62 = getelementptr i8, ptr %5, i32 1
  %63 = load i8, ptr %5, align 1
  br label %64

64:                                               ; preds = %61, %56, %38, %30
  %65 = phi ptr [ %57, %56 ], [ %62, %61 ], [ %22, %38 ], [ %22, %30 ]
  %66 = phi i8 [ %58, %56 ], [ %63, %61 ], [ %23, %38 ], [ %23, %30 ]
  %67 = phi ptr [ %59, %56 ], [ %12, %61 ], [ %12, %38 ], [ %12, %30 ]
  %68 = phi i8 [ %60, %56 ], [ %13, %61 ], [ 91, %38 ], [ 91, %30 ]
  %69 = icmp eq i8 %66, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = icmp eq i8 %66, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %81, %70, %54, %14
  %73 = phi ptr [ %52, %54 ], [ %12, %14 ], [ %10, %81 ], [ %67, %70 ]
  %74 = phi ptr [ %22, %54 ], [ %15, %14 ], [ %82, %81 ], [ %65, %70 ]
  %75 = phi ptr [ %11, %54 ], [ %11, %14 ], [ %82, %81 ], [ %11, %70 ]
  br label %3

76:                                               ; preds = %64, %54
  %77 = phi i8 [ %23, %54 ], [ %66, %64 ]
  %78 = icmp ne i8 %77, 0
  %79 = icmp ne ptr %10, null
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = getelementptr i8, ptr %11, i32 1
  br label %72

83:                                               ; preds = %76, %70, %18, %14
  %84 = phi i1 [ true, %18 ], [ false, %14 ], [ true, %70 ], [ false, %76 ]
  ret i1 %84
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
