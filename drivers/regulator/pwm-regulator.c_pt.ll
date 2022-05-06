; ModuleID = '/llk/IR/drivers/regulator/pwm-regulator.c_pt.bc'
source_filename = "../drivers/regulator/pwm-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pwm_regulator_data = type { ptr, ptr, %struct.pwm_continuous_reg_data, %struct.regulator_desc, i32, ptr }
%struct.pwm_continuous_reg_data = type { i32, i32, i32 }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.pwm_voltages = type { i32, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_pwm_regulator__247_401_pwm_regulator_driver_init6 = internal global ptr @pwm_regulator_driver_init, section ".initcall6.init", align 4
@pwm_regulator_driver = internal global %struct.platform_driver { ptr @pwm_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_pwm_regulator_driver_exit = internal global ptr @pwm_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file248 = internal constant [51 x i8] c"pwm_regulator.file=drivers/regulator/pwm-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [26 x i8] c"pwm_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [54 x i8] c"pwm_regulator.author=Lee Jones <lee.jones@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [47 x i8] c"pwm_regulator.description=PWM Regulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias252 = internal constant [43 x i8] c"pwm_regulator.alias=platform:pwm-regulator\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"pwm-regulator\00", align 1
@pwm_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pwm-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Device Tree node missing\0A\00", align 1
@pwm_regulator_desc = internal unnamed_addr constant %struct.regulator_desc { ptr @.str, ptr @.str.7, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"voltage-table\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Failed to get PWM\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to get enable GPIO: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to register regulator %s: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"voltage-table length(%d) is invalid\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Failed to read voltage-table: %d\0A\00", align 1
@pwm_regulator_voltage_table_ops = internal constant %struct.regulator_ops { ptr @pwm_regulator_list_voltage, ptr null, ptr @regulator_map_voltage_iterate, ptr @pwm_regulator_set_voltage_sel, ptr null, ptr @pwm_regulator_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwm_regulator_enable, ptr @pwm_regulator_disable, ptr @pwm_regulator_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"Failed to configure PWM: %d\0A\00", align 1
@pwm_regulator_voltage_continuous_ops = internal constant %struct.regulator_ops { ptr null, ptr @pwm_regulator_set_voltage, ptr null, ptr null, ptr @pwm_regulator_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwm_regulator_enable, ptr @pwm_regulator_disable, ptr @pwm_regulator_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"pwm-dutycycle-range\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"pwm-dutycycle-unit\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_pwm_regulator_driver_exit, ptr @__initcall__kmod_pwm_regulator__247_401_pwm_regulator_driver_init6, ptr @pwm_regulator_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pwm_regulator_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pwm_regulator_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pwm_regulator_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @pwm_regulator_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca [2 x i32], align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false)
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1) #8
  br label %101

11:                                               ; preds = %1
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 272, i32 noundef 3520) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %101, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.pwm_regulator_data, ptr %12, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(244) %15, ptr noundef nonnull align 4 dereferenceable(244) @pwm_regulator_desc, i32 244, i1 false)
  %16 = tail call ptr @of_find_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.2, ptr noundef null) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %45, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4
  %20 = call ptr @of_find_property(ptr noundef %19, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #7
  %21 = load i32, ptr %4, align 4
  %22 = icmp ugt i32 %21, 7
  %23 = and i32 %21, 7
  %24 = icmp eq i32 %23, 0
  %25 = and i1 %22, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8, i32 noundef %21) #8
  br label %43

