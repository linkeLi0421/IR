; ModuleID = '/llk/IR/drivers/soc/samsung/exynos5420-pmu.c_pt.bc'
source_filename = "../drivers/soc/samsung/exynos5420-pmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.exynos_pmu_conf = type { i32, [3 x i8] }
%struct.exynos_pmu_data = type { ptr, ptr, ptr, ptr }

@exynos5420_pmu_config = internal constant [141 x %struct.exynos_pmu_conf] [%struct.exynos_pmu_conf { i32 4096, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4100, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4104, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4112, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4116, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4120, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4128, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4132, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4136, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4144, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4148, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4152, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4160, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4164, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4168, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4176, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4180, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4184, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4192, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4196, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4200, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4208, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4212, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4216, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4176, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4180, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4184, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4256, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4272, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4288, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4304, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4352, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4356, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4364, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4384, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4388, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4396, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4400, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4404, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4408, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4416, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4420, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4424, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4428, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4432, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4436, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4440, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4444, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4448, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4452, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4464, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4468, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4472, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4480, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4484, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4488, [3 x i8] c"\03\03\00" }, %struct.exynos_pmu_conf { i32 4496, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4500, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4504, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4512, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4516, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4528, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4532, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4536, [3 x i8] c"\03\00\03" }, %struct.exynos_pmu_conf { i32 4540, [3 x i8] c"\03\00\03" }, %struct.exynos_pmu_conf { i32 4608, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4612, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4616, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4624, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4628, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4632, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4636, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4640, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4644, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4648, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4652, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4656, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4660, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4672, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4688, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4704, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4736, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4740, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4800, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4864, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4896, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4928, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4932, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4936, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5120, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5124, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5128, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5132, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5136, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5140, [3 x i8] c"\07\07\00" }, %struct.exynos_pmu_conf { i32 5144, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5148, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5152, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5156, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5160, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5164, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5168, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5248, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5252, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5256, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5260, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5264, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5268, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5272, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5276, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5280, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5288, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5292, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5296, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5312, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5316, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5320, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5324, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5328, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5332, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5336, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5340, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5344, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5348, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5352, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5356, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5360, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5488, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5492, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5496, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5500, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5504, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5508, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5512, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5516, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5520, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5524, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5528, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5532, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 5536, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 -1, [3 x i8] zeroinitializer }], align 4
@exynos5420_pmu_data = dso_local local_unnamed_addr constant %struct.exynos_pmu_data { ptr @exynos5420_pmu_config, ptr @exynos5420_pmu_init, ptr @exynos5420_powerdown_conf, ptr null }, align 4
@exynos5420_list_disable_pmu_reg = internal unnamed_addr constant [35 x i32] [i32 5248, i32 5252, i32 5260, i32 5264, i32 5268, i32 5272, i32 5276, i32 5280, i32 5288, i32 5292, i32 5296, i32 5312, i32 5316, i32 5324, i32 5328, i32 5332, i32 5336, i32 5340, i32 5344, i32 5348, i32 5352, i32 5356, i32 5360, i32 5488, i32 5492, i32 5496, i32 5500, i32 5504, i32 5508, i32 5516, i32 5520, i32 5524, i32 5528, i32 5532, i32 5536], align 4
@.str = private unnamed_addr constant [30 x i8] c"\016EXYNOS5420 PMU initialized\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos5420_pmu_init() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %5, %1 ]
  %3 = getelementptr [35 x i32], ptr @exynos5420_list_disable_pmu_reg, i32 0, i32 %2
  %4 = load i32, ptr %3, align 4
  tail call void @pmu_raw_writel(i32 noundef 0, i32 noundef %4) #3
  %5 = add nuw nsw i32 %2, 1
  %6 = icmp eq i32 %5, 35
  br i1 %6, label %7, label %1

7:                                                ; preds = %1
  tail call void @pmu_raw_writel(i32 noundef 4080, i32 noundef 520) #3
  %8 = tail call i32 @pmu_raw_readl(i32 noundef 9736) #3
  %9 = and i32 %8, -17
  tail call void @pmu_raw_writel(i32 noundef %9, i32 noundef 9736) #3
  %10 = tail call i32 @pmu_raw_readl(i32 noundef 9864) #3
  %11 = and i32 %10, -17
  tail call void @pmu_raw_writel(i32 noundef %11, i32 noundef 9864) #3
  %12 = tail call i32 @pmu_raw_readl(i32 noundef 4) #3
  %13 = or i32 %12, 524288
  tail call void @pmu_raw_writel(i32 noundef %13, i32 noundef 4) #3
  %14 = tail call i32 @pmu_raw_readl(i32 noundef 8) #3
  %15 = or i32 %14, 8192
  tail call void @pmu_raw_writel(i32 noundef %15, i32 noundef 8) #3
  %16 = tail call i32 @pmu_raw_readl(i32 noundef 9480) #3
  %17 = or i32 %16, 128
  tail call void @pmu_raw_writel(i32 noundef %17, i32 noundef 9480) #3
  %18 = tail call i32 @pmu_raw_readl(i32 noundef 9608) #3
  %19 = or i32 %18, 128
  tail call void @pmu_raw_writel(i32 noundef %19, i32 noundef 9608) #3
  tail call void @pmu_raw_writel(i32 noundef 15, i32 noundef 11548) #3
  tail call void @pmu_raw_writel(i32 noundef 15, i32 noundef 256) #3
  tail call void @pmu_raw_writel(i32 noundef 15, i32 noundef 260) #3
  tail call void @pmu_raw_writel(i32 noundef 1, i32 noundef 288) #3
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos5420_powerdown_conf(i32 noundef %0) #0 {
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #5, !srcloc !8
  %3 = lshr i32 %2, 8
  %4 = and i32 %3, 255
  tail call void @pmu_raw_writel(i32 noundef %4, i32 noundef 2440) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmu_raw_writel(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmu_raw_readl(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind readnone }

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
!8 = !{i64 2149407367}
