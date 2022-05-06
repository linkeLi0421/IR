; ModuleID = '/llk/IR/arch/arm/mach-tegra/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-tegra/platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_cpu_car_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@tegra_smp_ops = dso_local local_unnamed_addr constant %struct.smp_operations { ptr null, ptr @tegra_smp_prepare_cpus, ptr @tegra_secondary_init, ptr @tegra_boot_secondary, ptr @tegra_cpu_kill, ptr @tegra_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@tegra_cpu_init_mask = internal global %struct.cpumask zeroinitializer, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@tegra_cpu_car_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [26 x i8] c"include/linux/clk/tegra.h\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull @tegra_cpu_init_mask) #3
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #4, !srcloc !8
  %3 = and i32 %2, -16711696
  %4 = icmp eq i32 %3, 1090568336
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = tail call i32 asm "mrc p15, 4, $0, c15, c0, 0", "=r"() #4, !srcloc !9
  %7 = icmp ugt i32 %6, 1610612735
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = icmp ult i32 %6, 1611661312
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = add nsw i32 %6, -1610612736
  %12 = getelementptr i8, ptr inttoptr (i32 -31457280 to ptr), i32 %11
  br label %32

13:                                               ; preds = %8
  %14 = and i32 %6, -1048576
  %15 = icmp eq i32 %14, 1879048192
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = add nsw i32 %6, -1879048192
  %18 = getelementptr i8, ptr inttoptr (i32 -33554432 to ptr), i32 %17
  br label %32

19:                                               ; preds = %5
  %20 = icmp ugt i32 %6, 1342439423
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = icmp ult i32 %6, 1342455808
  br i1 %22, label %23, label %32

23:                                               ; preds = %21
  %24 = add nsw i32 %6, -1342439424
  %25 = getelementptr i8, ptr inttoptr (i32 -29097984 to ptr), i32 %24
  br label %32

26:                                               ; preds = %19
  %27 = and i32 %6, -262144
  %28 = icmp eq i32 %27, 1073741824
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = add nsw i32 %6, -1073741824
  %31 = getelementptr i8, ptr inttoptr (i32 -29360128 to ptr), i32 %30
  br label %32

32:                                               ; preds = %29, %26, %23, %21, %16, %13, %10
  %33 = phi ptr [ %12, %10 ], [ %18, %16 ], [ %25, %23 ], [ %31, %29 ], [ null, %26 ], [ null, %13 ], [ null, %21 ]
  tail call void @scu_enable(ptr noundef %33) #3
  br label %34

34:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_secondary_init(i32 noundef %0) #1 {
  tail call void @_set_bit(i32 noundef %0, ptr noundef nonnull @tegra_cpu_init_mask) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = tail call zeroext i8 @tegra_get_chip_id() #3
  %4 = icmp eq i8 %3, 32
  br i1 %4, label %5, label %28

5:                                                ; preds = %2
  %6 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %9 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !10

12:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef null) #3
  br label %14

13:                                               ; preds = %5
  tail call void %10(i32 noundef %7) #3
  br label %14

14:                                               ; preds = %13, %12
  tail call void @flowctrl_write_cpu_halt(i32 noundef %7, i32 noundef 0) #3
  %15 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %16 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !10

19:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 74, i32 noundef 9, ptr noundef null) #3
  br label %21

20:                                               ; preds = %14
  tail call void %17(i32 noundef %7) #3
  br label %21

21:                                               ; preds = %20, %19
  tail call void @flowctrl_write_cpu_csr(i32 noundef %7, i32 noundef 0) #3
  %22 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %23 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !10

26:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 9, ptr noundef null) #3
  br label %112

27:                                               ; preds = %21
  tail call void %24(i32 noundef %7) #3
  br label %112

28:                                               ; preds = %2
  %29 = tail call zeroext i8 @tegra_get_chip_id() #3
  %30 = icmp eq i8 %29, 48
  br i1 %30, label %31, label %80

31:                                               ; preds = %28
  %32 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %35 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39, !prof !10

38:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef null) #3
  br label %40

39:                                               ; preds = %31
  tail call void %36(i32 noundef %33) #3
  br label %40

