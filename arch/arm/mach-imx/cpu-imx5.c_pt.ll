; ModuleID = '/llk/IR/arch/arm/mach-imx/cpu-imx5.c_pt.bc'
source_filename = "../arch/arm/mach-imx/cpu-imx5.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mx51_revision:\09\09\09\09\09"
module asm "\09.asciz \09\22mx51_revision\22\09\09\09\09\09"
module asm "__kstrtabns_mx51_revision:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mx53_revision:\09\09\09\09\09"
module asm "\09.asciz \09\22mx53_revision\22\09\09\09\09\09"
module asm "__kstrtabns_mx53_revision:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@mx5_cpu_rev = internal unnamed_addr global i32 -1, align 4
@__kstrtab_mx51_revision = external dso_local constant [0 x i8], align 1
@__kstrtabns_mx51_revision = external dso_local constant [0 x i8], align 1
@__ksymtab_mx51_revision = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mx51_revision to i32), ptr @__kstrtab_mx51_revision, ptr @__kstrtabns_mx51_revision }, section "___ksymtab+mx51_revision", align 4
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [65 x i8] c"\016Turning off NEON support, detected broken NEON implementation\0A\00", align 1
@__kstrtab_mx53_revision = external dso_local constant [0 x i8], align 1
@__kstrtabns_mx53_revision = external dso_local constant [0 x i8], align 1
@__ksymtab_mx53_revision = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mx53_revision to i32), ptr @__kstrtab_mx53_revision, ptr @__kstrtabns_mx53_revision }, section "___ksymtab+mx53_revision", align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"arm,cortex-a8-pmu\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"secure-reg-access\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"fsl,imx51-tigerp\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"fsl,imx51-iim\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"arch/arm/mach-imx/cpu-imx5.c\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"fsl,imx53-iim\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_mx51_revision, ptr @__ksymtab_mx53_revision], section "llvm.metadata"
@switch.table.mx53_revision = private unnamed_addr constant [4 x i32] [i32 16, i32 255, i32 32, i32 33], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mx51_revision() #0 {
  %1 = load i32, ptr @mx5_cpu_rev, align 4
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %16

3:                                                ; preds = %0
  %4 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.4) #4
  %5 = tail call ptr @of_iomap(ptr noundef %4, i32 noundef 0) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 31, i32 noundef 9, ptr noundef null) #4
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr i8, ptr %5, i32 36
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %11 = and i32 %10, 255
  tail call void @iounmap(ptr noundef %5) #4
  %12 = icmp eq i32 %11, 16
  %13 = select i1 %12, i32 48, i32 255
  %14 = icmp eq i32 %11, 0
  %15 = select i1 %14, i32 32, i32 %13
  store i32 %15, ptr @mx5_cpu_rev, align 4
  br label %16

16:                                               ; preds = %8, %0
  %17 = phi i32 [ %15, %8 ], [ %1, %0 ]
  ret i32 %17
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @mx51_neon_fixup() local_unnamed_addr #1 section ".init.text" {
  %1 = tail call i32 @mx51_revision()
  %2 = icmp slt i32 %1, 48
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = load i32, ptr @elf_hwcap, align 4
  %5 = and i32 %4, 4096
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = and i32 %4, -4097
  store i32 %8, ptr @elf_hwcap, align 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #5
  br label %10

10:                                               ; preds = %7, %3, %0
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mx53_revision() #0 {
  %1 = load i32, ptr @mx5_cpu_rev, align 4
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %20

3:                                                ; preds = %0
  %4 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6) #4
  %5 = tail call ptr @of_iomap(ptr noundef %4, i32 noundef 0) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 31, i32 noundef 9, ptr noundef null) #4
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr i8, ptr %5, i32 36
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  tail call void @iounmap(ptr noundef %5) #4
  %11 = and i32 %10, 252
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = shl i32 %10, 24
  %15 = ashr exact i32 %14, 24
  %16 = getelementptr inbounds [4 x i32], ptr @switch.table.mx53_revision, i32 0, i32 %15
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i32 [ %17, %13 ], [ 255, %8 ]
  store i32 %19, ptr @mx5_cpu_rev, align 4
  br label %20

20:                                               ; preds = %18, %0
  %21 = phi i32 [ %19, %18 ], [ %1, %0 ]
  ret i32 %21
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @imx5_pmu_init() local_unnamed_addr #1 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef null) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  tail call void @of_node_put(ptr noundef nonnull %1) #4
  %7 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @of_iomap(ptr noundef nonnull %7, i32 noundef 0) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %10, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !9
  %15 = or i32 %14, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #4, !srcloc !11
  tail call void @iounmap(ptr noundef nonnull %10) #4
  br label %16

16:                                               ; preds = %12, %9, %3
  %17 = phi ptr [ %7, %12 ], [ %7, %9 ], [ %1, %3 ]
  tail call void @of_node_put(ptr noundef nonnull %17) #4
  br label %18

18:                                               ; preds = %16, %6, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
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
!9 = !{i64 2876949}
!10 = !{i64 2150606205}
!11 = !{i64 2876531}
