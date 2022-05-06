; ModuleID = '/llk/IR/drivers/regulator/fan53555.c_pt.bc'
source_filename = "../drivers/regulator/fan53555.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.fan53555_device_info = type { i32, ptr, %struct.regulator_desc, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.fan53555_platform_data = type { ptr, i32, i32 }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_fan53555__247_672_fan53555_regulator_driver_init6 = internal global ptr @fan53555_regulator_driver_init, section ".initcall6.init", align 4
@fan53555_regulator_driver = internal global %struct.i2c_driver { i32 0, ptr @fan53555_regulator_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fan53555_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @fan53555_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_fan53555_regulator_driver_exit = internal global ptr @fan53555_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [51 x i8] c"fan53555.author=Yunfan Zhang <yfzhang@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [47 x i8] c"fan53555.description=FAN53555 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [41 x i8] c"fan53555.file=drivers/regulator/fan53555\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [24 x i8] c"fan53555.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [19 x i8] c"fan53555-regulator\00", align 1
@fan53555_dt_ids = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fcs,fan53526\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fcs,fan53555\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silergy,syr827\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silergy,syr828\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tcs,tcs4525\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tcs,tcs4526\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@fan53555_id = internal constant [7 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"fan53526\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"fan53555\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"syr827\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"syr828\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"tcs4525\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"tcs4526\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Platform data not found!\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid slew_rate\0A\00", align 1
@slew_rates = internal constant [8 x i32] [i32 64000, i32 32000, i32 16000, i32 8000, i32 4000, i32 2000, i32 1000, i32 500], align 4
@fan53555_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to allocate regmap!\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to get chip ID!\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to get chip Rev!\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"FAN53555 Option[%d] Rev[%d] Detected!\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Failed to setup device!\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Failed to register regulator!\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"fcs,suspend-voltage-selector\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Invalid VSEL ID!\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"vendor %d not supported!\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Chip ID %d with rev %d not supported!\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Chip ID %d not supported!\0A\00", align 1
@tcs_slew_rates = internal constant [4 x i32] [i32 18700, i32 9300, i32 4600, i32 2300], align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"fan53555-reg\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"vin\00", align 1
@fan53555_regulator_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @fan53555_set_mode, ptr @fan53555_get_mode, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fan53555_set_suspend_voltage, ptr @fan53555_set_suspend_enable, ptr @fan53555_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_fan53555_regulator_driver_exit, ptr @__initcall__kmod_fan53555__247_672_fan53555_regulator_driver_init6, ptr @fan53555_regulator_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fan53555_regulator_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @fan53555_regulator_driver) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @fan53555_regulator_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @fan53555_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fan53555_regulator_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_config, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 316, i32 noundef 3520) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %94, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 4
  br label %30

17:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 12, i32 noundef 3520) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.fan53555_device_info, ptr %9, i32 0, i32 2
  %22 = tail call ptr @of_get_regulator_init_data(ptr noundef %6, ptr noundef %8, ptr noundef %21) #6
  store ptr %22, ptr %18, align 4
  %23 = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.9, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, ptr %3, align 4
  %27 = getelementptr inbounds %struct.fan53555_platform_data, ptr %18, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  br label %28

28:                                               ; preds = %25, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %30

29:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %34

30:                                               ; preds = %28, %15
  %31 = phi ptr [ %22, %28 ], [ %16, %15 ]
  %32 = phi ptr [ %18, %28 ], [ %13, %15 ]
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %29
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1) #7
  br label %94

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.fan53555_device_info, ptr %9, i32 0, i32 3
  store ptr %31, ptr %36, align 4
  %37 = load ptr, ptr %7, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = call ptr @of_device_get_match_data(ptr noundef %6) #6
  %41 = ptrtoint ptr %40 to i32
  br label %57

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.regulator_init_data, ptr %31, i32 0, i32 1, i32 22
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.fan53555_platform_data, ptr %32, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp ugt i32 %48, 7
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2) #7
  br label %94

51:                                               ; preds = %46
  %52 = getelementptr [8 x i32], ptr @slew_rates, i32 0, i32 %48
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %43, align 4
  br label %54

