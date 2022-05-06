; ModuleID = '/llk/IR/lib/mpi/generic_mpih-add1.c_pt.bc'
source_filename = "../lib/mpi/generic_mpih-add1.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpihelp_add_n(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sub i32 0, %3
  %6 = getelementptr i32, ptr %1, i32 %3
  %7 = getelementptr i32, ptr %2, i32 %3
  %8 = getelementptr i32, ptr %0, i32 %3
  br label %9

9:                                                ; preds = %9, %4
  %10 = phi i32 [ 0, %4 ], [ %22, %9 ]
  %11 = phi i32 [ %5, %4 ], [ %24, %9 ]
  %12 = getelementptr i32, ptr %7, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i32, ptr %6, i32 %11
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %13, %10
  %17 = icmp ult i32 %16, %10
  %18 = zext i1 %17 to i32
  %19 = add i32 %16, %15
  %20 = icmp ult i32 %19, %15
  %21 = zext i1 %20 to i32
  %22 = add nuw nsw i32 %21, %18
  %23 = getelementptr i32, ptr %8, i32 %11
  store i32 %19, ptr %23, align 4
  %24 = add i32 %11, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %9

26:                                               ; preds = %9
  ret i32 %22
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
