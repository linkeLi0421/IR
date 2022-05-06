; ModuleID = '/llk/IR/lib/zstd/compress/hist.c_pt.bc'
source_filename = "../lib/zstd/compress/hist.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @HIST_isError(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, -120
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HIST_count_simple(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr i8, ptr %2, i32 %3
  %6 = load i32, ptr %1, align 4
  %7 = shl i32 %6, 2
  %8 = add i32 %7, 4
  tail call void @llvm.memset.p0.i32(ptr align 4 %0, i8 0, i32 %8, i1 false)
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = icmp ugt ptr %5, %2
  br i1 %11, label %13, label %22

12:                                               ; preds = %4
  store i32 0, ptr %1, align 4
  br label %38

13:                                               ; preds = %13, %10
  %14 = phi ptr [ %15, %13 ], [ %2, %10 ]
  %15 = getelementptr i8, ptr %14, i32 1
  %16 = load i8, ptr %14, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr i32, ptr %0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  %21 = icmp eq ptr %15, %5
  br i1 %21, label %22, label %13

22:                                               ; preds = %13, %10
  br label %23

23:                                               ; preds = %23, %22
  %24 = phi i32 [ %28, %23 ], [ %6, %22 ]
  %25 = getelementptr i32, ptr %0, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  %28 = add i32 %24, -1
  br i1 %27, label %23, label %29

29:                                               ; preds = %23
  store i32 %24, ptr %1, align 4
  br label %30

30:                                               ; preds = %30, %29
  %31 = phi i32 [ 0, %29 ], [ %36, %30 ]
  %32 = phi i32 [ 0, %29 ], [ %35, %30 ]
  %33 = getelementptr i32, ptr %0, i32 %31
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 @llvm.umax.i32(i32 %34, i32 %32)
  %36 = add i32 %31, 1
  %37 = icmp ugt i32 %36, %24
  br i1 %37, label %38, label %30

38:                                               ; preds = %30, %12
  %39 = phi i32 [ 0, %12 ], [ %35, %30 ]
  ret i32 %39
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HIST_countFast_wksp(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = icmp ult i32 %3, 1500
  br i1 %7, label %8, label %42

8:                                                ; preds = %6
  %9 = getelementptr i8, ptr %2, i32 %3
  %10 = load i32, ptr %1, align 4
  %11 = shl i32 %10, 2
  %12 = add i32 %11, 4
  tail call void @llvm.memset.p0.i32(ptr align 4 %0, i8 0, i32 %12, i1 false) #5
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = icmp ugt ptr %9, %2
  br i1 %15, label %17, label %26

16:                                               ; preds = %8
  store i32 0, ptr %1, align 4
  br label %50

17:                                               ; preds = %17, %14
  %18 = phi ptr [ %19, %17 ], [ %2, %14 ]
  %19 = getelementptr i8, ptr %18, i32 1
  %20 = load i8, ptr %18, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr i32, ptr %0, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  %25 = icmp eq ptr %19, %9
  br i1 %25, label %26, label %17

26:                                               ; preds = %17, %14
  br label %27

27:                                               ; preds = %27, %26
  %28 = phi i32 [ %32, %27 ], [ %10, %26 ]
  %29 = getelementptr i32, ptr %0, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  %32 = add i32 %28, -1
  br i1 %31, label %27, label %33

33:                                               ; preds = %27
  store i32 %28, ptr %1, align 4
  br label %34

34:                                               ; preds = %34, %33
  %35 = phi i32 [ 0, %33 ], [ %40, %34 ]
  %36 = phi i32 [ 0, %33 ], [ %39, %34 ]
  %37 = getelementptr i32, ptr %0, i32 %35
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @llvm.umax.i32(i32 %38, i32 %36) #5
  %40 = add i32 %35, 1
  %41 = icmp ugt i32 %40, %28
  br i1 %41, label %50, label %34

42:                                               ; preds = %6
  %43 = ptrtoint ptr %4 to i32
  %44 = and i32 %43, 3
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = icmp ult i32 %5, 4096
  br i1 %47, label %50, label %48

48:                                               ; preds = %46
  %49 = tail call fastcc i32 @HIST_count_parallel_wksp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %4)
  br label %50

50:                                               ; preds = %48, %46, %42, %34, %16
  %51 = phi i32 [ %49, %48 ], [ -1, %42 ], [ -66, %46 ], [ 0, %16 ], [ %39, %34 ]
  ret i32 %51
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @HIST_count_parallel_wksp(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5) unnamed_addr #1 {
  %7 = ptrtoint ptr %2 to i32
  %8 = getelementptr i8, ptr %2, i32 %3
  %9 = load i32, ptr %1, align 4
  %10 = shl i32 %9, 2
  %11 = add i32 %10, 4
  %12 = getelementptr i32, ptr %5, i32 256
  %13 = getelementptr i32, ptr %5, i32 512
  %14 = getelementptr i32, ptr %5, i32 768
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  tail call void @llvm.memset.p0.i32(ptr align 4 %0, i8 0, i32 %11, i1 false)
  store i32 0, ptr %1, align 4
  br label %157

17:                                               ; preds = %6
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(4096) %5, i8 0, i32 4096, i1 false)
  %18 = getelementptr i8, ptr %8, i32 -15
  %19 = getelementptr i8, ptr %2, i32 4
  %20 = icmp ult ptr %19, %18
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, ptr %2, align 1
  br label %33

