; ModuleID = '/llk/IR/drivers/firmware/efi/libstub/string.c_pt.bc'
source_filename = "../drivers/firmware/efi/libstub/string.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

@_ctype = external hidden local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @strstr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @strlen(ptr noundef %1) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @strlen(ptr noundef %0) #4
  %7 = icmp ult i32 %6, %3
  br i1 %7, label %17, label %8

8:                                                ; preds = %13, %5
  %9 = phi i32 [ %14, %13 ], [ %6, %5 ]
  %10 = phi ptr [ %15, %13 ], [ %0, %5 ]
  %11 = tail call i32 @memcmp(ptr noundef %10, ptr noundef %1, i32 noundef %3) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = add i32 %9, -1
  %15 = getelementptr i8, ptr %10, i32 1
  %16 = icmp ult i32 %14, %3
  br i1 %16, label %17, label %8

17:                                               ; preds = %13, %8, %5, %2
  %18 = phi ptr [ %0, %2 ], [ null, %5 ], [ %10, %8 ], [ null, %13 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @strlen(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly uwtable(sync)
define hidden i32 @strncmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %15, %3
  %6 = phi i32 [ %17, %15 ], [ %2, %3 ]
  %7 = phi ptr [ %18, %15 ], [ %1, %3 ]
  %8 = phi ptr [ %19, %15 ], [ %0, %3 ]
  %9 = load i8, ptr %8, align 1
  %10 = load i8, ptr %7, align 1
  %11 = icmp eq i8 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = icmp ult i8 %9, %10
  %14 = select i1 %13, i32 -1, i32 1
  br label %22

15:                                               ; preds = %5
  %16 = icmp eq i8 %9, 0
  %17 = add i32 %6, -1
  %18 = getelementptr i8, ptr %7, i32 1
  %19 = getelementptr i8, ptr %8, i32 1
  %20 = icmp eq i32 %17, 0
  %21 = select i1 %16, i1 true, i1 %20
  br i1 %21, label %22, label %5

22:                                               ; preds = %15, %12, %3
  %23 = phi i32 [ %14, %12 ], [ 0, %3 ], [ 0, %15 ]
  ret i32 %23
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i64 @simple_strtoull(ptr noundef %0, ptr noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 {
  switch i32 %2, label %30 [
    i32 0, label %4
    i32 16, label %20
  ]

4:                                                ; preds = %3
  %5 = load i8, ptr %0, align 1
  %6 = icmp eq i8 %5, 48
  br i1 %6, label %7, label %30

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, -33
  %11 = icmp eq i8 %10, 88
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, 68
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %30, label %23

20:                                               ; preds = %3
  %21 = load i8, ptr %0, align 1
  %22 = icmp eq i8 %21, 48
  br i1 %22, label %23, label %30

23:                                               ; preds = %20, %12
  %24 = getelementptr i8, ptr %0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, -33
  %27 = icmp eq i8 %26, 88
  %28 = select i1 %27, i32 2, i32 0
  %29 = getelementptr i8, ptr %0, i32 %28
  br label %30

30:                                               ; preds = %23, %20, %12, %7, %4, %3
  %31 = phi i32 [ 16, %20 ], [ 16, %23 ], [ 10, %4 ], [ 8, %12 ], [ 8, %7 ], [ %2, %3 ]
  %32 = phi ptr [ %0, %20 ], [ %29, %23 ], [ %0, %4 ], [ %0, %12 ], [ %0, %7 ], [ %0, %3 ]
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %34
  %36 = load i8, ptr %35, align 1
  %37 = and i8 %36, 68
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %30
  %40 = zext i32 %31 to i64
  br label %41

41:                                               ; preds = %53, %39
  %42 = phi i32 [ %34, %39 ], [ %59, %53 ]
  %43 = phi i8 [ %33, %39 ], [ %58, %53 ]
  %44 = phi i64 [ 0, %39 ], [ %56, %53 ]
  %45 = phi ptr [ %32, %39 ], [ %57, %53 ]
  %46 = add nsw i32 %42, -48
  %47 = icmp ugt i32 %46, 9
  %48 = or i8 %43, 32
  %49 = zext i8 %48 to i32
  %50 = add nsw i32 %49, -87
  %51 = select i1 %47, i32 %50, i32 %46
  %52 = icmp ult i32 %51, %31
  br i1 %52, label %53, label %64

53:                                               ; preds = %41
  %54 = mul i64 %44, %40
  %55 = zext i32 %51 to i64
  %56 = add i64 %54, %55
  %57 = getelementptr i8, ptr %45, i32 1
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %59
  %61 = load i8, ptr %60, align 1
  %62 = and i8 %61, 68
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %41

64:                                               ; preds = %53, %41, %30
  %65 = phi ptr [ %32, %30 ], [ %45, %41 ], [ %57, %53 ]
  %66 = phi i64 [ 0, %30 ], [ %44, %41 ], [ %56, %53 ]
  %67 = icmp eq ptr %1, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store ptr %65, ptr %1, align 4
  br label %69

69:                                               ; preds = %68, %64
  ret i64 %66
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @simple_strtol(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 45
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 1
  %8 = tail call i64 @simple_strtoull(ptr noundef %7, ptr noundef %1, i32 noundef %2) #5
  %9 = trunc i64 %8 to i32
  %10 = sub i32 0, %9
  br label %14

11:                                               ; preds = %3
  %12 = tail call i64 @simple_strtoull(ptr noundef %0, ptr noundef %1, i32 noundef %2) #5
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi i32 [ %10, %6 ], [ %13, %11 ]
  ret i32 %15
}

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nobuiltin nounwind optsize "no-builtins" }
attributes #5 = { nobuiltin optsize "no-builtins" }

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
