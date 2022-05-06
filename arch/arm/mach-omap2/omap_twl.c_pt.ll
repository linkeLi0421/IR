; ModuleID = '/llk/IR/arch/arm/mach-omap2/omap_twl.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap_twl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_voltdm_pmic = type { i32, i32, i16, i16, i16, i8, i8, i8, i32, i32, i8, i8, i32, i8, ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"motorola,cpcap\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"mpu\00", align 1
@omap4_mpu_pmic = internal global %struct.omap_voltdm_pmic { i32 4000, i32 12660, i16 18, i16 85, i16 86, i8 0, i8 1, i8 4, i32 0, i32 2100000, i8 -56, i8 1, i32 3, i8 0, ptr @twl6030_vsel_to_uv, ptr @twl6030_uv_to_vsel }, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"iva\00", align 1
@omap4_iva_pmic = internal global %struct.omap_voltdm_pmic { i32 4000, i32 12660, i16 18, i16 91, i16 92, i8 0, i8 1, i8 4, i32 0, i32 2100000, i8 -56, i8 1, i32 3, i8 0, ptr @twl6030_vsel_to_uv, ptr @twl6030_uv_to_vsel }, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@omap4_core_pmic = internal global %struct.omap_voltdm_pmic { i32 4000, i32 12660, i16 18, i16 97, i16 98, i8 0, i8 1, i8 4, i32 0, i32 2100000, i8 -56, i8 1, i32 3, i8 0, ptr @twl6030_vsel_to_uv, ptr @twl6030_uv_to_vsel }, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"mpu_iva\00", align 1
@omap3_mpu_pmic = internal global %struct.omap_voltdm_pmic { i32 4000, i32 12500, i16 18, i16 0, i16 0, i8 0, i8 1, i8 4, i32 600000, i32 1450000, i8 -56, i8 1, i32 0, i8 0, ptr @twl4030_vsel_to_uv, ptr @twl4030_uv_to_vsel }, align 4
@omap3_core_pmic = internal global %struct.omap_voltdm_pmic { i32 4000, i32 12500, i16 18, i16 1, i16 0, i8 0, i8 1, i8 4, i32 600000, i32 1450000, i8 -56, i8 1, i32 0, i8 0, ptr @twl4030_vsel_to_uv, ptr @twl4030_uv_to_vsel }, align 4
@is_offset_valid = internal unnamed_addr global i1 false, align 1
@smps_offset = internal global i8 0, align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"\013%s:OUT OF RANGE! non mapped vsel for %ld Vs max %ld\0A\00", align 1
@__func__.twl6030_uv_to_vsel = private unnamed_addr constant [19 x i8] c"twl6030_uv_to_vsel\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap4_twl_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @omap_rev() #5
  %2 = and i32 %1, 255
  %3 = icmp eq i32 %2, 68
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = tail call ptr @voltdm_lookup(ptr noundef nonnull @.str.1) #5
  %9 = tail call i32 @omap_voltage_register_pmic(ptr noundef %8, ptr noundef nonnull @omap4_mpu_pmic) #5
  %10 = tail call ptr @voltdm_lookup(ptr noundef nonnull @.str.2) #5
  %11 = tail call i32 @omap_voltage_register_pmic(ptr noundef %10, ptr noundef nonnull @omap4_iva_pmic) #5
  %12 = tail call ptr @voltdm_lookup(ptr noundef nonnull @.str.3) #5
  %13 = tail call i32 @omap_voltage_register_pmic(ptr noundef %12, ptr noundef nonnull @omap4_core_pmic) #5
  br label %14

14:                                               ; preds = %7, %4, %0
  %15 = phi i32 [ 0, %7 ], [ -19, %4 ], [ -19, %0 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @voltdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_voltage_register_pmic(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap3_twl_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @omap_rev() #5
  %2 = and i32 %1, 255
  %3 = icmp eq i32 %2, 52
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = tail call ptr @voltdm_lookup(ptr noundef nonnull @.str.4) #5
  %6 = tail call i32 @omap_voltage_register_pmic(ptr noundef %5, ptr noundef nonnull @omap3_mpu_pmic) #5
  %7 = tail call ptr @voltdm_lookup(ptr noundef nonnull @.str.3) #5
  %8 = tail call i32 @omap_voltage_register_pmic(ptr noundef %7, ptr noundef nonnull @omap3_core_pmic) #5
  br label %9

9:                                                ; preds = %4, %0
  %10 = phi i32 [ 0, %4 ], [ -19, %0 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030_vsel_to_uv(i8 noundef zeroext %0) #2 {
  %2 = load i1, ptr @is_offset_valid, align 1
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull @smps_offset, i8 noundef zeroext -32, i32 noundef 1) #5
  store i1 true, ptr @is_offset_valid, align 1
  br label %5

5:                                                ; preds = %3, %1
  switch i8 %0, label %6 [
    i8 0, label %17
    i8 58, label %16
  ]

6:                                                ; preds = %5
  %7 = zext i8 %0 to i32
  %8 = load i8, ptr @smps_offset, align 1
  %9 = and i8 %8, 8
  %10 = icmp eq i8 %9, 0
  %11 = mul nuw nsw i32 %7, 12660
  br i1 %10, label %14, label %12

12:                                               ; preds = %6
  %13 = add nuw nsw i32 %11, 696340
  br label %17

14:                                               ; preds = %6
  %15 = add nuw nsw i32 %11, 595040
  br label %17

16:                                               ; preds = %5
  br label %17

17:                                               ; preds = %16, %14, %12, %5
  %18 = phi i32 [ %13, %12 ], [ %15, %14 ], [ 0, %5 ], [ 1350000, %16 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @twl6030_uv_to_vsel(i32 noundef %0) #2 {
  %2 = load i1, ptr @is_offset_valid, align 1
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull @smps_offset, i8 noundef zeroext -32, i32 noundef 1) #5
  store i1 true, ptr @is_offset_valid, align 1
  br label %5

5:                                                ; preds = %3, %1
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %5
  %8 = load i8, ptr @smps_offset, align 1
  %9 = and i8 %8, 8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = icmp ugt i32 %0, 1316660
  br i1 %12, label %15, label %25

13:                                               ; preds = %7
  %14 = icmp ugt i32 %0, 1417960
  br i1 %14, label %17, label %20

15:                                               ; preds = %11
  %16 = icmp eq i32 %0, 1350000
  br i1 %16, label %30, label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ 1316660, %15 ], [ 1417960, %13 ]
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.twl6030_uv_to_vsel, i32 noundef %0, i32 noundef %18) #6
  br label %30

20:                                               ; preds = %13
  %21 = add nsw i32 %0, -696341
  %22 = udiv i32 %21, 12660
  %23 = trunc i32 %22 to i8
  %24 = add i8 %23, 1
  br label %30

25:                                               ; preds = %11
  %26 = add nsw i32 %0, -595041
  %27 = udiv i32 %26, 12660
  %28 = trunc i32 %27 to i8
  %29 = add i8 %28, 1
  br label %30

30:                                               ; preds = %25, %20, %17, %15, %5
  %31 = phi i8 [ 58, %17 ], [ %24, %20 ], [ %29, %25 ], [ 0, %5 ], [ 58, %15 ]
  ret i8 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @twl4030_vsel_to_uv(i8 noundef zeroext %0) #4 {
  %2 = zext i8 %0 to i32
  %3 = mul nuw nsw i32 %2, 12500
  %4 = add nuw nsw i32 %3, 600000
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i8 @twl4030_uv_to_vsel(i32 noundef %0) #4 {
  %2 = add i32 %0, -587501
  %3 = udiv i32 %2, 12500
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
