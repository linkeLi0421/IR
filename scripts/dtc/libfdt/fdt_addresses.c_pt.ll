; ModuleID = '/llk/IR/scripts/dtc/libfdt/fdt_addresses.c_pt.bc'
source_filename = "../scripts/dtc/libfdt/fdt_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_address_cells(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  %4 = call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %3) #4
  %5 = icmp eq ptr %4, null
  %6 = load i32, ptr %3, align 4, !tbaa !5
  br i1 %5, label %14, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %6, 4
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = load i32, ptr %4, align 4, !tbaa !5
  %11 = call i32 @llvm.bswap.i32(i32 %10) #4
  %12 = icmp ugt i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  br label %17

14:                                               ; preds = %9, %2
  %15 = phi i32 [ %11, %9 ], [ %6, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  switch i32 %15, label %17 [
    i32 0, label %19
    i32 -1, label %16
  ]

16:                                               ; preds = %14
  br label %19

17:                                               ; preds = %14, %13
  %18 = phi i32 [ -14, %13 ], [ %15, %14 ]
  br label %19

19:                                               ; preds = %17, %16, %14
  %20 = phi i32 [ 2, %16 ], [ %18, %17 ], [ -14, %14 ]
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_size_cells(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  %4 = call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #4
  %5 = icmp eq ptr %4, null
  %6 = load i32, ptr %3, align 4, !tbaa !5
  br i1 %5, label %16, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %6, 4
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = load i32, ptr %4, align 4, !tbaa !5
  %11 = call i32 @llvm.bswap.i32(i32 %10) #4
  %12 = icmp ugt i32 %11, 4
  %13 = select i1 %12, i32 -14, i32 %11
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ -14, %7 ], [ %13, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  br label %19

16:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  %17 = icmp eq i32 %6, -1
  %18 = select i1 %17, i32 1, i32 %6
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i32 [ %15, %14 ], [ %18, %16 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_appendprop_addrrange(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  %10 = call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %8) #4
  %11 = icmp eq ptr %10, null
  %12 = load i32, ptr %8, align 4, !tbaa !5
  br i1 %11, label %20, label %13

13:                                               ; preds = %6
  %14 = icmp eq i32 %12, 4
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = load i32, ptr %10, align 4, !tbaa !5
  %17 = call i32 @llvm.bswap.i32(i32 %16) #4
  %18 = icmp ugt i32 %17, 4
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  br label %118

20:                                               ; preds = %15, %6
  %21 = phi i32 [ %17, %15 ], [ %12, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  switch i32 %21, label %22 [
    i32 0, label %118
    i32 -1, label %24
  ]

22:                                               ; preds = %20
  %23 = icmp slt i32 %21, 0
  br i1 %23, label %118, label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %22 ], [ 2, %20 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  %26 = call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %7) #4
  %27 = icmp eq ptr %26, null
  %28 = load i32, ptr %7, align 4, !tbaa !5
  br i1 %27, label %38, label %29

29:                                               ; preds = %24
  %30 = icmp eq i32 %28, 4
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = load i32, ptr %26, align 4, !tbaa !5
  %33 = call i32 @llvm.bswap.i32(i32 %32) #4
  %34 = icmp ugt i32 %33, 4
  %35 = select i1 %34, i32 -14, i32 %33
  br label %36

36:                                               ; preds = %31, %29
  %37 = phi i32 [ -14, %29 ], [ %35, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  br label %40

38:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  %39 = icmp eq i32 %28, -1
  br i1 %39, label %43, label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %28, %38 ]
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %118, label %43

43:                                               ; preds = %40, %38
  %44 = phi i32 [ %41, %40 ], [ 1, %38 ]
  switch i32 %25, label %118 [
    i32 1, label %45
    i32 2, label %53
  ]

45:                                               ; preds = %43
  %46 = icmp ugt i64 %4, 4294967295
  %47 = sub i64 0, %4
  %48 = icmp ult i64 %47, %5
  %49 = or i1 %46, %48
  br i1 %49, label %118, label %50

50:                                               ; preds = %45
  %51 = lshr i64 %4, 24
  %52 = trunc i64 %51 to i8
  store i8 %52, ptr %9, align 16, !tbaa !9
  br label %68

53:                                               ; preds = %43
  %54 = lshr i64 %4, 56
  %55 = trunc i64 %54 to i8
  store i8 %55, ptr %9, align 16, !tbaa !9
  %56 = lshr i64 %4, 48
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 %57, ptr %58, align 1, !tbaa !9
  %59 = lshr i64 %4, 40
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds i8, ptr %9, i64 2
  store i8 %60, ptr %61, align 2, !tbaa !9
  %62 = lshr i64 %4, 32
  %63 = trunc i64 %62 to i8
  %64 = getelementptr inbounds i8, ptr %9, i64 3
  store i8 %63, ptr %64, align 1, !tbaa !9
  %65 = lshr i64 %4, 24
  %66 = trunc i64 %65 to i8
  %67 = getelementptr inbounds i8, ptr %9, i64 4
  store i8 %66, ptr %67, align 4, !tbaa !9
  br label %68

68:                                               ; preds = %53, %50
  %69 = phi i64 [ 5, %53 ], [ 1, %50 ]
  %70 = phi i64 [ 6, %53 ], [ 2, %50 ]
  %71 = phi i64 [ 7, %53 ], [ 3, %50 ]
  %72 = lshr i64 %4, 16
  %73 = trunc i64 %72 to i8
  %74 = getelementptr inbounds i8, ptr %9, i64 %69
  store i8 %73, ptr %74, align 1, !tbaa !9
  %75 = lshr i64 %4, 8
  %76 = trunc i64 %75 to i8
  %77 = getelementptr inbounds i8, ptr %9, i64 %70
  store i8 %76, ptr %77, align 2, !tbaa !9
  %78 = trunc i64 %4 to i8
  %79 = getelementptr inbounds i8, ptr %9, i64 %71
  store i8 %78, ptr %79, align 1, !tbaa !9
  %80 = zext i32 %25 to i64
  %81 = shl nuw nsw i64 %80, 2
  %82 = getelementptr inbounds i8, ptr %9, i64 %81
  switch i32 %44, label %118 [
    i32 1, label %83
    i32 2, label %88
  ]

83:                                               ; preds = %68
  %84 = icmp ugt i64 %5, 4294967295
  br i1 %84, label %118, label %85

85:                                               ; preds = %83
  %86 = lshr i64 %5, 24
  %87 = trunc i64 %86 to i8
  store i8 %87, ptr %82, align 4, !tbaa !9
  br label %103

88:                                               ; preds = %68
  %89 = lshr i64 %5, 56
  %90 = trunc i64 %89 to i8
  store i8 %90, ptr %82, align 4, !tbaa !9
  %91 = lshr i64 %5, 48
  %92 = trunc i64 %91 to i8
  %93 = getelementptr inbounds i8, ptr %82, i64 1
  store i8 %92, ptr %93, align 1, !tbaa !9
  %94 = lshr i64 %5, 40
  %95 = trunc i64 %94 to i8
  %96 = getelementptr inbounds i8, ptr %82, i64 2
  store i8 %95, ptr %96, align 2, !tbaa !9
  %97 = lshr i64 %5, 32
  %98 = trunc i64 %97 to i8
  %99 = getelementptr inbounds i8, ptr %82, i64 3
  store i8 %98, ptr %99, align 1, !tbaa !9
  %100 = lshr i64 %5, 24
  %101 = trunc i64 %100 to i8
  %102 = getelementptr inbounds i8, ptr %82, i64 4
  store i8 %101, ptr %102, align 4, !tbaa !9
  br label %103

103:                                              ; preds = %88, %85
  %104 = phi i64 [ 5, %88 ], [ 1, %85 ]
  %105 = phi i64 [ 6, %88 ], [ 2, %85 ]
  %106 = phi i64 [ 7, %88 ], [ 3, %85 ]
  %107 = lshr i64 %5, 16
  %108 = trunc i64 %107 to i8
  %109 = getelementptr inbounds i8, ptr %82, i64 %104
  store i8 %108, ptr %109, align 1, !tbaa !9
  %110 = lshr i64 %5, 8
  %111 = trunc i64 %110 to i8
  %112 = getelementptr inbounds i8, ptr %82, i64 %105
  store i8 %111, ptr %112, align 2, !tbaa !9
  %113 = trunc i64 %5 to i8
  %114 = getelementptr inbounds i8, ptr %82, i64 %106
  store i8 %113, ptr %114, align 1, !tbaa !9
  %115 = add nuw nsw i32 %44, %25
  %116 = shl nuw nsw i32 %115, 2
  %117 = call i32 @fdt_appendprop(ptr noundef %0, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %9, i32 noundef %116) #4
  br label %118

118:                                              ; preds = %103, %83, %68, %45, %43, %40, %22, %20, %19
  %119 = phi i32 [ %117, %103 ], [ %21, %22 ], [ %41, %40 ], [ -15, %45 ], [ -14, %43 ], [ -15, %83 ], [ -14, %68 ], [ -14, %19 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  ret i32 %119
}

declare i32 @fdt_appendprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
