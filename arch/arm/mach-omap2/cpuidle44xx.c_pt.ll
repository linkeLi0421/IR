; ModuleID = '/llk/IR/arch/arm/mach-omap2/cpuidle44xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/cpuidle44xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.idle_statedata = type { i32, i32, i32, i32 }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }

@omap5_idle_data = internal global [2 x %struct.idle_statedata] [%struct.idle_statedata { i32 3, i32 3, i32 3, i32 0 }, %struct.idle_statedata { i32 1, i32 1, i32 1, i32 0 }], align 4
@state_ptr = internal unnamed_addr global ptr @omap4_idle_data, align 4
@omap4_idle_data = internal global [3 x %struct.idle_statedata] [%struct.idle_statedata { i32 3, i32 1, i32 3, i32 0 }, %struct.idle_statedata { i32 0, i32 1, i32 1, i32 0 }, %struct.idle_statedata { i32 0, i32 0, i32 1, i32 0 }], align 4
@omap4_idle_driver = internal global %struct.cpuidle_driver { ptr @.str.7, ptr null, i8 0, [10 x %struct.cpuidle_state] [%struct.cpuidle_state { [16 x i8] c"C1\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CPUx ON, MPUSS ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 4, i32 0, i32 5, ptr @omap_enter_idle_simple, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C2\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CPUx OFF, MPUSS CSWR\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 2, i32 768, i32 0, i32 960, ptr @omap_enter_idle_coupled, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C3\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CPUx OFF, MPUSS OSWR\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 2, i32 978, i32 0, i32 1100, ptr @omap_enter_idle_coupled, ptr null, ptr null }, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer], i32 3, i32 0, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [10 x i8] c"mpu_pwrdm\00", align 1
@mpu_pd = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"cpu0_pwrdm\00", align 1
@cpu_pd.0 = internal unnamed_addr global ptr null, align 4
@cpu_pd.1 = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"cpu1_pwrdm\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"mpu0_clkdm\00", align 1
@cpu_clkdm.0 = internal unnamed_addr global ptr null, align 4
@cpu_clkdm.1 = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"mpu1_clkdm\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"omap5_idle\00", align 1
@omap5_idle_driver = internal global { ptr, ptr, i8, [7 x i8], <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }>, i32, i32, ptr, ptr } { ptr @.str.5, ptr null, i8 0, [7 x i8] undef, <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }> <{ %struct.cpuidle_state { [16 x i8] c"C1\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CPUx WFI, MPUSS ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 4, i32 0, i32 5, ptr @omap_enter_idle_simple, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C2\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CPUx CSWR, MPUSS CSWR\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 4, i32 108, i32 0, i32 100, ptr @omap_enter_idle_smp, ptr null, ptr null }, [8 x %struct.cpuidle_state] zeroinitializer }>, i32 2, i32 0, ptr null, ptr null }, align 8
@mpu_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"omap4_idle\00", align 1
@cpu_done = internal unnamed_addr global [2 x i8] zeroinitializer, align 1
@pm44xx_errata = external dso_local local_unnamed_addr global i16, align 2
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@abort_barrier = internal global %struct.atomic_t zeroinitializer, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap4_idle_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @omap_rev() #3
  %2 = and i32 %1, 255
  %3 = icmp eq i32 %2, 84
  %4 = select i1 %3, ptr @omap5_idle_data, ptr @omap4_idle_data
  %5 = select i1 %3, ptr @omap5_idle_driver, ptr @omap4_idle_driver
  store ptr %4, ptr @state_ptr, align 4
  %6 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str) #3
  store ptr %6, ptr @mpu_pd, align 4
  %7 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.1) #3
  store ptr %7, ptr @cpu_pd.0, align 4
  %8 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.2) #3
  store ptr %8, ptr @cpu_pd.1, align 4
  %9 = load ptr, ptr @mpu_pd, align 4
  %10 = icmp ne ptr %9, null
  %11 = load ptr, ptr @cpu_pd.0, align 4
  %12 = icmp ne ptr %11, null
  %13 = select i1 %10, i1 %12, i1 false
  %14 = icmp ne ptr %8, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %25

16:                                               ; preds = %0
  %17 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.3) #3
  store ptr %17, ptr @cpu_clkdm.0, align 4
  %18 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.4) #3
  store ptr %18, ptr @cpu_clkdm.1, align 4
  %19 = load ptr, ptr @cpu_clkdm.0, align 4
  %20 = icmp ne ptr %19, null
  %21 = icmp ne ptr %18, null
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = tail call i32 @cpuidle_register(ptr noundef nonnull %5, ptr noundef nonnull @__cpu_online_mask) #3
  br label %25

