; ModuleID = '/llk/IR/arch/arm/mach-imx/mach-vf610.c_pt.bc'
source_filename = "../arch/arm/mach-imx/mach-vf610.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [43 x i8] c"Freescale Vybrid VF5xx/VF6xx (Device Tree)\00", align 1
@vf610_dt_compat = internal constant [6 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr null], section ".init.rodata", align 4
@__mach_desc_VYBRID_VF610 = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @vf610_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 -1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vf610_init_machine, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"fsl,vf500\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"fsl,vf510\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"fsl,vf600\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"fsl,vf610\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"fsl,vf610m4\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"fsl,vf610-mscm-cpucfg\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"arch/arm/mach-imx/mach-vf610.c\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__mach_desc_VYBRID_VF610], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @vf610_init_machine() #0 section ".init.text" {
  tail call fastcc void @vf610_detect_cpu() #2
  %1 = tail call i32 @of_platform_default_populate(ptr noundef null, ptr noundef null, ptr noundef null) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @vf610_detect_cpu() unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6) #3
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 28, i32 noundef 9, ptr noundef null) #3
  br label %18

4:                                                ; preds = %0
  %5 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 0) #3
  tail call void @of_node_put(ptr noundef nonnull %1) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 34, i32 noundef 9, ptr noundef null) #3
  br label %18

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %5, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #3, !srcloc !9
  %11 = getelementptr i8, ptr %5, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #3, !srcloc !9
  tail call void @iounmap(ptr noundef nonnull %5) #3
  %13 = icmp eq i32 %10, 0
  %14 = select i1 %13, i32 1280, i32 1536
  %15 = icmp eq i32 %12, 0
  %16 = or i32 %14, 16
  %17 = select i1 %15, i32 %14, i32 %16
  tail call void @mxc_set_cpu_type(i32 noundef %17) #3
  br label %18

18:                                               ; preds = %8, %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxc_set_cpu_type(i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2805512}
