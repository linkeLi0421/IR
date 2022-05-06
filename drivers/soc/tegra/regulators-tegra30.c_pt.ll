; ModuleID = '/llk/IR/drivers/soc/tegra/regulators-tegra30.c_pt.bc'
source_filename = "../drivers/soc/tegra/regulators-tegra30.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_regulator_coupler = type { %struct.regulator_coupler, ptr, ptr, %struct.notifier_block, %struct.notifier_block, i32, i32, i8, i8, i8, i8 }
%struct.regulator_coupler = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__initcall__kmod_regulators_tegra30__282_534_tegra_regulator_coupler_init3 = internal global ptr @tegra_regulator_coupler_init, section ".initcall3.init", align 4
@.str = private unnamed_addr constant [15 x i8] c"nvidia,tegra30\00", align 1
@tegra30_coupler = internal global %struct.tegra_regulator_coupler { %struct.regulator_coupler { %struct.list_head zeroinitializer, ptr @tegra30_regulator_attach, ptr @tegra30_regulator_detach, ptr @tegra30_regulator_balance_voltage }, ptr null, ptr null, %struct.notifier_block { ptr @tegra30_regulator_reboot, ptr null, i32 0 }, %struct.notifier_block { ptr @tegra30_regulator_suspend, ptr null, i32 0 }, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"drivers/soc/tegra/regulators-tegra30.c\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"nvidia,tegra-core-regulator\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"nvidia,tegra-cpu-regulator\00", align 1
@tegra30_regulator_detach.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"\013tegra voltage-coupler: regulators are not coupled properly\0A\00", align 1
@tegra30_voltage_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"\013tegra voltage-coupler: cpu-core max-spread is undefined in device-tree\0A\00", align 1
@tegra30_voltage_update.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"\013tegra voltage-coupler: cpu max-step is undefined in device-tree\0A\00", align 1
@tegra30_voltage_update.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"\013tegra voltage-coupler: core max-step is undefined in device-tree\0A\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"\013tegra voltage-coupler: core voltage constraint violated: %d %d %d\0A\00", align 1
@tegra30_core_limit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"\016tegra voltage-coupler: voltage state synced\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"\016tegra voltage-coupler: core voltage initialized to %duV\0A\00", align 1
@tegra_sku_info = external dso_local local_unnamed_addr global %struct.tegra_sku_info, align 4
@.str.13 = private unnamed_addr constant [59 x i8] c"\013tegra voltage-coupler: failed to prepare regulators: %d\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_regulators_tegra30__282_534_tegra_regulator_coupler_init3], section "llvm.metadata"
@switch.table.tegra30_regulator_balance_voltage.15 = private unnamed_addr constant [9 x i32] [i32 1200000, i32 1200000, i32 1300000, i32 1300000, i32 1200000, i32 1300000, i32 1300000, i32 1200000, i32 1200000], align 4
@switch.table.tegra30_cpu_nominal_uV = private unnamed_addr constant [13 x i32] [i32 1050000, i32 1050000, i32 1050000, i32 1237000, i32 1237000, i32 1237000, i32 1050000, i32 1050000, i32 912000, i32 850000, i32 850000, i32 1237000, i32 1237000], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_regulator_coupler_init() #0 section ".init.text" {
  %1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @register_reboot_notifier(ptr noundef getelementptr inbounds (%struct.tegra_regulator_coupler, ptr @tegra30_coupler, i32 0, i32 3)) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 527, i32 noundef 9, ptr noundef null) #7
  br label %7

7:                                                ; preds = %6, %3
  %8 = tail call i32 @register_pm_notifier(ptr noundef getelementptr inbounds (%struct.tegra_regulator_coupler, ptr @tegra30_coupler, i32 0, i32 4)) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !8

10:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 530, i32 noundef 9, ptr noundef null) #7
  br label %11

11:                                               ; preds = %10, %7
  %12 = tail call i32 @regulator_coupler_register(ptr noundef nonnull @tegra30_coupler) #7
  br label %13

13:                                               ; preds = %11, %0
  %14 = phi i32 [ %12, %11 ], [ 0, %0 ]
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_coupler_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra30_regulator_attach(ptr nocapture noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %1, i32 0, i32 13, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef null) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7, %2
  %12 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef null) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %7
  %19 = phi ptr [ %8, %7 ], [ %15, %14 ]
  store ptr %1, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %14, %11
  %21 = phi i32 [ -22, %14 ], [ -22, %11 ], [ 0, %18 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra30_regulator_detach(ptr nocapture noundef %0, ptr noundef readnone %1) #3 {
  %3 = load i32, ptr @system_state, align 4
  %4 = icmp ugt i32 %3, 3
  %5 = load i1, ptr @tegra30_regulator_detach.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %2
  store i1 true, ptr @tegra30_regulator_detach.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 493, i32 noundef 9, ptr noundef null) #7
  br label %9

