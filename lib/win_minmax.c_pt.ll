; ModuleID = '/llk/IR/lib/win_minmax.c_pt.bc'
source_filename = "../lib/win_minmax.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_minmax_running_max:\09\09\09\09\09"
module asm "\09.asciz \09\22minmax_running_max\22\09\09\09\09\09"
module asm "__kstrtabns_minmax_running_max:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.minmax_sample = type { i32, i32 }

@__kstrtab_minmax_running_max = external dso_local constant [0 x i8], align 1
@__kstrtabns_minmax_running_max = external dso_local constant [0 x i8], align 1
@__ksymtab_minmax_running_max = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @minmax_running_max to i32), ptr @__kstrtab_minmax_running_max, ptr @__kstrtabns_minmax_running_max }, section "___ksymtab+minmax_running_max", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_minmax_running_max], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @minmax_running_max(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.minmax_sample, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %3
  br i1 %7, label %8, label %13, !prof !8

8:                                                ; preds = %4
  %9 = getelementptr [3 x %struct.minmax_sample], ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %2, %10
  %12 = icmp ugt i32 %11, %1
  br i1 %12, label %13, label %19, !prof !9

13:                                               ; preds = %8, %4
  %14 = getelementptr [3 x %struct.minmax_sample], ptr %0, i32 0, i32 2
  %15 = getelementptr [3 x %struct.minmax_sample], ptr %0, i32 0, i32 1
  store i32 %2, ptr %0, align 4
  store i32 %3, ptr %5, align 4
  %16 = load i64, ptr %0, align 4
  store i64 %16, ptr %15, align 4
  store i64 %16, ptr %14, align 4
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  br label %82

19:                                               ; preds = %8
  %20 = getelementptr [3 x %struct.minmax_sample], ptr %0, i32 0, i32 1, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, %3
  br i1 %22, label %29, label %23, !prof !8

23:                                               ; preds = %19
  %24 = getelementptr [3 x %struct.minmax_sample], ptr %0, i32 0, i32 1
  %25 = zext i32 %3 to i64
  %26 = shl nuw i64 %25, 32
  %27 = zext i32 %2 to i64
  %28 = or i64 %26, %27
  store i64 %28, ptr %24, align 4
  br label %38

29:                                               ; preds = %19
  %30 = getelementptr [3 x %struct.minmax_sample], ptr %0, i32 0, i32 2, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, %3
  br i1 %32, label %40, label %33, !prof !8

33:                                               ; preds = %29
  %34 = zext i32 %3 to i64
  %35 = shl nuw i64 %34, 32
  %36 = zext i32 %2 to i64
  %37 = or i64 %35, %36
  br label %38

38:                                               ; preds = %33, %23
  %39 = phi i64 [ %37, %33 ], [ %28, %23 ]
  store i64 %39, ptr %9, align 4
  br label %40

40:                                               ; preds = %38, %29
  %41 = phi i32 [ %10, %29 ], [ %2, %38 ]
  %42 = load i32, ptr %0, align 4
  %43 = sub i32 %2, %42
  %44 = icmp ugt i32 %43, %1
  %45 = getelementptr [3 x %struct.minmax_sample], ptr %0, i32 0, i32 1
  br i1 %44, label %46, label %61, !prof !9

46:                                               ; preds = %40
  %47 = load i64, ptr %45, align 4
  store i64 %47, ptr %0, align 4
  %48 = load i64, ptr %9, align 4
  store i64 %48, ptr %45, align 4
  %49 = zext i32 %3 to i64
  %50 = shl nuw i64 %49, 32
  %51 = zext i32 %2 to i64
  %52 = or i64 %50, %51
  store i64 %52, ptr %9, align 4
  %53 = trunc i64 %47 to i32
  %54 = sub i32 %2, %53
  %55 = icmp ugt i32 %54, %1
  %56 = lshr i64 %47, 32
  %57 = trunc i64 %56 to i32
  br i1 %55, label %58, label %82, !prof !9

58:                                               ; preds = %46
  store i64 %48, ptr %0, align 4
  store i64 %52, ptr %45, align 4
  %59 = lshr i64 %48, 32
  %60 = trunc i64 %59 to i32
  br label %82

61:                                               ; preds = %40
  %62 = load i32, ptr %45, align 4
  %63 = icmp eq i32 %62, %42
  br i1 %63, label %64, label %72, !prof !9

64:                                               ; preds = %61
  %65 = lshr i32 %1, 2
  %66 = icmp ugt i32 %43, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = zext i32 %3 to i64
  %69 = shl nuw i64 %68, 32
  %70 = zext i32 %2 to i64
  %71 = or i64 %69, %70
  store i64 %71, ptr %45, align 4
  store i64 %71, ptr %9, align 4
  br label %82

72:                                               ; preds = %64, %61
  %73 = icmp eq i32 %41, %62
  br i1 %73, label %74, label %82, !prof !9

74:                                               ; preds = %72
  %75 = lshr i32 %1, 1
  %76 = icmp ugt i32 %43, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = zext i32 %3 to i64
  %79 = shl nuw i64 %78, 32
  %80 = zext i32 %2 to i64
  %81 = or i64 %79, %80
  store i64 %81, ptr %9, align 4
  br label %82

82:                                               ; preds = %77, %74, %72, %67, %58, %46, %13
  %83 = phi i32 [ %18, %13 ], [ %57, %46 ], [ %60, %58 ], [ %6, %67 ], [ %6, %72 ], [ %6, %74 ], [ %6, %77 ]
  ret i32 %83
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @minmax_running_min(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.minmax_sample, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, %3
  br i1 %7, label %8, label %13, !prof !8

8:                                                ; preds = %4
  %9 = getelementptr [3 x %struct.minmax_sample], ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %2, %10
  %12 = icmp ugt i32 %11, %1
  br i1 %12, label %13, label %19, !prof !9

13:                                               ; preds = %8, %4
  %14 = getelementptr [3 x %struct.minmax_sample], ptr %0, i32 0, i32 2
  %15 = getelementptr [3 x %struct.minmax_sample], ptr %0, i32 0, i32 1
  store i32 %2, ptr %0, align 4
  store i32 %3, ptr %5, align 4
  %16 = load i64, ptr %0, align 4
  store i64 %16, ptr %15, align 4
  store i64 %16, ptr %14, align 4
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  br label %82

19:                                               ; preds = %8
  %20 = getelementptr [3 x %struct.minmax_sample], ptr %0, i32 0, i32 1, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, %3
  br i1 %22, label %29, label %23, !prof !8

23:                                               ; preds = %19
  %24 = getelementptr [3 x %struct.minmax_sample], ptr %0, i32 0, i32 1
  %25 = zext i32 %3 to i64
  %26 = shl nuw i64 %25, 32
  %27 = zext i32 %2 to i64
  %28 = or i64 %26, %27
  store i64 %28, ptr %24, align 4
  br label %38

29:                                               ; preds = %19
  %30 = getelementptr [3 x %struct.minmax_sample], ptr %0, i32 0, i32 2, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %31, %3
  br i1 %32, label %40, label %33, !prof !8

33:                                               ; preds = %29
  %34 = zext i32 %3 to i64
  %35 = shl nuw i64 %34, 32
  %36 = zext i32 %2 to i64
  %37 = or i64 %35, %36
  br label %38

38:                                               ; preds = %33, %23
  %39 = phi i64 [ %37, %33 ], [ %28, %23 ]
  store i64 %39, ptr %9, align 4
  br label %40

40:                                               ; preds = %38, %29
  %41 = phi i32 [ %10, %29 ], [ %2, %38 ]
  %42 = load i32, ptr %0, align 4
  %43 = sub i32 %2, %42
  %44 = icmp ugt i32 %43, %1
  %45 = getelementptr [3 x %struct.minmax_sample], ptr %0, i32 0, i32 1
  br i1 %44, label %46, label %61, !prof !9

46:                                               ; preds = %40
  %47 = load i64, ptr %45, align 4
  store i64 %47, ptr %0, align 4
  %48 = load i64, ptr %9, align 4
  store i64 %48, ptr %45, align 4
  %49 = zext i32 %3 to i64
  %50 = shl nuw i64 %49, 32
  %51 = zext i32 %2 to i64
  %52 = or i64 %50, %51
  store i64 %52, ptr %9, align 4
  %53 = trunc i64 %47 to i32
  %54 = sub i32 %2, %53
  %55 = icmp ugt i32 %54, %1
  %56 = lshr i64 %47, 32
  %57 = trunc i64 %56 to i32
  br i1 %55, label %58, label %82, !prof !9

58:                                               ; preds = %46
  store i64 %48, ptr %0, align 4
  store i64 %52, ptr %45, align 4
  %59 = lshr i64 %48, 32
  %60 = trunc i64 %59 to i32
  br label %82

61:                                               ; preds = %40
  %62 = load i32, ptr %45, align 4
  %63 = icmp eq i32 %62, %42
  br i1 %63, label %64, label %72, !prof !9

64:                                               ; preds = %61
  %65 = lshr i32 %1, 2
  %66 = icmp ugt i32 %43, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = zext i32 %3 to i64
  %69 = shl nuw i64 %68, 32
  %70 = zext i32 %2 to i64
  %71 = or i64 %69, %70
  store i64 %71, ptr %45, align 4
  store i64 %71, ptr %9, align 4
  br label %82

72:                                               ; preds = %64, %61
  %73 = icmp eq i32 %41, %62
  br i1 %73, label %74, label %82, !prof !9

74:                                               ; preds = %72
  %75 = lshr i32 %1, 1
  %76 = icmp ugt i32 %43, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = zext i32 %3 to i64
  %79 = shl nuw i64 %78, 32
  %80 = zext i32 %2 to i64
  %81 = or i64 %79, %80
  store i64 %81, ptr %9, align 4
  br label %82

82:                                               ; preds = %77, %74, %72, %67, %58, %46, %13
  %83 = phi i32 [ %18, %13 ], [ %57, %46 ], [ %60, %58 ], [ %6, %67 ], [ %6, %72 ], [ %6, %74 ], [ %6, %77 ]
  ret i32 %83
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
