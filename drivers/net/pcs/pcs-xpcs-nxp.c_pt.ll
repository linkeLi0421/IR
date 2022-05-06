; ModuleID = '/llk/IR/drivers/net/pcs/pcs-xpcs-nxp.c_pt.bc'
source_filename = "../drivers/net/pcs/pcs-xpcs-nxp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nxp_sja1105_sgmii_pma_config(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @xpcs_write(ptr noundef %0, i32 noundef 31, i32 noundef 32993, i16 noundef zeroext 16) #3
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xpcs_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nxp_sja1110_sgmii_pma_config(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @nxp_sja1110_pma_config(ptr noundef %0, i16 noundef zeroext 25, i16 noundef zeroext 1, i16 noundef zeroext 25, i16 noundef zeroext 1, i16 noundef zeroext 8490)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nxp_sja1110_pma_config(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5) unnamed_addr #0 {
  %7 = and i16 %1, 4095
  %8 = tail call i32 @xpcs_write(ptr noundef %0, i32 noundef 31, i32 noundef 32877, i16 noundef zeroext %7) #3
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %53, label %10

10:                                               ; preds = %6
  %11 = and i16 %2, 63
  %12 = tail call i32 @xpcs_write(ptr noundef %0, i32 noundef 31, i32 noundef 32878, i16 noundef zeroext %11) #3
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %53, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @xpcs_write(ptr noundef %0, i32 noundef 31, i32 noundef 32824, i16 noundef zeroext 20480) #3
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %53, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @xpcs_write(ptr noundef %0, i32 noundef 31, i32 noundef 32826, i16 noundef zeroext -1) #3
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %53, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @xpcs_write(ptr noundef %0, i32 noundef 31, i32 noundef 32827, i16 noundef zeroext 767) #3
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %53, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @xpcs_write(ptr noundef %0, i32 noundef 31, i32 noundef 32832, i16 noundef zeroext 3045) #3
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @xpcs_write(ptr noundef %0, i32 noundef 31, i32 noundef 32823, i16 noundef zeroext 0) #3
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %26
  %30 = shl i16 %3, 2
  %31 = and i16 %30, 1020
  %32 = tail call i32 @xpcs_write(ptr noundef %0, i32 noundef 31, i32 noundef 32869, i16 noundef zeroext %31) #3
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %29
  %35 = and i16 %4, 31
  %36 = tail call i32 @xpcs_write(ptr noundef %0, i32 noundef 31, i32 noundef 32870, i16 noundef zeroext %35) #3
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %34
  %39 = tail call i32 @xpcs_write(ptr noundef %0, i32 noundef 31, i32 noundef 32837, i16 noundef zeroext 5) #3
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @xpcs_read(ptr noundef %0, i32 noundef 31, i32 noundef 32833) #3
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = trunc i32 %42 to i16
  %46 = and i16 %45, -8177
  %47 = or i16 %46, 1040
  %48 = tail call i32 @xpcs_write(ptr noundef %0, i32 noundef 31, i32 noundef 32833, i16 noundef zeroext %47) #3
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = tail call i32 @xpcs_write(ptr noundef %0, i32 noundef 31, i32 noundef 32834, i16 noundef zeroext %5) #3
  %52 = tail call i32 @llvm.smin.i32(i32 %51, i32 0)
  br label %53

53:                                               ; preds = %50, %44, %41, %38, %34, %29, %26, %23, %20, %17, %14, %10, %6
  %54 = phi i32 [ %8, %6 ], [ %12, %10 ], [ %15, %14 ], [ %18, %17 ], [ %21, %20 ], [ %24, %23 ], [ %27, %26 ], [ %32, %29 ], [ %36, %34 ], [ %39, %38 ], [ %42, %41 ], [ %48, %44 ], [ %52, %50 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nxp_sja1110_2500basex_pma_config(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @nxp_sja1110_pma_config(ptr noundef %0, i16 noundef zeroext 125, i16 noundef zeroext 2, i16 noundef zeroext 125, i16 noundef zeroext 2, i16 noundef zeroext 29482)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xpcs_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
