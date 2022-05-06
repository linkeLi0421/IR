; ModuleID = '/llk/IR/scripts/dtc/libfdt/fdt_wip.c_pt.bc'
source_filename = "../scripts/dtc/libfdt/fdt_wip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_setprop_inplace_namelen_partial(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  %9 = call ptr @fdt_getprop_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %8) #6
  %10 = icmp eq ptr %9, null
  %11 = load i32, ptr %8, align 4, !tbaa !5
  br i1 %10, label %19, label %12

12:                                               ; preds = %7
  %13 = add i32 %6, %4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = zext i32 %4 to i64
  %17 = getelementptr inbounds i8, ptr %9, i64 %16
  %18 = sext i32 %6 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr align 1 %5, i64 %18, i1 false)
  br label %19

19:                                               ; preds = %15, %12, %7
  %20 = phi i32 [ 0, %15 ], [ -3, %12 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_setprop_inplace(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  %8 = call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %7) #6
  %9 = icmp eq ptr %8, null
  %10 = load i32, ptr %7, align 4, !tbaa !5
  br i1 %9, label %25, label %11

11:                                               ; preds = %5
  %12 = icmp eq i32 %10, %4
  br i1 %12, label %13, label %25

13:                                               ; preds = %11
  %14 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #7
  %15 = trunc i64 %14 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  %16 = call ptr @fdt_getprop_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %15, ptr noundef nonnull %6) #6
  %17 = icmp eq ptr %16, null
  %18 = load i32, ptr %6, align 4, !tbaa !5
  br i1 %17, label %23, label %19

19:                                               ; preds = %13
  %20 = icmp ult i32 %18, %4
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = sext i32 %4 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %16, ptr align 1 %3, i64 %22, i1 false) #6
  br label %23

