; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmfmac/xtlv.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/xtlv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

@.str = private unnamed_addr constant [56 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/xtlv.c\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Unexpected xtlv option\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @brcmf_xtlv_data_size(i32 noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i16 %1 to i32
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 4, i32 3
  %7 = shl i32 %3, 29
  %8 = ashr i32 %7, 31
  %9 = add nsw i32 %6, %8
  %10 = and i16 %1, 1
  %11 = icmp eq i16 %10, 0
  %12 = add i32 %9, %0
  %13 = add i32 %12, 3
  %14 = sdiv i32 %13, 4
  %15 = shl nsw i32 %14, 2
  %16 = select i1 %11, i32 %12, i32 %15
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_xtlv_pack_header(ptr nocapture noundef writeonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef readonly %3, i16 noundef zeroext %4) local_unnamed_addr #1 {
  %6 = zext i16 %4 to i32
  %7 = and i32 %6, 6
  switch i32 %7, label %14 [
    i32 0, label %8
    i32 6, label %10
  ]

8:                                                ; preds = %5
  %9 = getelementptr i8, ptr %0, i32 2
  store i16 %1, ptr %0, align 1
  store i16 %2, ptr %9, align 1
  br label %27

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %0, i32 1
  %12 = trunc i16 %1 to i8
  store i8 %12, ptr %0, align 1
  %13 = trunc i16 %2 to i8
  store i8 %13, ptr %11, align 1
  br label %27

14:                                               ; preds = %5
  %15 = and i32 %6, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %0, i32 1
  %19 = trunc i16 %1 to i8
  store i8 %19, ptr %0, align 1
  store i16 %2, ptr %18, align 1
  br label %27

20:                                               ; preds = %14
  %21 = and i32 %6, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %0, i32 2
  store i16 %1, ptr %0, align 1
  %25 = trunc i16 %2 to i8
  store i8 %25, ptr %24, align 1
  br label %27

26:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %42

27:                                               ; preds = %23, %17, %10, %8
  %28 = phi i32 [ 2, %10 ], [ 3, %23 ], [ 3, %17 ], [ 4, %8 ]
  %29 = getelementptr i8, ptr %0, i32 %28
  %30 = and i32 %6, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = icmp ugt i16 %2, 255
  br i1 %33, label %34, label %35, !prof !8

34:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef null) #4
  br label %35

35:                                               ; preds = %34, %32
  %36 = and i16 %2, 255
  br label %37

37:                                               ; preds = %35, %27
  %38 = phi i16 [ %36, %35 ], [ %2, %27 ]
  %39 = icmp eq ptr %3, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = zext i16 %38 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %29, ptr nonnull align 1 %3, i32 %41, i1 false)
  br label %42

42:                                               ; preds = %40, %37, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
