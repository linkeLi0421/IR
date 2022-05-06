; ModuleID = '/llk/IR/arch/arm/mach-exynos/pm.c_pt.bc'
source_filename = "../arch/arm/mach-exynos/pm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpuidle_exynos_data = type { ptr, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.firmware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@save_arm_register.0 = internal unnamed_addr global i32 0, align 4
@save_arm_register.1 = internal unnamed_addr global i32 0, align 4
@firmware_ops = external dso_local local_unnamed_addr global ptr, align 4
@cpuidle_coupled_exynos_data = dso_local local_unnamed_addr global %struct.cpuidle_exynos_data { ptr @exynos_cpu0_enter_aftr, ptr @exynos_cpu1_powerdown, ptr @exynos_pre_enter_aftr, ptr @exynos_post_enter_aftr }, align 4
@pmu_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@exynos_cpu_id = external dso_local local_unnamed_addr global i32, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@sysram_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@cpu1_wakeup = internal global %struct.atomic_t zeroinitializer, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local void @exynos_cpu_save_register() local_unnamed_addr #0 {
  %1 = tail call i32 asm "mrc p15, 0, $0, c15, c0, 0", "=r,~{cc}"() #6, !srcloc !8
  store i32 %1, ptr @save_arm_register.0, align 4
  %2 = tail call i32 asm "mrc p15, 0, $0, c15, c0, 1", "=r,~{cc}"() #6, !srcloc !9
  store i32 %2, ptr @save_arm_register.1, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos_cpu_restore_register() local_unnamed_addr #2 {
  %1 = load i32, ptr @save_arm_register.0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c15, c0, 0", "r,~{cc}"(i32 %1) #7, !srcloc !10
  %2 = load i32, ptr @save_arm_register.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c15, c0, 1", "r,~{cc}"(i32 %2) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos_pm_central_suspend() local_unnamed_addr #2 {
  %1 = load ptr, ptr @pmu_base_addr, align 4
  %2 = getelementptr i8, ptr %1, i32 512
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !12
  %4 = and i32 %3, -65537
  %5 = load ptr, ptr @pmu_base_addr, align 4
  %6 = getelementptr i8, ptr %5, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos_pm_central_resume() local_unnamed_addr #2 {
  %1 = load ptr, ptr @pmu_base_addr, align 4
  %2 = getelementptr i8, ptr %1, i32 512
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !12
  %4 = and i32 %3, 65536
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = or i32 %3, 65536
  %8 = load ptr, ptr @pmu_base_addr, align 4
  %9 = getelementptr i8, ptr %8, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !13
  %10 = load ptr, ptr @pmu_base_addr, align 4
  %11 = getelementptr i8, ptr %10, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #7, !srcloc !13
  br label %12

12:                                               ; preds = %6, %0
  %13 = phi i32 [ -1, %6 ], [ 0, %0 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos_enter_aftr() local_unnamed_addr #2 {
  %1 = tail call ptr @llvm.thread.pointer() #7
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = tail call i32 @cpu_pm_enter() #7
  %5 = load i32, ptr @exynos_cpu_id, align 4
  %6 = and i32 %5, -4096
  %7 = icmp eq i32 %6, -481878016
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  tail call void @exynos_set_boot_flag(i32 noundef %3, i32 noundef 8) #7
  br label %9

9:                                                ; preds = %8, %0
  %10 = load ptr, ptr @pmu_base_addr, align 4
  %11 = getelementptr i8, ptr %10, i32 512
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !12
  %13 = and i32 %12, -65537
  %14 = load ptr, ptr @pmu_base_addr, align 4
  %15 = getelementptr i8, ptr %14, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #7, !srcloc !13
  %16 = load i32, ptr @exynos_cpu_id, align 4
  %17 = and i32 %16, -131072
  %18 = icmp eq i32 %17, -465567744
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = load ptr, ptr @pmu_base_addr, align 4
  %21 = getelementptr i8, ptr %20, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 16842752) #7, !srcloc !13
  br label %22

22:                                               ; preds = %19, %9
  %23 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @exynos_aftr_finisher) #7
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #6, !srcloc !14
  %25 = and i32 %24, -16711696
  %26 = icmp eq i32 %25, 1090568336
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  tail call void @exynos_scu_enable() #7
  %28 = load ptr, ptr @firmware_ops, align 4
  %29 = getelementptr inbounds %struct.firmware_ops, ptr %28, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = tail call i32 %30() #7
  %34 = icmp eq i32 %33, -38
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %27
  %36 = load i32, ptr @save_arm_register.0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c15, c0, 0", "r,~{cc}"(i32 %36) #7, !srcloc !10
  %37 = load i32, ptr @save_arm_register.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c15, c0, 1", "r,~{cc}"(i32 %37) #7, !srcloc !11
  br label %38