54:                                               ; preds = %51, %42
  %55 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %39
  %58 = phi i32 [ %56, %54 ], [ %41, %39 ]
  store i32 %58, ptr %9, align 4
  %59 = call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @fan53555_regmap_config, ptr noundef null, ptr noundef null) #6
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3) #7
  %62 = ptrtoint ptr %59 to i32
  br label %94

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.fan53555_device_info, ptr %9, i32 0, i32 1
  store ptr %6, ptr %64, align 4
  %65 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %9, ptr %65, align 8
  %66 = call i32 @regmap_read(ptr noundef %59, i32 noundef 3, ptr noundef nonnull %5) #6
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.4) #7
  br label %94

69:                                               ; preds = %63
  %70 = load i32, ptr %5, align 4
  %71 = and i32 %70, 15
  %72 = getelementptr inbounds %struct.fan53555_device_info, ptr %9, i32 0, i32 4
  store i32 %71, ptr %72, align 4
  %73 = call i32 @regmap_read(ptr noundef %59, i32 noundef 4, ptr noundef nonnull %5) #6
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5) #7
  br label %94

76:                                               ; preds = %69
  %77 = load i32, ptr %5, align 4
  %78 = and i32 %77, 15
  %79 = getelementptr inbounds %struct.fan53555_device_info, ptr %9, i32 0, i32 5
  store i32 %78, ptr %79, align 4
  %80 = load i32, ptr %72, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.6, i32 noundef %80, i32 noundef %78) #7
  %81 = call fastcc i32 @fan53555_device_setup(ptr noundef nonnull %9, ptr noundef nonnull %32)
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7) #7
  br label %94

84:                                               ; preds = %76
  %85 = load ptr, ptr %64, align 4
  store ptr %85, ptr %4, align 4
  %86 = load ptr, ptr %36, align 4
  %87 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 1
  store ptr %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 4
  store ptr %59, ptr %88, align 4
  %89 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 2
  store ptr %9, ptr %89, align 4
  %90 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 3
  store ptr %8, ptr %90, align 4
  %91 = call fastcc i32 @fan53555_regulator_register(ptr noundef nonnull %9, ptr noundef nonnull %4)
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8) #7
  br label %94

94:                                               ; preds = %93, %84, %83, %75, %68, %61, %50, %34, %2
  %95 = phi i32 [ %62, %61 ], [ %66, %68 ], [ %73, %75 ], [ %81, %83 ], [ -22, %50 ], [ -19, %34 ], [ -12, %2 ], [ %91, %93 ], [ %91, %84 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret i32 %95
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fan53555_device_setup(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load i32, ptr %0, align 4
  switch i32 %3, label %18 [
    i32 0, label %4
    i32 1, label %4
    i32 2, label %4
    i32 3, label %11
  ]

4:                                                ; preds = %2, %2, %2
  %5 = getelementptr inbounds %struct.fan53555_platform_data, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %8 [
    i32 0, label %21
    i32 1, label %7
  ]

7:                                                ; preds = %4
  br label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.10) #7
  br label %128

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.fan53555_platform_data, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %15 [
    i32 0, label %29
    i32 1, label %14
  ]

14:                                               ; preds = %11
  br label %29

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.10) #7
  br label %128

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.11, i32 noundef %3) #7
  br label %128

21:                                               ; preds = %7, %4
  %22 = phi i32 [ 0, %7 ], [ 1, %4 ]
  %23 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 7
  store i32 %6, ptr %23, align 4
  %24 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 6
  store i32 %22, ptr %24, align 4
  switch i32 %3, label %37 [
    i32 0, label %25
    i32 1, label %40
    i32 2, label %40
  ]

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 11
  store i32 2, ptr %26, align 4
  %27 = load i32, ptr %5, align 4
  switch i32 %27, label %46 [
    i32 0, label %43
    i32 1, label %28
  ]

28:                                               ; preds = %25
  br label %43

