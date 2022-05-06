; ModuleID = '/llk/IR/arch/arm/mach-exynos/mcpm-exynos.c_pt.bc'
source_filename = "../arch/arm/mach-exynos/mcpm-exynos.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mcpm_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@__initcall__kmod_mcpm_exynos__219_312_exynos_mcpm_initearly = internal global ptr @exynos_mcpm_init, section ".initcallearly.init", align 4
@exynos_dt_mcpm_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5800\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [29 x i8] c"samsung,exynos4210-sysram-ns\00", align 1
@ns_sram_base_addr = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"\013failed to map non-secure iRAM base address\0A\00", align 1
@secure_firmware = internal unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@exynos_power_ops = internal constant %struct.mcpm_platform_ops { ptr @exynos_cpu_powerup, ptr @exynos_cluster_powerup, ptr null, ptr @exynos_cpu_powerdown_prepare, ptr @exynos_cluster_powerdown_prepare, ptr @exynos_cpu_cache_disable, ptr @exynos_cluster_cache_disable, ptr @exynos_cpu_is_up, ptr null, ptr @exynos_wait_for_powerdown }, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"\016Exynos MCPM support installed\0A\00", align 1
@exynos_mcpm_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr null, ptr @exynos_mcpm_setup_entry_point, ptr null }, align 4
@pmu_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"\013cpu %u cluster %u powerup failed\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_mcpm_exynos__219_312_exynos_mcpm_initearly], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos_mcpm_init() #0 section ".init.text" {
  %1 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @exynos_dt_mcpm_match, ptr noundef null) #5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %0
  tail call void @of_node_put(ptr noundef nonnull %1) #5
  %4 = tail call zeroext i1 @cci_probed() #5
  br i1 %4, label %5, label %44

5:                                                ; preds = %3
  %6 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @of_iomap(ptr noundef nonnull %6, i32 noundef 0) #5
  store ptr %9, ptr @ns_sram_base_addr, align 4
  tail call void @of_node_put(ptr noundef nonnull %6) #5
  %10 = load ptr, ptr @ns_sram_base_addr, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  br label %44

14:                                               ; preds = %8
  %15 = tail call zeroext i1 @exynos_secure_firmware_available() #6
  %16 = zext i1 %15 to i8
  store i8 %16, ptr @secure_firmware, align 1
  %17 = load ptr, ptr @pmu_base_addr, align 4
  %18 = getelementptr i8, ptr %17, i32 2316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 3) #5, !srcloc !8
  %19 = tail call i32 @mcpm_platform_register(ptr noundef nonnull @exynos_power_ops) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = tail call i32 @mcpm_sync_init(ptr noundef nonnull @exynos_pm_power_up_setup) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = tail call i32 @mcpm_loopback(ptr noundef nonnull @exynos_cluster_cache_disable) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %21, %14
  %28 = phi i32 [ %25, %24 ], [ %22, %21 ], [ %19, %14 ]
  %29 = load ptr, ptr @ns_sram_base_addr, align 4
  tail call void @iounmap(ptr noundef %29) #5
  br label %44

30:                                               ; preds = %24
  tail call void @mcpm_smp_set_ops() #6
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  %32 = load ptr, ptr @pmu_base_addr, align 4
  %33 = getelementptr i8, ptr %32, i32 9480
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !9
  %35 = or i32 %34, 1610613248
  %36 = load ptr, ptr @pmu_base_addr, align 4
  %37 = getelementptr i8, ptr %36, i32 9480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #5, !srcloc !8
  %38 = load ptr, ptr @pmu_base_addr, align 4
  %39 = getelementptr i8, ptr %38, i32 9608
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !9
  %41 = or i32 %40, 1610613248
  %42 = load ptr, ptr @pmu_base_addr, align 4
  %43 = getelementptr i8, ptr %42, i32 9608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #5, !srcloc !8
  tail call void @exynos_mcpm_setup_entry_point()
  tail call void @register_syscore_ops(ptr noundef nonnull @exynos_mcpm_syscore_ops) #5
  br label %44

