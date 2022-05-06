; ModuleID = '/llk/IR/arch/arm/mach-imx/mach-imx6sx.c_pt.bc'
source_filename = "../arch/arm/mach-imx/mach-imx6sx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }

@.str = private unnamed_addr constant [36 x i8] c"Freescale i.MX6 SoloX (Device Tree)\00", align 1
@imx6sx_dt_compat = internal constant [2 x ptr] [ptr @.str.1, ptr null], section ".init.rodata", align 4
@__mach_desc_IMX6SX = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @imx6sx_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 -1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx6sx_init_irq, ptr null, ptr @imx6sx_init_machine, ptr @imx6sx_init_late, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"fsl,imx6sx\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fsl,imx6sx-ccm\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"fsl,imx6sx-iomuxc-gpr\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"\013failed to find fsl,imx6sx-iomux-gpr regmap\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"imx6q-cpufreq\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__mach_desc_IMX6SX], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx6sx_init_irq() #0 section ".init.text" {
  tail call void @imx_gpc_check_dt() #5
  tail call void @imx_init_revision_from_anatop() #5
  tail call void @imx_init_l2cache() #5
  tail call void @imx_src_init() #5
  tail call void @irqchip_init() #5
  tail call void @imx6_pm_ccm_init(ptr noundef nonnull @.str.2) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx6sx_init_machine() #0 section ".init.text" {
  %1 = tail call i32 @of_platform_default_populate(ptr noundef null, ptr noundef null, ptr noundef null) #5
  tail call fastcc void @imx6sx_enet_clk_sel() #6
  tail call void @imx_anatop_init() #5
  tail call void @imx6sx_pm_init() #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx6sx_init_late() #0 section ".init.text" {
  %1 = alloca %struct.platform_device_info, align 8
  %2 = tail call i32 @imx6sx_cpuidle_init() #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #5
  %3 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false) #5
  store ptr @.str.5, ptr %3, align 4
  %4 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 4
  store i32 -1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false) #5
  %6 = call ptr @platform_device_register_full(ptr noundef nonnull %1) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_check_dt() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_init_revision_from_anatop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_init_l2cache() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_src_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irqchip_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6_pm_ccm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_anatop_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6sx_pm_init() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @imx6sx_enet_clk_sel() unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.3) #5
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 24576, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %5 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 393216, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %8

6:                                                ; preds = %0
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %8

8:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx6sx_cpuidle_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
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
