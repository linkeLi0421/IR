; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/core/option.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/option.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

@.str = private unnamed_addr constant [3 x i8] c",=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"fatal\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"paranoia\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"spam\00", align 1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_stropt(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %31, %3
  %6 = phi ptr [ %33, %31 ], [ %0, %3 ]
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @strcspn(ptr noundef nonnull %6, ptr noundef nonnull @.str)
  %11 = getelementptr i8, ptr %6, i32 %10
  %12 = load i8, ptr %11, align 1
  switch i8 %12, label %31 [
    i8 61, label %13
    i8 44, label %29
  ]

13:                                               ; preds = %9
  %14 = tail call i32 @strlen(ptr noundef %1) #6
  %15 = icmp eq i32 %14, %10
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 @strncasecmp(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %10) #6
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %17, %16 ], [ %10, %13 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = add i32 %10, 1
  %23 = getelementptr i8, ptr %6, i32 %22
  %24 = tail call i32 @strcspn(ptr noundef %23, ptr noundef nonnull @.str)
  store i32 %24, ptr %2, align 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr null, ptr %23
  br label %35

27:                                               ; preds = %18
  %28 = getelementptr i8, ptr %6, i32 1
  br label %31

29:                                               ; preds = %9
  %30 = getelementptr i8, ptr %6, i32 1
  br label %31

31:                                               ; preds = %29, %27, %9
  %32 = phi ptr [ %6, %9 ], [ %30, %29 ], [ %28, %27 ]
  %33 = getelementptr i8, ptr %32, i32 %10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %5

35:                                               ; preds = %31, %21, %5, %3
  %36 = phi ptr [ %26, %21 ], [ null, %3 ], [ null, %5 ], [ null, %31 ]
  ret ptr %36
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @nvkm_boolopt(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %63, label %5

5:                                                ; preds = %32, %3
  %6 = phi ptr [ %34, %32 ], [ %0, %3 ]
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %63, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @strcspn(ptr noundef nonnull %6, ptr noundef nonnull @.str) #6
  %11 = getelementptr i8, ptr %6, i32 %10
  %12 = load i8, ptr %11, align 1
  switch i8 %12, label %32 [
    i8 61, label %13
    i8 44, label %30
  ]

13:                                               ; preds = %9
  %14 = tail call i32 @strlen(ptr noundef %1) #6
  %15 = icmp eq i32 %14, %10
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 @strncasecmp(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %10) #6
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %17, %16 ], [ %10, %13 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = add i32 %10, 1
  %23 = getelementptr i8, ptr %6, i32 %22
  %24 = tail call i32 @strcspn(ptr noundef %23, ptr noundef nonnull @.str) #6
  %25 = icmp eq i32 %24, 0
  %26 = icmp eq ptr %23, null
  %27 = or i1 %26, %25
  br i1 %27, label %63, label %36

28:                                               ; preds = %18
  %29 = getelementptr i8, ptr %6, i32 1
  br label %32

30:                                               ; preds = %9
  %31 = getelementptr i8, ptr %6, i32 1
  br label %32

32:                                               ; preds = %30, %28, %9
  %33 = phi ptr [ %6, %9 ], [ %31, %30 ], [ %29, %28 ]
  %34 = getelementptr i8, ptr %33, i32 %10
  %35 = icmp eq ptr %34, null
  br i1 %35, label %63, label %5

36:                                               ; preds = %21
  switch i32 %24, label %63 [
    i32 1, label %37
    i32 2, label %40
    i32 3, label %43
    i32 5, label %46
    i32 4, label %59
  ]

37:                                               ; preds = %36
  %38 = tail call i32 @strncasecmp(ptr noundef nonnull %23, ptr noundef nonnull @.str.1, i32 noundef 1) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %63, label %50

40:                                               ; preds = %36
  %41 = tail call i32 @strncasecmp(ptr noundef nonnull %23, ptr noundef nonnull @.str.2, i32 noundef %24) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %63, label %56

43:                                               ; preds = %36
  %44 = tail call i32 @strncasecmp(ptr noundef nonnull %23, ptr noundef nonnull @.str.3, i32 noundef %24) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %63, label %53

46:                                               ; preds = %36
  %47 = tail call i32 @strncasecmp(ptr noundef nonnull %23, ptr noundef nonnull @.str.4, i32 noundef %24) #6
  %48 = icmp ne i32 %47, 0
  %49 = and i1 %48, %2
  br label %63

50:                                               ; preds = %37
  %51 = tail call i32 @strncasecmp(ptr noundef nonnull %23, ptr noundef nonnull @.str.5, i32 noundef %24) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %63

53:                                               ; preds = %43
  %54 = tail call i32 @strncasecmp(ptr noundef nonnull %23, ptr noundef nonnull @.str.6, i32 noundef %24) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %63

56:                                               ; preds = %40
  %57 = tail call i32 @strncasecmp(ptr noundef nonnull %23, ptr noundef nonnull @.str.7, i32 noundef %24) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %63

59:                                               ; preds = %36
  %60 = tail call i32 @strncasecmp(ptr noundef nonnull %23, ptr noundef nonnull @.str.8, i32 noundef %24) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %56, %53, %50
  br label %63

63:                                               ; preds = %62, %59, %56, %53, %50, %46, %43, %40, %37, %36, %32, %21, %5, %3
  %64 = phi i1 [ %2, %59 ], [ true, %62 ], [ false, %43 ], [ false, %40 ], [ false, %37 ], [ %2, %3 ], [ %2, %21 ], [ %2, %36 ], [ %2, %50 ], [ %2, %53 ], [ %2, %56 ], [ %49, %46 ], [ %2, %5 ], [ %2, %32 ]
  ret i1 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_longopt(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = alloca i32, align 4
  store i32 %2, ptr %4, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %33, %3
  %7 = phi ptr [ %35, %33 ], [ %0, %3 ]
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %45, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @strcspn(ptr noundef nonnull %7, ptr noundef nonnull @.str) #6
  %12 = getelementptr i8, ptr %7, i32 %11
  %13 = load i8, ptr %12, align 1
  switch i8 %13, label %33 [
    i8 61, label %14
    i8 44, label %31
  ]

14:                                               ; preds = %10
  %15 = tail call i32 @strlen(ptr noundef %1) #6
  %16 = icmp eq i32 %15, %11
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call i32 @strncasecmp(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %11) #6
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ %18, %17 ], [ %11, %14 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = add i32 %11, 1
  %24 = getelementptr i8, ptr %7, i32 %23
  %25 = tail call i32 @strcspn(ptr noundef %24, ptr noundef nonnull @.str) #6
  %26 = icmp eq i32 %25, 0
  %27 = icmp eq ptr %24, null
  %28 = or i1 %27, %26
  br i1 %28, label %45, label %37

29:                                               ; preds = %19
  %30 = getelementptr i8, ptr %7, i32 1
  br label %33

31:                                               ; preds = %10
  %32 = getelementptr i8, ptr %7, i32 1
  br label %33

33:                                               ; preds = %31, %29, %10
  %34 = phi ptr [ %7, %10 ], [ %32, %31 ], [ %30, %29 ]
  %35 = getelementptr i8, ptr %34, i32 %11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %6

37:                                               ; preds = %22
  %38 = tail call ptr @kstrndup(ptr noundef nonnull %24, i32 noundef %25, i32 noundef 3264) #6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = call i32 @_kstrtol(ptr noundef nonnull %38, i32 noundef 0, ptr noundef nonnull %4) #6
  %42 = icmp eq i32 %41, 0
  %43 = load i32, ptr %4, align 4
  %44 = select i1 %42, i32 %43, i32 %2
  call void @kfree(ptr noundef nonnull %38) #6
  br label %45

45:                                               ; preds = %40, %37, %33, %22, %6, %3
  %46 = phi i32 [ %44, %40 ], [ %2, %37 ], [ %2, %3 ], [ %2, %22 ], [ %2, %6 ], [ %2, %33 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @nvkm_dbgopt(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %60, label %4

4:                                                ; preds = %54, %2
  %5 = phi i32 [ %56, %54 ], [ 3, %2 ]
  %6 = phi i32 [ %55, %54 ], [ 1, %2 ]
  %7 = phi ptr [ %58, %54 ], [ %0, %2 ]
  %8 = tail call i32 @strcspn(ptr noundef nonnull %7, ptr noundef nonnull @.str)
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 61
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = tail call i32 @strlen(ptr noundef %1) #6
  %14 = icmp eq i32 %13, %8
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 @strncasecmp(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %8) #6
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %16, %15 ], [ %8, %12 ]
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 %6, i32 0
  br label %54

21:                                               ; preds = %4
  %22 = icmp eq i32 %6, 0
  br i1 %22, label %51, label %23

23:                                               ; preds = %21
  switch i32 %8, label %47 [
    i32 5, label %24
    i32 0, label %51
    i32 4, label %30
    i32 8, label %42
  ]

24:                                               ; preds = %23
  %25 = tail call i32 @strncasecmp(ptr noundef nonnull %7, ptr noundef nonnull @.str.9, i32 noundef 5) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @strncasecmp(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, i32 noundef 5) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %51, label %36

30:                                               ; preds = %23
  %31 = tail call i32 @strncasecmp(ptr noundef nonnull %7, ptr noundef nonnull @.str.11, i32 noundef 4) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @strncasecmp(ptr noundef nonnull %7, ptr noundef nonnull @.str.12, i32 noundef 4) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %51, label %45

36:                                               ; preds = %27
  %37 = tail call i32 @strncasecmp(ptr noundef nonnull %7, ptr noundef nonnull @.str.13, i32 noundef 5) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @strncasecmp(ptr noundef nonnull %7, ptr noundef nonnull @.str.14, i32 noundef 5) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %47

42:                                               ; preds = %23
  %43 = tail call i32 @strncasecmp(ptr noundef nonnull %7, ptr noundef nonnull @.str.15, i32 noundef 8) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %47

45:                                               ; preds = %33
  %46 = tail call i32 @strncasecmp(ptr noundef nonnull %7, ptr noundef nonnull @.str.16, i32 noundef 4) #6
  br label %47

47:                                               ; preds = %45, %42, %39, %23
  %48 = phi i32 [ %46, %45 ], [ 8, %42 ], [ 8, %39 ], [ %8, %23 ]
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 7, i32 %5
  br label %51

51:                                               ; preds = %47, %42, %39, %36, %33, %30, %27, %24, %23, %21
  %52 = phi i32 [ %5, %21 ], [ 0, %24 ], [ 2, %30 ], [ 3, %33 ], [ 4, %36 ], [ 5, %39 ], [ 6, %42 ], [ %50, %47 ], [ 1, %27 ], [ %8, %23 ]
  %53 = icmp eq i8 %10, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51, %17
  %55 = phi i32 [ %20, %17 ], [ 1, %51 ]
  %56 = phi i32 [ %5, %17 ], [ %52, %51 ]
  %57 = getelementptr i8, ptr %7, i32 1
  %58 = getelementptr i8, ptr %57, i32 %8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %4

60:                                               ; preds = %54, %51, %2
  %61 = phi i32 [ 3, %2 ], [ %52, %51 ], [ %56, %54 ]
  ret i32 %61
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }

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