23:                                               ; preds = %33
  %24 = ptrtoint ptr %78 to i32
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi i32 [ %24, %23 ], [ %7, %17 ]
  %27 = phi ptr [ %78, %23 ], [ %2, %17 ]
  %28 = icmp ult ptr %27, %8
  br i1 %28, label %29, label %127

29:                                               ; preds = %25
  %30 = add i32 %7, %3
  %31 = sub i32 %30, %26
  %32 = getelementptr i8, ptr %27, i32 %31
  br label %118

33:                                               ; preds = %33, %21
  %34 = phi ptr [ %116, %33 ], [ %19, %21 ]
  %35 = phi i32 [ %97, %33 ], [ %22, %21 ]
  %36 = phi ptr [ %78, %33 ], [ %2, %21 ]
  %37 = load i32, ptr %34, align 1
  %38 = getelementptr i8, ptr %36, i32 8
  %39 = and i32 %35, 255
  %40 = getelementptr i32, ptr %5, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  %43 = lshr i32 %35, 8
  %44 = and i32 %43, 255
  %45 = getelementptr i32, ptr %12, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4
  %48 = lshr i32 %35, 16
  %49 = and i32 %48, 255
  %50 = getelementptr i32, ptr %13, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  %53 = lshr i32 %35, 24
  %54 = getelementptr i32, ptr %14, i32 %53
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4
  %57 = load i32, ptr %38, align 1
  %58 = getelementptr i8, ptr %36, i32 12
  %59 = and i32 %37, 255
  %60 = getelementptr i32, ptr %5, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 4
  %63 = lshr i32 %37, 8
  %64 = and i32 %63, 255
  %65 = getelementptr i32, ptr %12, i32 %64
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 4
  %68 = lshr i32 %37, 16
  %69 = and i32 %68, 255
  %70 = getelementptr i32, ptr %13, i32 %69
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 4
  %73 = lshr i32 %37, 24
  %74 = getelementptr i32, ptr %14, i32 %73
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %74, align 4
  %77 = load i32, ptr %58, align 1
  %78 = getelementptr i8, ptr %36, i32 16
  %79 = and i32 %57, 255
  %80 = getelementptr i32, ptr %5, i32 %79
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 4
  %83 = lshr i32 %57, 8
  %84 = and i32 %83, 255
  %85 = getelementptr i32, ptr %12, i32 %84
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %85, align 4
  %88 = lshr i32 %57, 16
  %89 = and i32 %88, 255
  %90 = getelementptr i32, ptr %13, i32 %89
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 4
  %93 = lshr i32 %57, 24
  %94 = getelementptr i32, ptr %14, i32 %93
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %94, align 4
  %97 = load i32, ptr %78, align 1
  %98 = and i32 %77, 255
  %99 = getelementptr i32, ptr %5, i32 %98
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, 1
  store i32 %101, ptr %99, align 4
  %102 = lshr i32 %77, 8
  %103 = and i32 %102, 255
  %104 = getelementptr i32, ptr %12, i32 %103
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, 1
  store i32 %106, ptr %104, align 4
  %107 = lshr i32 %77, 16
  %108 = and i32 %107, 255
  %109 = getelementptr i32, ptr %13, i32 %108
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, 1
  store i32 %111, ptr %109, align 4
  %112 = lshr i32 %77, 24
  %113 = getelementptr i32, ptr %14, i32 %112
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %114, 1
  store i32 %115, ptr %113, align 4
  %116 = getelementptr i8, ptr %36, i32 20
  %117 = icmp ult ptr %116, %18
  br i1 %117, label %33, label %23