29:                                               ; preds = %14, %11
  %30 = phi i32 [ 16, %14 ], [ 17, %11 ]
  %31 = phi i32 [ 17, %14 ], [ 16, %11 ]
  %32 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 7
  store i32 %30, ptr %32, align 4
  %33 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 6
  store i32 %31, ptr %33, align 4
  %34 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 11
  store i32 20, ptr %34, align 4
  %35 = load i32, ptr %12, align 4
  switch i32 %35, label %111 [
    i32 0, label %108
    i32 1, label %36
  ]

36:                                               ; preds = %29
  br label %108

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.11, i32 noundef %3) #7
  br label %128

40:                                               ; preds = %21, %21
  %41 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 11
  store i32 %22, ptr %41, align 4
  %42 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 12
  store i32 64, ptr %42, align 4
  switch i32 %3, label %125 [
    i32 2, label %92
    i32 1, label %68
  ]

43:                                               ; preds = %28, %25
  %44 = phi i32 [ 1, %28 ], [ 2, %25 ]
  %45 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 12
  store i32 %44, ptr %45, align 4
  br label %46

46:                                               ; preds = %43, %25
  %47 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 8
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 8
  store i32 600000, ptr %55, align 4
  %56 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 9
  store i32 6250, ptr %56, align 4
  %57 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 14
  store i32 2, ptr %57, align 4
  %58 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 15
  store i32 112, ptr %58, align 4
  %59 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 16
  store ptr @slew_rates, ptr %59, align 4
  %60 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 17
  store i32 8, ptr %60, align 4
  %61 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 10
  store i32 128, ptr %61, align 4
  br label %128

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef %52) #7
  br label %128

65:                                               ; preds = %46
  %66 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.13, i32 noundef %48) #7
  br label %128

68:                                               ; preds = %40
  %69 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  switch i32 %70, label %79 [
    i32 0, label %71
    i32 1, label %82
    i32 3, label %82
    i32 5, label %82
    i32 8, label %82
    i32 4, label %78
  ]

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  switch i32 %73, label %75 [
    i32 3, label %82
    i32 15, label %74
  ]

74:                                               ; preds = %71
  br label %82

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef %73) #7
  br label %128

78:                                               ; preds = %68
  br label %82

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.13, i32 noundef %70) #7
  br label %128

82:                                               ; preds = %78, %74, %71, %68, %68, %68, %68
  %83 = phi i32 [ 800000, %74 ], [ 603000, %78 ], [ 600000, %71 ], [ 600000, %68 ], [ 600000, %68 ], [ 600000, %68 ], [ 600000, %68 ]
  %84 = phi i32 [ 10000, %74 ], [ 12826, %78 ], [ 10000, %71 ], [ 10000, %68 ], [ 10000, %68 ], [ 10000, %68 ], [ 10000, %68 ]
  %85 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 8
  store i32 %83, ptr %85, align 4
  %86 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 9
  store i32 %84, ptr %86, align 4
  %87 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 14
  store i32 2, ptr %87, align 4
  %88 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 15
  store i32 112, ptr %88, align 4
  %89 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 16
  store ptr @slew_rates, ptr %89, align 4
  %90 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 17
  store i32 8, ptr %90, align 4
  %91 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 10
  store i32 64, ptr %91, align 4
  br label %128

92:                                               ; preds = %40
  %93 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, -2
  %96 = icmp eq i32 %95, 8
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 8
  store i32 712500, ptr %98, align 4
  %99 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 9
  store i32 12500, ptr %99, align 4
  %100 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 14
  store i32 2, ptr %100, align 4
  %101 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 15
  store i32 112, ptr %101, align 4
  %102 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 16
  store ptr @slew_rates, ptr %102, align 4
  %103 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 17
  store i32 8, ptr %103, align 4
  %104 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 10
  store i32 64, ptr %104, align 4
  br label %128

105:                                              ; preds = %92
  %106 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.13, i32 noundef %94) #7
  br label %128

108:                                              ; preds = %36, %29
  %109 = phi i32 [ 128, %36 ], [ 64, %29 ]
  %110 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 12
  store i32 %109, ptr %110, align 4
  br label %111

