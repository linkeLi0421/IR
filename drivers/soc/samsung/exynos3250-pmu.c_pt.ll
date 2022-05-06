; ModuleID = '/llk/IR/drivers/soc/samsung/exynos3250-pmu.c_pt.bc'
source_filename = "../drivers/soc/samsung/exynos3250-pmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.exynos_pmu_conf = type { i32, [3 x i8] }
%struct.exynos_pmu_data = type { ptr, ptr, ptr, ptr }

@exynos3250_pmu_config = internal constant [82 x %struct.exynos_pmu_conf] [%struct.exynos_pmu_conf { i32 4096, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4100, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4104, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4112, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4116, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4120, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4176, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4180, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4184, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4224, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4288, [3 x i8] c"\00\00\03" }, %struct.exynos_pmu_conf { i32 4352, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4356, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4364, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 5040, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 5044, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 5056, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4368, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4372, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4380, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4384, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4388, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5060, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4392, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4396, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5064, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4408, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4400, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4404, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4416, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4424, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4428, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4432, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4436, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4440, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4448, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4456, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4460, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4464, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4468, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4472, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4480, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4484, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4488, [3 x i8] c"\03\03\03" }, %struct.exynos_pmu_conf { i32 4496, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4500, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4504, [3 x i8] c"\03\03\03" }, %struct.exynos_pmu_conf { i32 4512, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4516, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4528, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4532, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4608, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4612, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4640, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4644, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4648, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4652, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4632, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4616, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4656, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4660, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4664, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4672, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4704, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4736, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4740, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4800, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4804, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4864, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4928, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4932, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4936, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4944, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4948, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4992, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5000, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5004, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5008, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5012, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5016, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5048, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 -1, [3 x i8] zeroinitializer }], align 4
@exynos3250_pmu_data = dso_local local_unnamed_addr constant %struct.exynos_pmu_data { ptr @exynos3250_pmu_config, ptr @exynos3250_pmu_init, ptr null, ptr @exynos3250_powerdown_conf_extra }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos3250_pmu_init() #0 {
  %1 = tail call i32 @pmu_raw_readl(i32 noundef 9224) #2
  %2 = or i32 %1, 128
  tail call void @pmu_raw_writel(i32 noundef %2, i32 noundef 9224) #2
  tail call void @pmu_raw_writel(i32 noundef 454754304, i32 noundef 520) #2
  %3 = tail call i32 @pmu_raw_readl(i32 noundef 13068) #2
  %4 = or i32 %3, 768
  tail call void @pmu_raw_writel(i32 noundef %4, i32 noundef 13068) #2
  %5 = tail call i32 @pmu_raw_readl(i32 noundef 13068) #2
  %6 = or i32 %5, -2147483648
  tail call void @pmu_raw_writel(i32 noundef %6, i32 noundef 13068) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos3250_powerdown_conf_extra(i32 noundef %0) #0 {
  %2 = tail call i32 @pmu_raw_readl(i32 noundef 8200) #2
  %3 = and i32 %2, -4
  %4 = or i32 %3, 2
  tail call void @pmu_raw_writel(i32 noundef %4, i32 noundef 8200) #2
  %5 = tail call i32 @pmu_raw_readl(i32 noundef 8328) #2
  %6 = and i32 %5, -4
  %7 = or i32 %6, 2
  tail call void @pmu_raw_writel(i32 noundef %7, i32 noundef 8328) #2
  %8 = tail call i32 @pmu_raw_readl(i32 noundef 8456) #2
  %9 = and i32 %8, -4
  %10 = or i32 %9, 2
  tail call void @pmu_raw_writel(i32 noundef %10, i32 noundef 8456) #2
  %11 = tail call i32 @pmu_raw_readl(i32 noundef 8584) #2
  %12 = and i32 %11, -4
  %13 = or i32 %12, 2
  tail call void @pmu_raw_writel(i32 noundef %13, i32 noundef 8584) #2
  %14 = tail call i32 @pmu_raw_readl(i32 noundef 9224) #2
  %15 = and i32 %14, -4
  %16 = or i32 %15, 2
  tail call void @pmu_raw_writel(i32 noundef %16, i32 noundef 9224) #2
  %17 = tail call i32 @pmu_raw_readl(i32 noundef 11336) #2
  %18 = and i32 %17, -4
  %19 = or i32 %18, 2
  tail call void @pmu_raw_writel(i32 noundef %19, i32 noundef 11336) #2
  %20 = tail call i32 @pmu_raw_readl(i32 noundef 11432) #2
  %21 = and i32 %20, -4
  %22 = or i32 %21, 2
  tail call void @pmu_raw_writel(i32 noundef %22, i32 noundef 11432) #2
  %23 = tail call i32 @pmu_raw_readl(i32 noundef 15368) #2
  %24 = and i32 %23, -4
  %25 = or i32 %24, 2
  tail call void @pmu_raw_writel(i32 noundef %25, i32 noundef 15368) #2
  %26 = tail call i32 @pmu_raw_readl(i32 noundef 15432) #2
  %27 = and i32 %26, -4
  %28 = or i32 %27, 2
  tail call void @pmu_raw_writel(i32 noundef %28, i32 noundef 15432) #2
  %29 = tail call i32 @pmu_raw_readl(i32 noundef 15464) #2
  %30 = and i32 %29, -4
  %31 = or i32 %30, 2
  tail call void @pmu_raw_writel(i32 noundef %31, i32 noundef 15464) #2
  %32 = tail call i32 @pmu_raw_readl(i32 noundef 15496) #2
  %33 = and i32 %32, -4
  %34 = or i32 %33, 2
  tail call void @pmu_raw_writel(i32 noundef %34, i32 noundef 15496) #2
  %35 = tail call i32 @pmu_raw_readl(i32 noundef 15528) #2
  %36 = and i32 %35, -4
  %37 = or i32 %36, 2
  tail call void @pmu_raw_writel(i32 noundef %37, i32 noundef 15528) #2
  %38 = icmp eq i32 %0, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  tail call void @pmu_raw_writel(i32 noundef 3000, i32 noundef 13340) #2
  tail call void @pmu_raw_writel(i32 noundef 3000, i32 noundef 13372) #2
  tail call void @pmu_raw_writel(i32 noundef 7500, i32 noundef 13852) #2
  tail call void @pmu_raw_writel(i32 noundef 7500, i32 noundef 13884) #2
  br label %40

40:                                               ; preds = %39, %1
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