23:                                               ; preds = %21, %19, %13
  %24 = phi i32 [ 0, %21 ], [ -3, %19 ], [ %18, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %25

25:                                               ; preds = %23, %11, %5
  %26 = phi i32 [ %24, %23 ], [ -3, %11 ], [ %10, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  ret i32 %26
}

declare ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_nop_property(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %5 = call ptr @fdt_get_property(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #6
  %6 = ptrtoint ptr %5 to i64
  %7 = icmp eq ptr %5, null
  %8 = load i32, ptr %4, align 4, !tbaa !5
  br i1 %7, label %75, label %9

9:                                                ; preds = %3
  %10 = add i32 %8, 12
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %5, i64 %11
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %14, label %75

14:                                               ; preds = %9
  %15 = add i64 %6, %11
  %16 = add i64 %6, 4
  %17 = call i64 @llvm.umax.i64(i64 %15, i64 %16)
  %18 = xor i64 %6, -1
  %19 = add i64 %17, %18
  %20 = lshr i64 %19, 2
  %21 = add nuw nsw i64 %20, 1
  %22 = icmp ult i64 %19, 28
  br i1 %22, label %69, label %23

23:                                               ; preds = %14
  %24 = and i64 %21, 9223372036854775800
  %25 = shl i64 %24, 2
  %26 = getelementptr i8, ptr %5, i64 %25
  %27 = add nsw i64 %24, -8
  %28 = lshr exact i64 %27, 3
  %29 = add nuw nsw i64 %28, 1
  %30 = and i64 %29, 3
  %31 = icmp ult i64 %27, 24
  br i1 %31, label %55, label %32

32:                                               ; preds = %23
  %33 = and i64 %29, 4611686018427387900
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi i64 [ 0, %32 ], [ %52, %34 ]
  %36 = phi i64 [ 0, %32 ], [ %53, %34 ]
  %37 = shl i64 %35, 2
  %38 = getelementptr i8, ptr %5, i64 %37
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %38, align 4, !tbaa !5
  %39 = getelementptr i32, ptr %38, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %39, align 4, !tbaa !5
  %40 = shl i64 %35, 2
  %41 = or i64 %40, 32
  %42 = getelementptr i8, ptr %5, i64 %41
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %42, align 4, !tbaa !5
  %43 = getelementptr i32, ptr %42, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %43, align 4, !tbaa !5
  %44 = shl i64 %35, 2
  %45 = or i64 %44, 64
  %46 = getelementptr i8, ptr %5, i64 %45
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %46, align 4, !tbaa !5
  %47 = getelementptr i32, ptr %46, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %47, align 4, !tbaa !5
  %48 = shl i64 %35, 2
  %49 = or i64 %48, 96
  %50 = getelementptr i8, ptr %5, i64 %49
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %50, align 4, !tbaa !5
  %51 = getelementptr i32, ptr %50, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %51, align 4, !tbaa !5
  %52 = add nuw i64 %35, 32
  %53 = add i64 %36, 4
  %54 = icmp eq i64 %53, %33
  br i1 %54, label %55, label %34, !llvm.loop !9

55:                                               ; preds = %34, %23
  %56 = phi i64 [ 0, %23 ], [ %52, %34 ]
  %57 = icmp eq i64 %30, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %58, %55
  %59 = phi i64 [ %64, %58 ], [ %56, %55 ]
  %60 = phi i64 [ %65, %58 ], [ 0, %55 ]
  %61 = shl i64 %59, 2
  %62 = getelementptr i8, ptr %5, i64 %61
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %62, align 4, !tbaa !5
  %63 = getelementptr i32, ptr %62, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %63, align 4, !tbaa !5
  %64 = add nuw i64 %59, 8
  %65 = add i64 %60, 1
  %66 = icmp eq i64 %65, %30
  br i1 %66, label %67, label %58, !llvm.loop !11

67:                                               ; preds = %58, %55
  %68 = icmp eq i64 %21, %24
  br i1 %68, label %75, label %69

69:                                               ; preds = %67, %14
  %70 = phi ptr [ %5, %14 ], [ %26, %67 ]
  br label %71

71:                                               ; preds = %71, %69
  %72 = phi ptr [ %73, %71 ], [ %70, %69 ]
  store i32 67108864, ptr %72, align 4, !tbaa !5
  %73 = getelementptr inbounds i32, ptr %72, i64 1
  %74 = icmp ult ptr %73, %12
  br i1 %74, label %71, label %75, !llvm.loop !13

75:                                               ; preds = %71, %67, %9, %3
  %76 = phi i32 [ 0, %9 ], [ %8, %3 ], [ 0, %67 ], [ 0, %71 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_node_end_offset_(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !tbaa !5
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %5, label %12

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %7, %5 ], [ %1, %2 ]
  %7 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %3) #6
  %8 = icmp sgt i32 %7, -1
  %9 = load i32, ptr %3, align 4
  %10 = icmp sgt i32 %9, -1
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %5, label %12

12:                                               ; preds = %5, %2
  %13 = phi i32 [ %1, %2 ], [ %7, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %13
}

declare i32 @fdt_next_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_nop_node(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !tbaa !5
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %86

6:                                                ; preds = %6, %2
  %7 = phi i32 [ %8, %6 ], [ %1, %2 ]
  %8 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %7, ptr noundef nonnull %3) #6
  %9 = icmp sgt i32 %8, -1
  %10 = load i32, ptr %3, align 4
  %11 = icmp sgt i32 %10, -1
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %6, label %13

13:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %14 = icmp slt i32 %8, 0
  br i1 %14, label %86, label %15

15:                                               ; preds = %13
  %16 = call ptr @fdt_offset_ptr(ptr noundef %0, i32 noundef %1, i32 noundef 0) #6
  %17 = sub nsw i32 %8, %1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  %20 = icmp sgt i32 %17, 0
  br i1 %20, label %21, label %86

21:                                               ; preds = %15
  %22 = ptrtoint ptr %16 to i64
  %23 = sext i32 %8 to i64
  %24 = add i64 %22, %23
  %25 = sext i32 %1 to i64
  %26 = sub i64 %24, %25
  %27 = add i64 %22, 4
  %28 = call i64 @llvm.umax.i64(i64 %26, i64 %27)
  %29 = xor i64 %22, -1
  %30 = add i64 %28, %29
  %31 = lshr i64 %30, 2
  %32 = add nuw nsw i64 %31, 1
  %33 = icmp ult i64 %30, 28
  br i1 %33, label %80, label %34

34:                                               ; preds = %21
  %35 = and i64 %32, 9223372036854775800
  %36 = shl i64 %35, 2
  %37 = getelementptr i8, ptr %16, i64 %36
  %38 = add nsw i64 %35, -8
  %39 = lshr exact i64 %38, 3
  %40 = add nuw nsw i64 %39, 1
  %41 = and i64 %40, 3
  %42 = icmp ult i64 %38, 24
  br i1 %42, label %66, label %43

43:                                               ; preds = %34
  %44 = and i64 %40, 4611686018427387900
  br label %45

45:                                               ; preds = %45, %43
  %46 = phi i64 [ 0, %43 ], [ %63, %45 ]
  %47 = phi i64 [ 0, %43 ], [ %64, %45 ]
  %48 = shl i64 %46, 2
  %49 = getelementptr i8, ptr %16, i64 %48
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %49, align 4, !tbaa !5
  %50 = getelementptr i32, ptr %49, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %50, align 4, !tbaa !5
  %51 = shl i64 %46, 2
  %52 = or i64 %51, 32
  %53 = getelementptr i8, ptr %16, i64 %52
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %53, align 4, !tbaa !5
  %54 = getelementptr i32, ptr %53, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %54, align 4, !tbaa !5
  %55 = shl i64 %46, 2
  %56 = or i64 %55, 64
  %57 = getelementptr i8, ptr %16, i64 %56
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %57, align 4, !tbaa !5
  %58 = getelementptr i32, ptr %57, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %58, align 4, !tbaa !5
  %59 = shl i64 %46, 2
  %60 = or i64 %59, 96
  %61 = getelementptr i8, ptr %16, i64 %60
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %61, align 4, !tbaa !5
  %62 = getelementptr i32, ptr %61, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %62, align 4, !tbaa !5
  %63 = add nuw i64 %46, 32
  %64 = add i64 %47, 4
  %65 = icmp eq i64 %64, %44
  br i1 %65, label %66, label %45, !llvm.loop !15

66:                                               ; preds = %45, %34
  %67 = phi i64 [ 0, %34 ], [ %63, %45 ]
  %68 = icmp eq i64 %41, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %69, %66
  %70 = phi i64 [ %75, %69 ], [ %67, %66 ]
  %71 = phi i64 [ %76, %69 ], [ 0, %66 ]
  %72 = shl i64 %70, 2
  %73 = getelementptr i8, ptr %16, i64 %72
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %73, align 4, !tbaa !5
  %74 = getelementptr i32, ptr %73, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %74, align 4, !tbaa !5
  %75 = add nuw i64 %70, 8
  %76 = add i64 %71, 1
  %77 = icmp eq i64 %76, %41
  br i1 %77, label %78, label %69, !llvm.loop !16

78:                                               ; preds = %69, %66
  %79 = icmp eq i64 %32, %35
  br i1 %79, label %86, label %80

80:                                               ; preds = %78, %21
  %81 = phi ptr [ %16, %21 ], [ %37, %78 ]
  br label %82

82:                                               ; preds = %82, %80
  %83 = phi ptr [ %84, %82 ], [ %81, %80 ]
  store i32 67108864, ptr %83, align 4, !tbaa !5
  %84 = getelementptr inbounds i32, ptr %83, i64 1
  %85 = icmp ult ptr %84, %19
  br i1 %85, label %82, label %86, !llvm.loop !17

86:                                               ; preds = %82, %78, %15, %13, %5
  %87 = phi i32 [ %8, %13 ], [ %1, %5 ], [ 0, %15 ], [ 0, %78 ], [ 0, %82 ]
  ret i32 %87
}

declare ptr @fdt_getprop_namelen(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fdt_get_property(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fdt_offset_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !14, !10}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !14, !10}
