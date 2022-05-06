; ModuleID = '/llk/IR/drivers/soc/tegra/regulators-tegra20.c_pt.bc'
source_filename = "../drivers/soc/tegra/regulators-tegra20.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_regulator_coupler = type { %struct.regulator_coupler, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, i32, i32, i8, i8, i8, i8 }
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

@__initcall__kmod_regulators_tegra20__284_560_tegra_regulator_coupler_init3 = internal global ptr @tegra_regulator_coupler_init, section ".initcall3.init", align 4
@.str = private unnamed_addr constant [15 x i8] c"nvidia,tegra20\00", align 1
@tegra20_coupler = internal global %struct.tegra_regulator_coupler { %struct.regulator_coupler { %struct.list_head zeroinitializer, ptr @tegra20_regulator_attach, ptr @tegra20_regulator_detach, ptr @tegra20_regulator_balance_voltage }, ptr null, ptr null, ptr null, %struct.notifier_block { ptr @tegra20_regulator_reboot, ptr null, i32 0 }, %struct.notifier_block { ptr @tegra20_regulator_suspend, ptr null, i32 0 }, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"drivers/soc/tegra/regulators-tegra20.c\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"nvidia,tegra-core-regulator\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"nvidia,tegra-rtc-regulator\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"nvidia,tegra-cpu-regulator\00", align 1
@tegra20_regulator_detach.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"\013tegra voltage-coupler: regulators are not coupled properly\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"\013tegra voltage-coupler: changing %s voltage not permitted\0A\00", align 1
@tegra_sku_info = external dso_local local_unnamed_addr global %struct.tegra_sku_info, align 4
@.str.7 = private unnamed_addr constant [70 x i8] c"\013tegra voltage-coupler: core-cpu voltage constraint violated: %d %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [69 x i8] c"\013tegra voltage-coupler: rtc-cpu voltage constraint violated: %d %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"\013tegra voltage-coupler: core-rtc voltage constraint violated: %d %d\0A\00", align 1
@tegra20_core_rtc_max_spread.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [74 x i8] c"\013tegra voltage-coupler: rtc-core max-spread is undefined in device-tree\0A\00", align 1
@tegra20_core_limit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"\016tegra voltage-coupler: voltage state synced\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"\016tegra voltage-coupler: core voltage initialized to %duV\0A\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"\013tegra voltage-coupler: failed to prepare regulators: %d\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_regulators_tegra20__284_560_tegra_regulator_coupler_init3], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_regulator_coupler_init() #0 section ".init.text" {
  %1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @register_reboot_notifier(ptr noundef getelementptr inbounds (%struct.tegra_regulator_coupler, ptr @tegra20_coupler, i32 0, i32 4)) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 553, i32 noundef 9, ptr noundef null) #6
  br label %7

7:                                                ; preds = %6, %3
  %8 = tail call i32 @register_pm_notifier(ptr noundef getelementptr inbounds (%struct.tegra_regulator_coupler, ptr @tegra20_coupler, i32 0, i32 5)) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !8

10:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 556, i32 noundef 9, ptr noundef null) #6
  br label %11

11:                                               ; preds = %10, %7
  %12 = tail call i32 @regulator_coupler_register(ptr noundef nonnull @tegra20_coupler) #6
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
define internal i32 @tegra20_regulator_attach(ptr nocapture noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %1, i32 0, i32 13, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %7, %2
  %12 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef null) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14, %11
  %19 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef null) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %14, %7
  %26 = phi ptr [ %8, %7 ], [ %15, %14 ], [ %22, %21 ]
  store ptr %1, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %21, %18
  %28 = phi i32 [ -22, %21 ], [ -22, %18 ], [ 0, %25 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_regulator_detach(ptr nocapture noundef %0, ptr noundef readnone %1) #3 {
  %3 = load i32, ptr @system_state, align 4
  %4 = icmp ugt i32 %3, 3
  %5 = load i1, ptr @tegra20_regulator_detach.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %2
  store i1 true, ptr @tegra20_regulator_detach.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 514, i32 noundef 9, ptr noundef null) #6
  br label %9

