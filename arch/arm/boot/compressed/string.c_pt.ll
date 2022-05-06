; ModuleID = '/llk/IR/arch/arm/boot/compressed/string.c_pt.bc'
source_filename = "../arch/arm/boot/compressed/string.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define ptr @memcpy(ptr noundef returned writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i32 %2, 8
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = lshr i32 %2, 3
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %32, %7 ], [ %1, %5 ]
  %9 = phi ptr [ %34, %7 ], [ %0, %5 ]
  %10 = phi i32 [ %35, %7 ], [ %6, %5 ]
  %11 = getelementptr i8, ptr %8, i32 1
  %12 = load i8, ptr %8, align 1
  %13 = getelementptr i8, ptr %9, i32 1
  store i8 %12, ptr %9, align 1
  %14 = getelementptr i8, ptr %8, i32 2
  %15 = load i8, ptr %11, align 1
  %16 = getelementptr i8, ptr %9, i32 2
  store i8 %15, ptr %13, align 1
  %17 = getelementptr i8, ptr %8, i32 3
  %18 = load i8, ptr %14, align 1
  %19 = getelementptr i8, ptr %9, i32 3
  store i8 %18, ptr %16, align 1
  %20 = getelementptr i8, ptr %8, i32 4
  %21 = load i8, ptr %17, align 1
  %22 = getelementptr i8, ptr %9, i32 4
  store i8 %21, ptr %19, align 1
  %23 = getelementptr i8, ptr %8, i32 5
  %24 = load i8, ptr %20, align 1
  %25 = getelementptr i8, ptr %9, i32 5
  store i8 %24, ptr %22, align 1
  %26 = getelementptr i8, ptr %8, i32 6
  %27 = load i8, ptr %23, align 1
  %28 = getelementptr i8, ptr %9, i32 6
  store i8 %27, ptr %25, align 1
  %29 = getelementptr i8, ptr %8, i32 7
  %30 = load i8, ptr %26, align 1
  %31 = getelementptr i8, ptr %9, i32 7
  store i8 %30, ptr %28, align 1
  %32 = getelementptr i8, ptr %8, i32 8
  %33 = load i8, ptr %29, align 1
  %34 = getelementptr i8, ptr %9, i32 8
  store i8 %33, ptr %31, align 1
  %35 = add nsw i32 %10, -1
  %36 = icmp ugt i32 %10, 1
  br i1 %36, label %7, label %37

37:                                               ; preds = %7, %3
  %38 = phi ptr [ %0, %3 ], [ %34, %7 ]
  %39 = phi ptr [ %1, %3 ], [ %32, %7 ]
  %40 = and i32 %2, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %39, i32 1
  %44 = load i8, ptr %39, align 1
  %45 = getelementptr i8, ptr %38, i32 1
  store i8 %44, ptr %38, align 1
  %46 = getelementptr i8, ptr %39, i32 2
  %47 = load i8, ptr %43, align 1
  %48 = getelementptr i8, ptr %38, i32 2
  store i8 %47, ptr %45, align 1
  %49 = getelementptr i8, ptr %39, i32 3
  %50 = load i8, ptr %46, align 1
  %51 = getelementptr i8, ptr %38, i32 3
  store i8 %50, ptr %48, align 1
  %52 = getelementptr i8, ptr %39, i32 4
  %53 = load i8, ptr %49, align 1
  %54 = getelementptr i8, ptr %38, i32 4
  store i8 %53, ptr %51, align 1
  br label %55

55:                                               ; preds = %42, %37
  %56 = phi ptr [ %54, %42 ], [ %38, %37 ]
  %57 = phi ptr [ %52, %42 ], [ %39, %37 ]
  %58 = and i32 %2, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = getelementptr i8, ptr %57, i32 1
  %62 = load i8, ptr %57, align 1
  %63 = getelementptr i8, ptr %56, i32 1
  store i8 %62, ptr %56, align 1
  %64 = getelementptr i8, ptr %57, i32 2
  %65 = load i8, ptr %61, align 1
  %66 = getelementptr i8, ptr %56, i32 2
  store i8 %65, ptr %63, align 1
  br label %67

67:                                               ; preds = %60, %55
  %68 = phi ptr [ %66, %60 ], [ %56, %55 ]
  %69 = phi ptr [ %64, %60 ], [ %57, %55 ]
  %70 = and i32 %2, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = load i8, ptr %69, align 1
  store i8 %73, ptr %68, align 1
  br label %74

