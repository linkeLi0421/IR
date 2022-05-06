; ModuleID = '/llk/IR/drivers/cpuidle/cpuidle-tegra.c_pt.bc'
source_filename = "../drivers/cpuidle/cpuidle-tegra.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.tegra_cpu_car_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@tegra_idle_driver = internal global %struct.cpuidle_driver { ptr @.str.1, ptr null, i8 0, [10 x %struct.cpuidle_state] [%struct.cpuidle_state { [16 x i8] c"WFI\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ARM WFI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 1, i32 600, i32 1, ptr @arm_cpuidle_simple_enter, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C7\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CPU core powered off\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 4, i32 2000, i32 100, i32 2200, ptr @tegra_cpuidle_enter, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"CC6\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CPU cluster powered off\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 6, i32 5000, i32 0, i32 10000, ptr @tegra_cpuidle_enter, ptr null, ptr null }, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer], i32 3, i32 0, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [66 x i8] c"\016tegra-cpuidle: disabling CC6 state, since PCIe IRQs are in use\0A\00", align 1
@__initcall__kmod_cpuidle_tegra__162_391_tegra_cpuidle_driver_init6 = internal global ptr @tegra_cpuidle_driver_init, section ".initcall6.init", align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"tegra_idle\00", align 1
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@tegra_cpuidle_enter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"\013tegra-cpuidle: failed to enter state %d err: %d\0A\00", align 1
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@tegra_abort_flag = internal global %struct.atomic_t zeroinitializer, align 4
@tegra_idle_barrier = internal global %struct.atomic_t zeroinitializer, align 4
@firmware_ops = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"\013tegra-cpuidle: secondary CPU taking too long to park\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"\013tegra-cpuidle: timed out waiting secondaries to park\0A\00", align 1
@tegra_cpu_car_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"include/linux/clk/tegra.h\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"\013tegra-cpuidle: cpu%lu: online=%d flowctrl_csr=0x%08lx\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@tegra_cpuidle_driver = internal global %struct.platform_driver { ptr @tegra_cpuidle_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"tegra-cpuidle\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_cpuidle_tegra__162_391_tegra_cpuidle_driver_init6], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_cpuidle_pcie_irqs_in_use() local_unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.cpuidle_driver, ptr @tegra_idle_driver, i32 0, i32 3, i32 2, i32 4), align 8
  %2 = and i32 %1, 8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = tail call zeroext i8 @tegra_get_chip_id() #5
  %6 = icmp eq i8 %5, 32
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  tail call void @cpuidle_driver_state_disabled(ptr noundef nonnull @tegra_idle_driver, i32 noundef 2, i1 noundef zeroext true) #5
  br label %9

9:                                                ; preds = %7, %4, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tegra_get_chip_id() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_cpuidle_driver_init() #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_cpuidle_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_cpuidle_simple_enter(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_cpuidle_enter(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = icmp ne i32 %2, 1
  %10 = or i1 %9, %8
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = tail call zeroext i8 @tegra_get_chip_id() #5
  %13 = icmp eq i8 %12, 48
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load volatile i32, ptr @__num_online_cpus, align 4
  %16 = icmp ult i32 %15, 2
  %17 = select i1 %16, i32 2, i32 0
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi i32 [ %17, %14 ], [ %2, %3 ]
  %20 = getelementptr %struct.cpuidle_device, ptr %0, i32 0, i32 7, i32 %19
  %21 = load i64, ptr %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %207

23:                                               ; preds = %11
  %24 = getelementptr %struct.cpuidle_device, ptr %0, i32 0, i32 7, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %37, label %207

27:                                               ; preds = %18
  switch i32 %19, label %37 [
    i32 0, label %28
    i32 2, label %30
  ]

28:                                               ; preds = %27
  %29 = tail call i32 @arm_cpuidle_simple_enter(ptr noundef %0, ptr noundef %1, i32 noundef 0) #5
  br label %193

30:                                               ; preds = %27
  %31 = tail call zeroext i1 @tegra_pending_sgi() #5
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  store volatile i32 1, ptr @tegra_abort_flag, align 4
  br label %33

33:                                               ; preds = %32, %30
  tail call void @cpuidle_coupled_parallel_barrier(ptr noundef %0, ptr noundef nonnull @tegra_idle_barrier) #5
  %34 = load volatile i32, ptr @tegra_abort_flag, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @cpuidle_coupled_parallel_barrier(ptr noundef %0, ptr noundef nonnull @tegra_idle_barrier) #5
  store volatile i32 0, ptr @tegra_abort_flag, align 4
  br label %197

37:                                               ; preds = %33, %27, %23
  %38 = phi i32 [ 2, %33 ], [ 1, %23 ], [ %19, %27 ]
  tail call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #5, !srcloc !8
  tail call void @rcu_irq_enter_irqson() #5
  tail call void @tegra_pm_set_cpu_in_lp2() #5
  tail call void @rcu_irq_exit_irqson() #5
  %39 = tail call i32 @cpu_pm_enter() #5
  switch i32 %38, label %188 [
    i32 1, label %40
    i32 2, label %48
  ]

40:                                               ; preds = %37
  %41 = load ptr, ptr @firmware_ops, align 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call i32 %42(i32 noundef 4) #5
  switch i32 %45, label %188 [
    i32 -38, label %46
    i32 0, label %46
  ]

46:                                               ; preds = %44, %44, %40
  %47 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @tegra30_pm_secondary_cpu_suspend) #5
  br label %188

