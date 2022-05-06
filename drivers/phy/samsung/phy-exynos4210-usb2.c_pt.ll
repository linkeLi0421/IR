; ModuleID = '/llk/IR/drivers/phy/samsung/phy-exynos4210-usb2.c_pt.bc'
source_filename = "../drivers/phy/samsung/phy-exynos4210-usb2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.samsung_usb2_common_phy = type { ptr, ptr, i32, ptr }
%struct.samsung_usb2_phy_config = type { ptr, ptr, i32, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.samsung_usb2_phy_instance = type { ptr, ptr, ptr, i32, i32 }
%struct.samsung_usb2_phy_driver = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, %struct.spinlock, [0 x %struct.samsung_usb2_phy_instance] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }

@exynos4210_phys = internal constant [4 x %struct.samsung_usb2_common_phy] [%struct.samsung_usb2_common_phy { ptr @exynos4210_power_on, ptr @exynos4210_power_off, i32 0, ptr @.str }, %struct.samsung_usb2_common_phy { ptr @exynos4210_power_on, ptr @exynos4210_power_off, i32 1, ptr @.str.1 }, %struct.samsung_usb2_common_phy { ptr @exynos4210_power_on, ptr @exynos4210_power_off, i32 2, ptr @.str.2 }, %struct.samsung_usb2_common_phy { ptr @exynos4210_power_on, ptr @exynos4210_power_off, i32 3, ptr @.str.3 }], align 4
@exynos4210_usb2_phy_config = dso_local local_unnamed_addr constant %struct.samsung_usb2_phy_config { ptr @exynos4210_phys, ptr @exynos4210_rate_to_clk, i32 4, i8 0, i8 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"hsic0\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"hsic1\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @exynos4210_rate_to_clk(i32 noundef %0, ptr nocapture noundef writeonly %1) #0 {
  switch i32 %0, label %7 [
    i32 12000000, label %5
    i32 24000000, label %3
    i32 48000000, label %4
  ]

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3, %2
  %6 = phi i32 [ 3, %3 ], [ 0, %4 ], [ 2, %2 ]
  store i32 %6, ptr %1, align 4
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ -22, %2 ], [ 0, %5 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos4210_power_on(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %14 [
    i32 0, label %7
    i32 1, label %8
    i32 2, label %12
    i32 3, label %13
  ]

7:                                                ; preds = %1
  br label %14

8:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %9 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1) #3, !srcloc !9
  br label %14

12:                                               ; preds = %1
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %12, %8, %7, %1
  %15 = phi i32 [ -1, %1 ], [ -6145, %13 ], [ -1537, %12 ], [ -449, %8 ], [ -58, %7 ]
  %16 = phi i32 [ 0, %1 ], [ 544, %13 ], [ 288, %12 ], [ 248, %8 ], [ 1, %7 ]
  %17 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %21 = and i32 %20, -4
  %22 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %23, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #3, !srcloc !9
  %27 = load ptr, ptr %17, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !13
  %29 = and i32 %28, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %30 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #3, !srcloc !9
  %31 = load ptr, ptr %17, align 4
  %32 = getelementptr i8, ptr %31, i32 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !15
  %34 = or i32 %33, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %35 = load ptr, ptr %17, align 4
  %36 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #3, !srcloc !9
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 2147480) #3
  %38 = xor i32 %16, -1
  %39 = and i32 %33, %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %40 = load ptr, ptr %17, align 4
  %41 = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #3, !srcloc !9
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 17179840) #3
  %43 = load ptr, ptr %2, align 4
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  switch i32 %46, label %53 [
    i32 0, label %48
    i32 1, label %47
  ]

47:                                               ; preds = %14
  br label %48

48:                                               ; preds = %47, %14
  %49 = phi i32 [ 1800, %47 ], [ 1796, %14 ]
  %50 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %43, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef %49, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %53

53:                                               ; preds = %48, %14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos4210_power_off(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %17 [
    i32 0, label %8
    i32 1, label %7
  ]

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7, %1
  %9 = phi i32 [ 1800, %7 ], [ 1796, %1 ]
  %10 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %9, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %13 = load ptr, ptr %2, align 4
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %8, %1
  %18 = phi i32 [ %6, %1 ], [ %16, %8 ]
  %19 = phi ptr [ %3, %1 ], [ %13, %8 ]
  switch i32 %18, label %27 [
    i32 0, label %20
    i32 1, label %21
    i32 2, label %25
    i32 3, label %26
  ]

20:                                               ; preds = %17
  br label %27

21:                                               ; preds = %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %22 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %19, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #3, !srcloc !9
  br label %27

25:                                               ; preds = %17
  br label %27

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %25, %21, %20, %17
  %28 = phi i32 [ 0, %17 ], [ 6144, %26 ], [ 1536, %25 ], [ 448, %21 ], [ 57, %20 ]
  %29 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %19, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !18
  %32 = or i32 %31, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  %33 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %32) #3, !srcloc !9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2153643138}
!9 = !{i64 2388084}
!10 = !{i64 2388502}
!11 = !{i64 2153644424}
!12 = !{i64 2153644627}
!13 = !{i64 2153645098}
!14 = !{i64 2153645288}
!15 = !{i64 2153645759}
!16 = !{i64 2153645949}
!17 = !{i64 2153646811}
!18 = !{i64 2153647824}
!19 = !{i64 2153648014}
