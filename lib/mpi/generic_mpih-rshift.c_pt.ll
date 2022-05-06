; ModuleID = '/llk/IR/lib/mpi/generic_mpih-rshift.c_pt.bc'
source_filename = "../lib/mpi/generic_mpih-rshift.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpihelp_rshift(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr i32, ptr %0, i32 -1
  %6 = sub i32 32, %3
  %7 = load i32, ptr %1, align 4
  %8 = icmp sgt i32 %2, 1
  br i1 %8, label %9, label %20

9:                                                ; preds = %9, %4
  %10 = phi i32 [ %18, %9 ], [ 1, %4 ]
  %11 = phi i32 [ %13, %9 ], [ %7, %4 ]
  %12 = getelementptr i32, ptr %1, i32 %10
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %11, %3
  %15 = shl i32 %13, %6
  %16 = or i32 %15, %14
  %17 = getelementptr i32, ptr %5, i32 %10
  store i32 %16, ptr %17, align 4
  %18 = add nuw nsw i32 %10, 1
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %9

20:                                               ; preds = %9, %4
  %21 = phi i32 [ %7, %4 ], [ %13, %9 ]
  %22 = phi i32 [ 1, %4 ], [ %2, %9 ]
  %23 = shl i32 %7, %6
  %24 = lshr i32 %21, %3
  %25 = getelementptr i32, ptr %5, i32 %22
  store i32 %24, ptr %25, align 4
  ret i32 %23
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