9:                                                ; preds = %8, %2
  br i1 %4, label %24, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %14, %10
  %23 = phi ptr [ %11, %10 ], [ %15, %14 ], [ %19, %18 ]
  store ptr null, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %18, %9
  %25 = phi i32 [ -1, %9 ], [ -22, %18 ], [ 0, %22 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_regulator_balance_voltage(ptr noundef %0, ptr noundef readnone %1, i32 noundef %2) #3 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %8, %1
  %14 = icmp eq ptr %10, %1
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = icmp ne ptr %12, %1
  %18 = icmp ne i32 %2, 0
  %19 = or i1 %18, %17
  br i1 %19, label %22, label %24

20:                                               ; preds = %3
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %20, %16
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #7
  br label %107

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 8
  %26 = load volatile i8, ptr %25, align 4, !range !10
  %27 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 9
  store i8 %26, ptr %27, align 1
  %28 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 10
  %29 = load volatile i8, ptr %28, align 2, !range !10
  %30 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 11
  store i8 %29, ptr %30, align 1
  br i1 %14, label %31, label %98

31:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 2147483647, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4
  %32 = call i32 @regulator_check_voltage(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %5) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %96

34:                                               ; preds = %31
  %35 = call i32 @regulator_check_consumers(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 0) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %96

37:                                               ; preds = %34
  %38 = call i32 @regulator_check_consumers(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %96

40:                                               ; preds = %37
  %41 = call i32 @regulator_get_voltage_rdev(ptr noundef %1) #6
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %96, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 %41, ptr %44, align 4
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32 [ %41, %47 ], [ %45, %43 ]
  %50 = load i32, ptr %4, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 %41, ptr %6, align 4
  br label %53

53:                                               ; preds = %52, %48
  %54 = load i8, ptr %27, align 1, !range !10
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %6, align 4
  %58 = call i32 @llvm.smax.i32(i32 %57, i32 %49) #6
  store i32 %58, ptr %6, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i8, ptr %30, align 1, !range !10
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, ptr %6, align 4
  br label %74

64:                                               ; preds = %59
  %65 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6), align 4
  %66 = icmp eq i32 %65, 1
  %67 = select i1 %66, i32 1025000, i32 1125000
  %68 = icmp eq i32 %65, 0
  %69 = select i1 %68, i32 1100000, i32 %67
  %70 = load i32, ptr %6, align 4
  %71 = call i32 @llvm.smax.i32(i32 %69, i32 %70) #6
  %72 = load i32, ptr %5, align 4
  %73 = call i32 @llvm.smin.i32(i32 %71, i32 %72) #6
  store i32 %73, ptr %6, align 4
  br label %74

74:                                               ; preds = %64, %62
  %75 = phi i32 [ %63, %62 ], [ %73, %64 ]
  %76 = icmp sgt i32 %75, %41
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = call fastcc i32 @tegra20_core_rtc_update(ptr noundef %0, ptr noundef %8, ptr noundef %12, i32 noundef %41, i32 noundef %75) #6
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %77
  %81 = load i32, ptr %6, align 4
  %82 = load i32, ptr %5, align 4
  %83 = call i32 @regulator_set_voltage_rdev(ptr noundef %1, i32 noundef %81, i32 noundef %82, i32 noundef 0) #6
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %95, label %96

85:                                               ; preds = %74
  %86 = icmp slt i32 %75, %41
  br i1 %86, label %87, label %95

87:                                               ; preds = %85
  %88 = load i32, ptr %5, align 4
  %89 = call i32 @regulator_set_voltage_rdev(ptr noundef %1, i32 noundef %75, i32 noundef %88, i32 noundef 0) #6
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32, ptr %6, align 4
  %93 = call fastcc i32 @tegra20_core_rtc_update(ptr noundef %0, ptr noundef %8, ptr noundef %12, i32 noundef %41, i32 noundef %92) #6
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91, %85, %80
  br label %96

96:                                               ; preds = %95, %91, %87, %80, %77, %40, %37, %34, %31
  %97 = phi i32 [ 0, %95 ], [ %32, %31 ], [ %35, %34 ], [ %38, %37 ], [ %41, %40 ], [ %78, %77 ], [ %83, %80 ], [ %89, %87 ], [ %93, %91 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %107

98:                                               ; preds = %24
  br i1 %13, label %99, label %104

99:                                               ; preds = %98
  %100 = tail call i32 @regulator_get_voltage_rdev(ptr noundef %10) #6
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = tail call fastcc i32 @tegra20_core_rtc_update(ptr noundef %0, ptr noundef %1, ptr noundef %12, i32 noundef %100, i32 noundef %100) #6
  br label %107

104:                                              ; preds = %98
  %105 = tail call ptr @rdev_get_name(ptr noundef %12) #6
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %105) #7
  br label %107

107:                                              ; preds = %104, %102, %99, %96, %22
  %108 = phi i32 [ -22, %22 ], [ %97, %96 ], [ -1, %104 ], [ %103, %102 ], [ %100, %99 ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_regulator_reboot(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %30

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -12
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %0, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 -8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 32
  store volatile i8 1, ptr %18, align 4
  %19 = tail call i32 @regulator_sync_voltage_rdev(ptr noundef nonnull %15) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 4
  %23 = tail call i32 @regulator_sync_voltage_rdev(ptr noundef %22) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store volatile i8 1, ptr %18, align 4
  br label %30

26:                                               ; preds = %21, %17
  %27 = phi i32 [ %19, %17 ], [ %23, %21 ]
  %28 = sub i32 1, %27
  %29 = or i32 %28, 32768
  br label %30

30:                                               ; preds = %26, %25, %13, %9, %5, %3
  %31 = phi i32 [ 0, %3 ], [ %29, %26 ], [ 1, %25 ], [ 1, %13 ], [ 1, %9 ], [ 1, %5 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_regulator_suspend(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #3 {
  switch i32 %1, label %46 [
    i32 1, label %4
    i32 5, label %4
    i32 3, label %4
    i32 2, label %20
    i32 6, label %20
    i32 4, label %20
  ]

4:                                                ; preds = %3, %3, %3
  %5 = getelementptr i8, ptr %0, i32 -24
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %46, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -16
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %46, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 -20
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %46, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 22
  store volatile i8 1, ptr %17, align 2
  %18 = tail call i32 @regulator_sync_voltage_rdev(ptr noundef nonnull %14) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %36, label %41

20:                                               ; preds = %3, %3, %3
  %21 = getelementptr i8, ptr %0, i32 -24
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %0, i32 -16
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %0, i32 -20
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %0, i32 22
  store volatile i8 0, ptr %33, align 2
  %34 = tail call i32 @regulator_sync_voltage_rdev(ptr noundef nonnull %30) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %16
  %37 = phi ptr [ %5, %16 ], [ %21, %32 ]
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @regulator_sync_voltage_rdev(ptr noundef %38) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36, %32, %16
  %42 = phi i32 [ %39, %36 ], [ %34, %32 ], [ %18, %16 ]
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %42) #7
  %44 = sub i32 1, %42
  %45 = or i32 %44, 32768
  br label %46

46:                                               ; preds = %41, %36, %28, %24, %20, %12, %8, %4, %3
  %47 = phi i32 [ 1, %36 ], [ 1, %3 ], [ 1, %12 ], [ 1, %8 ], [ 1, %4 ], [ 1, %28 ], [ 1, %24 ], [ 1, %20 ], [ %45, %41 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_check_voltage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_check_consumers(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_rdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra20_core_rtc_update(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #3 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 0, ptr %8, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  store i32 2147483647, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  store i32 0, ptr %10, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  store i32 2147483647, ptr %11, align 4
  %12 = getelementptr inbounds %struct.regulator_dev, ptr %1, i32 0, i32 7, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %15, label %35

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.regulator_dev, ptr %1, i32 0, i32 7
  %17 = getelementptr inbounds %struct.regulator_dev, ptr %1, i32 0, i32 14
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.regulation_constraints, ptr %18, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %16, align 4
  br label %25

22:                                               ; preds = %25
  %23 = add nuw i32 %26, 1
  %24 = icmp eq i32 %23, %13
  br i1 %24, label %35, label %25

25:                                               ; preds = %22, %15
  %26 = phi i32 [ 1, %15 ], [ %23, %22 ]
  %27 = add i32 %26, -1
  %28 = getelementptr i32, ptr %20, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr ptr, ptr %21, i32 %26
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %2
  %33 = icmp ne i32 %29, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %39, label %22

35:                                               ; preds = %22, %5
  %36 = load i1, ptr @tegra20_core_rtc_max_spread.__already_done, align 1
  br i1 %36, label %39, label %37, !prof !8

37:                                               ; preds = %35
  store i1 true, ptr @tegra20_core_rtc_max_spread.__already_done, align 1
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #7
  br label %39

39:                                               ; preds = %37, %35, %25
  %40 = phi i32 [ 150000, %37 ], [ 150000, %35 ], [ %29, %25 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  %41 = tail call zeroext i1 @tegra_pmc_core_domain_state_synced() #6
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 9
  %44 = load i8, ptr %43, align 1, !range !10
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i1, ptr @tegra20_core_limit.__already_done, align 1
  br i1 %47, label %66, label %48, !prof !8

48:                                               ; preds = %46
  store i1 true, ptr @tegra20_core_limit.__already_done, align 1
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #7
  br label %66

50:                                               ; preds = %42, %39
  %51 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = tail call i32 @regulator_get_voltage_rdev(ptr noundef %1) #6
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %173

58:                                               ; preds = %54
  %59 = tail call i32 @llvm.smax.i32(i32 %55, i32 1200000) #6
  store i32 %59, ptr %7, align 4
  %60 = call i32 @regulator_check_voltage(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32, ptr %7, align 4
  store i32 %63, ptr %51, align 4
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %63) #7
  %65 = load i32, ptr %51, align 4
  br label %68

66:                                               ; preds = %50, %48, %46
  %67 = phi i32 [ %52, %50 ], [ 0, %46 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  store i32 %67, ptr %8, align 4
  br label %71

68:                                               ; preds = %62, %58
  %69 = phi i32 [ %65, %62 ], [ %60, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  store i32 %69, ptr %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %173, label %71

71:                                               ; preds = %68, %66
  %72 = call i32 @regulator_check_voltage(ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #6
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %173

74:                                               ; preds = %71
  %75 = call i32 @regulator_check_consumers(ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 0) #6
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %173

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %0, i32 0, i32 11
  %79 = load i8, ptr %78, align 1, !range !10
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6), align 4
  %83 = icmp eq i32 %82, 2
  %84 = select i1 %83, i32 1300000, i32 1225000
  %85 = load i32, ptr %8, align 4
  %86 = call i32 @llvm.smax.i32(i32 %84, i32 %85)
  %87 = load i32, ptr %9, align 4
  %88 = call i32 @llvm.smin.i32(i32 %86, i32 %87)
  store i32 %88, ptr %8, align 4
  br label %89

89:                                               ; preds = %81, %77
  %90 = call i32 @regulator_get_voltage_rdev(ptr noundef %1) #6
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %173, label %92

92:                                               ; preds = %89
  %93 = add i32 %4, 125000
  %94 = load i32, ptr %8, align 4
  %95 = call i32 @llvm.smax.i32(i32 %93, i32 %94)
  store i32 %95, ptr %8, align 4
  %96 = load i32, ptr %9, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %173, label %98

98:                                               ; preds = %92
  %99 = add i32 %3, 120000
  %100 = icmp sgt i32 %99, %90
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %90, i32 noundef %99) #7
  br label %103

103:                                              ; preds = %101, %98
  %104 = call i32 @regulator_get_voltage_rdev(ptr noundef %2) #6
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %173, label %106

106:                                              ; preds = %103
  %107 = icmp sgt i32 %99, %104
  br i1 %107, label %108, label %110

108:                                              ; preds = %106
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %104, i32 noundef %99) #7
  br label %110

110:                                              ; preds = %108, %106
  %111 = sub nsw i32 %90, %104
  %112 = call i32 @llvm.abs.i32(i32 %111, i1 true)
  %113 = icmp ugt i32 %112, 170000
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %90, i32 noundef %104) #7
  br label %116

116:                                              ; preds = %114, %110
  %117 = load i32, ptr %8, align 4
  %118 = sub i32 %117, %40
  %119 = call i32 @llvm.smax.i32(i32 %93, i32 %118)
  store i32 %119, ptr %10, align 4
  %120 = call i32 @regulator_check_voltage(ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %11) #6
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %173

122:                                              ; preds = %169, %116
  %123 = phi i32 [ %167, %169 ], [ %104, %116 ]
  %124 = phi i32 [ %156, %169 ], [ %90, %116 ]
  %125 = sub i32 %123, %40
  %126 = add i32 %123, %40
  %127 = load i32, ptr %10, align 4
  br label %128

128:                                              ; preds = %166, %122
  %129 = phi i32 [ %155, %166 ], [ %127, %122 ]
  %130 = phi i32 [ %156, %166 ], [ %124, %122 ]
  %131 = load i32, ptr %8, align 4
  %132 = icmp ne i32 %130, %131
  %133 = icmp ne i32 %123, %129
  %134 = select i1 %132, i1 true, i1 %133
  br i1 %134, label %135, label %173

135:                                              ; preds = %128
  %136 = icmp slt i32 %130, %131
  br i1 %136, label %137, label %141

137:                                              ; preds = %135
  %138 = add i32 %130, %40
  %139 = call i32 @llvm.smin.i32(i32 %138, i32 %131)
  %140 = call i32 @llvm.smin.i32(i32 %126, i32 %139)
  br label %145

141:                                              ; preds = %135
  %142 = sub i32 %130, %40
  %143 = call i32 @llvm.smax.i32(i32 %142, i32 %131)
  %144 = call i32 @llvm.smax.i32(i32 %125, i32 %143)
  br label %145

145:                                              ; preds = %141, %137
  %146 = phi i32 [ %140, %137 ], [ %144, %141 ]
  %147 = icmp eq i32 %130, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %145
  %149 = load i32, ptr %9, align 4
  %150 = call i32 @regulator_set_voltage_rdev(ptr noundef %1, i32 noundef %146, i32 noundef %149, i32 noundef 0) #6
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %173

152:                                              ; preds = %148
  %153 = load i32, ptr %10, align 4
  br label %154

154:                                              ; preds = %152, %145
  %155 = phi i32 [ %129, %145 ], [ %153, %152 ]
  %156 = phi i32 [ %130, %145 ], [ %146, %152 ]
  %157 = icmp slt i32 %123, %155
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = call i32 @llvm.smin.i32(i32 %126, i32 %155)
  %160 = add i32 %156, %40
  %161 = call i32 @llvm.smin.i32(i32 %160, i32 %159)
  br label %166

162:                                              ; preds = %154
  %163 = call i32 @llvm.smax.i32(i32 %125, i32 %155)
  %164 = sub i32 %156, %40
  %165 = call i32 @llvm.smax.i32(i32 %164, i32 %163)
  br label %166

166:                                              ; preds = %162, %158
  %167 = phi i32 [ %161, %158 ], [ %165, %162 ]
  %168 = icmp eq i32 %123, %167
  br i1 %168, label %128, label %169

169:                                              ; preds = %166
  %170 = load i32, ptr %11, align 4
  %171 = call i32 @regulator_set_voltage_rdev(ptr noundef %2, i32 noundef %167, i32 noundef %170, i32 noundef 0) #6
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %122, label %173

173:                                              ; preds = %169, %148, %128, %116, %103, %92, %89, %74, %71, %68, %57
  %174 = phi i32 [ %69, %68 ], [ %72, %71 ], [ %75, %74 ], [ %90, %89 ], [ -22, %92 ], [ %104, %103 ], [ %120, %116 ], [ %55, %57 ], [ %150, %148 ], [ 0, %128 ], [ %171, %169 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  ret i32 %174
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_rdev(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_pmc_core_domain_state_synced() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_sync_voltage_rdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{!"auto-init"}
