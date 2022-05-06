; ModuleID = '/llk/IR/drivers/video/videomode.c_pt.bc'
source_filename = "../drivers/video/videomode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videomode_from_timing:\09\09\09\09\09"
module asm "\09.asciz \09\22videomode_from_timing\22\09\09\09\09\09"
module asm "__kstrtabns_videomode_from_timing:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videomode_from_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22videomode_from_timings\22\09\09\09\09\09"
module asm "__kstrtabns_videomode_from_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.timing_entry = type { i32, i32, i32 }
%struct.display_timing = type { %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.display_timings = type { i32, i32, ptr }

@__kstrtab_videomode_from_timing = external dso_local constant [0 x i8], align 1
@__kstrtabns_videomode_from_timing = external dso_local constant [0 x i8], align 1
@__ksymtab_videomode_from_timing = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videomode_from_timing to i32), ptr @__kstrtab_videomode_from_timing, ptr @__kstrtabns_videomode_from_timing }, section "___ksymtab_gpl+videomode_from_timing", align 4
@__kstrtab_videomode_from_timings = external dso_local constant [0 x i8], align 1
@__kstrtabns_videomode_from_timings = external dso_local constant [0 x i8], align 1
@__ksymtab_videomode_from_timings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videomode_from_timings to i32), ptr @__kstrtab_videomode_from_timings, ptr @__kstrtabns_videomode_from_timings }, section "___ksymtab_gpl+videomode_from_timings", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_videomode_from_timing, ptr @__ksymtab_videomode_from_timings], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @videomode_from_timing(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.timing_entry, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %1, align 4
  %5 = getelementptr inbounds %struct.display_timing, ptr %0, i32 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.display_timing, ptr %0, i32 0, i32 2, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.display_timing, ptr %0, i32 0, i32 3, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 3
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.display_timing, ptr %0, i32 0, i32 4, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.display_timing, ptr %0, i32 0, i32 5, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 5
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.display_timing, ptr %0, i32 0, i32 6, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 6
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.display_timing, ptr %0, i32 0, i32 7, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 7
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.display_timing, ptr %0, i32 0, i32 8, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 8
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.display_timing, ptr %0, i32 0, i32 9
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 9
  store i32 %30, ptr %31, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @videomode_from_timings(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #1 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp ugt i32 %4, %2
  br i1 %5, label %6, label %42

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.display_timings, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr ptr, ptr %8, i32 %2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %42, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.timing_entry, ptr %10, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %1, align 4
  %15 = getelementptr inbounds %struct.display_timing, ptr %10, i32 0, i32 1, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.display_timing, ptr %10, i32 0, i32 2, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.display_timing, ptr %10, i32 0, i32 3, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.display_timing, ptr %10, i32 0, i32 4, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 4
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.display_timing, ptr %10, i32 0, i32 5, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 5
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.display_timing, ptr %10, i32 0, i32 6, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 6
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.display_timing, ptr %10, i32 0, i32 7, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 7
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.display_timing, ptr %10, i32 0, i32 8, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 8
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.display_timing, ptr %10, i32 0, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 9
  store i32 %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %12, %6, %3
  %43 = phi i32 [ 0, %12 ], [ -22, %6 ], [ -22, %3 ]
  ret i32 %43
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
