; ModuleID = '/llk/IR/arch/arm/mach-imx/pm-imx7ulp.c_pt.bc'
source_filename = "../arch/arm/mach-imx/pm-imx7ulp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

@smc1_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [17 x i8] c"fsl,imx7ulp-smc1\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"arch/arm/mach-imx/pm-imx7ulp.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @imx7ulp_set_lpm(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @smc1_base, align 4
  %3 = getelementptr i8, ptr %2, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  %5 = add i32 %0, -1
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = and i32 %4, -197384
  %9 = mul i32 %5, -65536
  %10 = add i32 %9, 196608
  %11 = or i32 %8, %10
  %12 = load ptr, ptr @smc1_base, align 4
  %13 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #3, !srcloc !9
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i32 [ 0, %7 ], [ -22, %1 ]
  ret i32 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @imx7ulp_pm_init() local_unnamed_addr #1 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #3
  %2 = tail call ptr @of_iomap(ptr noundef %1, i32 noundef 0) #3
  store ptr %2, ptr @smc1_base, align 4
  tail call void @of_node_put(ptr noundef %1) #3
  %3 = load ptr, ptr @smc1_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !10

5:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 66, i32 noundef 9, ptr noundef null) #3
  %6 = load ptr, ptr @smc1_base, align 4
  br label %7

7:                                                ; preds = %5, %0
  %8 = phi ptr [ %6, %5 ], [ %3, %0 ]
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #3, !srcloc !8
  %11 = and i32 %10, -197384
  %12 = or i32 %11, 196608
  %13 = load ptr, ptr @smc1_base, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #3, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 360979}
!9 = !{i64 360561}
!10 = !{!"branch_weights", i32 1, i32 2000}
