; ModuleID = '/llk/IR/arch/arm/mach-exynos/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-exynos/platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@exynos_pen_release = dso_local global i32 -1, align 4
@exynos_scu_enable.scu_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [18 x i8] c"arm,cortex-a9-scu\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"\013cpu core %u restart failed\0A\00", align 1
@firmware_ops = external dso_local local_unnamed_addr global ptr, align 4
@exynos_smp_ops = dso_local local_unnamed_addr constant %struct.smp_operations { ptr null, ptr @exynos_smp_prepare_cpus, ptr @exynos_secondary_init, ptr @exynos_boot_secondary, ptr null, ptr @exynos_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@exynos_cpu_id = external dso_local local_unnamed_addr global i32, align 4
@pmu_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@sysram_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@boot_lock = internal global %struct.spinlock zeroinitializer, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"\013cpu1 power enable failed\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"\014CPU%u: %u spurious wakeup calls\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos_cpu_power_down(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = load i32, ptr @exynos_cpu_id, align 4
  %5 = and i32 %4, -4096
  switch i32 %5, label %12 [
    i32 -448659456, label %6
    i32 -448651264, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = load ptr, ptr @pmu_base_addr, align 4
  %8 = getelementptr i8, ptr %7, i32 4096
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !8
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %6, %3, %1
  %13 = shl i32 %0, 7
  %14 = add i32 %13, 8192
  %15 = load ptr, ptr @pmu_base_addr, align 4
  %16 = getelementptr i8, ptr %15, i32 %14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !8
  %18 = and i32 %17, -4
  %19 = load ptr, ptr @pmu_base_addr, align 4
  %20 = getelementptr i8, ptr %19, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #4, !srcloc !9
  br label %21

21:                                               ; preds = %12, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos_cpu_power_up(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @exynos_cpu_id, align 4
  %3 = and i32 %2, -4096
  %4 = icmp eq i32 %3, -481878016
  %5 = select i1 %4, i32 -2147483645, i32 3
  %6 = shl i32 %0, 7
  %7 = add i32 %6, 8192
  %8 = load ptr, ptr @pmu_base_addr, align 4
  %9 = getelementptr i8, ptr %8, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %5) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos_cpu_power_state(i32 noundef %0) local_unnamed_addr #0 {
  %2 = shl i32 %0, 7
  %3 = add i32 %2, 8196
  %4 = load ptr, ptr @pmu_base_addr, align 4
  %5 = getelementptr i8, ptr %4, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !8
  %7 = and i32 %6, 3
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos_cluster_power_down(i32 noundef %0) local_unnamed_addr #0 {
  %2 = shl i32 %0, 7
  %3 = add i32 %2, 9472
  %4 = load ptr, ptr @pmu_base_addr, align 4
  %5 = getelementptr i8, ptr %4, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos_cluster_power_up(i32 noundef %0) local_unnamed_addr #0 {
  %2 = shl i32 %0, 7
  %3 = add i32 %2, 9472
  %4 = load ptr, ptr @pmu_base_addr, align 4
  %5 = getelementptr i8, ptr %4, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 3) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos_cluster_power_state(i32 noundef %0) local_unnamed_addr #0 {
  %2 = shl i32 %0, 7
  %3 = add i32 %2, 9476
  %4 = load ptr, ptr @pmu_base_addr, align 4
  %5 = getelementptr i8, ptr %4, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !8
  %7 = and i32 %6, 3
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos_scu_enable() local_unnamed_addr #0 {
  %1 = load ptr, ptr @exynos_scu_enable.scu_base, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @of_iomap(ptr noundef nonnull %4, i32 noundef 0) #4
  store ptr %7, ptr @exynos_scu_enable.scu_base, align 4
  tail call void @of_node_put(ptr noundef nonnull %4) #4
  %8 = load ptr, ptr @exynos_scu_enable.scu_base, align 4
  br label %12

9:                                                ; preds = %3
  %10 = tail call i32 asm "mrc p15, 4, $0, c15, c0, 0", "=r"() #5, !srcloc !10
  %11 = tail call ptr @ioremap(i32 noundef %10, i32 noundef 4096) #4
  store ptr %11, ptr @exynos_scu_enable.scu_base, align 4
  br label %12

12:                                               ; preds = %9, %6, %0
  %13 = phi ptr [ %8, %6 ], [ %11, %9 ], [ %1, %0 ]
  tail call void @scu_enable(ptr noundef %13) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos_core_restart(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @exynos_cpu_id, align 4
  %3 = and i32 %2, -4096
  %4 = icmp eq i32 %3, -481878016
  br i1 %4, label %5, label %116

5:                                                ; preds = %1
  %6 = load ptr, ptr @pmu_base_addr, align 4
  %7 = getelementptr i8, ptr %6, i32 2312
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %103

10:                                               ; preds = %5
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #4
  %12 = load ptr, ptr @pmu_base_addr, align 4
  %13 = getelementptr i8, ptr %12, i32 2312
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %103

16:                                               ; preds = %10
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #4
  %18 = load ptr, ptr @pmu_base_addr, align 4
  %19 = getelementptr i8, ptr %18, i32 2312
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %103

22:                                               ; preds = %16
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #4
  %24 = load ptr, ptr @pmu_base_addr, align 4
  %25 = getelementptr i8, ptr %24, i32 2312
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %103

28:                                               ; preds = %22
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 2147480) #4
  %30 = load ptr, ptr @pmu_base_addr, align 4
  %31 = getelementptr i8, ptr %30, i32 2312
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #4, !srcloc !8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %103

34:                                               ; preds = %28
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #4
  %36 = load ptr, ptr @pmu_base_addr, align 4
  %37 = getelementptr i8, ptr %36, i32 2312
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %103

40:                                               ; preds = %34
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 2147480) #4
  %42 = load ptr, ptr @pmu_base_addr, align 4
  %43 = getelementptr i8, ptr %42, i32 2312
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #4, !srcloc !8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %103

46:                                               ; preds = %40
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 2147480) #4
  %48 = load ptr, ptr @pmu_base_addr, align 4
  %49 = getelementptr i8, ptr %48, i32 2312
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #4, !srcloc !8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %103

