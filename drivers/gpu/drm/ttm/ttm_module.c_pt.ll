; ModuleID = '/llk/IR/drivers/gpu/drm/ttm/ttm_module.c_pt.bc'
source_filename = "../drivers/gpu/drm/ttm/ttm_module.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

@__UNIQUE_ID_author211 = internal constant [39 x i8] c"author=Thomas Hellstrom, Jerome Glisse\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [58 x i8] c"description=TTM memory manager subsystem (for DRM device)\00", section ".modinfo", align 1
@__UNIQUE_ID_license213 = internal constant [34 x i8] c"license=GPL and additional rights\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_license213], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ttm_prot_from_caching(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  switch i32 %0, label %6 [
    i32 2, label %8
    i32 1, label %3
  ]

3:                                                ; preds = %2
  %4 = and i32 %1, -61
  %5 = or i32 %4, 4
  br label %8

6:                                                ; preds = %2
  %7 = and i32 %1, -61
  br label %8

8:                                                ; preds = %6, %3, %2
  %9 = phi i32 [ %1, %2 ], [ %5, %3 ], [ %7, %6 ]
  ret i32 %9
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