27:                                               ; preds = %18
  %28 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef %21, i32 noundef 3520) #7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %4, align 4
  %32 = lshr i32 %31, 2
  %33 = call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.2, ptr noundef nonnull %28, i32 noundef %32, i32 noundef 0) #7
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.9, i32 noundef %33) #8
  br label %43

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.pwm_regulator_data, ptr %12, i32 0, i32 4
  store i32 -131, ptr %37, align 4
  %38 = getelementptr inbounds %struct.pwm_regulator_data, ptr %12, i32 0, i32 1
  store ptr %28, ptr %38, align 4
  %39 = getelementptr inbounds %struct.pwm_regulator_data, ptr %12, i32 0, i32 3, i32 10
  store ptr @pwm_regulator_voltage_table_ops, ptr %39, align 4
  %40 = load i32, ptr %4, align 4
  %41 = lshr i32 %40, 3
  %42 = getelementptr inbounds %struct.pwm_regulator_data, ptr %12, i32 0, i32 3, i32 8
  store i32 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %36, %35, %27, %26
  %44 = phi i32 [ -22, %26 ], [ %33, %35 ], [ 0, %36 ], [ -12, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %65

45:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store i64 429496729600, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 100, ptr %3, align 4
  %46 = getelementptr inbounds %struct.pwm_regulator_data, ptr %12, i32 0, i32 3, i32 10
  store ptr @pwm_regulator_voltage_continuous_ops, ptr %46, align 4
  %47 = getelementptr inbounds %struct.pwm_regulator_data, ptr %12, i32 0, i32 3, i32 7
  store i8 1, ptr %47, align 4
  %48 = load ptr, ptr %7, align 8
  %49 = call i32 @of_property_read_variable_u32_array(ptr noundef %48, ptr noundef nonnull @.str.11, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0) #7
  %50 = load ptr, ptr %7, align 8
  %51 = call i32 @of_property_read_variable_u32_array(ptr noundef %50, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %52 = load i32, ptr %2, align 8
  %53 = load i32, ptr %3, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %45
  %56 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp ugt i32 %57, %53
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.pwm_regulator_data, ptr %12, i32 0, i32 2
  %61 = getelementptr inbounds %struct.pwm_regulator_data, ptr %12, i32 0, i32 2, i32 2
  store i32 %53, ptr %61, align 4
  store i32 %52, ptr %60, align 4
  %62 = getelementptr inbounds %struct.pwm_regulator_data, ptr %12, i32 0, i32 2, i32 1
  store i32 %57, ptr %62, align 4
  br label %63

63:                                               ; preds = %59, %55, %45
  %64 = phi i32 [ 0, %59 ], [ -22, %55 ], [ -22, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  br label %65

65:                                               ; preds = %63, %43
  %66 = phi i32 [ %44, %43 ], [ %64, %63 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %101

68:                                               ; preds = %65
  %69 = call ptr @of_get_regulator_init_data(ptr noundef %6, ptr noundef nonnull %8, ptr noundef %15) #7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %101, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.regulator_config, ptr %5, i32 0, i32 3
  store ptr %8, ptr %72, align 4
  store ptr %6, ptr %5, align 4
  %73 = getelementptr inbounds %struct.regulator_config, ptr %5, i32 0, i32 2
  store ptr %12, ptr %73, align 4
  %74 = getelementptr inbounds %struct.regulator_config, ptr %5, i32 0, i32 1
  store ptr %69, ptr %74, align 4
  %75 = call ptr @devm_pwm_get(ptr noundef %6, ptr noundef null) #7
  store ptr %75, ptr %12, align 4
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = ptrtoint ptr %75 to i32
  %79 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %6, i32 noundef %78, ptr noundef nonnull @.str.3) #7
  br label %101

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.regulator_init_data, ptr %69, i32 0, i32 1, i32 28
  %82 = load i16, ptr %81, align 4
  %83 = and i16 %82, 3
  %84 = icmp eq i16 %83, 0
  %85 = select i1 %84, i32 3, i32 7
  %86 = call ptr @devm_gpiod_get_optional(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef %85) #7
  %87 = getelementptr inbounds %struct.pwm_regulator_data, ptr %12, i32 0, i32 5
  store ptr %86, ptr %87, align 4
  %88 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = ptrtoint ptr %86 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5, i32 noundef %90) #8
  br label %101

91:                                               ; preds = %80
  %92 = load ptr, ptr %12, align 4
  %93 = call i32 @pwm_adjust_config(ptr noundef %92) #7
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = call ptr @devm_regulator_register(ptr noundef %6, ptr noundef %15, ptr noundef nonnull %5) #7
  %97 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = ptrtoint ptr %96 to i32
  %100 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef %100, i32 noundef %99) #8
  br label %101

101:                                              ; preds = %98, %95, %91, %89, %77, %68, %65, %11, %10
  %102 = phi i32 [ %79, %77 ], [ %90, %89 ], [ %99, %98 ], [ -22, %10 ], [ -12, %11 ], [ %66, %65 ], [ -12, %68 ], [ %93, %91 ], [ 0, %95 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  ret i32 %102
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pwm_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_adjust_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_regulator_list_voltage(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.pwm_regulator_data, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.pwm_voltages, ptr %10, i32 %1
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ %12, %8 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_iterate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_regulator_set_voltage_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.pwm_state, align 8
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pwm_device, ptr %5, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef align 8 dereferenceable(24) %6, i32 24, i1 false) #7
  %7 = getelementptr inbounds %struct.pwm_device, ptr %5, i32 0, i32 6
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.pwm_device, ptr %5, i32 0, i32 6, i32 1
  %10 = load i32, ptr %9, align 8
  store i64 %8, ptr %3, align 8
  %11 = getelementptr inbounds %struct.pwm_state, ptr %3, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.pwm_state, ptr %3, i32 0, i32 1
  store i64 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.pwm_state, ptr %3, i32 0, i32 4
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds %struct.pwm_regulator_data, ptr %4, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.pwm_voltages, ptr %15, i32 %1, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 100
  br i1 %18, label %29, label %19

19:                                               ; preds = %2
  %20 = zext i32 %17 to i64
  %21 = mul i64 %8, %20
  %22 = add i64 %21, 50
  %23 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %22, i32 0) #9, !srcloc !8
  %24 = extractvalue { i64, i32 } %23, 0
  %25 = extractvalue { i64, i32 } %23, 1
  %26 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %22, i64 %24, i32 %25) #9, !srcloc !9
  %27 = extractvalue { i64, i32 } %26, 0
  %28 = lshr i64 %27, 6
  store i64 %28, ptr %12, align 8
  br label %29