111:                                              ; preds = %108, %29
  %112 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 4
  %113 = load i32, ptr %112, align 4
  switch i32 %113, label %122 [
    i32 12, label %114
    i32 0, label %114
  ]

114:                                              ; preds = %111, %111
  %115 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 14
  store i32 19, ptr %115, align 4
  %116 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 15
  store i32 0, ptr %116, align 4
  %117 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 16
  store ptr @tcs_slew_rates, ptr %117, align 4
  %118 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 17
  store i32 4, ptr %118, align 4
  %119 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 8
  store i32 600000, ptr %119, align 4
  %120 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 9
  store i32 6250, ptr %120, align 4
  %121 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 10
  store i32 128, ptr %121, align 4
  br label %128

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.13, i32 noundef %113) #7
  br label %128

125:                                              ; preds = %40
  %126 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.11, i32 noundef %3) #7
  br label %128

128:                                              ; preds = %125, %122, %114, %105, %97, %82, %79, %75, %65, %62, %54, %37, %18, %15, %8
  %129 = phi i32 [ -22, %18 ], [ -22, %15 ], [ -22, %37 ], [ -22, %125 ], [ -22, %8 ], [ 0, %54 ], [ -22, %62 ], [ -22, %65 ], [ -22, %79 ], [ 0, %82 ], [ -22, %75 ], [ -22, %105 ], [ 0, %97 ], [ -22, %122 ], [ 0, %114 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fan53555_regulator_register(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 2
  store ptr @.str.14, ptr %3, align 4
  %4 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 2, i32 1
  store ptr @.str.15, ptr %4, align 4
  %5 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 2, i32 10
  store ptr @fan53555_regulator_ops, ptr %5, align 4
  %6 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 2, i32 12
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 2, i32 8
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 2, i32 34
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 2, i32 35
  store i32 128, ptr %13, align 4
  %14 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 2, i32 14
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 2, i32 15
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 2, i32 27
  store i32 %11, ptr %20, align 4
  %21 = add i32 %8, -1
  %22 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 2, i32 28
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 14
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 2, i32 53
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 15
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 2, i32 54
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 16
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 2, i32 55
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 17
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 2, i32 56
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 2, i32 13
  store ptr null, ptr %35, align 4
  %36 = getelementptr inbounds %struct.fan53555_device_info, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = tail call ptr @devm_regulator_register(ptr noundef %37, ptr noundef %3, ptr noundef %1) #6
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  %40 = ptrtoint ptr %38 to i32
  %41 = select i1 %39, i32 %40, i32 0
  ret i32 %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fan53555_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  switch i32 %1, label %20 [
    i32 1, label %4
    i32 2, label %12
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fan53555_device_info, ptr %3, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fan53555_device_info, ptr %3, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %20

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.fan53555_device_info, ptr %3, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.fan53555_device_info, ptr %3, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %20

20:                                               ; preds = %12, %4, %2
  %21 = phi i32 [ -22, %2 ], [ 0, %12 ], [ 0, %4 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fan53555_get_mode(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fan53555_device_info, ptr %3, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %2) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load i32, ptr %2, align 4
  %12 = getelementptr inbounds %struct.fan53555_device_info, ptr %3, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 2, i32 1
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi i32 [ %8, %1 ], [ %16, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_ramp_delay_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fan53555_set_suspend_voltage(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.fan53555_device_info, ptr %3, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @regulator_map_voltage_linear(ptr noundef %0, i32 noundef %1, i32 noundef %1) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.fan53555_device_info, ptr %3, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.fan53555_device_info, ptr %3, i32 0, i32 2, i32 28
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  store i32 %1, ptr %4, align 4
  br label %20

20:                                               ; preds = %19, %10, %7, %2
  %21 = phi i32 [ 0, %19 ], [ 0, %2 ], [ %8, %7 ], [ %17, %10 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fan53555_set_suspend_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fan53555_device_info, ptr %2, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %6, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fan53555_set_suspend_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fan53555_device_info, ptr %2, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %6, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
