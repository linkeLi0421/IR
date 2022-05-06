; ModuleID = '/llk/IR/drivers/video/display_timing.c_pt.bc'
source_filename = "../drivers/video/display_timing.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_display_timings_release:\09\09\09\09\09"
module asm "\09.asciz \09\22display_timings_release\22\09\09\09\09\09"
module asm "__kstrtabns_display_timings_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.display_timings = type { i32, i32, ptr }

@__kstrtab_display_timings_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_display_timings_release = external dso_local constant [0 x i8], align 1
@__ksymtab_display_timings_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @display_timings_release to i32), ptr @__kstrtab_display_timings_release, ptr @__kstrtabns_display_timings_release }, section "___ksymtab_gpl+display_timings_release", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_display_timings_release], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @display_timings_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.display_timings, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %16, %8 ], [ %3, %5 ]
  %10 = phi i32 [ %13, %8 ], [ 0, %5 ]
  %11 = getelementptr ptr, ptr %9, i32 %10
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #2
  %13 = add nuw i32 %10, 1
  %14 = load i32, ptr %0, align 4
  %15 = icmp ult i32 %13, %14
  %16 = load ptr, ptr %2, align 4
  br i1 %15, label %8, label %17

17:                                               ; preds = %8, %5
  %18 = phi ptr [ %3, %5 ], [ %16, %8 ]
  tail call void @kfree(ptr noundef %18) #2
  br label %19

19:                                               ; preds = %17, %1
  tail call void @kfree(ptr noundef %0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

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