48:                                               ; preds = %37
  %49 = icmp eq i32 %7, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %48
  %51 = tail call i32 @cpu_suspend(i32 noundef %7, ptr noundef nonnull @tegra_pm_park_secondary_cpu) #5
  br label %188

52:                                               ; preds = %61, %48
  %53 = phi i32 [ %63, %61 ], [ 50000, %48 ]
  %54 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %55 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %54, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %59, !prof !9

58:                                               ; preds = %52
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %61

59:                                               ; preds = %52
  %60 = tail call zeroext i1 %56() #5
  br i1 %60, label %155, label %61

61:                                               ; preds = %59, %58
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 2147480) #5
  %63 = add nsw i32 %53, -1
  %64 = icmp eq i32 %53, 0
  br i1 %64, label %65, label %52

65:                                               ; preds = %61
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  %67 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  %68 = load i32, ptr @nr_cpu_ids, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %70, %65
  %71 = phi i32 [ %82, %70 ], [ %67, %65 ]
  %72 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %71
  %73 = load i32, ptr %72, align 4
  %74 = tail call i32 @flowctrl_read_cpu_csr(i32 noundef %73) #5
  %75 = lshr i32 %71, 5
  %76 = getelementptr i32, ptr @__cpu_online_mask, i32 %75
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %71, 31
  %79 = lshr i32 %77, %78
  %80 = and i32 %79, 1
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %73, i32 noundef %80, i32 noundef %74) #6
  %82 = tail call i32 @cpumask_next(i32 noundef %71, ptr noundef nonnull @__cpu_possible_mask) #7
  %83 = load i32, ptr @nr_cpu_ids, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %70, label %85

85:                                               ; preds = %70, %65
  br label %86

86:                                               ; preds = %95, %85
  %87 = phi i32 [ %97, %95 ], [ 50000, %85 ]
  %88 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %89 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %88, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92, !prof !9

92:                                               ; preds = %86
  %93 = tail call zeroext i1 %90() #5
  br i1 %93, label %155, label %95

94:                                               ; preds = %86
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %95

95:                                               ; preds = %94, %92
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 2147480) #5
  %97 = add nsw i32 %87, -1
  %98 = icmp eq i32 %87, 0
  br i1 %98, label %99, label %86

