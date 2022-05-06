; ModuleID = '/llk/IR/drivers/clk/spear/clk.c_pt.bc'
source_filename = "../drivers/clk/spear/clk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_round_rate_index(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = zext i8 %4 to i32
  store i32 0, ptr %5, align 4
  %8 = icmp eq i8 %4, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %6
  %10 = tail call i32 %3(ptr noundef %0, i32 noundef %2, i32 noundef 0) #1
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %15, label %22

12:                                               ; preds = %22
  %13 = tail call i32 %3(ptr noundef %0, i32 noundef %2, i32 noundef %25) #1
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %15, label %22

15:                                               ; preds = %12, %9
  %16 = phi i32 [ 0, %9 ], [ %23, %12 ]
  %17 = phi i32 [ %10, %9 ], [ %13, %12 ]
  %18 = load i32, ptr %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = add i32 %18, -1
  store i32 %21, ptr %5, align 4
  br label %27

22:                                               ; preds = %12, %9
  %23 = phi i32 [ %13, %12 ], [ %10, %9 ]
  %24 = load i32, ptr %5, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %5, align 4
  %26 = icmp slt i32 %25, %7
  br i1 %26, label %12, label %27

27:                                               ; preds = %22, %20, %15, %6
  %28 = phi i32 [ %21, %20 ], [ 0, %15 ], [ 0, %6 ], [ %25, %22 ]
  %29 = phi i32 [ %16, %20 ], [ %17, %15 ], [ 0, %6 ], [ %23, %22 ]
  %30 = icmp eq i32 %28, %7
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = add nsw i32 %7, -1
  store i32 %32, ptr %5, align 4
  br label %33

33:                                               ; preds = %31, %27
  ret i32 %29
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }

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