29:                                               ; preds = %19, %2
  %30 = load ptr, ptr %4, align 4
  %31 = call i32 @pwm_apply_state(ptr noundef %30, ptr noundef nonnull %3) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.10, i32 noundef %31) #8
  br label %37

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.pwm_regulator_data, ptr %4, i32 0, i32 4
  store i32 %1, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_regulator_get_voltage_sel(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.pwm_regulator_data, ptr %2, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %46

6:                                                ; preds = %1
  %7 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pwm_device, ptr %8, i32 0, i32 7
  %10 = load i64, ptr %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.pwm_device, ptr %8, i32 0, i32 7, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = mul i64 %14, 100
  %16 = lshr i64 %10, 1
  %17 = add i64 %15, %16
  %18 = trunc i64 %10 to i32
  %19 = icmp ult i64 %17, 4294967296
  br i1 %19, label %20, label %23, !prof !10

20:                                               ; preds = %12
  %21 = trunc i64 %17 to i32
  %22 = udiv i32 %21, %18
  br label %27

23:                                               ; preds = %12
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %17) #9, !srcloc !11
  %25 = extractvalue { i64, i64 } %24, 1
  %26 = trunc i64 %25 to i32
  br label %27

27:                                               ; preds = %23, %20, %6
  %28 = phi i32 [ 0, %6 ], [ %22, %20 ], [ %26, %23 ]
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds %struct.regulator_desc, ptr %29, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.pwm_regulator_data, ptr %7, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %43, %33
  %37 = phi i32 [ 0, %33 ], [ %44, %43 ]
  %38 = getelementptr %struct.pwm_voltages, ptr %35, i32 %37, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %28, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.pwm_regulator_data, ptr %7, i32 0, i32 4
  store i32 %37, ptr %42, align 4
  br label %46