40:                                               ; preds = %39, %38
  tail call void @flowctrl_write_cpu_halt(i32 noundef %33, i32 noundef 0) #3
  %41 = lshr i32 %33, 5
  %42 = getelementptr i32, ptr @tegra_cpu_init_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %33, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %40
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = sub i32 -5, %49
  br label %51

51:                                               ; preds = %53, %48
  %52 = tail call zeroext i1 @tegra_pmc_cpu_is_powered(i32 noundef %33) #3
  br i1 %52, label %61, label %53

53:                                               ; preds = %51
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 2147480) #3
  %55 = load volatile i32, ptr @jiffies, align 64
  %56 = add i32 %50, %55
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %51, label %58

58:                                               ; preds = %53, %40
  %59 = tail call i32 @tegra_pmc_cpu_power_on(i32 noundef %33) #3
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %112

61:                                               ; preds = %58, %51
  %62 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %63 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %67, !prof !10

66:                                               ; preds = %61
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 74, i32 noundef 9, ptr noundef null) #3
  br label %68

67:                                               ; preds = %61
  tail call void %64(i32 noundef %33) #3
  br label %68

68:                                               ; preds = %67, %66
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 2147480) #3
  %70 = tail call i32 @tegra_pmc_cpu_remove_clamping(i32 noundef %33) #3
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %112

72:                                               ; preds = %68
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 2147480) #3
  tail call void @flowctrl_write_cpu_csr(i32 noundef %33, i32 noundef 0) #3
  %74 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %75 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79, !prof !10

78:                                               ; preds = %72
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 9, ptr noundef null) #3
  br label %112

79:                                               ; preds = %72
  tail call void %76(i32 noundef %33) #3
  br label %112

80:                                               ; preds = %28
  %81 = tail call zeroext i8 @tegra_get_chip_id() #3
  %82 = icmp eq i8 %81, 53
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %85 = load i32, ptr %84, align 4
  %86 = lshr i32 %85, 5
  %87 = getelementptr i32, ptr @tegra_cpu_init_mask, i32 %86
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %85, 31
  %90 = shl nuw i32 1, %89
  %91 = and i32 %90, %88
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %83
  tail call void @flowctrl_write_cpu_csr(i32 noundef %85, i32 noundef 1) #3
  tail call void @flowctrl_write_cpu_halt(i32 noundef %85, i32 noundef 1207959552) #3
  br label %112

94:                                               ; preds = %83
  %95 = tail call i32 @tegra_pmc_cpu_power_on(i32 noundef %85) #3
  br label %112

96:                                               ; preds = %80
  %97 = tail call zeroext i8 @tegra_get_chip_id() #3
  %98 = icmp eq i8 %97, 64
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %101 = load i32, ptr %100, align 4
  %102 = lshr i32 %101, 5
  %103 = getelementptr i32, ptr @tegra_cpu_init_mask, i32 %102
  %104 = load volatile i32, ptr %103, align 4
  %105 = and i32 %101, 31
  %106 = shl nuw i32 1, %105
  %107 = and i32 %106, %104
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %99
  tail call void @flowctrl_write_cpu_csr(i32 noundef %101, i32 noundef 1) #3
  tail call void @flowctrl_write_cpu_halt(i32 noundef %101, i32 noundef 1207959552) #3
  br label %112

110:                                              ; preds = %99
  %111 = tail call i32 @tegra_pmc_cpu_power_on(i32 noundef %101) #3
  br label %112

112:                                              ; preds = %110, %109, %96, %94, %93, %79, %78, %68, %58, %27, %26
  %113 = phi i32 [ -22, %96 ], [ 0, %26 ], [ 0, %27 ], [ %59, %58 ], [ %70, %68 ], [ 0, %78 ], [ 0, %79 ], [ 0, %93 ], [ %95, %94 ], [ 0, %109 ], [ %111, %110 ]
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_cpu_kill(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_cpu_die(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tegra_get_chip_id() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flowctrl_write_cpu_halt(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flowctrl_write_cpu_csr(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_pmc_cpu_is_powered(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pmc_cpu_power_on(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pmc_cpu_remove_clamping(i32 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

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
!8 = !{i64 2152806899}
!9 = !{i64 5328660}
!10 = !{!"branch_weights", i32 1, i32 2000}
