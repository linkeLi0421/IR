; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvif/timer.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/timer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_timer_wait = type { ptr, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"drivers/gpu/drm/nouveau/nvif/timer.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @nvif_timer_wait_test(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call i64 @nvif_device_time(ptr noundef %2) #3
  %4 = getelementptr inbounds %struct.nvif_timer_wait, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvif_timer_wait, ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 8
  %10 = icmp eq i64 %9, %3
  br i1 %10, label %14, label %18

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.nvif_timer_wait, ptr %0, i32 0, i32 2
  store i64 %3, ptr %12, align 8
  %13 = getelementptr inbounds %struct.nvif_timer_wait, ptr %0, i32 0, i32 3
  br label %18

14:                                               ; preds = %7
  %15 = add i32 %5, 1
  store i32 %15, ptr %4, align 8
  %16 = icmp eq i32 %5, 16
  br i1 %16, label %17, label %20, !prof !8

17:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef null) #3
  br label %28

18:                                               ; preds = %11, %7
  %19 = phi ptr [ %13, %11 ], [ %8, %7 ]
  store i64 %3, ptr %19, align 8
  store i32 1, ptr %4, align 8
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.nvif_timer_wait, ptr %0, i32 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = sub i64 %3, %22
  %24 = getelementptr inbounds %struct.nvif_timer_wait, ptr %0, i32 0, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = icmp ugt i64 %23, %25
  %27 = select i1 %26, i64 -110, i64 %23
  br label %28

28:                                               ; preds = %20, %17
  %29 = phi i64 [ -110, %17 ], [ %27, %20 ]
  ret i64 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_device_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nvif_timer_wait_init(ptr noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvif_timer_wait, ptr %2, i32 0, i32 1
  store i64 %1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.nvif_timer_wait, ptr %2, i32 0, i32 4
  store i32 0, ptr %5, align 8
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