99:                                               ; preds = %95
  %100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  %101 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  %102 = load i32, ptr @nr_cpu_ids, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %104, %99
  %105 = phi i32 [ %116, %104 ], [ %101, %99 ]
  %106 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %105
  %107 = load i32, ptr %106, align 4
  %108 = tail call i32 @flowctrl_read_cpu_csr(i32 noundef %107) #5
  %109 = lshr i32 %105, 5
  %110 = getelementptr i32, ptr @__cpu_online_mask, i32 %109
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %105, 31
  %113 = lshr i32 %111, %112
  %114 = and i32 %113, 1
  %115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %107, i32 noundef %114, i32 noundef %108) #6
  %116 = tail call i32 @cpumask_next(i32 noundef %105, ptr noundef nonnull @__cpu_possible_mask) #7
  %117 = load i32, ptr @nr_cpu_ids, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %104, label %119

119:                                              ; preds = %104, %99
  br label %120

120:                                              ; preds = %129, %119
  %121 = phi i32 [ %131, %129 ], [ 50000, %119 ]
  %122 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %123 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %122, i32 0, i32 5
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126, !prof !9

126:                                              ; preds = %120
  %127 = tail call zeroext i1 %124() #5
  br i1 %127, label %155, label %129

128:                                              ; preds = %120
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %129

129:                                              ; preds = %128, %126
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 2147480) #5
  %131 = add nsw i32 %121, -1
  %132 = icmp eq i32 %121, 0
  br i1 %132, label %133, label %120

133:                                              ; preds = %129
  %134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  %135 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  %136 = load i32, ptr @nr_cpu_ids, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %138, %133
  %139 = phi i32 [ %150, %138 ], [ %135, %133 ]
  %140 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %139
  %141 = load i32, ptr %140, align 4
  %142 = tail call i32 @flowctrl_read_cpu_csr(i32 noundef %141) #5
  %143 = lshr i32 %139, 5
  %144 = getelementptr i32, ptr @__cpu_online_mask, i32 %143
  %145 = load volatile i32, ptr %144, align 4
  %146 = and i32 %139, 31
  %147 = lshr i32 %145, %146
  %148 = and i32 %147, 1
  %149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %141, i32 noundef %148, i32 noundef %142) #6
  %150 = tail call i32 @cpumask_next(i32 noundef %139, ptr noundef nonnull @__cpu_possible_mask) #7
  %151 = load i32, ptr @nr_cpu_ids, align 4
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %138, label %153

153:                                              ; preds = %138, %133
  %154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %157

155:                                              ; preds = %126, %92, %59
  %156 = tail call i32 @tegra_pm_enter_lp2() #5
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ -110, %153 ], [ %156, %155 ]
  %159 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #7
  %160 = load i32, ptr @nr_cpu_ids, align 4
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %162, label %188

162:                                              ; preds = %184, %157
  %163 = phi i32 [ %185, %184 ], [ %160, %157 ]
  %164 = phi i32 [ %186, %184 ], [ %159, %157 ]
  %165 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %164
  %166 = load i32, ptr %165, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %184, label %168

168:                                              ; preds = %162
  %169 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %170 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %169, i32 0, i32 3
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %174, !prof !9

173:                                              ; preds = %168
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 74, i32 noundef 9, ptr noundef null) #5
  br label %175

174:                                              ; preds = %168
  tail call void %171(i32 noundef %166) #5
  br label %175

175:                                              ; preds = %174, %173
  %176 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %177 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %176, i32 0, i32 2
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %181, !prof !9

180:                                              ; preds = %175
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 66, i32 noundef 9, ptr noundef null) #5
  br label %182

181:                                              ; preds = %175
  tail call void %178(i32 noundef %166) #5
  br label %182

182:                                              ; preds = %181, %180
  tail call void @flowctrl_write_cpu_halt(i32 noundef %166, i32 noundef 0) #5
  %183 = load i32, ptr @nr_cpu_ids, align 4
  br label %184

184:                                              ; preds = %182, %162
  %185 = phi i32 [ %183, %182 ], [ %163, %162 ]
  %186 = tail call i32 @cpumask_next(i32 noundef %164, ptr noundef nonnull @__cpu_online_mask) #7
  %187 = icmp ult i32 %186, %185
  br i1 %187, label %162, label %188

