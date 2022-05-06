; ModuleID = '/llk/IR/kernel/range.c_pt.bc'
source_filename = "../kernel/range.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.range = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"\013%s: run out of slot in ranges\0A\00", align 1
@__func__.subtract_range = private unnamed_addr constant [15 x i8] c"subtract_range\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @add_range(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = icmp ult i64 %3, %4
  %7 = icmp slt i32 %2, %1
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr %struct.range, ptr %0, i32 %2
  store i64 %3, ptr %10, align 8
  %11 = getelementptr %struct.range, ptr %0, i32 %2, i32 1
  store i64 %4, ptr %11, align 8
  %12 = add nsw i32 %2, 1
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %12, %9 ], [ %2, %5 ]
  ret i32 %14
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @add_range_with_merge(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = icmp ult i64 %3, %4
  br i1 %6, label %7, label %51

7:                                                ; preds = %5
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %33, %7
  %10 = phi i32 [ %37, %33 ], [ %2, %7 ]
  %11 = phi i64 [ %36, %33 ], [ %3, %7 ]
  %12 = phi i64 [ %35, %33 ], [ %4, %7 ]
  %13 = phi i32 [ %38, %33 ], [ 0, %7 ]
  %14 = getelementptr %struct.range, ptr %0, i32 %13
  %15 = getelementptr %struct.range, ptr %0, i32 %13, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %9
  %19 = load i64, ptr %14, align 8
  %20 = tail call i64 @llvm.umax.i64(i64 %19, i64 %11)
  %21 = tail call i64 @llvm.umin.i64(i64 %16, i64 %12)
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = tail call i64 @llvm.umin.i64(i64 %19, i64 %11)
  %25 = tail call i64 @llvm.umax.i64(i64 %16, i64 %12)
  %26 = add nsw i32 %13, 1
  %27 = getelementptr %struct.range, ptr %0, i32 %26
  %28 = sub i32 %10, %26
  %29 = shl i32 %28, 4
  tail call void @llvm.memmove.p0.p0.i32(ptr align 8 %14, ptr align 8 %27, i32 %29, i1 false)
  %30 = add nsw i32 %10, -1
  %31 = getelementptr %struct.range, ptr %0, i32 %30
  %32 = add i32 %13, -1
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  br label %33

33:                                               ; preds = %23, %18, %9
  %34 = phi i32 [ %32, %23 ], [ %13, %9 ], [ %13, %18 ]
  %35 = phi i64 [ %25, %23 ], [ %12, %9 ], [ %12, %18 ]
  %36 = phi i64 [ %24, %23 ], [ %11, %9 ], [ %11, %18 ]
  %37 = phi i32 [ %30, %23 ], [ %10, %9 ], [ %10, %18 ]
  %38 = add i32 %34, 1
  %39 = icmp slt i32 %38, %37
  br i1 %39, label %9, label %40

40:                                               ; preds = %33, %7
  %41 = phi i64 [ %4, %7 ], [ %35, %33 ]
  %42 = phi i64 [ %3, %7 ], [ %36, %33 ]
  %43 = phi i32 [ %2, %7 ], [ %37, %33 ]
  %44 = icmp ult i64 %42, %41
  %45 = icmp slt i32 %43, %1
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = getelementptr %struct.range, ptr %0, i32 %43
  store i64 %42, ptr %48, align 8
  %49 = getelementptr %struct.range, ptr %0, i32 %43, i32 1
  store i64 %41, ptr %49, align 8
  %50 = add nsw i32 %43, 1
  br label %51

51:                                               ; preds = %47, %40, %5
  %52 = phi i32 [ %2, %5 ], [ %50, %47 ], [ %43, %40 ]
  ret i32 %52
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @subtract_range(ptr nocapture noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
  %5 = icmp ult i64 %2, %3
  %6 = icmp sgt i32 %1, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %47

8:                                                ; preds = %44, %4
  %9 = phi i32 [ %45, %44 ], [ 0, %4 ]
  %10 = getelementptr %struct.range, ptr %0, i32 %9
  %11 = getelementptr %struct.range, ptr %0, i32 %9, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %8
  %15 = load i64, ptr %10, align 8
  %16 = icmp ult i64 %15, %2
  %17 = icmp ugt i64 %12, %3
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br label %44

20:                                               ; preds = %14
  br i1 %16, label %25, label %21

21:                                               ; preds = %20
  %22 = icmp ult i64 %15, %3
  %23 = select i1 %17, i1 %22, i1 false
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  store i64 %3, ptr %10, align 8
  br label %44

25:                                               ; preds = %20
  %26 = icmp ule i64 %12, %3
  %27 = icmp ugt i64 %12, %2
  %28 = and i1 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i64 %2, ptr %11, align 8
  br label %44

30:                                               ; preds = %25
  br i1 %17, label %31, label %44

31:                                               ; preds = %36, %30
  %32 = phi i32 [ %37, %36 ], [ 0, %30 ]
  %33 = getelementptr %struct.range, ptr %0, i32 %32, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = add nuw nsw i32 %32, 1
  %38 = icmp eq i32 %37, %1
  br i1 %38, label %41, label %31

39:                                               ; preds = %31
  %40 = getelementptr %struct.range, ptr %0, i32 %32
  store i64 %12, ptr %33, align 8
  store i64 %3, ptr %40, align 8
  br label %43

41:                                               ; preds = %36
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.subtract_range) #9
  br label %43

43:                                               ; preds = %41, %39
  store i64 %2, ptr %11, align 8
  br label %44

44:                                               ; preds = %43, %30, %29, %24, %21, %19, %8
  %45 = add nuw nsw i32 %9, 1
  %46 = icmp eq i32 %45, %1
  br i1 %46, label %47, label %8

47:                                               ; preds = %44, %4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clean_sort_range(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = add i32 %1, -1
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %31, %2
  %6 = phi i32 [ %32, %31 ], [ %3, %2 ]
  %7 = phi i32 [ %33, %31 ], [ 0, %2 ]
  %8 = getelementptr %struct.range, ptr %0, i32 %7
  %9 = getelementptr %struct.range, ptr %0, i32 %7, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %5
  %13 = icmp sgt i32 %6, %7
  br i1 %13, label %14, label %22

14:                                               ; preds = %19, %12
  %15 = phi i32 [ %20, %19 ], [ %6, %12 ]
  %16 = getelementptr %struct.range, ptr %0, i32 %15, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = add nsw i32 %15, -1
  %21 = icmp sgt i32 %20, %7
  br i1 %21, label %14, label %35

22:                                               ; preds = %14, %12
  %23 = phi i32 [ %6, %12 ], [ %15, %14 ]
  %24 = icmp eq i32 %23, %7
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = getelementptr %struct.range, ptr %0, i32 %23
  %27 = load i64, ptr %26, align 8
  store i64 %27, ptr %8, align 8
  %28 = getelementptr %struct.range, ptr %0, i32 %23, i32 1
  %29 = load i64, ptr %28, align 8
  store i64 %29, ptr %9, align 8
  %30 = add nsw i32 %23, -1
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  br label %31

31:                                               ; preds = %25, %5
  %32 = phi i32 [ %6, %5 ], [ %30, %25 ]
  %33 = add nuw nsw i32 %7, 1
  %34 = icmp slt i32 %33, %32
  br i1 %34, label %5, label %35

35:                                               ; preds = %31, %22, %19, %2
  %36 = icmp sgt i32 %1, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %42, %35
  %38 = phi i32 [ %43, %42 ], [ 0, %35 ]
  %39 = getelementptr %struct.range, ptr %0, i32 %38, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = add nuw nsw i32 %38, 1
  %44 = icmp eq i32 %43, %1
  br i1 %44, label %45, label %37

45:                                               ; preds = %42, %37, %35
  %46 = phi i32 [ %1, %35 ], [ %38, %37 ], [ %1, %42 ]
  tail call void @sort(ptr noundef %0, i32 noundef %46, i32 noundef 16, ptr noundef nonnull @cmp_range, ptr noundef null) #10
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @cmp_range(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = load i64, ptr %0, align 8
  %4 = load i64, ptr %1, align 8
  %5 = icmp ult i64 %3, %4
  %6 = icmp ugt i64 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sort_range(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  tail call void @sort(ptr noundef %0, i32 noundef %1, i32 noundef 16, ptr noundef nonnull @cmp_range, ptr noundef null) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind }

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
