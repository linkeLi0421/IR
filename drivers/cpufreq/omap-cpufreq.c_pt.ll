; ModuleID = '/llk/IR/drivers/cpufreq/omap-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/omap-cpufreq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpumask = type { [1 x i32] }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }

@__initcall__kmod_omap_cpufreq__259_197_omap_cpufreq_platdrv_init6 = internal global ptr @omap_cpufreq_platdrv_init, section ".initcall6.init", align 4
@omap_cpufreq_platdrv = internal global %struct.platform_driver { ptr @omap_cpufreq_probe, ptr @omap_cpufreq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_omap_cpufreq_platdrv_exit = internal global ptr @omap_cpufreq_platdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description260 = internal constant [54 x i8] c"omap_cpufreq.description=cpufreq driver for OMAP SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_file261 = internal constant [47 x i8] c"omap_cpufreq.file=drivers/cpufreq/omap-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [25 x i8] c"omap_cpufreq.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"omap-cpufreq\00", align 1
@mpu_dev = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"\014omap_cpufreq: %s: unable to get the MPU device\0A\00", align 1
@__func__.omap_cpufreq_probe = private unnamed_addr constant [19 x i8] c"omap_cpufreq_probe\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@mpu_reg = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"\014omap_cpufreq: %s: unable to get MPU regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"\014omap_cpufreq: %s: physical regulator not present for MPU\0A\00", align 1
@omap_driver = internal global %struct.cpufreq_driver { [16 x i8] c"omap\00\00\00\00\00\00\00\00\00\00\00\00", i16 32, ptr null, ptr @omap_cpu_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @omap_target, ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_generic_get, ptr null, ptr null, ptr null, ptr null, ptr @omap_cpu_exit, ptr null, ptr null, ptr null, ptr @cpufreq_generic_attr, i8 0, ptr null, ptr @cpufreq_register_em_with_opp }, align 4
@cpufreq_generic_attr = external dso_local global [0 x ptr], align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"cpufreq_ck\00", align 1
@freq_table = internal global ptr null, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"%s: cpu%d: failed creating freq table[%d]\0A\00", align 1
@__func__.omap_cpu_init = private unnamed_addr constant [14 x i8] c"omap_cpu_init\00", align 1
@freq_table_users = internal global %struct.atomic_t zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"CPUfreq: Cannot find matching frequency for %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"%s: unable to find MPU OPP for %d\0A\00", align 1
@__func__.omap_target = private unnamed_addr constant [12 x i8] c"omap_target\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"%s: unable to scale voltage up.\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"%s: unable to scale voltage down.\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__exitcall_omap_cpufreq_platdrv_exit, ptr @__initcall__kmod_omap_cpufreq__259_197_omap_cpufreq_platdrv_init6, ptr @omap_cpufreq_platdrv_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap_cpufreq_platdrv_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_cpufreq_platdrv, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap_cpufreq_platdrv_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_cpufreq_platdrv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_cpufreq_probe(ptr nocapture noundef readnone %0) #2 {
  %2 = tail call ptr @get_cpu_device(i32 noundef 0) #6
  store ptr %2, ptr @mpu_dev, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_cpufreq_probe) #7
  br label %20

6:                                                ; preds = %1
  %7 = tail call ptr @regulator_get(ptr noundef nonnull %2, ptr noundef nonnull @.str.2) #6
  store ptr %7, ptr @mpu_reg, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.omap_cpufreq_probe) #7
  br label %17

11:                                               ; preds = %6
  %12 = tail call i32 @regulator_get_voltage(ptr noundef %7) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.omap_cpufreq_probe) #7
  %16 = load ptr, ptr @mpu_reg, align 4
  tail call void @regulator_put(ptr noundef %16) #6
  br label %17

17:                                               ; preds = %14, %9
  store ptr null, ptr @mpu_reg, align 4
  br label %18

18:                                               ; preds = %17, %11
  %19 = tail call i32 @cpufreq_register_driver(ptr noundef nonnull @omap_driver) #6
  br label %20

20:                                               ; preds = %18, %4
  %21 = phi i32 [ %19, %18 ], [ -22, %4 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_cpufreq_remove(ptr nocapture noundef readnone %0) #2 {
  %2 = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @omap_driver) #6
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_cpu_init(ptr noundef %0) #2 {
  %2 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.5) #6
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 5
  store ptr %2, ptr %3, align 4
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = ptrtoint ptr %2 to i32
  br label %22

7:                                                ; preds = %1
  %8 = load ptr, ptr @freq_table, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load ptr, ptr @mpu_dev, align 4
  %12 = tail call i32 @dev_pm_opp_init_cpufreq_table(ptr noundef %11, ptr noundef nonnull @freq_table) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @mpu_dev, align 4
  %16 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.omap_cpu_init, i32 noundef %17, i32 noundef %12) #7
  %18 = load ptr, ptr %3, align 4
  tail call void @clk_put(ptr noundef %18) #6
  br label %22