43:                                               ; preds = %36
  %44 = add nuw i32 %37, 1
  %45 = icmp eq i32 %44, %31
  br i1 %45, label %46, label %36

46:                                               ; preds = %43, %41, %27, %1
  %47 = load i32, ptr %3, align 4
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_regulator_enable(ptr noundef %0) #2 {
  %2 = alloca %struct.pwm_state, align 8
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.pwm_regulator_data, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #7
  %6 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pwm_device, ptr %6, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %9, i32 24, i1 false) #7
  %10 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %11 = load i8, ptr %10, align 4, !range !12
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  store i8 1, ptr %10, align 4
  %14 = call i32 @pwm_apply_state(ptr noundef nonnull %6, ptr noundef nonnull %2) #7
  br label %15

15:                                               ; preds = %13, %8, %1
  %16 = phi i32 [ %14, %13 ], [ -22, %1 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_regulator_disable(ptr noundef %0) #2 {
  %2 = alloca %struct.pwm_state, align 8
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pwm_device, ptr %4, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %7, i32 24, i1 false) #7
  %8 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %9 = load i8, ptr %8, align 4, !range !12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  store i8 0, ptr %8, align 4
  %12 = call i32 @pwm_apply_state(ptr noundef nonnull %4, ptr noundef nonnull %2) #7
  br label %13

13:                                               ; preds = %11, %6, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  %14 = getelementptr inbounds %struct.pwm_regulator_data, ptr %3, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_regulator_is_enabled(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.pwm_regulator_data, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %4) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6, %1
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.pwm_device, ptr %10, i32 0, i32 7, i32 3
  %12 = load i8, ptr %11, align 4
  %13 = icmp ne i8 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %9, %6
  %16 = phi i32 [ %14, %9 ], [ 0, %6 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_regulator_set_voltage(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = alloca %struct.pwm_state, align 8
  %6 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.pwm_regulator_data, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pwm_regulator_data, ptr %6, i32 0, i32 2, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pwm_regulator_data, ptr %6, i32 0, i32 2, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.regulation_constraints, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.regulation_constraints, ptr %14, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %18, %16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.pwm_device, ptr %20, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef align 8 dereferenceable(24) %21, i32 24, i1 false) #7
  %22 = getelementptr inbounds %struct.pwm_device, ptr %20, i32 0, i32 6
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.pwm_device, ptr %20, i32 0, i32 6, i32 1
  %25 = load i32, ptr %24, align 8
  store i64 %23, ptr %5, align 8
  %26 = getelementptr inbounds %struct.pwm_state, ptr %5, i32 0, i32 2
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.pwm_state, ptr %5, i32 0, i32 1
  store i64 0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.pwm_state, ptr %5, i32 0, i32 4
  store i8 0, ptr %28, align 1
  %29 = icmp ult i32 %10, %8
  %30 = sub i32 %8, %10
  %31 = sub i32 %10, %8
  %32 = select i1 %29, i32 %30, i32 %31
  %33 = sub i32 %1, %16
  %34 = sext i32 %33 to i64
  %35 = zext i32 %32 to i64
  %36 = mul nsw i64 %34, %35
  %37 = sdiv i32 %19, 2
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = icmp ult i64 %39, 4294967296
  br i1 %40, label %41, label %44, !prof !10

41:                                               ; preds = %4
  %42 = trunc i64 %39 to i32
  %43 = udiv i32 %42, %19
  br label %48

44:                                               ; preds = %4
  %45 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %39) #9, !srcloc !11
  %46 = extractvalue { i64, i64 } %45, 1
  %47 = trunc i64 %46 to i32
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i32 [ %43, %41 ], [ %47, %44 ]
  %50 = sub i32 0, %49
  %51 = select i1 %29, i32 %50, i32 %49
  %52 = add i32 %51, %8
  %53 = icmp eq i32 %12, 0
  %54 = icmp ugt i32 %52, %12
  %55 = or i1 %53, %54
  br i1 %55, label %72, label %56

