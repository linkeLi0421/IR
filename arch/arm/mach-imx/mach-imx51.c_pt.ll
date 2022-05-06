; ModuleID = '/llk/IR/arch/arm/mach-imx/mach-imx51.c_pt.bc'
source_filename = "../arch/arm/mach-imx/mach-imx51.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [39 x i8] c"Freescale i.MX51 (Device Tree Support)\00", align 1
@imx51_dt_board_compat = internal constant [2 x ptr] [ptr @.str.1, ptr null], section ".init.rodata", align 4
@__mach_desc_IMX51_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @imx51_dt_board_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx51_init_early, ptr null, ptr null, ptr @imx51_dt_init, ptr @imx51_init_late, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"fsl,imx51\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"fsl,imx51-aipstz\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"arch/arm/mach-imx/mach-imx51.c\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"fsl,imx51-m4if\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\013Unable to map M4IF registers\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__mach_desc_IMX51_DT], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx51_init_early() #0 section ".init.text" {
  tail call void @mxc_set_cpu_type(i32 noundef 51) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx51_dt_init() #0 section ".init.text" {
  tail call fastcc void @imx51_ipu_mipi_setup() #4
  tail call void @imx_src_init() #3
  tail call fastcc void @imx51_m4if_setup() #4
  tail call void @imx5_pmu_init() #3
  tail call void @imx_aips_allow_unprivileged_access(ptr noundef nonnull @.str.2) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx51_init_late() #0 section ".init.text" {
  %1 = tail call i32 @mx51_neon_fixup() #3
  tail call void @imx51_pm_init() #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxc_set_cpu_type(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @imx51_ipu_mipi_setup() unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @ioremap(i32 noundef -2080522240, i32 noundef 16384) #3
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 35, i32 noundef 9, ptr noundef null) #3
  br label %4

4:                                                ; preds = %3, %0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 3840) #3, !srcloc !9
  %5 = getelementptr i8, ptr %1, i32 2048
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !10
  %7 = or i32 %6, 12543
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #3, !srcloc !9
  tail call void @iounmap(ptr noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_src_init() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @imx51_m4if_setup() unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.4) #3
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 0) #3
  tail call void @of_node_put(ptr noundef nonnull %1) #3
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #5
  br label %13

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %4, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 515) #3, !srcloc !9
  %10 = getelementptr i8, ptr %4, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #3, !srcloc !9
  %11 = getelementptr i8, ptr %4, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1179941) #3, !srcloc !9
  %12 = getelementptr i8, ptr %4, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1638819) #3, !srcloc !9
  tail call void @iounmap(ptr noundef nonnull %4) #3
  br label %13

13:                                               ; preds = %8, %6, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx5_pmu_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_aips_allow_unprivileged_access(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mx51_neon_fixup() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx51_pm_init() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold }
attributes #5 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 361342}
!10 = !{i64 361760}
