; ModuleID = '/llk/IR/drivers/phy/samsung/phy-exynos4x12-usb2.c_pt.bc'
source_filename = "../drivers/phy/samsung/phy-exynos4x12-usb2.c"
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

@exynos4x12_phys = internal constant [4 x %struct.samsung_usb2_common_phy] [%struct.samsung_usb2_common_phy { ptr @exynos4x12_power_on, ptr @exynos4x12_power_off, i32 0, ptr @.str }, %struct.samsung_usb2_common_phy { ptr @exynos4x12_power_on, ptr @exynos4x12_power_off, i32 1, ptr @.str.1 }, %struct.samsung_usb2_common_phy { ptr @exynos4x12_power_on, ptr @exynos4x12_power_off, i32 2, ptr @.str.2 }, %struct.samsung_usb2_common_phy { ptr @exynos4x12_power_on, ptr @exynos4x12_power_off, i32 3, ptr @.str.3 }], align 4
@exynos3250_usb2_phy_config = dso_local local_unnamed_addr constant %struct.samsung_usb2_phy_config { ptr @exynos4x12_phys, ptr @exynos4x12_rate_to_clk, i32 1, i8 0, i8 1 }, align 4
@exynos4x12_usb2_phy_config = dso_local local_unnamed_addr constant %struct.samsung_usb2_phy_config { ptr @exynos4x12_phys, ptr @exynos4x12_rate_to_clk, i32 4, i8 1, i8 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"hsic0\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"hsic1\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.exynos4x12_power_on_int.4 = private unnamed_addr constant [4 x i32] [i32 -58, i32 -449, i32 -3585, i32 -28673], align 4
@switch.table.exynos4x12_power_on_int.5 = private unnamed_addr constant [4 x i32] [i32 1, i32 1048, i32 576, i32 544], align 4
@switch.table.exynos4x12_power_off_int = private unnamed_addr constant [4 x i32] [i32 1796, i32 1796, i32 1800, i32 1804], align 4
@switch.table.exynos4x12_power_off_int.6 = private unnamed_addr constant [4 x i32] [i32 57, i32 448, i32 3584, i32 28672], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @exynos4x12_rate_to_clk(i32 noundef %0, ptr nocapture noundef writeonly %1) #0 {
  switch i32 %0, label %11 [
    i32 9600000, label %9
    i32 10000000, label %3
    i32 12000000, label %4
    i32 19200000, label %5
    i32 20000000, label %6
    i32 24000000, label %7
    i32 50000000, label %8
  ]

3:                                                ; preds = %2
  br label %9

4:                                                ; preds = %2
  br label %9

5:                                                ; preds = %2
  br label %9

6:                                                ; preds = %2
  br label %9

7:                                                ; preds = %2
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %7, %6, %5, %4, %3, %2
  %10 = phi i32 [ 1, %3 ], [ 2, %4 ], [ 3, %5 ], [ 4, %6 ], [ 5, %7 ], [ 7, %8 ], [ 0, %2 ]
  store i32 %10, ptr %1, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ -22, %2 ], [ 0, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos4x12_power_on(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 4
  %7 = icmp sgt i32 %5, 0
  br i1 %7, label %44, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 540, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %17 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 11
  tail call fastcc void @exynos4x12_power_on_int(ptr noundef %17)
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %13, %8
  %22 = phi i32 [ %20, %13 ], [ %11, %8 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.samsung_usb2_phy_config, ptr %25, i32 0, i32 3
  %27 = load i8, ptr %26, align 4, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 540, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %29, %21
  %37 = phi i32 [ %35, %29 ], [ %22, %21 ]
  %38 = and i32 %37, -2
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 11
  tail call fastcc void @exynos4x12_power_on_int(ptr noundef %41)
  %42 = getelementptr %struct.samsung_usb2_phy_driver, ptr %3, i32 1, i32 5
  tail call fastcc void @exynos4x12_power_on_int(ptr noundef %42)
  br label %43

43:                                               ; preds = %40, %36, %24
  tail call fastcc void @exynos4x12_power_on_int(ptr noundef %0)
  br label %44

44:                                               ; preds = %43, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos4x12_power_off(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 4
  %7 = icmp sgt i32 %5, 1
  br i1 %7, label %41, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.samsung_usb2_phy_config, ptr %14, i32 0, i32 3
  %16 = load i8, ptr %15, align 4, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 540, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %18, %8
  %26 = phi i32 [ %24, %18 ], [ %11, %8 ]
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 11
  tail call fastcc void @exynos4x12_power_off_int(ptr noundef %29)
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i32 [ %32, %28 ], [ %26, %25 ]
  %35 = and i32 %34, -2
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 11
  tail call fastcc void @exynos4x12_power_off_int(ptr noundef %38)
  %39 = getelementptr %struct.samsung_usb2_phy_driver, ptr %3, i32 1, i32 5
  tail call fastcc void @exynos4x12_power_off_int(ptr noundef %39)
  br label %40

40:                                               ; preds = %37, %33, %13
  tail call fastcc void @exynos4x12_power_off_int(ptr noundef %0)
  br label %41

41:                                               ; preds = %40, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos4x12_power_on_int(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 4
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %69, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #3, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  %13 = and i32 %12, -136
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr inbounds %struct.samsung_usb2_phy_config, ptr %14, i32 0, i32 4
  %16 = load i8, ptr %15, align 1, !range !8
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 %13, i32 512
  %19 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %8, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, %18
  %22 = or i32 %21, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %23 = load ptr, ptr %9, align 4
  %24 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #3, !srcloc !12
  %25 = load ptr, ptr %7, align 4
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %28, 4
  br i1 %29, label %30, label %40

30:                                               ; preds = %6
  %31 = getelementptr inbounds [4 x i32], ptr @switch.table.exynos4x12_power_off_int, i32 0, i32 %28
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %25, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %32, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %36 = load ptr, ptr %7, align 4
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  br label %40

40:                                               ; preds = %30, %6
  %41 = phi i32 [ %28, %6 ], [ %39, %30 ]
  %42 = phi ptr [ %25, %6 ], [ %36, %30 ]
  %43 = icmp ult i32 %41, 4
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds [4 x i32], ptr @switch.table.exynos4x12_power_on_int.4, i32 0, i32 %41
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds [4 x i32], ptr @switch.table.exynos4x12_power_on_int.5, i32 0, i32 %41
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi i32 [ -1, %40 ], [ %46, %44 ]
  %51 = phi i32 [ 0, %40 ], [ %48, %44 ]
  %52 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %42, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #3
  tail call void asm sideeffect "dsb ", "~{memory}"() #3
  %55 = and i32 %54, %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %56 = load ptr, ptr %52, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %55) #3, !srcloc !12
  %57 = load ptr, ptr %52, align 4
  %58 = getelementptr i8, ptr %57, i32 8
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #3, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !14
  %60 = or i32 %59, %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %61 = load ptr, ptr %52, align 4
  %62 = getelementptr i8, ptr %61, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #3, !srcloc !12
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 2147480) #3
  %64 = xor i32 %51, -1
  %65 = and i32 %59, %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %66 = load ptr, ptr %52, align 4
  %67 = getelementptr i8, ptr %66, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #3, !srcloc !12
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 17179840) #3
  br label %69

69:                                               ; preds = %49, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos4x12_power_off_int(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -1
  store i32 %4, ptr %2, align 4
  %5 = icmp sgt i32 %3, 1
  br i1 %5, label %37, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %23

13:                                               ; preds = %6
  %14 = getelementptr inbounds [4 x i32], ptr @switch.table.exynos4x12_power_off_int, i32 0, i32 %11
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %8, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %15, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %19 = load ptr, ptr %7, align 4
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %13, %6
  %24 = phi i32 [ %11, %6 ], [ %22, %13 ]
  %25 = phi ptr [ %8, %6 ], [ %19, %13 ]
  %26 = icmp ult i32 %24, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds [4 x i32], ptr @switch.table.exynos4x12_power_off_int.6, i32 0, i32 %24
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi i32 [ 0, %23 ], [ %29, %27 ]
  %32 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %25, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #3
  tail call void asm sideeffect "dsb ", "~{memory}"() #3
  %35 = or i32 %34, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %36 = load ptr, ptr %32, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #3, !srcloc !12
  br label %37

37:                                               ; preds = %30, %1
  ret void
}

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2392047}
!10 = !{i64 2153645697}
!11 = !{i64 2153645993}
!12 = !{i64 2391629}
!13 = !{i64 2153648868}
!14 = !{i64 2153649339}
!15 = !{i64 2153649529}
!16 = !{i64 2153650391}
!17 = !{i64 2153651594}