56:                                               ; preds = %48
  %57 = zext i32 %52 to i64
  %58 = mul i64 %23, %57
  %59 = lshr i32 %12, 1
  %60 = zext i32 %59 to i64
  %61 = add i64 %58, %60
  %62 = icmp ult i64 %61, 4294967296
  br i1 %62, label %63, label %67, !prof !10

63:                                               ; preds = %56
  %64 = trunc i64 %61 to i32
  %65 = udiv i32 %64, %12
  %66 = zext i32 %65 to i64
  br label %70

67:                                               ; preds = %56
  %68 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %61) #9, !srcloc !11
  %69 = extractvalue { i64, i64 } %68, 1
  br label %70

70:                                               ; preds = %67, %63
  %71 = phi i64 [ %66, %63 ], [ %69, %67 ]
  store i64 %71, ptr %27, align 8
  br label %72

72:                                               ; preds = %70, %48
  %73 = load ptr, ptr %6, align 4
  %74 = call i32 @pwm_apply_state(ptr noundef %73, ptr noundef nonnull %5) #7
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.10, i32 noundef %74) #8
  br label %78

78:                                               ; preds = %76, %72
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_regulator_get_voltage(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.pwm_regulator_data, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pwm_regulator_data, ptr %2, i32 0, i32 2, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.regulation_constraints, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.regulation_constraints, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %12, %10
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.pwm_device, ptr %14, i32 0, i32 7
  %16 = load i64, ptr %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.pwm_device, ptr %14, i32 0, i32 7, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.pwm_regulator_data, ptr %2, i32 0, i32 2, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = zext i32 %22 to i64
  %24 = mul i64 %20, %23
  %25 = lshr i64 %16, 1
  %26 = add i64 %24, %25
  %27 = trunc i64 %16 to i32
  %28 = icmp ult i64 %26, 4294967296
  br i1 %28, label %29, label %32, !prof !10

29:                                               ; preds = %18
  %30 = trunc i64 %26 to i32
  %31 = udiv i32 %30, %27
  br label %36

32:                                               ; preds = %18
  %33 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %27, i64 %26) #9, !srcloc !11
  %34 = extractvalue { i64, i64 } %33, 1
  %35 = trunc i64 %34 to i32
  br label %36

36:                                               ; preds = %32, %29, %1
  %37 = phi i32 [ 0, %1 ], [ %31, %29 ], [ %35, %32 ]
  %38 = icmp ult i32 %6, %4
  %39 = sub i32 %4, %37
  %40 = sub i32 %4, %6
  %41 = sub i32 %37, %4
  %42 = sub i32 %6, %4
  %43 = select i1 %38, i32 %40, i32 %42
  %44 = select i1 %38, i32 %39, i32 %41
  %45 = zext i32 %44 to i64
  %46 = sext i32 %13 to i64
  %47 = mul nsw i64 %45, %46
  %48 = lshr i32 %43, 1
  %49 = zext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = icmp ult i64 %50, 4294967296
  br i1 %51, label %52, label %55, !prof !10

52:                                               ; preds = %36
  %53 = trunc i64 %50 to i32
  %54 = udiv i32 %53, %43
  br label %59

55:                                               ; preds = %36
  %56 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %43, i64 %50) #9, !srcloc !11
  %57 = extractvalue { i64, i64 } %56, 1
  %58 = trunc i64 %57 to i32
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i32 [ %54, %52 ], [ %58, %55 ]
  %61 = add i32 %60, %10
  ret i32 %61
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

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
!8 = !{i64 413416, i64 413443, i64 413465, i64 413493}
!9 = !{i64 413824, i64 413851, i64 413884, i64 413905, i64 413932, i64 413958}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2147898960, i64 2147899240, i64 2147899574, i64 2147899908}
!12 = !{i8 0, i8 2}
