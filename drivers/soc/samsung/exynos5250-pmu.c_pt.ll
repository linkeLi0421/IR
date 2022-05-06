; ModuleID = '/llk/IR/drivers/soc/samsung/exynos5250-pmu.c_pt.bc'
source_filename = "../drivers/soc/samsung/exynos5250-pmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.exynos_pmu_conf = type { i32, [3 x i8] }
%struct.exynos_pmu_data = type { ptr, ptr, ptr, ptr }

@exynos5250_pmu_config = internal constant [101 x %struct.exynos_pmu_conf] [%struct.exynos_pmu_conf { i32 4096, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4100, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4104, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4112, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4116, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4120, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4160, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4168, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4176, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4180, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4184, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4224, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4288, [3 x i8] c"\03\03\03" }, %struct.exynos_pmu_conf { i32 9736, [3 x i8] c"\10\10\00" }, %struct.exynos_pmu_conf { i32 4352, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4356, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4364, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4384, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4388, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4396, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4400, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4404, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4408, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4416, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4420, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4424, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4428, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4432, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4436, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4452, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4464, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4480, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4484, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4488, [3 x i8] c"\03\00\03" }, %struct.exynos_pmu_conf { i32 4496, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4500, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4504, [3 x i8] c"\03\00\03" }, %struct.exynos_pmu_conf { i32 4512, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4516, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4528, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4532, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4544, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4552, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4556, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4560, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4564, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4568, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4572, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4576, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4580, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4584, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 12104, [3 x i8] c"\10\10\00" }, %struct.exynos_pmu_conf { i32 4588, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4596, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4604, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4608, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4612, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4640, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4644, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4648, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4652, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4656, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4660, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4664, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4668, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4672, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4688, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4704, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4736, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4740, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4800, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4864, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4896, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4928, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4932, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4936, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 5120, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5124, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5128, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5132, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5140, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5144, [3 x i8] c"\07\07\00" }, %struct.exynos_pmu_conf { i32 5248, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5252, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5256, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5260, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5268, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5272, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 5312, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5316, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5320, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5324, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5332, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5336, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 5504, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5508, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5512, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5516, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5524, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5528, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 -1, [3 x i8] zeroinitializer }], align 4
@exynos5250_pmu_data = dso_local local_unnamed_addr constant %struct.exynos_pmu_data { ptr @exynos5250_pmu_config, ptr @exynos5250_pmu_init, ptr @exynos5_powerdown_conf, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos5250_pmu_init() #0 {
  %1 = tail call i32 @pmu_raw_readl(i32 noundef 1032) #2
  %2 = and i32 %1, -1048577
  tail call void @pmu_raw_writel(i32 noundef %2, i32 noundef 1032) #2
  %3 = tail call i32 @pmu_raw_readl(i32 noundef 1036) #2
  %4 = and i32 %3, -1048577
  tail call void @pmu_raw_writel(i32 noundef %4, i32 noundef 1036) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos5_powerdown_conf(i32 noundef %0) #0 {
  %2 = tail call i32 @pmu_raw_readl(i32 noundef 8200) #2
  %3 = or i32 %2, 3
  tail call void @pmu_raw_writel(i32 noundef %3, i32 noundef 8200) #2
  %4 = tail call i32 @pmu_raw_readl(i32 noundef 8328) #2
  %5 = or i32 %4, 3
  tail call void @pmu_raw_writel(i32 noundef %5, i32 noundef 8328) #2
  %6 = tail call i32 @pmu_raw_readl(i32 noundef 9224) #2
  %7 = or i32 %6, 3
  tail call void @pmu_raw_writel(i32 noundef %7, i32 noundef 9224) #2
  %8 = tail call i32 @pmu_raw_readl(i32 noundef 16392) #2
  %9 = or i32 %8, 3
  tail call void @pmu_raw_writel(i32 noundef %9, i32 noundef 16392) #2
  %10 = tail call i32 @pmu_raw_readl(i32 noundef 16424) #2
  %11 = or i32 %10, 3
  tail call void @pmu_raw_writel(i32 noundef %11, i32 noundef 16424) #2
  %12 = tail call i32 @pmu_raw_readl(i32 noundef 16456) #2
  %13 = or i32 %12, 3
  tail call void @pmu_raw_writel(i32 noundef %13, i32 noundef 16456) #2
  %14 = tail call i32 @pmu_raw_readl(i32 noundef 16488) #2
  %15 = or i32 %14, 3
  tail call void @pmu_raw_writel(i32 noundef %15, i32 noundef 16488) #2
  %16 = tail call i32 @pmu_raw_readl(i32 noundef 16552) #2
  %17 = or i32 %16, 3
  tail call void @pmu_raw_writel(i32 noundef %17, i32 noundef 16552) #2
  %18 = tail call i32 @pmu_raw_readl(i32 noundef 16584) #2
  %19 = or i32 %18, 3
  tail call void @pmu_raw_writel(i32 noundef %19, i32 noundef 16584) #2
  %20 = tail call i32 @pmu_raw_readl(i32 noundef 11336) #2
  %21 = or i32 %20, 3
  tail call void @pmu_raw_writel(i32 noundef %21, i32 noundef 11336) #2
  %22 = tail call i32 @pmu_raw_readl(i32 noundef 11464) #2
  %23 = or i32 %22, 3
  tail call void @pmu_raw_writel(i32 noundef %23, i32 noundef 11464) #2
  %24 = tail call i32 @pmu_raw_readl(i32 noundef 9224) #2
  %25 = or i32 %24, 128
  tail call void @pmu_raw_writel(i32 noundef %25, i32 noundef 9224) #2
  %26 = tail call i32 @pmu_raw_readl(i32 noundef 8328) #2
  %27 = and i32 %26, -16842753
  tail call void @pmu_raw_writel(i32 noundef %27, i32 noundef 8328) #2
  %28 = tail call i32 @pmu_raw_readl(i32 noundef 8712) #2
  %29 = and i32 %28, -16842753
  tail call void @pmu_raw_writel(i32 noundef %29, i32 noundef 8712) #2
  %30 = tail call i32 @pmu_raw_readl(i32 noundef 8840) #2
  %31 = and i32 %30, -16842753
  tail call void @pmu_raw_writel(i32 noundef %31, i32 noundef 8840) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmu_raw_readl(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmu_raw_writel(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
