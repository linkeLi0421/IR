; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/hda.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/hda.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.tegra_hda_format = type { i32, i32, i32, i8 }

@.str = private unnamed_addr constant [28 x i8] c"drivers/gpu/drm/tegra/hda.c\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid number of bits: %#x\0A\00", align 1
@switch.table.tegra_hda_parse_format = private unnamed_addr constant [5 x i32] [i32 8, i32 16, i32 20, i32 24, i32 32], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_hda_parse_format(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = lshr i32 %0, 15
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  %6 = xor i8 %5, 1
  %7 = getelementptr inbounds %struct.tegra_hda_format, ptr %1, i32 0, i32 3
  store i8 %6, ptr %7, align 4
  %8 = and i32 %0, 16384
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 48000, i32 44100
  %11 = lshr i32 %0, 11
  %12 = lshr i32 %0, 8
  %13 = trunc i32 %11 to i8
  %14 = and i8 %13, 7
  %15 = add nuw nsw i8 %14, 1
  %16 = trunc i32 %12 to i8
  %17 = and i8 %16, 7
  %18 = add nuw nsw i8 %17, 1
  %19 = udiv i8 %15, %18
  %20 = zext i8 %19 to i32
  %21 = mul nuw nsw i32 %10, %20
  store i32 %21, ptr %1, align 4
  %22 = lshr i32 %0, 4
  %23 = and i32 %22, 7
  %24 = icmp ult i32 %23, 5
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %23) #2
  br label %29

26:                                               ; preds = %2
  %27 = getelementptr inbounds [5 x i32], ptr @switch.table.tegra_hda_parse_format, i32 0, i32 %23
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %25
  %30 = phi i32 [ 8, %25 ], [ %28, %26 ]
  %31 = getelementptr inbounds %struct.tegra_hda_format, ptr %1, i32 0, i32 2
  store i32 %30, ptr %31, align 4
  %32 = and i32 %0, 15
  %33 = add nuw nsw i32 %32, 1
  %34 = getelementptr inbounds %struct.tegra_hda_format, ptr %1, i32 0, i32 1
  store i32 %33, ptr %34, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
