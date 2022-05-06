; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp_format.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp_format.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdp_format = type { %struct.msm_format, i32, i32, i32, i32, [4 x i8], i8, i8, i8, i8, i32, i32, i8 }
%struct.msm_format = type { i32 }
%struct.csc_cfg = type { i32, [9 x i32], [3 x i32], [3 x i32], [6 x i32], [6 x i32] }

@formats = internal constant [22 x %struct.mdp_format] [%struct.mdp_format { %struct.msm_format { i32 875713089 }, i32 3, i32 3, i32 3, i32 3, [4 x i8] c"\01\00\02\03", i8 1, i8 1, i8 4, i8 4, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 875708993 }, i32 3, i32 3, i32 3, i32 3, [4 x i8] c"\02\00\01\03", i8 1, i8 1, i8 4, i8 4, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 875708754 }, i32 3, i32 3, i32 3, i32 3, [4 x i8] c"\03\01\00\02", i8 1, i8 1, i8 4, i8 4, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 875708738 }, i32 3, i32 3, i32 3, i32 3, [4 x i8] c"\03\02\00\01", i8 1, i8 1, i8 4, i8 4, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 875713112 }, i32 3, i32 3, i32 3, i32 3, [4 x i8] c"\01\00\02\03", i8 0, i8 1, i8 4, i8 4, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 875709016 }, i32 3, i32 3, i32 3, i32 3, [4 x i8] c"\02\00\01\03", i8 0, i8 1, i8 4, i8 4, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 875714642 }, i32 3, i32 3, i32 3, i32 3, [4 x i8] c"\03\01\00\02", i8 0, i8 1, i8 4, i8 4, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 875714626 }, i32 3, i32 3, i32 3, i32 3, [4 x i8] c"\03\02\00\01", i8 0, i8 1, i8 4, i8 4, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 875710290 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\01\00\02\00", i8 0, i8 1, i8 3, i8 3, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 875710274 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\02\00\01\00", i8 0, i8 1, i8 3, i8 3, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 909199186 }, i32 1, i32 2, i32 1, i32 0, [4 x i8] c"\01\00\02\00", i8 0, i8 1, i8 2, i8 3, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 909199170 }, i32 1, i32 2, i32 1, i32 0, [4 x i8] c"\02\00\01\00", i8 0, i8 1, i8 2, i8 3, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 842094158 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\01\02\00\00", i8 0, i8 1, i8 2, i8 2, i32 2, i32 3, i8 1 }, %struct.mdp_format { %struct.msm_format { i32 825382478 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\02\01\00\00", i8 0, i8 1, i8 2, i8 2, i32 2, i32 3, i8 1 }, %struct.mdp_format { %struct.msm_format { i32 909203022 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\01\02\00\00", i8 0, i8 1, i8 2, i8 2, i32 2, i32 1, i8 1 }, %struct.mdp_format { %struct.msm_format { i32 825644622 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\02\01\00\00", i8 0, i8 1, i8 2, i8 2, i32 2, i32 1, i8 1 }, %struct.mdp_format { %struct.msm_format { i32 1498765654 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\02\00\01\00", i8 0, i8 1, i8 2, i8 4, i32 0, i32 1, i8 1 }, %struct.mdp_format { %struct.msm_format { i32 1498831189 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\01\00\02\00", i8 0, i8 1, i8 2, i8 4, i32 0, i32 1, i8 1 }, %struct.mdp_format { %struct.msm_format { i32 1448695129 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\00\01\00\02", i8 0, i8 1, i8 2, i8 4, i32 0, i32 1, i8 1 }, %struct.mdp_format { %struct.msm_format { i32 1431918169 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\00\02\00\01", i8 0, i8 1, i8 2, i8 4, i32 0, i32 1, i8 1 }, %struct.mdp_format { %struct.msm_format { i32 842093913 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\02\01\00\00", i8 0, i8 1, i8 1, i8 1, i32 1, i32 3, i8 1 }, %struct.mdp_format { %struct.msm_format { i32 842094169 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\01\02\00\00", i8 0, i8 1, i8 1, i8 1, i32 1, i32 3, i8 1 }], align 4
@.str = private unnamed_addr constant [38 x i8] c"drivers/gpu/drm/msm/disp/mdp_format.c\00", align 1
@csc_convert = internal global [4 x %struct.csc_cfg] [%struct.csc_cfg { i32 0, [9 x i32] [i32 512, i32 0, i32 0, i32 0, i32 512, i32 0, i32 0, i32 0, i32 512], [3 x i32] zeroinitializer, [3 x i32] zeroinitializer, [6 x i32] [i32 0, i32 255, i32 0, i32 255, i32 0, i32 255], [6 x i32] [i32 0, i32 255, i32 0, i32 255, i32 0, i32 255] }, %struct.csc_cfg { i32 1, [9 x i32] [i32 596, i32 0, i32 817, i32 596, i32 65335, i32 65120, i32 596, i32 1033, i32 0], [3 x i32] [i32 65520, i32 65408, i32 65408], [3 x i32] zeroinitializer, [6 x i32] [i32 0, i32 255, i32 0, i32 255, i32 0, i32 255], [6 x i32] [i32 0, i32 255, i32 0, i32 255, i32 0, i32 255] }, %struct.csc_cfg { i32 2, [9 x i32] [i32 131, i32 258, i32 50, i32 8117, i32 8044, i32 225, i32 225, i32 8005, i32 8156], [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 128, i32 128], [6 x i32] [i32 0, i32 255, i32 0, i32 255, i32 0, i32 255], [6 x i32] [i32 16, i32 235, i32 16, i32 240, i32 16, i32 240] }, %struct.csc_cfg { i32 3, [9 x i32] [i32 512, i32 0, i32 0, i32 0, i32 512, i32 0, i32 0, i32 0, i32 512], [3 x i32] zeroinitializer, [3 x i32] zeroinitializer, [6 x i32] [i32 0, i32 255, i32 0, i32 255, i32 0, i32 255], [6 x i32] [i32 0, i32 255, i32 0, i32 255, i32 0, i32 255] }], align 4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local i32 @mdp_get_formats(ptr nocapture noundef writeonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = xor i1 %2, true
  br label %5

5:                                                ; preds = %13, %3
  %6 = phi i32 [ 0, %3 ], [ %16, %13 ]
  %7 = getelementptr [22 x %struct.mdp_format], ptr @formats, i32 0, i32 %6
  %8 = icmp eq i32 %6, %1
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = and i32 %6, 536870908
  %11 = icmp ult i32 %10, 12
  %12 = select i1 %4, i1 true, i1 %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, ptr %7, align 4
  %15 = getelementptr i32, ptr %0, i32 %6
  store i32 %14, ptr %15, align 4
  %16 = add nuw nsw i32 %6, 1
  %17 = icmp eq i32 %16, 22
  br i1 %17, label %18, label %5

18:                                               ; preds = %13, %9, %5
  %19 = phi i32 [ %6, %9 ], [ %1, %5 ], [ 22, %13 ]
  ret i32 %19
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local ptr @mdp_get_format(ptr nocapture noundef readnone %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  switch i32 %1, label %4 [
    i32 875713089, label %26
    i32 875708993, label %5
    i32 875708754, label %6
    i32 875708738, label %7
    i32 875713112, label %8
    i32 875709016, label %9
    i32 875714642, label %10
    i32 875714626, label %11
    i32 875710290, label %12
    i32 875710274, label %13
    i32 909199186, label %14
    i32 909199170, label %15
    i32 842094158, label %16
    i32 825382478, label %17
    i32 909203022, label %18
    i32 825644622, label %19
    i32 1498765654, label %20
    i32 1498831189, label %21
    i32 1448695129, label %22
    i32 1431918169, label %23
    i32 842093913, label %24
    i32 842094169, label %25
  ]

4:                                                ; preds = %3
  br label %26

5:                                                ; preds = %3
  br label %26

6:                                                ; preds = %3
  br label %26

7:                                                ; preds = %3
  br label %26

8:                                                ; preds = %3
  br label %26

9:                                                ; preds = %3
  br label %26

10:                                               ; preds = %3
  br label %26

11:                                               ; preds = %3
  br label %26

12:                                               ; preds = %3
  br label %26

13:                                               ; preds = %3
  br label %26

14:                                               ; preds = %3
  br label %26

15:                                               ; preds = %3
  br label %26

16:                                               ; preds = %3
  br label %26

17:                                               ; preds = %3
  br label %26

18:                                               ; preds = %3
  br label %26

19:                                               ; preds = %3
  br label %26

20:                                               ; preds = %3
  br label %26

21:                                               ; preds = %3
  br label %26

22:                                               ; preds = %3
  br label %26

23:                                               ; preds = %3
  br label %26

24:                                               ; preds = %3
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3
  %27 = phi ptr [ @formats, %3 ], [ null, %4 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 1), %5 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 2), %6 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 3), %7 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 4), %8 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 5), %9 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 6), %10 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 7), %11 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 8), %12 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 9), %13 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 10), %14 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 11), %15 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 12), %16 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 13), %17 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 14), %18 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 15), %19 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 16), %20 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 17), %21 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 18), %22 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 19), %23 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 20), %24 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 21), %25 ]
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp_get_default_csc_cfg(i32 noundef %0) local_unnamed_addr #2 {
  %2 = icmp ugt i32 %0, 3
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 177, i32 noundef 9, ptr noundef null) #4
  br label %6

4:                                                ; preds = %1
  %5 = getelementptr [4 x %struct.csc_cfg], ptr @csc_convert, i32 0, i32 %0
  br label %6

6:                                                ; preds = %4, %3
  %7 = phi ptr [ null, %3 ], [ %5, %4 ]
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
