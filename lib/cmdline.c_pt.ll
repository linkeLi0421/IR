; ModuleID = '/llk/IR/lib/cmdline.c_pt.bc'
source_filename = "../lib/cmdline.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

@_ctype = external hidden local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @get_option(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %3, align 1
  switch i8 %6, label %12 [
    i8 0, label %28
    i8 45, label %7
  ]

7:                                                ; preds = %5
  %8 = getelementptr i8, ptr %3, i32 1
  %9 = tail call i64 @simple_strtoull(ptr noundef %8, ptr noundef %0, i32 noundef 0) #3
  %10 = trunc i64 %9 to i32
  %11 = sub i32 0, %10
  br label %15

12:                                               ; preds = %5
  %13 = tail call i64 @simple_strtoull(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0) #3
  %14 = trunc i64 %13 to i32
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %8, %7 ], [ %3, %12 ]
  %17 = phi i32 [ %11, %7 ], [ %14, %12 ]
  %18 = icmp eq ptr %1, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 %17, ptr %1, align 4
  br label %20

20:                                               ; preds = %19, %15
  %21 = load ptr, ptr %0, align 4
  %22 = icmp eq ptr %16, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load i8, ptr %21, align 1
  switch i8 %24, label %27 [
    i8 44, label %25
    i8 45, label %28
  ]

