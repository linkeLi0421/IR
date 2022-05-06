; ModuleID = '/llk/IR/arch/arm/mach-vt8500/vt8500.c_pt.bc'
source_filename = "../arch/arm/mach-vt8500/vt8500.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.map_desc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"VIA/Wondermedia SoC (Device Tree Support)\00", align 1
@vt8500_dt_compat = internal constant [6 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr null], align 4
@__mach_desc_WMT_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @vt8500_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vt8500_map_io, ptr null, ptr null, ptr null, ptr @vt8500_init, ptr null, ptr null, ptr @vt8500_restart }, section ".arch.info.init", align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"via,vt8500\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"wm,wm8650\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"wm,wm8505\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"wm,wm8750\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"wm,wm8850\00", align 1
@vt8500_io_desc = internal global [1 x %struct.map_desc] [%struct.map_desc { i32 -134217728, i32 884736, i32 3735552, i32 0 }], section ".init.data", align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"wm,wm8505-fb\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"wm,wm8505-gpio\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"wm,wm8650-gpio\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"\013%s: of_iomap(gpio_mux) failed\0A\00", align 1
@__func__.vt8500_init = private unnamed_addr constant [12 x i8] c"vt8500_init\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"\013%s: ioremap(legacy_gpio_mux) failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"\013%s: Could not remap GPIO mux\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"via,vt8500-pmc\00", align 1
@pmc_base = internal unnamed_addr global ptr null, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"\013%s:of_iomap(pmc) failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"\013%s:ioremap(power_off) failed\0A\00", align 1
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@.str.15 = private unnamed_addr constant [79 x i8] c"\013%s: PMC Hibernation register could not be remapped, not enabling power off!\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__mach_desc_WMT_DT], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @vt8500_map_io() #0 section ".init.text" {
  tail call void @iotable_init(ptr noundef nonnull @vt8500_io_desc, i32 noundef 1) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @vt8500_init() #0 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6) #4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ %7, %6 ], [ %4, %3 ]
  %11 = tail call ptr @of_iomap(ptr noundef nonnull %10, i32 noundef 0) #4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.vt8500_init) #5
  tail call void @of_node_put(ptr noundef nonnull %10) #4
  br label %26

15:                                               ; preds = %6
  %16 = tail call ptr @ioremap(i32 noundef -669974528, i32 noundef 4096) #4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.vt8500_init) #5
  br label %26

20:                                               ; preds = %9
  tail call void @of_node_put(ptr noundef nonnull %10) #4
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi ptr [ %11, %20 ], [ %16, %15 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %23 = getelementptr i8, ptr %22, i32 512
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %25 = or i32 %24, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %25) #4, !srcloc !11
  tail call void @iounmap(ptr noundef nonnull %22) #4
  br label %28

26:                                               ; preds = %18, %13
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.vt8500_init) #5
  br label %28

28:                                               ; preds = %26, %21
  tail call void @of_node_put(ptr noundef nonnull %1) #4
  br label %29

29:                                               ; preds = %28, %0
  %30 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12) #4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = tail call ptr @of_iomap(ptr noundef nonnull %30, i32 noundef 0) #4
  store ptr %33, ptr @pmc_base, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.vt8500_init) #5
  br label %37

37:                                               ; preds = %35, %32
  tail call void @of_node_put(ptr noundef nonnull %30) #4
  br label %43

38:                                               ; preds = %29
  %39 = tail call ptr @ioremap(i32 noundef -669843456, i32 noundef 4096) #4
  store ptr %39, ptr @pmc_base, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.vt8500_init) #5
  br label %43

43:                                               ; preds = %41, %37
  %44 = load ptr, ptr @pmc_base, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %38
  store ptr @vt8500_power_off, ptr @pm_power_off, align 4
  br label %49

47:                                               ; preds = %43
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.vt8500_init) #5
  br label %49

49:                                               ; preds = %47, %46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vt8500_restart(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = load ptr, ptr @pmc_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %6 = load ptr, ptr @pmc_base, align 4
  %7 = getelementptr i8, ptr %6, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1) #4, !srcloc !11
  br label %8

8:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vt8500_power_off() #1 {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %1 = load ptr, ptr @pmc_base, align 4
  %2 = getelementptr i8, ptr %1, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %2, i16 5) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c0, 4", "r"(i32 0) #4, !srcloc !16
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2150918302}
!9 = !{i64 363203}
!10 = !{i64 2150918790}
!11 = !{i64 362785}
!12 = !{i64 2150915062}
!13 = !{i64 504157}
!14 = !{i64 2150916212}
!15 = !{i64 362165}
!16 = !{i64 1262}