9:                                                ; preds = %8, %2
  br i1 %4, label %20, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %10
  %19 = phi ptr [ %11, %10 ], [ %15, %14 ]
  store ptr null, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %14, %9
  %21 = phi i32 [ -1, %9 ], [ -22, %14 ], [ 0, %18 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra30_regulator_balance_voltage(ptr noundef %0, ptr noundef readnone %1, i32 noundef %2) #3 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %12, %1
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = icmp ne ptr %14, %1
  %18 = icmp ne i32 %2, 0
  %19 = or i1 %18, %17
  br i1 %19, label %22, label %24

20:                                               ; preds = %3
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %20, %16
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %270

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 7
  %26 = load volatile i8, ptr %25, align 4, !range !10
  %27 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 8
  store i8 %26, ptr %27, align 1
  %28 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 9
  %29 = load volatile i8, ptr %28, align 2, !range !10
  %30 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 10
  store i8 %29, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 2147483647, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 2147483647, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  store i32 0, ptr %10, align 4
  %31 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 14
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.regulation_constraints, ptr %32, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.regulation_constraints, ptr %32, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.regulator_dev, ptr %12, i32 0, i32 14
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.regulation_constraints, ptr %39, i32 0, i32 9
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %35, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %24
  %44 = load i1, ptr @tegra30_voltage_update.__already_done, align 1
  br i1 %44, label %47, label %45, !prof !8

45:                                               ; preds = %43
  store i1 true, ptr @tegra30_voltage_update.__already_done, align 1
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %47

47:                                               ; preds = %45, %43, %24
  %48 = phi i32 [ %35, %24 ], [ 300000, %45 ], [ 300000, %43 ]
  %49 = icmp eq i32 %37, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i1, ptr @tegra30_voltage_update.__already_done.6, align 1
  br i1 %51, label %54, label %52, !prof !8

52:                                               ; preds = %50
  store i1 true, ptr @tegra30_voltage_update.__already_done.6, align 1
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %54

54:                                               ; preds = %52, %50, %47
  %55 = phi i32 [ %37, %47 ], [ 150000, %52 ], [ 150000, %50 ]
  %56 = icmp eq i32 %41, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i1, ptr @tegra30_voltage_update.__already_done.8, align 1
  br i1 %58, label %61, label %59, !prof !8

59:                                               ; preds = %57
  store i1 true, ptr @tegra30_voltage_update.__already_done.8, align 1
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %61

61:                                               ; preds = %59, %57, %54
  %62 = phi i32 [ %41, %54 ], [ 150000, %59 ], [ 150000, %57 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %63 = tail call zeroext i1 @tegra_pmc_core_domain_state_synced() #7
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i8, ptr %27, align 1, !range !10
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i1, ptr @tegra30_core_limit.__already_done, align 1
  br i1 %68, label %87, label %69, !prof !8

69:                                               ; preds = %67
  store i1 true, ptr @tegra30_core_limit.__already_done, align 1
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  br label %87

71:                                               ; preds = %64, %61
  %72 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %71
  %76 = tail call i32 @regulator_get_voltage_rdev(ptr noundef %12) #7
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %268

79:                                               ; preds = %75
  %80 = tail call i32 @llvm.smax.i32(i32 %76, i32 1200000) #7
  store i32 %80, ptr %5, align 4
  %81 = call i32 @regulator_check_voltage(ptr noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, ptr %5, align 4
  store i32 %84, ptr %72, align 4
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %84) #8
  %86 = load i32, ptr %72, align 4
  br label %89

87:                                               ; preds = %71, %69, %67
  %88 = phi i32 [ %73, %71 ], [ 0, %67 ], [ 0, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  store i32 %88, ptr %6, align 4
  br label %92

89:                                               ; preds = %83, %79
  %90 = phi i32 [ %86, %83 ], [ %81, %79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  store i32 %90, ptr %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %268, label %92

92:                                               ; preds = %89, %87
  %93 = call i32 @regulator_check_consumers(ptr noundef %12, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0) #7
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %268

95:                                               ; preds = %92
  %96 = load i8, ptr %30, align 1, !range !10
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %117, label %98

98:                                               ; preds = %95
  %99 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6), align 4
  switch i32 %99, label %110 [
    i32 0, label %111
    i32 1, label %102
    i32 2, label %100
  ]

100:                                              ; preds = %98
  %101 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2), align 4
  br label %106

102:                                              ; preds = %98
  %103 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2), align 4
  %104 = add i32 %103, -9
  %105 = icmp ult i32 %104, -2
  br i1 %105, label %111, label %106

106:                                              ; preds = %102, %100
  %107 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %108 = icmp eq i32 %107, 13
  %109 = select i1 %108, i32 1350000, i32 1300000
  br label %111

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110, %106, %102, %98
  %112 = phi i32 [ 1250000, %110 ], [ 1200000, %98 ], [ 1200000, %102 ], [ %109, %106 ]
  %113 = load i32, ptr %6, align 4
  %114 = call i32 @llvm.smax.i32(i32 %112, i32 %113) #7
  %115 = load i32, ptr %7, align 4
  %116 = call i32 @llvm.smin.i32(i32 %114, i32 %115) #7
  store i32 %116, ptr %6, align 4
  br label %117

117:                                              ; preds = %111, %95
  %118 = call i32 @regulator_get_voltage_rdev(ptr noundef %12) #7
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %268, label %120

120:                                              ; preds = %117
  %121 = load i32, ptr %6, align 4
  %122 = sub i32 %121, %48
  store i32 %122, ptr %8, align 4
  %123 = call i32 @regulator_check_consumers(ptr noundef %14, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 0) #7
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %268

125:                                              ; preds = %120
  %126 = call i32 @regulator_check_consumers(ptr noundef %14, ptr noundef nonnull %10, ptr noundef nonnull %9, i32 noundef 0) #7
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %268

128:                                              ; preds = %125
  %129 = call i32 @regulator_check_voltage(ptr noundef %14, ptr noundef nonnull %8, ptr noundef nonnull %9) #7
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %268

131:                                              ; preds = %128
  %132 = call i32 @regulator_get_voltage_rdev(ptr noundef %14) #7
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %268, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 6
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i32 %132, ptr %135, align 4
  br label %139

139:                                              ; preds = %138, %134
  %140 = load i32, ptr %10, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, ptr %8, align 4
  %144 = call i32 @llvm.smax.i32(i32 %132, i32 %143) #7
  store i32 %144, ptr %8, align 4
  br label %145

145:                                              ; preds = %142, %139
  %146 = icmp ult i32 %132, 800000
  br i1 %146, label %161, label %147

147:                                              ; preds = %145
  %148 = icmp ult i32 %132, 900000
  br i1 %148, label %161, label %149

149:                                              ; preds = %147
  %150 = icmp ult i32 %132, 1000000
  br i1 %150, label %161, label %151

151:                                              ; preds = %149
  %152 = icmp ult i32 %132, 1100000
  br i1 %152, label %161, label %153

153:                                              ; preds = %151
  %154 = icmp ult i32 %132, 1250000
  br i1 %154, label %155, label %268

155:                                              ; preds = %153
  %156 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2), align 4
  %157 = icmp ult i32 %156, 9
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = getelementptr inbounds [9 x i32], ptr @switch.table.tegra30_regulator_balance_voltage.15, i32 0, i32 %156
  %160 = load i32, ptr %159, align 4
  br label %161