38:                                               ; preds = %35, %32, %22
  %39 = load ptr, ptr @pmu_base_addr, align 4
  %40 = getelementptr i8, ptr %39, i32 512
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #7, !srcloc !12
  %42 = and i32 %41, 65536
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = or i32 %41, 65536
  %46 = load ptr, ptr @pmu_base_addr, align 4
  %47 = getelementptr i8, ptr %46, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #7, !srcloc !13
  %48 = load ptr, ptr @pmu_base_addr, align 4
  %49 = getelementptr i8, ptr %48, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 0) #7, !srcloc !13
  br label %50

50:                                               ; preds = %44, %38
  %51 = load i32, ptr @exynos_cpu_id, align 4
  %52 = and i32 %51, -4096
  %53 = icmp eq i32 %52, -481878016
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  tail call void @exynos_clear_boot_flag(i32 noundef %3, i32 noundef 8) #7
  br label %55

55:                                               ; preds = %54, %50
  %56 = tail call i32 @cpu_pm_exit() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_set_boot_flag(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_aftr_finisher(i32 noundef %0) #2 {
  %2 = load i32, ptr @exynos_cpu_id, align 4
  %3 = and i32 %2, -4096
  %4 = icmp eq i32 %3, -481878016
  %5 = select i1 %4, i32 1073758206, i32 65342
  %6 = load ptr, ptr @pmu_base_addr, align 4
  %7 = getelementptr i8, ptr %6, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !13
  %8 = load i32, ptr @exynos_cpu_id, align 4
  %9 = and i32 %8, -4096
  %10 = icmp eq i32 %9, -481878016
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load ptr, ptr @pmu_base_addr, align 4
  %13 = getelementptr i8, ptr %12, i32 1556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #7, !srcloc !13
  br label %14

14:                                               ; preds = %11, %1
  tail call void @exynos_sys_powerdown_conf(i32 noundef 0) #7
  %15 = load ptr, ptr @firmware_ops, align 4
  %16 = getelementptr inbounds %struct.firmware_ops, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = tail call i32 %17(i32 noundef 1) #7
  %21 = icmp eq i32 %20, -38
  br i1 %21, label %22, label %57

22:                                               ; preds = %19, %14
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #6, !srcloc !14
  %24 = and i32 %23, -16711696
  %25 = icmp eq i32 %24, 1090568336
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = tail call i32 asm "mrc p15, 0, $0, c15, c0, 0", "=r,~{cc}"() #6, !srcloc !8
  store i32 %27, ptr @save_arm_register.0, align 4
  %28 = tail call i32 asm "mrc p15, 0, $0, c15, c0, 1", "=r,~{cc}"() #6, !srcloc !9
  store i32 %28, ptr @save_arm_register.1, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @exynos_cpu_resume to i32), i32 -2130706432, i32 8454144) #6, !srcloc !15
  %31 = tail call i32 @exynos_rev() #7
  %32 = icmp eq i32 %31, 17
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @exynos_rev() #7
  %35 = icmp eq i32 %34, 16
  %36 = select i1 %35, ptr @sysram_base_addr, ptr @pmu_base_addr
  %37 = select i1 %35, i32 36, i32 2048
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi ptr [ @pmu_base_addr, %29 ], [ %36, %33 ]
  %40 = phi i32 [ 2076, %29 ], [ %37, %33 ]
  %41 = load ptr, ptr %39, align 4
  %42 = getelementptr i8, ptr %41, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %30) #7, !srcloc !13
  %43 = tail call i32 @exynos_rev() #7
  %44 = icmp eq i32 %43, 17
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = tail call i32 @exynos_rev() #7
  %47 = icmp eq i32 %46, 16
  %48 = select i1 %47, ptr @sysram_base_addr, ptr @pmu_base_addr
  %49 = select i1 %47, i32 32, i32 2052
  br label %50

50:                                               ; preds = %45, %38
  %51 = phi ptr [ @pmu_base_addr, %38 ], [ %48, %45 ]
  %52 = phi i32 [ 2072, %38 ], [ %49, %45 ]
  %53 = load ptr, ptr %51, align 4
  %54 = getelementptr i8, ptr %53, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 -54915824) #7, !srcloc !13
  %55 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %56 = tail call i32 %55() #7
  br label %57

57:                                               ; preds = %50, %19
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_scu_enable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_clear_boot_flag(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_cpu0_enter_aftr() #2 {
  %1 = alloca i32, align 4
  %2 = load volatile i32, ptr @__cpu_online_mask, align 4
  %3 = and i32 %2, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %0
  %6 = call i32 @exynos_cpu_power_state(i32 noundef 1) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %19, %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #7
  store i32 0, ptr %1, align 4, !annotation !16
  %9 = load volatile i32, ptr @cpu1_wakeup, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = call i32 @exynos_get_boot_addr(i32 noundef 1, ptr noundef nonnull %1) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #7
  br label %75

15:                                               ; preds = %11
  %16 = load i32, ptr %1, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #7
  br label %23

19:                                               ; preds = %15
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #7
  %20 = call i32 @exynos_cpu_power_state(i32 noundef 1) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %8

22:                                               ; preds = %19, %5, %0
  call void @exynos_enter_aftr()
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ 0, %22 ], [ -1, %18 ]
  %25 = load volatile i32, ptr @__cpu_online_mask, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %75, label %28