19:                                               ; preds = %10, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @freq_table_users) #6, !srcloc !9
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @freq_table_users, ptr nonnull @freq_table_users, i32 1, ptr nonnull elementtype(i32) @freq_table_users) #6, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  %21 = load ptr, ptr @freq_table, align 4
  tail call void @cpufreq_generic_init(ptr noundef %0, ptr noundef %21, i32 noundef 300000) #6
  br label %22

22:                                               ; preds = %19, %14, %5
  %23 = phi i32 [ %6, %5 ], [ 0, %19 ], [ %12, %14 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_target(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr @freq_table, align 4
  %7 = getelementptr %struct.cpufreq_frequency_table, ptr %6, i32 %1, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = mul i32 %8, 1000
  %10 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_round_rate(ptr noundef %11, i32 noundef %9) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load ptr, ptr @mpu_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.7, i32 noundef %9) #7
  br label %61

16:                                               ; preds = %2
  store i32 %12, ptr %3, align 4
  %17 = load ptr, ptr @mpu_reg, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr @mpu_dev, align 4
  %21 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %20, ptr noundef nonnull %3) #6
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load ptr, ptr @mpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.omap_target, i32 noundef %8) #7
  br label %61

25:                                               ; preds = %19
  %26 = call i32 @dev_pm_opp_get_voltage(ptr noundef %21) #6
  call void @dev_pm_opp_put(ptr noundef %21) #6
  %27 = shl i32 %26, 2
  %28 = udiv i32 %27, 100
  %29 = load ptr, ptr @mpu_reg, align 4
  %30 = call i32 @regulator_get_voltage(ptr noundef %29) #6
  %31 = load ptr, ptr @mpu_reg, align 4
  %32 = icmp ne ptr %31, null
  %33 = icmp ugt i32 %8, %5
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = sub i32 %26, %28
  %37 = add i32 %28, %26
  %38 = call i32 @regulator_set_voltage(ptr noundef nonnull %31, i32 noundef %36, i32 noundef %37) #6
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load ptr, ptr @mpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.omap_target) #7
  br label %61

42:                                               ; preds = %35, %25, %16
  %43 = phi i32 [ %28, %35 ], [ %28, %25 ], [ 0, %16 ]
  %44 = phi i32 [ %26, %35 ], [ %26, %25 ], [ 0, %16 ]
  %45 = load ptr, ptr %10, align 4
  %46 = call i32 @clk_set_rate(ptr noundef %45, i32 noundef %9) #6
  %47 = load ptr, ptr @mpu_reg, align 4
  %48 = icmp ne ptr %47, null
  %49 = icmp ult i32 %8, %5
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %61

51:                                               ; preds = %42
  %52 = sub i32 %44, %43
  %53 = add i32 %43, %44
  %54 = call i32 @regulator_set_voltage(ptr noundef nonnull %47, i32 noundef %52, i32 noundef %53) #6
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load ptr, ptr @mpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.omap_target) #7
  %58 = load ptr, ptr %10, align 4
  %59 = mul i32 %5, 1000
  %60 = call i32 @clk_set_rate(ptr noundef %58, i32 noundef %59) #6
  br label %61

61:                                               ; preds = %56, %51, %42, %40, %23, %14
  %62 = phi i32 [ %12, %14 ], [ -22, %23 ], [ %38, %40 ], [ %54, %56 ], [ %46, %51 ], [ %46, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_get(i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_cpu_exit(ptr nocapture noundef readonly %0) #2 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @freq_table_users) #6, !srcloc !9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @freq_table_users, ptr nonnull @freq_table_users, i32 1, ptr nonnull elementtype(i32) @freq_table_users) #6, !srcloc !13
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr @mpu_dev, align 4
  tail call void @dev_pm_opp_free_cpufreq_table(ptr noundef %6, ptr noundef nonnull @freq_table) #6
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_put(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpufreq_register_em_with_opp(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = tail call ptr @get_cpu_device(i32 noundef %3) #6
  %5 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 1
  %6 = tail call i32 @dev_pm_opp_of_register_em(ptr noundef %4, ptr noundef %5) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_init_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_generic_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_ceil(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_free_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_register_em(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i64 2148013362}
!9 = !{i64 413357, i64 2147903328, i64 2147903354, i64 2147903401, i64 2147903423, i64 2147903451, i64 2147903471}
!10 = !{i64 2147916224, i64 2147916256, i64 2147916285, i64 2147916319, i64 2147916350, i64 2147916373}
!11 = !{i64 2148013565}
!12 = !{i64 2148016195}
!13 = !{i64 2147918581, i64 2147918613, i64 2147918642, i64 2147918676, i64 2147918707, i64 2147918730}
!14 = !{i64 2148016398}
