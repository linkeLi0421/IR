; ModuleID = '/llk/IR/drivers/media/platform/sti/delta/delta-debug.c_pt.bc'
source_filename = "../drivers/media/platform/sti/delta/delta-debug.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.delta_streaminfo = type { i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.delta_frameinfo = type { i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"%4.4s %dx%d %s %s dpb=%d %s %s %s%dx%d@(%d,%d) %s%d/%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"progressive\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"crop=\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"par=\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"%4.4s %dx%d aligned %dx%d %s %s%dx%d@(%d,%d) %s%d/%d\00", align 1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @delta_streaminfo_str(ptr noundef %0, ptr noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.delta_streaminfo, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.delta_streaminfo, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.delta_streaminfo, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.delta_streaminfo, ptr %0, i32 0, i32 8
  %12 = getelementptr inbounds %struct.delta_streaminfo, ptr %0, i32 0, i32 9
  %13 = getelementptr inbounds %struct.delta_streaminfo, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.delta_streaminfo, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  %18 = select i1 %17, ptr @.str.1, ptr @.str.2
  %19 = getelementptr inbounds %struct.delta_streaminfo, ptr %0, i32 0, i32 10
  %20 = load i32, ptr %0, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr @.str.4, ptr @.str.3
  %24 = getelementptr inbounds %struct.delta_streaminfo, ptr %0, i32 0, i32 5
  %25 = getelementptr inbounds %struct.delta_streaminfo, ptr %0, i32 0, i32 5, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.delta_streaminfo, ptr %0, i32 0, i32 5, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %24, align 4
  %30 = getelementptr inbounds %struct.delta_streaminfo, ptr %0, i32 0, i32 5, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %20, 2
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, ptr @.str.4, ptr @.str.5
  %35 = getelementptr inbounds %struct.delta_streaminfo, ptr %0, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.delta_streaminfo, ptr %0, i32 0, i32 6, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str, ptr noundef %6, i32 noundef %8, i32 noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %14, ptr noundef nonnull %18, ptr noundef %19, ptr noundef nonnull %23, i32 noundef %26, i32 noundef %28, i32 noundef %29, i32 noundef %31, ptr noundef nonnull %34, i32 noundef %36, i32 noundef %38)
  br label %40

40:                                               ; preds = %5, %3
  %41 = phi ptr [ %1, %5 ], [ null, %3 ]
  ret ptr %41
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @delta_frameinfo_str(ptr noundef %0, ptr noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.delta_frameinfo, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.delta_frameinfo, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.delta_frameinfo, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.delta_frameinfo, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.delta_frameinfo, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.delta_frameinfo, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  %18 = select i1 %17, ptr @.str.1, ptr @.str.2
  %19 = load i32, ptr %0, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr @.str.4, ptr @.str.3
  %23 = getelementptr inbounds %struct.delta_frameinfo, ptr %0, i32 0, i32 7
  %24 = getelementptr inbounds %struct.delta_frameinfo, ptr %0, i32 0, i32 7, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.delta_frameinfo, ptr %0, i32 0, i32 7, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %23, align 4
  %29 = getelementptr inbounds %struct.delta_frameinfo, ptr %0, i32 0, i32 7, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %19, 2
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, ptr @.str.4, ptr @.str.5
  %34 = getelementptr inbounds %struct.delta_frameinfo, ptr %0, i32 0, i32 8
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.delta_frameinfo, ptr %0, i32 0, i32 8, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.6, ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %18, ptr noundef nonnull %22, i32 noundef %25, i32 noundef %27, i32 noundef %28, i32 noundef %30, ptr noundef nonnull %33, i32 noundef %35, i32 noundef %37)
  br label %39

39:                                               ; preds = %5, %3
  %40 = phi ptr [ %1, %5 ], [ null, %3 ]
  ret ptr %40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @delta_trace_summary(ptr nocapture noundef %0) local_unnamed_addr #2 {
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