28:                                               ; preds = %23
  %29 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @exynos_cpu_resume to i32), i32 -2130706432, i32 8454144) #6, !srcloc !15
  %30 = call i32 @exynos_set_boot_addr(i32 noundef 1, i32 noundef %29) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %75

32:                                               ; preds = %28
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  call void @exynos_cpu_power_up(i32 noundef 1) #7
  %33 = call i32 @exynos_cpu_power_state(i32 noundef 1) #7
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %38, label %35

35:                                               ; preds = %35, %32
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !21
  %36 = call i32 @exynos_cpu_power_state(i32 noundef 1) #7
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %35

38:                                               ; preds = %35, %32
  %39 = load i32, ptr @exynos_cpu_id, align 4
  %40 = and i32 %39, -4096
  %41 = icmp eq i32 %40, -481878016
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load ptr, ptr @pmu_base_addr, align 4
  %44 = getelementptr i8, ptr %43, i32 2312
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7, !srcloc !12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %50, %42
  %48 = load volatile i32, ptr @cpu1_wakeup, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !23
  %51 = load ptr, ptr @pmu_base_addr, align 4
  %52 = getelementptr i8, ptr %51, i32 2312
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #7, !srcloc !12
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %47, label %55

55:                                               ; preds = %50, %47, %42
  %56 = load volatile i32, ptr @cpu1_wakeup, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  call void @exynos_core_restart(i32 noundef 1) #7
  br label %59

59:                                               ; preds = %58, %55, %38
  %60 = load volatile i32, ptr @cpu1_wakeup, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %72, %59
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  %63 = call i32 @exynos_set_boot_addr(i32 noundef 1, i32 noundef %29) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load ptr, ptr @firmware_ops, align 4
  %67 = getelementptr inbounds %struct.firmware_ops, ptr %66, i32 0, i32 4
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = call i32 %68(i32 noundef 1) #7
  br label %72

72:                                               ; preds = %70, %65
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !26
  %73 = load volatile i32, ptr @cpu1_wakeup, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %62, label %75

75:                                               ; preds = %72, %62, %59, %28, %23, %14
  %76 = phi i32 [ %24, %23 ], [ %30, %28 ], [ %12, %14 ], [ 0, %59 ], [ 0, %72 ], [ %63, %62 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_cpu1_powerdown() #2 {
  %1 = tail call i32 @cpu_pm_enter() #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  tail call void @exynos_cpu_power_down(i32 noundef 1) #7
  %4 = load i32, ptr @exynos_cpu_id, align 4
  %5 = and i32 %4, -4096
  %6 = icmp eq i32 %5, -481878016
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @pmu_base_addr, align 4
  %9 = getelementptr i8, ptr %8, i32 2312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #7, !srcloc !13
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @exynos_wfi_finisher) #7
  %12 = tail call i32 @cpu_pm_exit() #7
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i32 [ -1, %0 ], [ %11, %10 ]
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  store volatile i32 1, ptr @cpu1_wakeup, align 4
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_pre_enter_aftr() #2 {
  %1 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @exynos_cpu_resume to i32), i32 -2130706432, i32 8454144) #6, !srcloc !15
  %2 = tail call i32 @exynos_set_boot_addr(i32 noundef 1, i32 noundef %1) #7
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_post_enter_aftr() #4 {
  store volatile i32 0, ptr @cpu1_wakeup, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_sys_powerdown_conf(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cpu_resume() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_rev() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_cpu_power_state(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_get_boot_addr(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_set_boot_addr(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cpu_power_up(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_core_restart(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cpu_power_down(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_wfi_finisher(i32 noundef %0) #2 {
  %2 = load i32, ptr @exynos_cpu_id, align 4
  %3 = and i32 %2, -4096
  %4 = icmp eq i32 %3, -481878016
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %6() #7
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %9 = tail call i32 %8() #7
  ret i32 -1
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }

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
!8 = !{i64 1373}
!9 = !{i64 1501}
!10 = !{i64 1738}
!11 = !{i64 1887}
!12 = !{i64 4177118}
!13 = !{i64 4176700}
!14 = !{i64 2153498362}
!15 = !{i64 2148640619, i64 2148640642, i64 2148640674, i64 2148640706, i64 2148640744, i64 2148640774}
!16 = !{!"auto-init"}
!17 = !{i64 2153513393}
!18 = !{i64 2153513235}
!19 = !{i64 2153514118}
!20 = !{i64 2153514368}
!21 = !{i64 2153514210}
!22 = !{i64 2153514648}
!23 = !{i64 2153514490}
!24 = !{i64 2153514787}
!25 = !{i64 2148866947}
!26 = !{i64 2148867022, i64 2148867049, i64 2148867096, i64 2148867118, i64 2148867146, i64 2148867166}
!27 = !{i64 2153515081}