161:                                              ; preds = %158, %155, %151, %149, %147, %145
  %162 = phi i32 [ 1200000, %151 ], [ 1100000, %149 ], [ 1000000, %147 ], [ 950000, %145 ], [ %160, %158 ], [ 1300000, %155 ]
  %163 = load i32, ptr %6, align 4
  %164 = load i32, ptr %8, align 4
  %165 = icmp slt i32 %164, 800000
  br i1 %165, label %180, label %166

166:                                              ; preds = %161
  %167 = icmp ult i32 %164, 900000
  br i1 %167, label %180, label %168

168:                                              ; preds = %166
  %169 = icmp ult i32 %164, 1000000
  br i1 %169, label %180, label %170

170:                                              ; preds = %168
  %171 = icmp ult i32 %164, 1100000
  br i1 %171, label %180, label %172

172:                                              ; preds = %170
  %173 = icmp ult i32 %164, 1250000
  br i1 %173, label %174, label %180

174:                                              ; preds = %172
  %175 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2), align 4
  %176 = icmp ult i32 %175, 9
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = getelementptr inbounds [9 x i32], ptr @switch.table.tegra30_regulator_balance_voltage.15, i32 0, i32 %175
  %179 = load i32, ptr %178, align 4
  br label %180

180:                                              ; preds = %177, %174, %172, %170, %168, %166, %161
  %181 = phi i32 [ 950000, %161 ], [ 1000000, %166 ], [ 1100000, %168 ], [ 1200000, %170 ], [ -22, %172 ], [ %179, %177 ], [ 1300000, %174 ]
  %182 = call i32 @llvm.smax.i32(i32 %163, i32 %181) #7
  store i32 %182, ptr %6, align 4
  %183 = call i32 @regulator_check_voltage(ptr noundef %12, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %268

185:                                              ; preds = %180
  %186 = load i8, ptr %27, align 1, !range !10
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %185
  %189 = load i32, ptr %8, align 4
  %190 = load i32, ptr %135, align 4
  %191 = call i32 @llvm.smax.i32(i32 %189, i32 %190) #7
  store i32 %191, ptr %8, align 4
  br label %192

192:                                              ; preds = %188, %185
  %193 = load i8, ptr %30, align 1, !range !10
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %192
  %196 = call fastcc i32 @tegra30_cpu_nominal_uV() #7
  %197 = load i32, ptr %8, align 4
  %198 = call i32 @llvm.smax.i32(i32 %196, i32 %197) #7
  %199 = load i32, ptr %9, align 4
  %200 = call i32 @llvm.smin.i32(i32 %198, i32 %199) #7
  store i32 %200, ptr %8, align 4
  br label %201

201:                                              ; preds = %195, %192
  %202 = icmp ugt i32 %162, %118
  br i1 %202, label %203, label %205

203:                                              ; preds = %201
  %204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %118, i32 noundef %162, i32 noundef %132) #8
  br label %230