44:                                               ; preds = %30, %27, %12, %5, %3, %0
  %45 = phi i32 [ %28, %27 ], [ 0, %30 ], [ -12, %12 ], [ -19, %0 ], [ -19, %3 ], [ -19, %5 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cci_probed() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local zeroext i1 @exynos_secure_firmware_available() local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @mcpm_platform_register(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @mcpm_sync_init(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: naked noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_pm_power_up_setup(i32 noundef %0) #3 {
  tail call void asm sideeffect "\0Acmp\09r0, #1\0Abxne\09lr\0Ab\09cci_enable_port_for_self", ""() #5, !srcloc !10
  unreachable
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @mcpm_loopback(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_cluster_cache_disable() #4 {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #7, !srcloc !11
  %2 = and i32 %1, -16711696
  %3 = icmp eq i32 %2, 1090568432
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call void asm sideeffect "mcr\09p15, 1, $0, c15, c0, 3\0A\09isb\0A\09dsb", "r"(i32 1024) #5, !srcloc !12
  br label %5

5:                                                ; preds = %4, %0
  %6 = load ptr, ptr @pmu_base_addr, align 4
  %7 = getelementptr i8, ptr %6, i32 2048
  tail call void asm sideeffect "stmfd\09sp!, {fp, ip}\0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR\0A\09bic\09r0, r0, #(1 << 2)\0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR\0A\09isb\0A\09bl\09v7_flush_dcache_all\0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR\0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency\0A\09ldr\09r4, [$0]\0A\09and\09r4, r4, #0\0A\09orr\09r0, r0, r4\0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR\0A\09isb\0A\09dsb\0A\09ldmfd\09sp!, {fp, ip}", "Ir,~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"(ptr %7) #5, !srcloc !13
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #7, !srcloc !14
  %9 = zext i32 %8 to i64
  %10 = tail call i32 @cci_disable_port_by_cpu(i64 noundef %9) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mcpm_smp_set_ops() local_unnamed_addr #2 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_mcpm_setup_entry_point() #4 {
  %1 = load ptr, ptr @ns_sram_base_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -442564608) #5, !srcloc !8
  %2 = load ptr, ptr @ns_sram_base_addr, align 4
  %3 = getelementptr i8, ptr %2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -516948208) #5, !srcloc !8
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @mcpm_entry_point to i32), i32 -2130706432, i32 8454144) #7, !srcloc !15
  %5 = load ptr, ptr @ns_sram_base_addr, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #5, !srcloc !8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_cpu_powerup(i32 noundef %0, i32 noundef %1) #4 {
  %3 = shl i32 %1, 2
  %4 = add i32 %3, %0
  %5 = icmp ugt i32 %0, 3
  %6 = icmp ugt i32 %1, 1
  %7 = or i1 %5, %6
  br i1 %7, label %122, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @exynos_cpu_power_state(i32 noundef %4) #5
  %10 = icmp eq i32 %9, 0
  tail call void @exynos_cpu_power_up(i32 noundef %4) #5
  br i1 %10, label %11, label %122

11:                                               ; preds = %8
  %12 = load i8, ptr @secure_firmware, align 1, !range !16
  %13 = icmp ne i8 %12, 0
  %14 = icmp ne i32 %1, 0
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %122

16:                                               ; preds = %11
  %17 = load i32, ptr @__cpu_logical_map, align 4
  %18 = and i32 %17, 65280
  %19 = icmp eq i32 %18, 256
  br i1 %19, label %20, label %122

20:                                               ; preds = %16
  %21 = load ptr, ptr @pmu_base_addr, align 4
  %22 = getelementptr i8, ptr %21, i32 2312
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %118

25:                                               ; preds = %20
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #5
  %27 = load ptr, ptr @pmu_base_addr, align 4
  %28 = getelementptr i8, ptr %27, i32 2312
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %118

31:                                               ; preds = %25
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 2147480) #5
  %33 = load ptr, ptr @pmu_base_addr, align 4
  %34 = getelementptr i8, ptr %33, i32 2312
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %118

37:                                               ; preds = %31
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 2147480) #5
  %39 = load ptr, ptr @pmu_base_addr, align 4
  %40 = getelementptr i8, ptr %39, i32 2312
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #5, !srcloc !9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %118