188:                                              ; preds = %184, %157, %50, %46, %44, %37
  %189 = phi i32 [ -22, %37 ], [ %47, %46 ], [ %45, %44 ], [ %51, %50 ], [ %158, %157 ], [ %158, %184 ]
  %190 = tail call i32 @cpu_pm_exit() #5
  tail call void @rcu_irq_enter_irqson() #5
  tail call void @tegra_pm_clear_cpu_in_lp2() #5
  tail call void @rcu_irq_exit_irqson() #5
  tail call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #5, !srcloc !10
  %191 = icmp eq i32 %189, 0
  %192 = select i1 %191, i32 %38, i32 %189
  br label %193

193:                                              ; preds = %188, %28
  %194 = phi i32 [ 0, %28 ], [ %38, %188 ]
  %195 = phi i32 [ %29, %28 ], [ %192, %188 ]
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %193, %36
  %198 = phi i32 [ -4, %36 ], [ %195, %193 ]
  %199 = phi i32 [ 2, %36 ], [ %194, %193 ]
  %200 = icmp ne i32 %198, -4
  %201 = icmp ne i32 %199, 2
  %202 = select i1 %200, i1 true, i1 %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load i1, ptr @tegra_cpuidle_enter.__already_done, align 1
  br i1 %204, label %207, label %205, !prof !11

205:                                              ; preds = %203
  store i1 true, ptr @tegra_cpuidle_enter.__already_done, align 1
  %206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %199, i32 noundef %198) #6
  br label %207

207:                                              ; preds = %205, %203, %197, %193, %23, %18
  %208 = phi i32 [ -1, %18 ], [ -1, %203 ], [ -1, %205 ], [ -1, %197 ], [ %195, %193 ], [ -1, %23 ]
  ret i32 %208
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_pm_set_cpu_in_lp2() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_pm_clear_cpu_in_lp2() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_pending_sgi() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_coupled_parallel_barrier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_pm_secondary_cpu_suspend(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pm_park_secondary_cpu(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pm_enter_lp2() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flowctrl_read_cpu_csr(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flowctrl_write_cpu_halt(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_driver_state_disabled(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_cpuidle_probe(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i32 @tegra_pmc_get_suspend_mode() #5
  %3 = icmp eq i32 %2, 5
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @tegra_pmc_get_suspend_mode() #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @cpuidle_driver_state_disabled(ptr noundef nonnull @tegra_idle_driver, i32 noundef 2, i1 noundef zeroext true) #5
  br label %8

8:                                                ; preds = %7, %4
  %9 = tail call zeroext i8 @tegra_get_chip_id() #5
  switch i8 %9, label %15 [
    i8 32, label %11
    i8 48, label %13
    i8 53, label %10
    i8 64, label %10
  ]

10:                                               ; preds = %8, %8
  store ptr @tegra114_enter_s2idle, ptr getelementptr inbounds (%struct.cpuidle_driver, ptr @tegra_idle_driver, i32 0, i32 3, i32 1, i32 10), align 8
  store i32 1000, ptr getelementptr inbounds (%struct.cpuidle_driver, ptr @tegra_idle_driver, i32 0, i32 3, i32 1, i32 7), align 4
  store i32 500, ptr getelementptr inbounds (%struct.cpuidle_driver, ptr @tegra_idle_driver, i32 0, i32 3, i32 1, i32 5), align 4
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ 2, %10 ], [ 1, %8 ]
  tail call void @cpuidle_driver_state_disabled(ptr noundef nonnull @tegra_idle_driver, i32 noundef %12, i1 noundef zeroext true) #5
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call i32 @cpuidle_register(ptr noundef nonnull @tegra_idle_driver, ptr noundef nonnull @__cpu_possible_mask) #5
  br label %15

15:                                               ; preds = %13, %8, %1
  %16 = phi i32 [ %14, %13 ], [ -517, %1 ], [ -22, %8 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pmc_get_suspend_mode() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra114_enter_s2idle(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @tegra_cpuidle_enter(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readonly willreturn }

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
!8 = !{i64 2151358436}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2151358741}
!11 = !{!"branch_weights", i32 2000, i32 1}