74:                                               ; preds = %72, %67
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define ptr @memmove(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = icmp ult ptr %0, %1
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %18, label %11

9:                                                ; preds = %5
  %10 = tail call ptr @memcpy(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) #3
  br label %18

11:                                               ; preds = %11, %7
  %12 = phi i32 [ %13, %11 ], [ %2, %7 ]
  %13 = add i32 %12, -1
  %14 = getelementptr i8, ptr %1, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr i8, ptr %0, i32 %13
  store i8 %15, ptr %16, align 1
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %18, label %11

18:                                               ; preds = %11, %9, %7, %3
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync)
define i32 @strlen(ptr noundef %0) local_unnamed_addr #1 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr i8, ptr %3, i32 1
  br i1 %5, label %7, label %2

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i32
  %9 = ptrtoint ptr %0 to i32
  %10 = sub i32 %8, %9
  ret i32 %10
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync)
define i32 @strnlen(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 %1
  br label %6

6:                                                ; preds = %11, %4
  %7 = phi i32 [ %12, %11 ], [ %1, %4 ]
  %8 = phi ptr [ %13, %11 ], [ %0, %4 ]
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, -1
  %13 = getelementptr i8, ptr %8, i32 1
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %6

15:                                               ; preds = %11, %6, %2
  %16 = phi ptr [ %0, %2 ], [ %5, %11 ], [ %8, %6 ]
  %17 = ptrtoint ptr %16 to i32
  %18 = ptrtoint ptr %0 to i32
  %19 = sub i32 %17, %18
  ret i32 %19
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync)
define i32 @memcmp(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr i8, ptr %0, i32 %2
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %0, %3 ], [ %10, %9 ]
  %7 = phi ptr [ %1, %3 ], [ %13, %9 ]
  %8 = icmp ult ptr %6, %4
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %6, i32 1
  %11 = load i8, ptr %6, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr i8, ptr %7, i32 1
  %14 = load i8, ptr %7, align 1
  %15 = zext i8 %14 to i32
  %16 = sub nsw i32 %12, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %5, label %18

18:                                               ; preds = %9, %5
  %19 = phi i32 [ %16, %9 ], [ 0, %5 ]
  ret i32 %19
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync)
define i32 @strcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %3 ]
  %5 = phi ptr [ %1, %2 ], [ %8, %3 ]
  %6 = getelementptr i8, ptr %4, i32 1
  %7 = load i8, ptr %4, align 1
  %8 = getelementptr i8, ptr %5, i32 1
  %9 = load i8, ptr %5, align 1
  %10 = icmp eq i8 %7, %9
  %11 = icmp ne i8 %7, 0
  %12 = and i1 %11, %10
  br i1 %12, label %3, label %13

13:                                               ; preds = %3
  %14 = zext i8 %9 to i32
  %15 = zext i8 %7 to i32
  %16 = sub nsw i32 %15, %14
  ret i32 %16
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync)
define ptr @memchr(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = trunc i32 %1 to i8
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi i32 [ %2, %3 ], [ %10, %9 ]
  %7 = phi ptr [ %0, %3 ], [ %11, %9 ]
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = add i32 %6, -1
  %11 = getelementptr i8, ptr %7, i32 1
  %12 = load i8, ptr %7, align 1
  %13 = icmp eq i8 %12, %4
  br i1 %13, label %14, label %5

14:                                               ; preds = %9, %5
  %15 = phi ptr [ %7, %9 ], [ null, %5 ]
  ret ptr %15
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync)
define ptr @strchr(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = trunc i32 %1 to i8
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %0, %2 ], [ %9, %8 ]
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, %3
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %5, i32 1
  %10 = icmp eq i8 %6, 0
  br i1 %10, label %11, label %4

11:                                               ; preds = %8, %4
  %12 = phi ptr [ null, %8 ], [ %5, %4 ]
  ret ptr %12
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync)
define ptr @strrchr(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = trunc i32 %1 to i8
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %0, %2 ], [ %10, %4 ]
  %6 = phi ptr [ null, %2 ], [ %9, %4 ]
  %7 = load i8, ptr %5, align 1
  %8 = icmp eq i8 %7, %3
  %9 = select i1 %8, ptr %5, ptr %6
  %10 = getelementptr i8, ptr %5, i32 1
  %11 = icmp eq i8 %7, 0
  br i1 %11, label %12, label %4

12:                                               ; preds = %4
  ret ptr %9
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync)
define ptr @memset(ptr noundef returned writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = trunc i32 %1 to i8
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %0, %5 ], [ %11, %7 ]
  %9 = phi i32 [ %2, %5 ], [ %10, %7 ]
  %10 = add i32 %9, -1
  %11 = getelementptr i8, ptr %8, i32 1
  store i8 %6, ptr %8, align 1
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %13, label %7

13:                                               ; preds = %7, %3
  ret ptr %0
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nobuiltin optsize "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