43:                                               ; preds = %37
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 2147480) #5
  %45 = load ptr, ptr @pmu_base_addr, align 4
  %46 = getelementptr i8, ptr %45, i32 2312
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #5, !srcloc !9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %118

49:                                               ; preds = %43
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 2147480) #5
  %51 = load ptr, ptr @pmu_base_addr, align 4
  %52 = getelementptr i8, ptr %51, i32 2312
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #5, !srcloc !9
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %118

55:                                               ; preds = %49
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 2147480) #5
  %57 = load ptr, ptr @pmu_base_addr, align 4
  %58 = getelementptr i8, ptr %57, i32 2312
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #5, !srcloc !9
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %118

61:                                               ; preds = %55
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 2147480) #5
  %63 = load ptr, ptr @pmu_base_addr, align 4
  %64 = getelementptr i8, ptr %63, i32 2312
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #5, !srcloc !9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %118

67:                                               ; preds = %61
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 2147480) #5
  %69 = load ptr, ptr @pmu_base_addr, align 4
  %70 = getelementptr i8, ptr %69, i32 2312
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #5, !srcloc !9
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %118

73:                                               ; preds = %67
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 2147480) #5
  %75 = load ptr, ptr @pmu_base_addr, align 4
  %76 = getelementptr i8, ptr %75, i32 2312
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #5, !srcloc !9
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %118

79:                                               ; preds = %73
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 2147480) #5
  %81 = load ptr, ptr @pmu_base_addr, align 4
  %82 = getelementptr i8, ptr %81, i32 2312
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #5, !srcloc !9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %118

85:                                               ; preds = %79
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 2147480) #5
  %87 = load ptr, ptr @pmu_base_addr, align 4
  %88 = getelementptr i8, ptr %87, i32 2312
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #5, !srcloc !9
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %118

91:                                               ; preds = %85
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 2147480) #5
  %93 = load ptr, ptr @pmu_base_addr, align 4
  %94 = getelementptr i8, ptr %93, i32 2312
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #5, !srcloc !9
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %91
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 2147480) #5
  %99 = load ptr, ptr @pmu_base_addr, align 4
  %100 = getelementptr i8, ptr %99, i32 2312
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #5, !srcloc !9
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %97
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 2147480) #5
  %105 = load ptr, ptr @pmu_base_addr, align 4
  %106 = getelementptr i8, ptr %105, i32 2312
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #5, !srcloc !9
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 2147480) #5
  %111 = load ptr, ptr @pmu_base_addr, align 4
  %112 = getelementptr i8, ptr %111, i32 2312
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #5, !srcloc !9
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 2147480) #5
  %117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %0, i32 noundef 1) #6
  tail call void @exynos_cpu_power_down(i32 noundef %4) #5
  br label %122

118:                                              ; preds = %109, %103, %97, %91, %85, %79, %73, %67, %61, %55, %49, %43, %37, %31, %25, %20
  %119 = shl nuw nsw i32 1048832, %0
  %120 = load ptr, ptr @pmu_base_addr, align 4
  %121 = getelementptr i8, ptr %120, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #5, !srcloc !8
  br label %122