52:                                               ; preds = %46
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 2147480) #4
  %54 = load ptr, ptr @pmu_base_addr, align 4
  %55 = getelementptr i8, ptr %54, i32 2312
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #4, !srcloc !8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %103

58:                                               ; preds = %52
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 2147480) #4
  %60 = load ptr, ptr @pmu_base_addr, align 4
  %61 = getelementptr i8, ptr %60, i32 2312
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #4, !srcloc !8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %103

64:                                               ; preds = %58
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 2147480) #4
  %66 = load ptr, ptr @pmu_base_addr, align 4
  %67 = getelementptr i8, ptr %66, i32 2312
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #4, !srcloc !8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %103

70:                                               ; preds = %64
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 2147480) #4
  %72 = load ptr, ptr @pmu_base_addr, align 4
  %73 = getelementptr i8, ptr %72, i32 2312
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #4, !srcloc !8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %70
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 2147480) #4
  %78 = load ptr, ptr @pmu_base_addr, align 4
  %79 = getelementptr i8, ptr %78, i32 2312
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #4, !srcloc !8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %76
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 2147480) #4
  %84 = load ptr, ptr @pmu_base_addr, align 4
  %85 = getelementptr i8, ptr %84, i32 2312
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #4, !srcloc !8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %82
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 2147480) #4
  %90 = load ptr, ptr @pmu_base_addr, align 4
  %91 = getelementptr i8, ptr %90, i32 2312
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #4, !srcloc !8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 2147480) #4
  %96 = load ptr, ptr @pmu_base_addr, align 4
  %97 = getelementptr i8, ptr %96, i32 2312
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #4, !srcloc !8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 2147480) #4
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %0) #6
  br label %116