25:                                               ; preds = %23, %16, %0
  %26 = phi i32 [ %24, %23 ], [ -19, %0 ], [ -19, %16 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwrdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_enter_idle_simple(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef returned %2) #2 {
  tail call void @omap_do_wfi() #3
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_enter_idle_smp(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef returned %2) #2 {
  %4 = load ptr, ptr @state_ptr, align 4
  %5 = getelementptr %struct.idle_statedata, ptr %4, i32 %2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mpu_lock) #3
  %7 = getelementptr %struct.idle_statedata, ptr %4, i32 %2, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = load volatile i32, ptr @__num_online_cpus, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load ptr, ptr @mpu_pd, align 4
  %14 = getelementptr %struct.idle_statedata, ptr %4, i32 %2, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = trunc i32 %15 to i8
  %17 = tail call i32 @pwrdm_set_logic_retst(ptr noundef %13, i8 noundef zeroext %16) #3
  %18 = load ptr, ptr @mpu_pd, align 4
  %19 = getelementptr %struct.idle_statedata, ptr %4, i32 %2, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = trunc i32 %20 to i8
  %22 = tail call i32 @omap_set_pwrdm_state(ptr noundef %18, i8 noundef zeroext %21) #3
  br label %23

23:                                               ; preds = %12, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mpu_lock, i32 noundef %6) #3
  %24 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %5, align 4
  %27 = tail call i32 @omap4_enter_lowpower(i32 noundef %25, i32 noundef %26) #3
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mpu_lock) #3
  %29 = load i32, ptr %7, align 4
  %30 = load volatile i32, ptr @__num_online_cpus, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load ptr, ptr @mpu_pd, align 4
  %34 = tail call i32 @omap_set_pwrdm_state(ptr noundef %33, i8 noundef zeroext 3) #3
  %35 = load i32, ptr %7, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = phi i32 [ %35, %32 ], [ %29, %23 ]
  %38 = add i32 %37, -1
  store i32 %38, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mpu_lock, i32 noundef %28) #3
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_do_wfi() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_set_logic_retst(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_set_pwrdm_state(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_enter_lowpower(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_enter_idle_coupled(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr @state_ptr, align 4
  %5 = getelementptr %struct.idle_statedata, ptr %4, i32 %2
  %6 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = load volatile i32, ptr @__cpu_online_mask, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %17, %9
  %14 = load ptr, ptr @cpu_pd.1, align 4
  %15 = tail call i32 @pwrdm_read_pwrst(ptr noundef %14) #3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !9
  %18 = load i8, ptr getelementptr inbounds ([2 x i8], ptr @cpu_done, i32 0, i32 1), align 1, !range !10
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %13, label %107

20:                                               ; preds = %13, %9, %3
  %21 = getelementptr %struct.idle_statedata, ptr %4, i32 %2, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr %struct.idle_statedata, ptr %4, i32 %2, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ false, %20 ], [ %27, %24 ]
  tail call void @rcu_irq_enter_irqson() #3
  tail call void @tick_broadcast_control(i32 noundef 1) #3
  tail call void @rcu_irq_exit_irqson() #3
  tail call void @rcu_irq_enter_irqson() #3
  %30 = tail call i32 @tick_broadcast_oneshot_control(i32 noundef 1) #3
  tail call void @rcu_irq_exit_irqson() #3
  %31 = tail call i32 @cpu_pm_enter() #3
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %104

33:                                               ; preds = %28
  %34 = load i32, ptr %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  %37 = load ptr, ptr @mpu_pd, align 4
  %38 = getelementptr %struct.idle_statedata, ptr %4, i32 %2, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = trunc i32 %39 to i8
  %41 = tail call i32 @pwrdm_set_logic_retst(ptr noundef %37, i8 noundef zeroext %40) #3
  tail call void @rcu_irq_enter_irqson() #3
  %42 = load ptr, ptr @mpu_pd, align 4
  %43 = load i32, ptr %21, align 4
  %44 = trunc i32 %43 to i8
  %45 = tail call i32 @omap_set_pwrdm_state(ptr noundef %42, i8 noundef zeroext %44) #3
  tail call void @rcu_irq_exit_irqson() #3
  br i1 %29, label %46, label %61

46:                                               ; preds = %36
  %47 = tail call i32 @cpu_cluster_pm_enter() #3
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @state_ptr, align 4
  %51 = load ptr, ptr @mpu_pd, align 4
  %52 = getelementptr inbounds %struct.idle_statedata, ptr %50, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = trunc i32 %53 to i8
  %55 = tail call i32 @pwrdm_set_logic_retst(ptr noundef %51, i8 noundef zeroext %54) #3
  tail call void @rcu_irq_enter_irqson() #3
  %56 = load ptr, ptr @mpu_pd, align 4
  %57 = getelementptr inbounds %struct.idle_statedata, ptr %50, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = trunc i32 %58 to i8
  %60 = tail call i32 @omap_set_pwrdm_state(ptr noundef %56, i8 noundef zeroext %59) #3
  tail call void @rcu_irq_exit_irqson() #3
  br label %61

61:                                               ; preds = %49, %46, %36, %33
  %62 = phi i32 [ 0, %49 ], [ %2, %46 ], [ %2, %36 ], [ %2, %33 ]
  %63 = phi ptr [ %50, %49 ], [ %5, %46 ], [ %5, %36 ], [ %5, %33 ]
  %64 = phi i1 [ false, %49 ], [ true, %46 ], [ false, %36 ], [ %29, %33 ]
  %65 = load i32, ptr %6, align 4
  %66 = load i32, ptr %63, align 4
  %67 = tail call i32 @omap4_enter_lowpower(i32 noundef %65, i32 noundef %66) #3
  %68 = load i32, ptr %6, align 4
  %69 = getelementptr [2 x i8], ptr @cpu_done, i32 0, i32 %68
  store i8 1, ptr %69, align 1
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %61
  %72 = load volatile i32, ptr @__cpu_online_mask, align 4
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %96, label %75

75:                                               ; preds = %71
  %76 = load i16, ptr @pm44xx_errata, align 2
  %77 = and i16 %76, 1
  %78 = icmp ne i16 %77, 0
  %79 = select i1 %78, i1 %64, i1 false
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  tail call void @gic_dist_disable() #3
  br label %81

81:                                               ; preds = %80, %75
  tail call void @rcu_irq_enter_irqson() #3
  %82 = load ptr, ptr @cpu_clkdm.1, align 4
  tail call void @clkdm_deny_idle(ptr noundef %82) #3
  tail call void @rcu_irq_exit_irqson() #3
  tail call void @rcu_irq_enter_irqson() #3
  %83 = load ptr, ptr @cpu_pd.1, align 4
  %84 = tail call i32 @omap_set_pwrdm_state(ptr noundef %83, i8 noundef zeroext 3) #3
  tail call void @rcu_irq_exit_irqson() #3
  tail call void @rcu_irq_enter_irqson() #3
  %85 = load ptr, ptr @cpu_clkdm.1, align 4
  tail call void @clkdm_allow_idle(ptr noundef %85) #3
  tail call void @rcu_irq_exit_irqson() #3
  %86 = load i16, ptr @pm44xx_errata, align 2
  %87 = and i16 %86, 1
  %88 = icmp ne i16 %87, 0
  %89 = select i1 %88, i1 %64, i1 false
  br i1 %89, label %90, label %96

90:                                               ; preds = %81
  %91 = tail call zeroext i1 @gic_dist_disabled() #3
  br i1 %91, label %92, label %95

92:                                               ; preds = %92, %90
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 214748) #3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !12
  %94 = tail call zeroext i1 @gic_dist_disabled() #3
  br i1 %94, label %92, label %95

95:                                               ; preds = %92, %90
  tail call void @gic_timer_retrigger() #3
  br label %96

96:                                               ; preds = %95, %81, %71, %61
  %97 = load i32, ptr %6, align 4
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i1 %64, i1 false
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = tail call i32 @cpu_cluster_pm_exit() #3
  br label %102

102:                                              ; preds = %100, %96
  %103 = tail call i32 @cpu_pm_exit() #3
  br label %104

104:                                              ; preds = %102, %28
  %105 = phi i32 [ %2, %28 ], [ %62, %102 ]
  tail call void @rcu_irq_enter_irqson() #3
  %106 = tail call i32 @tick_broadcast_oneshot_control(i32 noundef 0) #3
  tail call void @rcu_irq_exit_irqson() #3
  br label %107

107:                                              ; preds = %104, %17
  %108 = phi i32 [ %105, %104 ], [ %2, %17 ]
  tail call void @cpuidle_coupled_parallel_barrier(ptr noundef %0, ptr noundef nonnull @abort_barrier) #3
  %109 = load i32, ptr %6, align 4
  %110 = getelementptr [2 x i8], ptr @cpu_done, i32 0, i32 %109
  store i8 0, ptr %110, align 1
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_cluster_pm_enter() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_dist_disable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_deny_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_allow_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gic_dist_disabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_timer_retrigger() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_cluster_pm_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_coupled_parallel_barrier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_broadcast_control(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_broadcast_oneshot_control(i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2154437031}
!9 = !{i64 2154436873}
!10 = !{i8 0, i8 2}
!11 = !{i64 2154438889}
!12 = !{i64 2154438731}