122:                                              ; preds = %118, %115, %16, %11, %8, %2
  %123 = phi i32 [ -22, %2 ], [ -110, %115 ], [ 0, %118 ], [ 0, %16 ], [ 0, %11 ], [ 0, %8 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_cluster_powerup(i32 noundef %0) #4 {
  %2 = icmp ugt i32 %0, 1
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @exynos_cluster_power_up(i32 noundef %0) #5
  br label %4

4:                                                ; preds = %3, %1
  %5 = phi i32 [ 0, %3 ], [ -22, %1 ]
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_cpu_powerdown_prepare(i32 noundef %0, i32 noundef %1) #4 {
  %3 = icmp ugt i32 %0, 3
  %4 = icmp ugt i32 %1, 1
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %7, !prof !17

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-exynos/mcpm-exynos.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

7:                                                ; preds = %2
  %8 = shl nuw nsw i32 %1, 2
  %9 = add nuw nsw i32 %8, %0
  tail call void @exynos_cpu_power_down(i32 noundef %9) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_cluster_powerdown_prepare(i32 noundef %0) #4 {
  %2 = icmp ugt i32 %0, 1
  br i1 %2, label %3, label %4, !prof !17

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-exynos/mcpm-exynos.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 131, 0\0A.popsection", ""() #5, !srcloc !19
  unreachable

4:                                                ; preds = %1
  tail call void @exynos_cluster_power_down(i32 noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_cpu_cache_disable() #4 {
  %1 = load ptr, ptr @pmu_base_addr, align 4
  %2 = getelementptr i8, ptr %1, i32 2048
  tail call void asm sideeffect "stmfd\09sp!, {fp, ip}\0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR\0A\09bic\09r0, r0, #(1 << 2)\0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR\0A\09isb\0A\09bl\09v7_flush_dcache_louis\0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR\0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency\0A\09ldr\09r4, [$0]\0A\09and\09r4, r4, #0\0A\09orr\09r0, r0, r4\0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR\0A\09isb\0A\09dsb\0A\09ldmfd\09sp!, {fp, ip}", "Ir,~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"(ptr %2) #5, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_cpu_is_up(i32 noundef %0, i32 noundef %1) #4 {
  %3 = tail call i32 @exynos_cpu_powerup(i32 noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_wait_for_powerdown(i32 noundef %0, i32 noundef %1) #4 {
  %3 = shl i32 %1, 2
  %4 = add i32 %3, %0
  %5 = icmp ugt i32 %0, 3
  %6 = icmp ugt i32 %1, 1
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %9, !prof !17

8:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-exynos/mcpm-exynos.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

9:                                                ; preds = %13, %2
  %10 = phi i32 [ %14, %13 ], [ 99, %2 ]
  %11 = tail call i32 @exynos_cpu_power_state(i32 noundef %4) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  tail call void @msleep(i32 noundef 1) #5
  %14 = add nsw i32 %10, -1
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %16, label %9

16:                                               ; preds = %13, %9
  %17 = phi i32 [ 0, %9 ], [ -110, %13 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_cpu_power_state(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cpu_power_up(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cpu_power_down(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cluster_power_up(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cluster_power_down(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cci_disable_port_by_cpu(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_entry_point() #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { naked noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }

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
!8 = !{i64 4576075}
!9 = !{i64 4576493}
!10 = !{i64 5855, i64 5862, i64 5878, i64 5891}
!11 = !{i64 2152357065}
!12 = !{i64 4188, i64 4217, i64 4229}
!13 = !{i64 2152751143, i64 2152751165, i64 2152751211, i64 2152751253, i64 2152751300, i64 2152751313, i64 2152751361, i64 2152751408, i64 2152751465, i64 2152751552, i64 2152751576, i64 2152751600, i64 2152751647, i64 2152751660, i64 2152751673}
!14 = !{i64 2152359679}
!15 = !{i64 2148813407, i64 2148813430, i64 2148813462, i64 2148813494, i64 2148813532, i64 2148813562}
!16 = !{i8 0, i8 2}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2152747943, i64 2152748442, i64 2152747980, i64 2152748036, i64 2152748070, i64 2152748094, i64 2152748135, i64 2152748156, i64 2152748184, i64 2152748218}
!19 = !{i64 2152749553, i64 2152750052, i64 2152749590, i64 2152749646, i64 2152749680, i64 2152749704, i64 2152749745, i64 2152749766, i64 2152749794, i64 2152749828}
!20 = !{i64 2152750328, i64 2152750350, i64 2152750396, i64 2152750438, i64 2152750485, i64 2152750498, i64 2152750546, i64 2152750593, i64 2152750650, i64 2152750737, i64 2152750761, i64 2152750785, i64 2152750832, i64 2152750845, i64 2152750858}
!21 = !{i64 2152752872, i64 2152753371, i64 2152752909, i64 2152752965, i64 2152752999, i64 2152753023, i64 2152753064, i64 2152753085, i64 2152753113, i64 2152753147}