103:                                              ; preds = %94, %88, %82, %76, %70, %64, %58, %52, %46, %40, %34, %28, %22, %16, %10, %5
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 2147480) #4
  %105 = shl i32 %0, 7
  %106 = add i32 %105, 8196
  %107 = load ptr, ptr @pmu_base_addr, align 4
  %108 = getelementptr i8, ptr %107, i32 %106
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #4, !srcloc !8
  %110 = or i32 %109, 768
  %111 = load ptr, ptr @pmu_base_addr, align 4
  %112 = getelementptr i8, ptr %111, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #4, !srcloc !9
  %113 = shl i32 16, %0
  %114 = load ptr, ptr @pmu_base_addr, align 4
  %115 = getelementptr i8, ptr %114, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %113) #4, !srcloc !9
  br label %116

116:                                              ; preds = %103, %100, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos_set_boot_addr(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @firmware_ops, align 4
  %4 = getelementptr inbounds %struct.firmware_ops, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call i32 %5(i32 noundef %0, i32 noundef %1) #4
  %9 = icmp eq i32 %8, -38
  br i1 %9, label %10, label %43

10:                                               ; preds = %7, %2
  %11 = load i32, ptr @exynos_cpu_id, align 4
  %12 = and i32 %11, -131072
  %13 = icmp eq i32 %12, 1126170624
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = tail call i32 @exynos_rev() #4
  %16 = icmp eq i32 %15, 17
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load ptr, ptr @pmu_base_addr, align 4
  %19 = getelementptr i8, ptr %18, i32 2068
  br label %22

20:                                               ; preds = %14, %10
  %21 = load ptr, ptr @sysram_base_addr, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi ptr [ %19, %17 ], [ %21, %20 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr @exynos_cpu_id, align 4
  %27 = and i32 %26, -131072
  %28 = icmp eq i32 %27, -465567744
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = shl i32 %0, 2
  %31 = getelementptr i8, ptr %23, i32 %30
  br label %36

32:                                               ; preds = %25
  %33 = and i32 %26, -4096
  switch i32 %33, label %36 [
    i32 -448659456, label %34
    i32 -448651264, label %34
  ]

34:                                               ; preds = %32, %32
  %35 = getelementptr i8, ptr %23, i32 4
  br label %36

36:                                               ; preds = %34, %32, %29
  %37 = phi ptr [ %31, %29 ], [ %35, %34 ], [ %23, %32 ]
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %22
  %40 = phi ptr [ %37, %36 ], [ inttoptr (i32 -19 to ptr), %22 ]
  %41 = ptrtoint ptr %40 to i32
  br label %43

42:                                               ; preds = %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %1) #4, !srcloc !9
  br label %43

43:                                               ; preds = %42, %39, %7
  %44 = phi i32 [ %8, %7 ], [ %41, %39 ], [ 0, %42 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos_get_boot_addr(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @firmware_ops, align 4
  %4 = getelementptr inbounds %struct.firmware_ops, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call i32 %5(i32 noundef %0, ptr noundef %1) #4
  %9 = icmp eq i32 %8, -38
  br i1 %9, label %10, label %44

10:                                               ; preds = %7, %2
  %11 = load i32, ptr @exynos_cpu_id, align 4
  %12 = and i32 %11, -131072
  %13 = icmp eq i32 %12, 1126170624
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = tail call i32 @exynos_rev() #4
  %16 = icmp eq i32 %15, 17
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load ptr, ptr @pmu_base_addr, align 4
  %19 = getelementptr i8, ptr %18, i32 2068
  br label %22

20:                                               ; preds = %14, %10
  %21 = load ptr, ptr @sysram_base_addr, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi ptr [ %19, %17 ], [ %21, %20 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr @exynos_cpu_id, align 4
  %27 = and i32 %26, -131072
  %28 = icmp eq i32 %27, -465567744
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = shl i32 %0, 2
  %31 = getelementptr i8, ptr %23, i32 %30
  br label %36

32:                                               ; preds = %25
  %33 = and i32 %26, -4096
  switch i32 %33, label %36 [
    i32 -448659456, label %34
    i32 -448651264, label %34
  ]

34:                                               ; preds = %32, %32
  %35 = getelementptr i8, ptr %23, i32 4
  br label %36

36:                                               ; preds = %34, %32, %29
  %37 = phi ptr [ %31, %29 ], [ %35, %34 ], [ %23, %32 ]
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %22
  %40 = phi ptr [ %37, %36 ], [ inttoptr (i32 -19 to ptr), %22 ]
  %41 = ptrtoint ptr %40 to i32
  br label %44

42:                                               ; preds = %36
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !8
  store i32 %43, ptr %1, align 4
  br label %44

44:                                               ; preds = %42, %39, %7
  %45 = phi i32 [ %8, %7 ], [ %41, %39 ], [ 0, %42 ]
  ret i32 %45
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos_smp_prepare_cpus(i32 noundef %0) #3 section ".init.text" {
  tail call void @exynos_sysram_init() #4
  tail call void @exynos_set_delayed_reset_assertion(i1 noundef zeroext true) #4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #5, !srcloc !11
  %3 = and i32 %2, -16711696
  %4 = icmp eq i32 %3, 1090568336
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @exynos_scu_enable()
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_secondary_init(i32 noundef %0) #0 {
  store volatile i32 -1, ptr @exynos_pen_release, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #4, !srcloc !12
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %2(ptr noundef nonnull @exynos_pen_release, i32 noundef 4) #4
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @exynos_pen_release to i32), i32 -2130706432, i32 8454144) #5, !srcloc !13
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (i32, ptr @exynos_pen_release, i32 1) to i32), i32 -2130706432, i32 8454144) #5, !srcloc !13
  %5 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(i32 noundef %3, i32 noundef %4) #4
  br label %8

