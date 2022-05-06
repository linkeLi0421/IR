; ModuleID = '/llk/IR/arch/arm/mach-imx/mach-imx7ulp.c_pt.bc'
source_filename = "../arch/arm/mach-imx/mach-imx7ulp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [33 x i8] c"Freescale i.MX7ULP (Device Tree)\00", align 1
@imx7ulp_dt_compat = internal constant [2 x ptr] [ptr @.str.1, ptr null], section ".init.rodata", align 4
@__mach_desc_IMX7ulp = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @imx7ulp_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx7ulp_init_machine, ptr @imx7ulp_init_late, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"fsl,imx7ulp\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fsl,imx7ulp-sim\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"\014failed to find fsl,imx7ulp-sim regmap!\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"\014failed to read sim regmap!\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__mach_desc_IMX7ulp], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx7ulp_init_machine() #0 section ".init.text" {
  tail call void @imx7ulp_pm_init() #4
  tail call void @mxc_set_cpu_type(i32 noundef 255) #4
  tail call fastcc void @imx7ulp_set_revision() #5
  %1 = tail call i32 @of_platform_default_populate(ptr noundef null, ptr noundef null, ptr noundef null) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx7ulp_init_late() #0 section ".init.text" {
  %1 = tail call i32 @imx7ulp_cpuidle_init() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx7ulp_pm_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxc_set_cpu_type(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @imx7ulp_set_revision() unnamed_addr #0 section ".init.text" {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #4
  store i32 0, ptr %1, align 4, !annotation !8
  %2 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.2) #4
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %18

6:                                                ; preds = %0
  %7 = call i32 @regmap_read(ptr noundef %2, i32 noundef 140, ptr noundef nonnull %1) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %18

11:                                               ; preds = %6
  %12 = load i32, ptr %1, align 4
  %13 = lshr i32 %12, 28
  switch i32 %13, label %17 [
    i32 1, label %14
    i32 2, label %15
    i32 3, label %16
  ]

14:                                               ; preds = %11
  call void @imx_set_soc_revision(i32 noundef 32) #4
  br label %18

15:                                               ; preds = %11
  call void @imx_set_soc_revision(i32 noundef 33) #4
  br label %18

16:                                               ; preds = %11
  call void @imx_set_soc_revision(i32 noundef 34) #4
  br label %18

17:                                               ; preds = %11
  call void @imx_set_soc_revision(i32 noundef 16) #4
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_set_soc_revision(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx7ulp_cpuidle_init() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold }
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
!8 = !{!"auto-init"}
