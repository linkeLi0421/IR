; ModuleID = '/llk/IR/lib/mpi/generic_mpih-mul2.c_pt.bc'
source_filename = "../lib/mpi/generic_mpih-mul2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpihelp_addmul_1(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sub i32 0, %2
  %6 = getelementptr i32, ptr %0, i32 %2
  %7 = getelementptr i32, ptr %1, i32 %2
  br label %8

8:                                                ; preds = %8, %4
  %9 = phi i32 [ 0, %4 ], [ %25, %8 ]
  %10 = phi i32 [ %5, %4 ], [ %26, %8 ]
  %11 = getelementptr i32, ptr %7, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %12, i32 %3) #1, !srcloc !8
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = extractvalue { i32, i32 } %13, 1
  %16 = add i32 %15, %9
  %17 = icmp ult i32 %16, %9
  %18 = zext i1 %17 to i32
  %19 = add i32 %14, %18
  %20 = getelementptr i32, ptr %6, i32 %10
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %16, %21
  %23 = icmp ult i32 %22, %21
  %24 = zext i1 %23 to i32
  %25 = add i32 %19, %24
  store i32 %22, ptr %20, align 4
  %26 = add i32 %10, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %8

28:                                               ; preds = %8
  ret i32 %25
}

attributes #0 = { argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind readnone }

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
!8 = !{i64 2152392458, i64 2152392487}