8:                                                ; preds = %7, %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @boot_lock) #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  %9 = load i16, ptr @boot_lock, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 255
  tail call void @_raw_spin_lock(ptr noundef nonnull @boot_lock) #4
  store volatile i32 %5, ptr @exynos_pen_release, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #4, !srcloc !12
  %6 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %6(ptr noundef nonnull @exynos_pen_release, i32 noundef 4) #4
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @exynos_pen_release to i32), i32 -2130706432, i32 8454144) #5, !srcloc !13
  %8 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (i32, ptr @exynos_pen_release, i32 1) to i32), i32 -2130706432, i32 8454144) #5, !srcloc !13
  %9 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void %9(i32 noundef %7, i32 noundef %8) #4
  br label %12

12:                                               ; preds = %11, %2
  %13 = shl nuw nsw i32 %5, 7
  %14 = add nuw nsw i32 %13, 8196
  %15 = load ptr, ptr @pmu_base_addr, align 4
  %16 = getelementptr i8, ptr %15, i32 %14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !8
  %18 = and i32 %17, 3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %12
  %21 = load i32, ptr @exynos_cpu_id, align 4
  %22 = and i32 %21, -4096
  %23 = icmp eq i32 %22, -481878016
  %24 = select i1 %23, i32 -2147483645, i32 3
  %25 = add nuw nsw i32 %13, 8192
  %26 = load ptr, ptr @pmu_base_addr, align 4
  %27 = getelementptr i8, ptr %26, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %24) #4, !srcloc !9
  %28 = load ptr, ptr @pmu_base_addr, align 4
  %29 = getelementptr i8, ptr %28, i32 %14
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #4, !srcloc !8
  %31 = and i32 %30, 3
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %49, label %33

33:                                               ; preds = %33, %20
  %34 = phi i32 [ %35, %33 ], [ 10, %20 ]
  %35 = add nsw i32 %34, -1
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #4
  %37 = load ptr, ptr @pmu_base_addr, align 4
  %38 = getelementptr i8, ptr %37, i32 %14
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #4, !srcloc !8
  %40 = and i32 %39, 3
  %41 = icmp eq i32 %40, 3
  %42 = icmp eq i32 %35, 0
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %44, label %33

44:                                               ; preds = %33
  br i1 %42, label %45, label %49

45:                                               ; preds = %44
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  %47 = load i16, ptr @boot_lock, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !17
  br label %140