25:                                               ; preds = %23
  %26 = getelementptr i8, ptr %21, i32 1
  store ptr %26, ptr %0, align 4
  br label %28

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %25, %23, %20, %5, %2
  %29 = phi i32 [ 2, %25 ], [ 1, %27 ], [ 0, %5 ], [ 0, %2 ], [ 0, %20 ], [ 3, %23 ]
  ret i32 %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @get_options(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  %5 = icmp eq i32 %1, 0
  %6 = xor i1 %5, true
  br label %7

7:                                                ; preds = %40, %3
  %8 = phi i32 [ 1, %3 ], [ %42, %40 ]
  %9 = icmp slt i32 %8, %1
  %10 = or i1 %5, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %7
  %12 = select i1 %5, i32 0, i32 %8
  %13 = getelementptr i32, ptr %2, i32 %12
  %14 = call i32 @get_option(ptr noundef nonnull %4, ptr noundef %13) #4
  switch i32 %14, label %40 [
    i32 0, label %44
    i32 3, label %15
  ]

15:                                               ; preds = %11
  %16 = sub i32 %1, %8
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 1
  store ptr %18, ptr %4, align 4
  %19 = call i32 @simple_strtol(ptr noundef %18, ptr noundef null, i32 noundef 0) #3
  %20 = load i32, ptr %13, align 4
  %21 = icmp ne i32 %16, 0
  %22 = select i1 %6, i1 %21, i1 false
  %23 = icmp sgt i32 %19, %20
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %35

25:                                               ; preds = %25, %15
  %26 = phi i32 [ %30, %25 ], [ %20, %15 ]
  %27 = phi i32 [ %31, %25 ], [ %16, %15 ]
  %28 = phi ptr [ %29, %25 ], [ %13, %15 ]
  %29 = getelementptr i32, ptr %28, i32 1
  store i32 %26, ptr %28, align 4
  %30 = add nsw i32 %26, 1
  %31 = add i32 %27, -1
  %32 = icmp ne i32 %31, 0
  %33 = icmp slt i32 %30, %19
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %25, label %35

35:                                               ; preds = %25, %15
  %36 = sub i32 %19, %20
  %37 = icmp slt i32 %36, 0
  %38 = add i32 %8, -1
  %39 = add i32 %38, %36
  br i1 %37, label %44, label %40

40:                                               ; preds = %35, %11
  %41 = phi i32 [ %39, %35 ], [ %8, %11 ]
  %42 = add i32 %41, 1
  %43 = icmp eq i32 %14, 1
  br i1 %43, label %44, label %7

44:                                               ; preds = %40, %35, %11, %7
  %45 = phi i32 [ %8, %7 ], [ %8, %11 ], [ %42, %40 ], [ %8, %35 ]
  %46 = add i32 %45, -1
  store i32 %46, ptr %2, align 4
  %47 = load ptr, ptr %4, align 4
  ret ptr %47
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i64 @memparse(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store ptr null, ptr %3, align 4, !annotation !9
  %4 = call i64 @simple_strtoull(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #3
  %5 = load ptr, ptr %3, align 4
  %6 = load i8, ptr %5, align 1
  switch i8 %6, label %25 [
    i8 69, label %7
    i8 101, label %7
    i8 80, label %9
    i8 112, label %9
    i8 84, label %12
    i8 116, label %12
    i8 71, label %15
    i8 103, label %15
    i8 77, label %18
    i8 109, label %18
    i8 75, label %21
    i8 107, label %21
  ]

7:                                                ; preds = %2, %2
  %8 = shl i64 %4, 10
  br label %9

9:                                                ; preds = %7, %2, %2
  %10 = phi i64 [ %4, %2 ], [ %4, %2 ], [ %8, %7 ]
  %11 = shl i64 %10, 10
  br label %12

12:                                               ; preds = %9, %2, %2
  %13 = phi i64 [ %4, %2 ], [ %4, %2 ], [ %11, %9 ]
  %14 = shl i64 %13, 10
  br label %15

15:                                               ; preds = %12, %2, %2
  %16 = phi i64 [ %4, %2 ], [ %4, %2 ], [ %14, %12 ]
  %17 = shl i64 %16, 10
  br label %18

18:                                               ; preds = %15, %2, %2
  %19 = phi i64 [ %4, %2 ], [ %4, %2 ], [ %17, %15 ]
  %20 = shl i64 %19, 10
  br label %21

21:                                               ; preds = %18, %2, %2
  %22 = phi i64 [ %4, %2 ], [ %4, %2 ], [ %20, %18 ]
  %23 = shl i64 %22, 10
  %24 = getelementptr i8, ptr %5, i32 1
  br label %25

25:                                               ; preds = %21, %2
  %26 = phi ptr [ %5, %2 ], [ %24, %21 ]
  %27 = phi i64 [ %4, %2 ], [ %23, %21 ]
  %28 = icmp eq ptr %1, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store ptr %26, ptr %1, align 4
  br label %30

30:                                               ; preds = %29, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i64 %27
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden zeroext i1 @parse_option_str(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %0, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %21, %2
  %6 = phi ptr [ %24, %21 ], [ %0, %2 ]
  %7 = tail call i32 @strlen(ptr noundef %1) #3
  %8 = tail call i32 @strncmp(ptr noundef %6, ptr noundef %1, i32 noundef %7) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = tail call i32 @strlen(ptr noundef %1) #3
  %12 = getelementptr i8, ptr %6, i32 %11
  %13 = load i8, ptr %12, align 1
  switch i8 %13, label %14 [
    i8 0, label %27
    i8 44, label %27
  ]

14:                                               ; preds = %10, %5
  %15 = phi ptr [ %12, %10 ], [ %6, %5 ]
  br label %16

16:                                               ; preds = %19, %14
  %17 = phi ptr [ %20, %19 ], [ %15, %14 ]
  %18 = load i8, ptr %17, align 1
  switch i8 %18, label %19 [
    i8 0, label %21
    i8 44, label %21
  ]

19:                                               ; preds = %16
  %20 = getelementptr i8, ptr %17, i32 1
  br label %16

21:                                               ; preds = %16, %16
  %22 = icmp eq i8 %18, 44
  %23 = zext i1 %22 to i32
  %24 = getelementptr i8, ptr %17, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %5

27:                                               ; preds = %21, %10, %10, %2
  %28 = phi i1 [ false, %2 ], [ false, %21 ], [ true, %10 ], [ true, %10 ]
  ret i1 %28
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @strncmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @next_arg(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 34
  %6 = zext i1 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store ptr %7, ptr %1, align 4
  br label %41

11:                                               ; preds = %23, %3
  %12 = phi i8 [ %34, %23 ], [ %8, %3 ]
  %13 = phi i32 [ %31, %23 ], [ %6, %3 ]
  %14 = phi i32 [ %27, %23 ], [ 0, %3 ]
  %15 = phi i32 [ %32, %23 ], [ 0, %3 ]
  %16 = zext i8 %12 to i32
  %17 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 32
  %20 = icmp eq i8 %19, 0
  %21 = icmp ne i32 %13, 0
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %11
  %24 = icmp eq i32 %14, 0
  %25 = icmp eq i8 %12, 61
  %26 = select i1 %25, i32 %15, i32 0
  %27 = select i1 %24, i32 %26, i32 %14
  %28 = icmp eq i8 %12, 34
  %29 = xor i1 %21, true
  %30 = zext i1 %29 to i32
  %31 = select i1 %28, i32 %30, i32 %13
  %32 = add i32 %15, 1
  %33 = getelementptr i8, ptr %7, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %11

36:                                               ; preds = %23, %11
  %37 = phi i32 [ %32, %23 ], [ %15, %11 ]
  %38 = phi i32 [ %27, %23 ], [ %14, %11 ]
  %39 = getelementptr i8, ptr %7, i32 %37
  store ptr %7, ptr %1, align 4
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %10
  %42 = phi ptr [ %7, %10 ], [ %39, %36 ]
  %43 = phi i32 [ 0, %10 ], [ %37, %36 ]
  store ptr null, ptr %2, align 4
  br label %56

44:                                               ; preds = %36
  %45 = getelementptr i8, ptr %7, i32 %38
  store i8 0, ptr %45, align 1
  %46 = getelementptr i8, ptr %45, i32 1
  store ptr %46, ptr %2, align 4
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 34
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = getelementptr i8, ptr %46, i32 1
  store ptr %50, ptr %2, align 4
  %51 = add i32 %37, -1
  %52 = getelementptr i8, ptr %7, i32 %51
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 34
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i8 0, ptr %52, align 1
  br label %56

56:                                               ; preds = %55, %49, %44, %41
  %57 = phi ptr [ %39, %44 ], [ %39, %55 ], [ %39, %49 ], [ %42, %41 ]
  %58 = phi i32 [ %37, %44 ], [ %37, %55 ], [ %37, %49 ], [ %43, %41 ]
  br i1 %5, label %59, label %65

59:                                               ; preds = %56
  %60 = add i32 %58, -1
  %61 = getelementptr i8, ptr %7, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 34
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i8 0, ptr %61, align 1
  br label %65

65:                                               ; preds = %64, %59, %56
  %66 = load i8, ptr %57, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  store i8 0, ptr %57, align 1
  %69 = add i32 %58, 1
  %70 = getelementptr i8, ptr %7, i32 %69
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi ptr [ %70, %68 ], [ %57, %65 ]
  %73 = tail call ptr @skip_spaces(ptr noundef %72) #3
  ret ptr %73
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @skip_spaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind optsize "no-builtins" }
attributes #4 = { nobuiltin optsize "no-builtins" }
attributes #5 = { nounwind }

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
!9 = !{!"auto-init"}
