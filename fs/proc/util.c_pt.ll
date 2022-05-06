; ModuleID = '/llk/IR/fs/proc/util.c_pt.bc'
source_filename = "../fs/proc/util.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.anon = type { i32, i32 }

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @name_to_int(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.qstr, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i8, ptr %3, align 1
  %9 = icmp eq i8 %8, 48
  br i1 %9, label %27, label %10

10:                                               ; preds = %7, %1
  br label %11

11:                                               ; preds = %21, %10
  %12 = phi ptr [ %24, %21 ], [ %3, %10 ]
  %13 = phi i32 [ %25, %21 ], [ %5, %10 ]
  %14 = phi i32 [ %23, %21 ], [ 0, %10 ]
  %15 = load i8, ptr %12, align 1
  %16 = zext i8 %15 to i32
  %17 = add nsw i32 %16, -48
  %18 = icmp ugt i32 %17, 9
  %19 = icmp ugt i32 %14, 429496727
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %11
  %22 = mul nuw i32 %14, 10
  %23 = add nuw i32 %17, %22
  %24 = getelementptr i8, ptr %12, i32 1
  %25 = add i32 %13, -1
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %11, label %27

27:                                               ; preds = %21, %11, %7
  %28 = phi i32 [ -1, %7 ], [ -1, %11 ], [ %23, %21 ]
  ret i32 %28
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