118:                                              ; preds = %118, %29
  %119 = phi ptr [ %120, %118 ], [ %27, %29 ]
  %120 = getelementptr i8, ptr %119, i32 1
  %121 = load i8, ptr %119, align 1
  %122 = zext i8 %121 to i32
  %123 = getelementptr i32, ptr %5, i32 %122
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 4
  %126 = icmp eq ptr %120, %32
  br i1 %126, label %127, label %118

127:                                              ; preds = %118, %25
  br label %128

128:                                              ; preds = %128, %127
  %129 = phi i32 [ %143, %128 ], [ 0, %127 ]
  %130 = phi i32 [ %142, %128 ], [ 0, %127 ]
  %131 = getelementptr i32, ptr %12, i32 %129
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr i32, ptr %13, i32 %129
  %134 = load i32, ptr %133, align 4
  %135 = add i32 %134, %132
  %136 = getelementptr i32, ptr %14, i32 %129
  %137 = load i32, ptr %136, align 4
  %138 = add i32 %135, %137
  %139 = getelementptr i32, ptr %5, i32 %129
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %138, %140
  store i32 %141, ptr %139, align 4
  %142 = tail call i32 @llvm.umax.i32(i32 %141, i32 %130)
  %143 = add nuw nsw i32 %129, 1
  %144 = icmp eq i32 %143, 256
  br i1 %144, label %145, label %128

145:                                              ; preds = %145, %128
  %146 = phi i32 [ %150, %145 ], [ 255, %128 ]
  %147 = getelementptr i32, ptr %5, i32 %146
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  %150 = add i32 %146, -1
  br i1 %149, label %145, label %151

151:                                              ; preds = %145
  %152 = icmp eq i32 %4, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %151
  %154 = load i32, ptr %1, align 4
  %155 = icmp ugt i32 %146, %154
  br i1 %155, label %157, label %156

156:                                              ; preds = %153, %151
  store i32 %146, ptr %1, align 4
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %0, ptr align 4 %5, i32 %11, i1 false)
  br label %157

157:                                              ; preds = %156, %153, %16
  %158 = phi i32 [ 0, %16 ], [ %142, %156 ], [ -48, %153 ]
  ret i32 %158
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HIST_count_wksp(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = ptrtoint ptr %4 to i32
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %6
  %11 = icmp ult i32 %5, 4096
  br i1 %11, label %52, label %12

12:                                               ; preds = %10
  %13 = load i32, ptr %1, align 4
  %14 = icmp ult i32 %13, 255
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @HIST_count_parallel_wksp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef %4)
  br label %52

17:                                               ; preds = %12
  store i32 255, ptr %1, align 4
  %18 = icmp ult i32 %3, 1500
  br i1 %18, label %19, label %50

19:                                               ; preds = %17
  %20 = getelementptr i8, ptr %2, i32 %3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(1024) %0, i8 0, i32 1024, i1 false) #5
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = icmp ugt ptr %20, %2
  br i1 %23, label %25, label %34

24:                                               ; preds = %19
  store i32 0, ptr %1, align 4
  br label %52

25:                                               ; preds = %25, %22
  %26 = phi ptr [ %27, %25 ], [ %2, %22 ]
  %27 = getelementptr i8, ptr %26, i32 1
  %28 = load i8, ptr %26, align 1
  %29 = zext i8 %28 to i32
  %30 = getelementptr i32, ptr %0, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  %33 = icmp eq ptr %27, %20
  br i1 %33, label %34, label %25

34:                                               ; preds = %25, %22
  br label %35

35:                                               ; preds = %35, %34
  %36 = phi i32 [ %40, %35 ], [ 255, %34 ]
  %37 = getelementptr i32, ptr %0, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  %40 = add i32 %36, -1
  br i1 %39, label %35, label %41

41:                                               ; preds = %35
  store i32 %36, ptr %1, align 4
  br label %42

42:                                               ; preds = %42, %41
  %43 = phi i32 [ 0, %41 ], [ %48, %42 ]
  %44 = phi i32 [ 0, %41 ], [ %47, %42 ]
  %45 = getelementptr i32, ptr %0, i32 %43
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @llvm.umax.i32(i32 %46, i32 %44) #5
  %48 = add i32 %43, 1
  %49 = icmp ugt i32 %48, %36
  br i1 %49, label %52, label %42

50:                                               ; preds = %17
  %51 = tail call fastcc i32 @HIST_count_parallel_wksp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %4) #5
  br label %52

52:                                               ; preds = %50, %42, %24, %15, %10, %6
  %53 = phi i32 [ %16, %15 ], [ -1, %6 ], [ -66, %10 ], [ %51, %50 ], [ 0, %24 ], [ %47, %42 ]
  ret i32 %53
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
