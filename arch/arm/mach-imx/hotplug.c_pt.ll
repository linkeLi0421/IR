; ModuleID = '/llk/IR/arch/arm/mach-imx/hotplug.c_pt.bc'
source_filename = "../arch/arm/mach-imx/hotplug.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__mxc_cpu_type = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_cpu_die(i32 noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_louis \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #3, !srcloc !8
  tail call void @imx_set_cpu_arg(i32 noundef %0, i32 noundef -1) #3
  br label %2

2:                                                ; preds = %2, %1
  %3 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %4 = tail call i32 %3() #3
  br label %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_set_cpu_arg(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @imx_cpu_kill(i32 noundef %0) local_unnamed_addr #2 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = add i32 %2, 5
  br label %4

4:                                                ; preds = %7, %1
  %5 = tail call i32 @imx_get_cpu_arg(i32 noundef %0) #3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = sub i32 %3, %8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %4

11:                                               ; preds = %4
  tail call void @imx_enable_cpu(i32 noundef %0, i1 noundef zeroext false) #3
  tail call void @imx_set_cpu_arg(i32 noundef %0, i32 noundef 0) #3
  %12 = load i32, ptr @__mxc_cpu_type, align 4
  %13 = icmp eq i32 %12, 114
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @imx_gpcv2_set_core1_pdn_pup_by_software(i1 noundef zeroext true) #3
  br label %15

15:                                               ; preds = %14, %11, %7
  %16 = phi i32 [ 1, %14 ], [ 1, %11 ], [ 0, %7 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_get_cpu_arg(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_enable_cpu(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpcv2_set_core1_pdn_pup_by_software(i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2152133602, i64 2152133619, i64 2152133649, i64 2152133697, i64 2152133740, i64 2152133788, i64 2152133802, i64 2152133852, i64 2152133900, i64 2152133958, i64 2152134006, i64 2152134020, i64 2152134034}
