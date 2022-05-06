; ModuleID = '/llk/IR/arch/arm/mach-omap2/pmic-cpcap.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/pmic-cpcap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_voltdm_pmic = type { i32, i32, i16, i16, i16, i8, i8, i8, i32, i32, i8, i8, i32, i8, ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"motorola,cpcap\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"mpu\00", align 1
@omap443x_max8952_mpu = internal global %struct.omap_voltdm_pmic { i32 16000, i32 10000, i16 96, i16 3, i16 3, i8 0, i8 1, i8 4, i32 900000, i32 1400000, i8 -56, i8 0, i32 0, i8 0, ptr @omap_max8952_vsel_to_uv, ptr @omap_max8952_uv_to_vsel }, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"motorola,droid-bionic\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@omap_cpcap_core = internal global %struct.omap_voltdm_pmic { i32 4000, i32 12500, i16 2, i16 0, i16 1, i8 0, i8 1, i8 4, i32 900000, i32 1350000, i8 -56, i8 0, i32 0, i8 0, ptr @omap_cpcap_vsel_to_uv, ptr @omap_cpcap_uv_to_vsel }, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"iva\00", align 1
@omap_cpcap_iva = internal global %struct.omap_voltdm_pmic { i32 4000, i32 12500, i16 68, i16 0, i16 1, i8 0, i8 1, i8 4, i32 900000, i32 1375000, i8 -56, i8 0, i32 0, i8 0, ptr @omap_cpcap_vsel_to_uv, ptr @omap_cpcap_uv_to_vsel }, align 4
@omap4_fan_core = internal global %struct.omap_voltdm_pmic { i32 4000, i32 12500, i16 74, i16 1, i16 1, i8 0, i8 1, i8 4, i32 850000, i32 1375000, i8 -56, i8 0, i32 0, i8 0, ptr @omap_fan535508_vsel_to_uv, ptr @omap_fan535508_uv_to_vsel }, align 4
@omap4_fan_iva = internal global %struct.omap_voltdm_pmic { i32 4000, i32 12500, i16 72, i16 1, i16 1, i8 0, i8 1, i8 4, i32 850000, i32 1375000, i8 -56, i8 0, i32 0, i8 0, ptr @omap_fan535503_vsel_to_uv, ptr @omap_fan535503_uv_to_vsel }, align 4
@__initcall__kmod_pmic_cpcap__94_271___cpcap_late_init7 = internal global ptr @__cpcap_late_init, section ".initcall7.init", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__cpcap_late_init, ptr @__initcall__kmod_pmic_cpcap__94_271___cpcap_late_init7], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap4_cpcap_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @voltdm_lookup(ptr noundef nonnull @.str.1) #5
  %5 = tail call i32 @omap_voltage_register_pmic(ptr noundef %4, ptr noundef nonnull @omap443x_max8952_mpu) #5
  %6 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #5
  %7 = icmp eq i32 %6, 0
  %8 = tail call ptr @voltdm_lookup(ptr noundef nonnull @.str.3) #5
  %9 = select i1 %7, ptr @omap4_fan_core, ptr @omap_cpcap_core
  %10 = select i1 %7, ptr @omap4_fan_iva, ptr @omap_cpcap_iva
  %11 = tail call i32 @omap_voltage_register_pmic(ptr noundef %8, ptr noundef nonnull %9) #5
  %12 = tail call ptr @voltdm_lookup(ptr noundef nonnull @.str.4) #5
  %13 = tail call i32 @omap_voltage_register_pmic(ptr noundef %12, ptr noundef nonnull %10) #5
  br label %14

14:                                               ; preds = %3, %0
  %15 = phi i32 [ -19, %0 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @voltdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_voltage_register_pmic(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @__cpcap_late_init() #0 section ".init.text" {
  %1 = tail call i32 @omap_rev() #5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @omap4_vc_set_pmic_signaling(i32 noundef 1) #5
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @omap_max8952_vsel_to_uv(i8 noundef zeroext %0) #2 {
  %2 = tail call i8 @llvm.umin.i8(i8 %0, i8 63)
  %3 = zext i8 %2 to i32
  %4 = mul nuw nsw i32 %3, 10000
  %5 = add nuw nsw i32 %4, 770000
  ret i32 %5
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i8 @omap_max8952_uv_to_vsel(i32 noundef %0) #2 {
  %2 = icmp ult i32 %0, 770000
  %3 = tail call i32 @llvm.umin.i32(i32 %0, i32 1400000)
  %4 = add nsw i32 %3, -760001
  %5 = udiv i32 %4, 10000
  %6 = trunc i32 %5 to i8
  %7 = select i1 %2, i8 0, i8 %6
  ret i8 %7
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @omap_cpcap_vsel_to_uv(i8 noundef zeroext %0) #2 {
  %2 = tail call i8 @llvm.umin.i8(i8 %0, i8 68)
  %3 = zext i8 %2 to i32
  %4 = mul nuw nsw i32 %3, 12500
  %5 = add nuw nsw i32 %4, 600000
  ret i32 %5
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i8 @omap_cpcap_uv_to_vsel(i32 noundef %0) #2 {
  %2 = icmp ult i32 %0, 600000
  %3 = tail call i32 @llvm.umin.i32(i32 %0, i32 1450000)
  %4 = add nsw i32 %3, -587501
  %5 = udiv i32 %4, 12500
  %6 = trunc i32 %5 to i8
  %7 = select i1 %2, i8 0, i8 %6
  ret i8 %7
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @omap_fan535508_vsel_to_uv(i8 noundef zeroext %0) #2 {
  %2 = and i8 %0, 63
  %3 = tail call i8 @llvm.umin.i8(i8 %2, i8 55)
  %4 = zext i8 %3 to i32
  %5 = mul nuw nsw i32 %4, 12500
  %6 = add nuw nsw i32 %5, 750000
  ret i32 %6
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i8 @omap_fan535508_uv_to_vsel(i32 noundef %0) #2 {
  %2 = icmp ult i32 %0, 750000
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @llvm.umin.i32(i32 %0, i32 1437500)
  %5 = add nsw i32 %4, -737501
  %6 = udiv i32 %5, 12500
  %7 = trunc i32 %6 to i8
  %8 = or i8 %7, -64
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i8 [ %8, %3 ], [ -64, %1 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @omap_fan535503_vsel_to_uv(i8 noundef zeroext %0) #3 {
  %2 = and i8 %0, 63
  %3 = zext i8 %2 to i32
  %4 = mul nuw nsw i32 %3, 12500
  %5 = add nuw nsw i32 %4, 750000
  ret i32 %5
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i8 @omap_fan535503_uv_to_vsel(i32 noundef %0) #2 {
  %2 = icmp ult i32 %0, 750000
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @llvm.umin.i32(i32 %0, i32 1537500)
  %5 = add nsw i32 %4, -737501
  %6 = udiv i32 %5, 12500
  %7 = trunc i32 %6 to i8
  %8 = or i8 %7, -64
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i8 [ %8, %3 ], [ -64, %1 ]
  ret i8 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_vc_set_pmic_signaling(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