205:                                              ; preds = %264, %261, %201
  %206 = phi i32 [ %231, %261 ], [ %132, %201 ], [ %231, %264 ]
  %207 = phi i32 [ %232, %261 ], [ %118, %201 ], [ %262, %264 ]
  %208 = load i32, ptr %8, align 4
  %209 = icmp ne i32 %206, %208
  %210 = load i32, ptr %6, align 4
  %211 = icmp ne i32 %207, %210
  %212 = select i1 %209, i1 true, i1 %211
  br i1 %212, label %213, label %268

213:                                              ; preds = %205
  %214 = icmp slt i32 %206, %208
  br i1 %214, label %215, label %218

215:                                              ; preds = %213
  %216 = add i32 %206, %55
  %217 = call i32 @llvm.smin.i32(i32 %216, i32 %208) #7
  br label %223

218:                                              ; preds = %213
  %219 = sub i32 %206, %55
  %220 = call i32 @llvm.smax.i32(i32 %219, i32 %208) #7
  %221 = sub i32 %207, %48
  %222 = call i32 @llvm.smax.i32(i32 %221, i32 %220) #7
  br label %223

223:                                              ; preds = %218, %215
  %224 = phi i32 [ %217, %215 ], [ %222, %218 ]
  %225 = icmp eq i32 %206, %224
  br i1 %225, label %230, label %226

226:                                              ; preds = %223
  %227 = load i32, ptr %9, align 4
  %228 = call i32 @regulator_set_voltage_rdev(ptr noundef %14, i32 noundef %224, i32 noundef %227, i32 noundef 0) #7
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %268

230:                                              ; preds = %226, %223, %203
  %231 = phi i32 [ %132, %203 ], [ %206, %223 ], [ %224, %226 ]
  %232 = phi i32 [ %118, %203 ], [ %207, %223 ], [ %207, %226 ]
  %233 = icmp slt i32 %231, 800000
  br i1 %233, label %248, label %234

234:                                              ; preds = %230
  %235 = icmp ult i32 %231, 900000
  br i1 %235, label %248, label %236

236:                                              ; preds = %234
  %237 = icmp ult i32 %231, 1000000
  br i1 %237, label %248, label %238

238:                                              ; preds = %236
  %239 = icmp ult i32 %231, 1100000
  br i1 %239, label %248, label %240

240:                                              ; preds = %238
  %241 = icmp ult i32 %231, 1250000
  br i1 %241, label %242, label %268

242:                                              ; preds = %240
  %243 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2), align 4
  %244 = icmp ult i32 %243, 9
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = getelementptr inbounds [9 x i32], ptr @switch.table.tegra30_regulator_balance_voltage.15, i32 0, i32 %243
  %247 = load i32, ptr %246, align 4
  br label %248

248:                                              ; preds = %245, %242, %238, %236, %234, %230
  %249 = phi i32 [ 1200000, %238 ], [ 1100000, %236 ], [ 1000000, %234 ], [ 950000, %230 ], [ %247, %245 ], [ 1300000, %242 ]
  %250 = load i32, ptr %6, align 4
  %251 = call i32 @llvm.smax.i32(i32 %249, i32 %250) #7
  %252 = icmp slt i32 %232, %251
  br i1 %252, label %253, label %258

