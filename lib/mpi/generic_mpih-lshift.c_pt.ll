; ModuleID = '/llk/IR/lib/mpi/generic_mpih-lshift.c_pt.bc'
source_filename = "../lib/mpi/generic_mpih-lshift.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpihelp_lshift(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sub i32 32, %3
  %6 = add i32 %2, -1
  %7 = getelementptr i32, ptr %1, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %2, -2
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %23

11:                                               ; preds = %11, %4
  %12 = phi i32 [ %21, %11 ], [ %9, %4 ]
  %13 = phi i32 [ %12, %11 ], [ %6, %4 ]
  %14 = phi i32 [ %16, %11 ], [ %8, %4 ]
  %15 = getelementptr i32, ptr %1, i32 %12
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %14, %3
  %18 = lshr i32 %16, %5
  %19 = or i32 %18, %17
  %20 = getelementptr i32, ptr %0, i32 %13
  store i32 %19, ptr %20, align 4
  %21 = add nsw i32 %12, -1
  %22 = icmp sgt i32 %12, 0
  br i1 %22, label %11, label %23

23:                                               ; preds = %11, %4
  %24 = phi i32 [ %8, %4 ], [ %16, %11 ]
  %25 = phi i32 [ %6, %4 ], [ 0, %11 ]
  %26 = lshr i32 %8, %5
  %27 = shl i32 %24, %3
  %28 = getelementptr i32, ptr %0, i32 %25
  store i32 %27, ptr %28, align 4
  ret i32 %26
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