49:                                               ; preds = %44, %20, %12
  tail call void @exynos_core_restart(i32 noundef %5)
  %50 = load volatile i32, ptr @jiffies, align 64
  %51 = sub i32 -100, %50
  %52 = load volatile i32, ptr @jiffies, align 64
  %53 = add i32 %51, %52
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %128

55:                                               ; preds = %49
  %56 = shl nuw nsw i32 %5, 2
  %57 = and i32 %0, 31
  %58 = add nuw nsw i32 %57, 1
  %59 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %58
  %60 = lshr i32 %0, 5
  %61 = sub nsw i32 0, %60
  %62 = getelementptr i32, ptr %59, i32 %61
  br label %63

63:                                               ; preds = %123, %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !18
  %64 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @exynos4_secondary_startup to i32), i32 -2130706432, i32 8454144) #5, !srcloc !13
  %65 = load ptr, ptr @firmware_ops, align 4
  %66 = getelementptr inbounds %struct.firmware_ops, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = tail call i32 %67(i32 noundef %5, i32 noundef %64) #4
  %71 = icmp eq i32 %70, -38
  br i1 %71, label %72, label %104

72:                                               ; preds = %69, %63
  %73 = load i32, ptr @exynos_cpu_id, align 4
  %74 = and i32 %73, -131072
  %75 = icmp eq i32 %74, 1126170624
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = tail call i32 @exynos_rev() #4
  %78 = icmp eq i32 %77, 17
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load ptr, ptr @pmu_base_addr, align 4
  %81 = getelementptr i8, ptr %80, i32 2068
  br label %84

82:                                               ; preds = %76, %72
  %83 = load ptr, ptr @sysram_base_addr, align 4
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi ptr [ %81, %79 ], [ %83, %82 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %100, label %87

87:                                               ; preds = %84
  %88 = load i32, ptr @exynos_cpu_id, align 4
  %89 = and i32 %88, -131072
  %90 = icmp eq i32 %89, -465567744
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = getelementptr i8, ptr %85, i32 %56
  br label %97

93:                                               ; preds = %87
  %94 = and i32 %88, -4096
  switch i32 %94, label %97 [
    i32 -448659456, label %95
    i32 -448651264, label %95
  ]

95:                                               ; preds = %93, %93
  %96 = getelementptr i8, ptr %85, i32 4
  br label %97

97:                                               ; preds = %95, %93, %91
  %98 = phi ptr [ %92, %91 ], [ %96, %95 ], [ %85, %93 ]
  %99 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %103

100:                                              ; preds = %97, %84
  %101 = phi ptr [ %98, %97 ], [ inttoptr (i32 -19 to ptr), %84 ]
  %102 = ptrtoint ptr %101 to i32
  br label %104

103:                                              ; preds = %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %64) #4, !srcloc !9
  br label %107

104:                                              ; preds = %100, %69
  %105 = phi i32 [ %70, %69 ], [ %102, %100 ]
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %133

107:                                              ; preds = %104, %103
  %108 = load ptr, ptr @firmware_ops, align 4
  %109 = getelementptr inbounds %struct.firmware_ops, ptr %108, i32 0, i32 4
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = tail call i32 %110(i32 noundef %5) #4
  br label %114

114:                                              ; preds = %112, %107
  %115 = load i32, ptr @exynos_cpu_id, align 4
  %116 = and i32 %115, -4096
  %117 = icmp eq i32 %116, -481878016
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !16
  br label %120

119:                                              ; preds = %114
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %62) #4
  br label %120

120:                                              ; preds = %119, %118
  %121 = load volatile i32, ptr @exynos_pen_release, align 4
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %128, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 2147480) #4
  %125 = load volatile i32, ptr @jiffies, align 64
  %126 = add i32 %51, %125
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %63, label %128

128:                                              ; preds = %123, %120, %49
  %129 = phi i32 [ -38, %49 ], [ 0, %120 ], [ 0, %123 ]
  %130 = load volatile i32, ptr @exynos_pen_release, align 4
  %131 = icmp eq i32 %130, -1
  %132 = select i1 %131, i32 %129, i32 -110
  br label %133

