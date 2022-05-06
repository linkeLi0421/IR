; ModuleID = '/llk/IR/arch/arm/mach-tegra/hotplug.c_pt.bc'
source_filename = "../arch/arm/mach-tegra/hotplug.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_cpu_car_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@tegra_hotplug_shutdown = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [30 x i8] c"arch/arm/mach-tegra/hotplug.c\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"hotplug is not yet initialized\0A\00", align 1
@__initcall__kmod_hotplug__171_74_tegra_hotplug_init0 = internal global ptr @tegra_hotplug_init, section ".initcall0.init", align 4
@tegra_cpu_car_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"include/linux/clk/tegra.h\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_hotplug__171_74_tegra_hotplug_init0], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_cpu_kill(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 50, i32 noundef 9, ptr noundef null) #3
  br label %9

8:                                                ; preds = %1
  tail call void %5(i32 noundef %3) #3
  br label %9

9:                                                ; preds = %8, %7
  %10 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %11 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 82, i32 noundef 9, ptr noundef null) #3
  br label %16

15:                                               ; preds = %9
  tail call void %12(i32 noundef %3) #3
  br label %16

16:                                               ; preds = %15, %14
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_cpu_die(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @tegra_hotplug_shutdown, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1) #3
  ret void

5:                                                ; preds = %1
  tail call void @tegra_disable_clean_inv_dcache(i32 noundef 0) #3
  %6 = load ptr, ptr @tegra_hotplug_shutdown, align 4
  tail call void %6() #3, !callees !9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/hotplug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 52, 0\0A.popsection", ""() #3, !srcloc !10
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_disable_clean_inv_dcache(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_hotplug_init() #2 section ".init.text" {
  %1 = tail call zeroext i1 @soc_is_tegra() #3
  br i1 %1, label %2, label %18

2:                                                ; preds = %0
  %3 = tail call zeroext i8 @tegra_get_chip_id() #3
  %4 = icmp eq i8 %3, 32
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store ptr @tegra20_hotplug_shutdown, ptr @tegra_hotplug_shutdown, align 4
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call zeroext i8 @tegra_get_chip_id() #3
  %8 = icmp eq i8 %7, 48
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store ptr @tegra30_hotplug_shutdown, ptr @tegra_hotplug_shutdown, align 4
  br label %10

10:                                               ; preds = %9, %6
  %11 = tail call zeroext i8 @tegra_get_chip_id() #3
  %12 = icmp eq i8 %11, 53
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store ptr @tegra30_hotplug_shutdown, ptr @tegra_hotplug_shutdown, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = tail call zeroext i8 @tegra_get_chip_id() #3
  %16 = icmp eq i8 %15, 64
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store ptr @tegra30_hotplug_shutdown, ptr @tegra_hotplug_shutdown, align 4
  br label %18

18:                                               ; preds = %17, %14, %0
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @soc_is_tegra() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tegra_get_chip_id() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra20_hotplug_shutdown() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra30_hotplug_shutdown() #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{ptr @tegra20_hotplug_shutdown, ptr @tegra30_hotplug_shutdown}
!10 = !{i64 2151397898, i64 2151398391, i64 2151397935, i64 2151397991, i64 2151398025, i64 2151398049, i64 2151398090, i64 2151398111, i64 2151398139, i64 2151398173}
