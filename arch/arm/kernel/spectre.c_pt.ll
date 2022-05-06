; ModuleID = '/llk/IR/arch/arm/kernel/spectre.c_pt.bc'
source_filename = "../arch/arm/kernel/spectre.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

@.str = private unnamed_addr constant [41 x i8] c"Mitigation: __user pointer sanitization\0A\00", align 1
@spectre_v2_state = internal unnamed_addr global i32 0, align 4
@spectre_v2_methods = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Not affected\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Vulnerable\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Branch predictor hardening\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"I-cache invalidation\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Firmware call\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"History overwrite\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Multiple mitigations\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Mitigation: %s\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @cpu_show_spectre_v1(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(41) %2, ptr noundef nonnull align 1 dereferenceable(41) @.str, i32 41, i1 false)
  ret i32 40
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @spectre_v2_update_state(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr @spectre_v2_state, align 4
  %4 = icmp ult i32 %3, %0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store i32 %0, ptr @spectre_v2_state, align 4
  br label %6

6:                                                ; preds = %5, %2
  %7 = load i32, ptr @spectre_v2_methods, align 4
  %8 = or i32 %7, %1
  store i32 %8, ptr @spectre_v2_methods, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpu_show_spectre_v2(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = load i32, ptr @spectre_v2_state, align 4
  switch i32 %4, label %7 [
    i32 0, label %5
    i32 1, label %9
  ]

5:                                                ; preds = %3
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %18

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3)
  br label %18

9:                                                ; preds = %3
  %10 = load i32, ptr @spectre_v2_methods, align 4
  switch i32 %10, label %14 [
    i32 1, label %15
    i32 2, label %11
    i32 4, label %12
    i32 8, label %12
    i32 16, label %13
  ]

11:                                               ; preds = %9
  br label %15

12:                                               ; preds = %9, %9
  br label %15

13:                                               ; preds = %9
  br label %15

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %13, %12, %11, %9
  %16 = phi ptr [ @.str.9, %14 ], [ @.str.8, %13 ], [ @.str.7, %12 ], [ @.str.6, %11 ], [ @.str.5, %9 ]
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef nonnull %16)
  br label %18

18:                                               ; preds = %15, %7, %5
  %19 = phi i32 [ %6, %5 ], [ %8, %7 ], [ %17, %15 ]
  ret i32 %19
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }

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