133:                                              ; preds = %128, %104
  %134 = phi i32 [ %132, %128 ], [ %105, %104 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  %135 = load i16, ptr @boot_lock, align 4
  %136 = add i16 %135, 1
  store i16 %136, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !17
  %137 = load volatile i32, ptr @exynos_pen_release, align 4
  %138 = icmp eq i32 %137, -1
  %139 = select i1 %138, i32 0, i32 %134
  br label %140

140:                                              ; preds = %133, %45
  %141 = phi i32 [ %139, %133 ], [ -110, %45 ]
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_cpu_die(i32 noundef %0) #0 {
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_louis \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #4, !srcloc !19
  %2 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 0
  %6 = shl nuw nsw i32 %4, 7
  %7 = add nuw nsw i32 %6, 8192
  br label %8

8:                                                ; preds = %26, %1
  %9 = phi i32 [ 0, %1 ], [ %29, %26 ]
  br i1 %5, label %10, label %19

10:                                               ; preds = %8
  %11 = load i32, ptr @exynos_cpu_id, align 4
  %12 = and i32 %11, -4096
  switch i32 %12, label %19 [
    i32 -448659456, label %13
    i32 -448651264, label %13
  ]

13:                                               ; preds = %10, %10
  %14 = load ptr, ptr @pmu_base_addr, align 4
  %15 = getelementptr i8, ptr %14, i32 4096
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  %17 = and i32 %16, 3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %13, %10, %8
  %20 = load ptr, ptr @pmu_base_addr, align 4
  %21 = getelementptr i8, ptr %20, i32 %7
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #4, !srcloc !8
  %23 = and i32 %22, -4
  %24 = load ptr, ptr @pmu_base_addr, align 4
  %25 = getelementptr i8, ptr %24, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #4, !srcloc !9
  br label %26

26:                                               ; preds = %19, %13
  tail call void asm sideeffect "wfi", "~{memory}"() #4, !srcloc !20
  %27 = load volatile i32, ptr @exynos_pen_release, align 4
  %28 = icmp eq i32 %27, %4
  %29 = add i32 %9, 1
  br i1 %28, label %30, label %8

30:                                               ; preds = %26
  %31 = tail call i32 asm sideeffect "mrc\09p15, 0, $0, c1, c0, 0\0A\09orr\09$0, $0, $1\0A\09mcr\09p15, 0, $0, c1, c0, 0\0A\09mrc\09p15, 0, $0, c1, c0, 1\0A\09orr\09$0, $0, $2\0A\09mcr\09p15, 0, $0, c1, c0, 1\0A", "=&r,Ir,Ir,~{cc}"(i32 4, i32 64) #4, !srcloc !21
  %32 = icmp eq i32 %9, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %0, i32 noundef %9) #6
  br label %35

35:                                               ; preds = %33, %30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_sysram_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_set_delayed_reset_assertion(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_secondary_startup() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
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
!8 = !{i64 2391950}
!9 = !{i64 2391532}
!10 = !{i64 5238114}
!11 = !{i64 2152712292}
!12 = !{i64 2152738022}
!13 = !{i64 2148734128, i64 2148734151, i64 2148734183, i64 2148734215, i64 2148734253, i64 2148734283}
!14 = !{i64 2149175590}
!15 = !{i64 2149171414}
!16 = !{i64 2149171489, i64 2149171516, i64 2149171563, i64 2149171585, i64 2149171613, i64 2149171633}
!17 = !{i64 2149198593}
!18 = !{i64 2152741253}
!19 = !{i64 2152743048, i64 2152743065, i64 2152743095, i64 2152743143, i64 2152743186, i64 2152743234, i64 2152743248, i64 2152743298, i64 2152743346, i64 2152743404, i64 2152743452, i64 2152743466, i64 2152743480}
!20 = !{i64 2152735051}
!21 = !{i64 878, i64 910, i64 931, i64 963, i64 995, i64 1016}