253:                                              ; preds = %248
  %254 = add i32 %232, %62
  %255 = call i32 @llvm.smin.i32(i32 %251, i32 %254) #7
  %256 = add i32 %231, %48
  %257 = call i32 @llvm.smin.i32(i32 %255, i32 %256) #7
  br label %261

258:                                              ; preds = %248
  %259 = sub i32 %232, %62
  %260 = call i32 @llvm.smax.i32(i32 %251, i32 %259) #7
  br label %261

261:                                              ; preds = %258, %253
  %262 = phi i32 [ %257, %253 ], [ %260, %258 ]
  %263 = icmp eq i32 %232, %262
  br i1 %263, label %205, label %264

264:                                              ; preds = %261
  %265 = load i32, ptr %7, align 4
  %266 = call i32 @regulator_set_voltage_rdev(ptr noundef %12, i32 noundef %262, i32 noundef %265, i32 noundef 0) #7
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %205, label %268

268:                                              ; preds = %264, %240, %226, %205, %180, %153, %131, %128, %125, %120, %117, %92, %89, %78
  %269 = phi i32 [ %90, %89 ], [ %93, %92 ], [ %118, %117 ], [ %123, %120 ], [ %126, %125 ], [ %129, %128 ], [ %132, %131 ], [ %183, %180 ], [ %228, %226 ], [ %266, %264 ], [ 0, %205 ], [ %76, %78 ], [ -22, %153 ], [ -22, %240 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %270

270:                                              ; preds = %268, %22
  %271 = phi i32 [ -22, %22 ], [ %269, %268 ]
  ret i32 %271
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra30_regulator_reboot(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %26

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %0, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 32
  store volatile i8 1, ptr %14, align 4
  %15 = tail call i32 @regulator_sync_voltage_rdev(ptr noundef nonnull %11) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load ptr, ptr %6, align 4
  %19 = tail call i32 @regulator_sync_voltage_rdev(ptr noundef %18) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store volatile i8 1, ptr %14, align 4
  br label %26

22:                                               ; preds = %17, %13
  %23 = phi i32 [ %15, %13 ], [ %19, %17 ]
  %24 = sub i32 1, %23
  %25 = or i32 %24, 32768
  br label %26

26:                                               ; preds = %22, %21, %9, %5, %3
  %27 = phi i32 [ 0, %3 ], [ %25, %22 ], [ 1, %21 ], [ 1, %9 ], [ 1, %5 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra30_regulator_suspend(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #3 {
  switch i32 %1, label %38 [
    i32 1, label %4
    i32 5, label %4
    i32 3, label %4
    i32 2, label %16
    i32 6, label %16
    i32 4, label %16
  ]

4:                                                ; preds = %3, %3, %3
  %5 = getelementptr i8, ptr %0, i32 -20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -16
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 22
  store volatile i8 1, ptr %13, align 2
  %14 = tail call i32 @regulator_sync_voltage_rdev(ptr noundef nonnull %10) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %33

16:                                               ; preds = %3, %3, %3
  %17 = getelementptr i8, ptr %0, i32 -20
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %0, i32 -16
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %0, i32 22
  store volatile i8 0, ptr %25, align 2
  %26 = tail call i32 @regulator_sync_voltage_rdev(ptr noundef nonnull %22) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %12
  %29 = phi ptr [ %5, %12 ], [ %17, %24 ]
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @regulator_sync_voltage_rdev(ptr noundef %30) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28, %24, %12
  %34 = phi i32 [ %31, %28 ], [ %26, %24 ], [ %14, %12 ]
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %34) #8
  %36 = sub i32 1, %34
  %37 = or i32 %36, 32768
  br label %38

38:                                               ; preds = %33, %28, %20, %16, %8, %4, %3
  %39 = phi i32 [ 1, %28 ], [ 1, %3 ], [ 1, %8 ], [ 1, %4 ], [ 1, %20 ], [ 1, %16 ], [ %37, %33 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_check_consumers(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_rdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_check_voltage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc i32 @tegra30_cpu_nominal_uV() unnamed_addr #5 {
  %1 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2), align 4
  %2 = add i32 %1, -1
  %3 = icmp ult i32 %2, 13
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = getelementptr inbounds [13 x i32], ptr @switch.table.tegra30_cpu_nominal_uV, i32 0, i32 %2
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %0
  %8 = phi i32 [ %6, %4 ], [ 1125000, %0 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_rdev(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_pmc_core_domain_state_synced() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_sync_voltage_rdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{!"auto-init"}
