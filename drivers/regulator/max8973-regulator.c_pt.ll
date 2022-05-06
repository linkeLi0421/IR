; ModuleID = '/llk/IR/drivers/regulator/max8973-regulator.c_pt.bc'
source_filename = "../drivers/regulator/max8973-regulator.c"
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
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.max8973_regulator_platform_data = type { ptr, i32, i32, i8, i32, i32, i8 }
%struct.max8973_chip = type { ptr, %struct.regulator_desc, ptr, i8, i32, [2 x i32], [2 x i32], i32, i32, %struct.regulator_ops, i32, i32, i32, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_max8973_regulator__247_830_max8973_init4 = internal global ptr @max8973_init, section ".initcall4.init", align 4
@max8973_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @max8973_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_max8973_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max8973_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_max8973_cleanup = internal global ptr @max8973_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [64 x i8] c"max8973_regulator.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [63 x i8] c"max8973_regulator.description=MAX8973 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [59 x i8] c"max8973_regulator.file=drivers/regulator/max8973-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [33 x i8] c"max8973_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"max8973\00", align 1
@of_max8973_match_tbl = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max8973\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77621\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@max8973_id = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max8973\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max77621\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"No Platform data\00", align 1
@max8973_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"regmap init failed, err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"register CHIPID1 read failed, %d\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"CHIP-ID OTP: 0x%02x ID_M: 0x%02x\0A\00", align 1
@max8973_dcdc_ops = internal unnamed_addr constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @max8973_dcdc_set_voltage_sel, ptr null, ptr @max8973_dcdc_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8973_dcdc_set_mode, ptr @max8973_dcdc_get_mode, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"max8973-dvs\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"gpio_request for gpio %d failed, err = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"maxim,enable\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Max8973 Init failed, err = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"regulator register failed, err %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"maxim,externally-enable\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"maxim,dvs-gpio\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"maxim,dvs-default-state\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"maxim,enable-remote-sense\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"maxim,enable-falling-slew-rate\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"maxim,enable-active-discharge\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"maxim,enable-frequency-shift\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"maxim,enable-bias-control\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"maxim,enable-etr\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"maxim,enable-high-etr-sensitivity\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"junction-warn-millicelsius\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"register %d update failed, err %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"register %d read failed, err = %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"register %d read failed, err %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"register %d update failed: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"register %d read failed: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"register %d read failed, err = %d\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"register %d write failed, err = %d\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"register %d update failed, err = %d\00", align 1
@max77621_tz_ops = internal constant %struct.thermal_zone_of_device_ops { ptr @max8973_thermal_read_temp, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.29 = private unnamed_addr constant [39 x i8] c"Failed to register thermal sensor: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Failed to request irq %d, %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"Failed to read register CHIPID1, %d\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_max8973_cleanup, ptr @__initcall__kmod_max8973_regulator__247_830_max8973_init4, ptr @max8973_cleanup], section "llvm.metadata"
@switch.table.max8973_init_dcdc = private constant [4 x i32] [i32 12000, i32 25000, i32 50000, i32 200000], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @max8973_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max8973_i2c_driver) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @max8973_cleanup() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @max8973_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8973_probe(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_config, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %8, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  br label %94

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %93, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 28, i32 noundef 3520) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %92, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.10, ptr noundef null) #7
  %22 = icmp ne ptr %21, null
  %23 = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %18, i32 0, i32 3
  %24 = zext i1 %22 to i8
  store i8 %24, ptr %23, align 4
  %25 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %15, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef null) #7
  %26 = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %18, i32 0, i32 5
  store i32 %25, ptr %26, align 4
  %27 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load i32, ptr %3, align 4
  %31 = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %18, i32 0, i32 6
  %32 = trunc i32 %30 to i8
  %33 = load i8, ptr %31, align 4
  %34 = and i8 %32, 1
  %35 = and i8 %33, -2
  %36 = or i8 %35, %34
  store i8 %36, ptr %31, align 4
  br label %37

37:                                               ; preds = %29, %20
  %38 = call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.13, ptr noundef null) #7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %18, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, 1
  store i32 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.14, ptr noundef null) #7
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %18, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, 2
  store i32 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.15, ptr noundef null) #7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %18, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = or i32 %56, 4
  store i32 %57, ptr %55, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.16, ptr noundef null) #7
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %18, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, 32
  store i32 %64, ptr %62, align 4
  br label %65

65:                                               ; preds = %61, %58
  %66 = call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.17, ptr noundef null) #7
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %18, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = or i32 %70, 8
  store i32 %71, ptr %69, align 4
  br label %72

72:                                               ; preds = %68, %65
  %73 = call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.18, ptr noundef null) #7
  %74 = icmp ne ptr %73, null
  %75 = call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.19, ptr noundef null) #7
  %76 = icmp ne ptr %75, null
  %77 = select i1 %76, i1 true, i1 %74
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %18, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = select i1 %76, i32 65536, i32 131072
  %82 = or i32 %80, %81
  store i32 %82, ptr %79, align 4
  br label %83

83:                                               ; preds = %78, %72
  %84 = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %18, i32 0, i32 2
  store i32 140000, ptr %84, align 4
  %85 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.20, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %86 = icmp sgt i32 %85, -1
  %87 = load i32, ptr %3, align 4
  %88 = icmp ult i32 %87, 120001
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 120000, ptr %84, align 4
  br label %91

91:                                               ; preds = %90, %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %94

92:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %93

93:                                               ; preds = %92, %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1) #8
  br label %266

94:                                               ; preds = %91, %10
  %95 = phi i32 [ %25, %91 ], [ %12, %10 ]
  %96 = phi ptr [ %18, %91 ], [ %8, %10 ]
  %97 = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %96, i32 0, i32 5
  %98 = icmp eq i32 %95, -517
  br i1 %98, label %266, label %99

99:                                               ; preds = %94
  %100 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 444, i32 noundef 3520) #7
  %101 = icmp eq ptr %100, null
  br i1 %101, label %266, label %102

102:                                              ; preds = %99
  %103 = call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @max8973_regmap_config, ptr noundef null, ptr noundef null) #7
  %104 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 2
  store ptr %103, ptr %104, align 4
  %105 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = ptrtoint ptr %103 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef %107) #8
  br label %266

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %110 = load ptr, ptr %109, align 8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %121, label %112

112:                                              ; preds = %108
  %113 = call ptr @of_match_device(ptr noundef nonnull @of_max8973_match_tbl, ptr noundef %6) #7
  %114 = icmp eq ptr %113, null
  br i1 %114, label %266, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.of_device_id, ptr %113, i32 0, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = ptrtoint ptr %117 to i32
  %119 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 10
  store i32 %118, ptr %119, align 4
  %120 = load ptr, ptr %104, align 4
  br label %125

121:                                              ; preds = %108
  %122 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 10
  store i32 %123, ptr %124, align 4
  br label %125

125:                                              ; preds = %121, %115
  %126 = phi ptr [ %120, %115 ], [ %103, %121 ]
  %127 = call i32 @regmap_read(ptr noundef %126, i32 noundef 4, ptr noundef nonnull %5) #7
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef %127) #8
  br label %266

130:                                              ; preds = %125
  %131 = load i32, ptr %5, align 4
  %132 = lshr i32 %131, 4
  %133 = and i32 %132, 15
  %134 = lshr i32 %131, 1
  %135 = and i32 %134, 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef %133, i32 noundef %135) #8
  %136 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %100, ptr %136, align 8
  %137 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(144) %137, ptr noundef nonnull align 4 dereferenceable(144) @max8973_dcdc_ops, i32 144, i1 false)
  store ptr %6, ptr %100, align 4
  %138 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 1
  store ptr %1, ptr %138, align 4
  %139 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 1, i32 6
  store i32 0, ptr %139, align 4
  %140 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 1, i32 10
  store ptr %137, ptr %140, align 4
  %141 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 1, i32 12
  store i32 0, ptr %141, align 4
  %142 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 1, i32 13
  store ptr null, ptr %142, align 4
  %143 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 1, i32 14
  store i32 606250, ptr %143, align 4
  %144 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 1, i32 15
  store i32 6250, ptr %144, align 4
  %145 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 1, i32 8
  store i32 128, ptr %145, align 4
  %146 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 1, i32 53
  store i32 2, ptr %146, align 4
  %147 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 1, i32 54
  store i32 3, ptr %147, align 4
  %148 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 1, i32 55
  store ptr @switch.table.max8973_init_dcdc, ptr %148, align 4
  %149 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 1, i32 56
  store i32 4, ptr %149, align 4
  %150 = load i32, ptr %97, align 4
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %151, i32 -22, i32 %150
  %153 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 4
  store i32 %152, ptr %153, align 4
  %154 = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %96, i32 0, i32 3
  %155 = load i8, ptr %154, align 4, !range !9
  %156 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 3
  store i8 %155, ptr %156, align 4
  %157 = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %96, i32 0, i32 6
  %158 = load i8, ptr %157, align 4
  %159 = and i8 %158, 1
  %160 = zext i8 %159 to i32
  %161 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 8
  store i32 %160, ptr %161, align 4
  %162 = load i8, ptr %157, align 4
  %163 = and i8 %162, 1
  %164 = zext i8 %163 to i32
  %165 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 7
  store i32 %164, ptr %165, align 4
  %166 = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %96, i32 0, i32 2
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 11
  store i32 %167, ptr %168, align 4
  %169 = getelementptr %struct.max8973_chip, ptr %100, i32 0, i32 5
  store i32 %164, ptr %169, align 4
  %170 = icmp ult i32 %152, 2048
  br i1 %170, label %171, label %184

171:                                              ; preds = %130
  %172 = load i8, ptr %157, align 4
  %173 = shl i8 %172, 1
  %174 = and i8 %173, 2
  %175 = zext i8 %174 to i32
  %176 = call i32 @devm_gpio_request_one(ptr noundef %6, i32 noundef %152, i32 noundef %175, ptr noundef nonnull @.str.5) #7
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %171
  %179 = getelementptr %struct.max8973_chip, ptr %100, i32 0, i32 5, i32 1
  store i32 1, ptr %179, align 4
  %180 = load i32, ptr %165, align 4
  store i32 %180, ptr %169, align 4
  %181 = getelementptr %struct.max8973_chip, ptr %100, i32 0, i32 5, i32 %180
  store i32 0, ptr %181, align 4
  br label %189

182:                                              ; preds = %171
  %183 = load i32, ptr %153, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, i32 noundef %183, i32 noundef %176) #8
  br label %266

184:                                              ; preds = %130
  %185 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 9, i32 3
  store ptr @regulator_set_voltage_sel_regmap, ptr %185, align 4
  %186 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 9, i32 5
  store ptr @regulator_get_voltage_sel_regmap, ptr %186, align 4
  %187 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 1, i32 27
  store i32 %164, ptr %187, align 4
  %188 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 1, i32 28
  store i32 127, ptr %188, align 4
  br label %189

189:                                              ; preds = %184, %178
  br i1 %9, label %190, label %193

190:                                              ; preds = %189
  %191 = load ptr, ptr %109, align 8
  %192 = call ptr @of_get_regulator_init_data(ptr noundef %6, ptr noundef %191, ptr noundef %138) #7
  store ptr %192, ptr %96, align 4
  br label %195

193:                                              ; preds = %189
  %194 = load ptr, ptr %96, align 4
  br label %195

195:                                              ; preds = %193, %190
  %196 = phi ptr [ %194, %193 ], [ %192, %190 ]
  %197 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 10
  %198 = load i32, ptr %197, align 4
  switch i32 %198, label %242 [
    i32 0, label %199
    i32 1, label %226
  ]

199:                                              ; preds = %195
  %200 = load i8, ptr %154, align 4, !range !9
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 1, i32 34
  store i32 0, ptr %203, align 4
  %204 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 1, i32 35
  store i32 128, ptr %204, align 4
  %205 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 9, i32 14
  store ptr @regulator_enable_regmap, ptr %205, align 4
  %206 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 9, i32 15
  store ptr @regulator_disable_regmap, ptr %206, align 4
  %207 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 9, i32 16
  store ptr @regulator_is_enabled_regmap, ptr %207, align 4
  br label %242

208:                                              ; preds = %199
  %209 = icmp eq ptr %196, null
  br i1 %209, label %215, label %210

210:                                              ; preds = %208
  %211 = getelementptr inbounds %struct.regulator_init_data, ptr %196, i32 0, i32 1, i32 28
  %212 = load i16, ptr %211, align 4
  %213 = and i16 %212, 3
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210, %208
  br label %216

216:                                              ; preds = %215, %210
  %217 = phi i32 [ 19, %215 ], [ 23, %210 ]
  %218 = call ptr @devm_gpiod_get_optional(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef %217) #7
  %219 = icmp ugt ptr %218, inttoptr (i32 -4096 to ptr)
  br i1 %219, label %220, label %222

220:                                              ; preds = %216
  %221 = ptrtoint ptr %218 to i32
  br label %266

222:                                              ; preds = %216
  %223 = icmp eq ptr %218, null
  br i1 %223, label %242, label %224

224:                                              ; preds = %222
  %225 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 5
  store ptr %218, ptr %225, align 4
  store i8 1, ptr %156, align 4
  br label %242

226:                                              ; preds = %195
  %227 = call ptr @devm_gpiod_get_optional(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef 7) #7
  %228 = icmp ugt ptr %227, inttoptr (i32 -4096 to ptr)
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = ptrtoint ptr %227 to i32
  br label %266

231:                                              ; preds = %226
  %232 = icmp eq ptr %227, null
  br i1 %232, label %234, label %233

233:                                              ; preds = %231
  store i8 1, ptr %156, align 4
  br label %234

234:                                              ; preds = %233, %231
  %235 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 1, i32 34
  store i32 0, ptr %235, align 4
  %236 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 1, i32 35
  store i32 128, ptr %236, align 4
  %237 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 9, i32 14
  store ptr @regulator_enable_regmap, ptr %237, align 4
  %238 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 9, i32 15
  store ptr @regulator_disable_regmap, ptr %238, align 4
  %239 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 9, i32 16
  store ptr @regulator_is_enabled_regmap, ptr %239, align 4
  %240 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 9, i32 6
  store ptr @max8973_set_current_limit, ptr %240, align 4
  %241 = getelementptr inbounds %struct.max8973_chip, ptr %100, i32 0, i32 9, i32 7
  store ptr @max8973_get_current_limit, ptr %241, align 4
  br label %242

242:                                              ; preds = %234, %224, %222, %202, %195
  %243 = call fastcc i32 @max8973_init_dcdc(ptr noundef nonnull %100, ptr noundef nonnull %96)
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = load ptr, ptr %100, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %246, ptr noundef nonnull @.str.8, i32 noundef %243) #8
  br label %266

247:                                              ; preds = %242
  store ptr %6, ptr %4, align 4
  %248 = load ptr, ptr %96, align 4
  %249 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 1
  store ptr %248, ptr %249, align 4
  %250 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 2
  store ptr %100, ptr %250, align 4
  %251 = load ptr, ptr %109, align 8
  %252 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 3
  store ptr %251, ptr %252, align 4
  %253 = load ptr, ptr %104, align 4
  %254 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 4
  store ptr %253, ptr %254, align 4
  %255 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 5
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %259, label %258

258:                                              ; preds = %247
  call void @devm_gpiod_unhinge(ptr noundef %6, ptr noundef nonnull %256) #7
  br label %259

259:                                              ; preds = %258, %247
  %260 = call ptr @devm_regulator_register(ptr noundef %6, ptr noundef %138, ptr noundef nonnull %4) #7
  %261 = icmp ugt ptr %260, inttoptr (i32 -4096 to ptr)
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = ptrtoint ptr %260 to i32
  %264 = load ptr, ptr %100, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %264, ptr noundef nonnull @.str.9, i32 noundef %263) #8
  br label %266

265:                                              ; preds = %259
  call fastcc void @max8973_thermal_init(ptr noundef nonnull %100)
  br label %266

266:                                              ; preds = %265, %262, %245, %229, %220, %182, %129, %112, %106, %99, %94, %93
  %267 = phi i32 [ %107, %106 ], [ %127, %129 ], [ %243, %245 ], [ %263, %262 ], [ 0, %265 ], [ %230, %229 ], [ %221, %220 ], [ -5, %93 ], [ -517, %94 ], [ -12, %99 ], [ -61, %112 ], [ %176, %182 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  ret i32 %267
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8973_set_current_limit(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %5 = icmp slt i32 %2, 9000001
  %6 = icmp slt i32 %2, 12000001
  %7 = select i1 %6, i32 4, i32 12
  %8 = select i1 %5, i32 0, i32 %7
  %9 = getelementptr inbounds %struct.max8973_chip, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 3, i32 noundef 12, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.24, i32 noundef 3, i32 noundef %11) #8
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi i32 [ %11, %13 ], [ 0, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8973_get_current_limit(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.max8973_chip, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 3, ptr noundef nonnull %2) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.25, i32 noundef 3, i32 noundef %6) #8
  br label %16

10:                                               ; preds = %1
  %11 = load i32, ptr %2, align 4
  %12 = and i32 %11, 12
  switch i32 %12, label %15 [
    i32 12, label %16
    i32 4, label %13
    i32 0, label %14
  ]

13:                                               ; preds = %10
  br label %16

14:                                               ; preds = %10
  br label %16

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %14, %13, %10, %8
  %17 = phi i32 [ %6, %8 ], [ 9000000, %15 ], [ 9000000, %14 ], [ 12000000, %13 ], [ 15000000, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max8973_init_dcdc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.max8973_chip, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 2, ptr noundef nonnull %3) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.26, i32 noundef 2, i32 noundef %6) #8
  br label %104

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 3
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds [4 x i32], ptr @switch.table.max8973_init_dcdc, i32 0, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.max8973_chip, ptr %0, i32 0, i32 1, i32 18
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i8
  %21 = shl i8 %20, 7
  %22 = or i8 %21, %13
  %23 = and i32 %19, 2
  %24 = icmp eq i32 %23, 0
  %25 = or i8 %22, 32
  %26 = select i1 %24, i8 %25, i8 %22
  %27 = shl i8 %20, 2
  %28 = and i8 %27, 16
  %29 = or i8 %26, %28
  %30 = and i32 %19, 8
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 240, i32 20
  %33 = trunc i32 %30 to i8
  %34 = or i8 %29, %33
  %35 = getelementptr inbounds %struct.max8973_chip, ptr %0, i32 0, i32 1, i32 57
  store i32 %32, ptr %35, align 4
  %36 = load i32, ptr %18, align 4
  %37 = trunc i32 %36 to i8
  %38 = lshr i8 %37, 3
  %39 = and i8 %38, 4
  %40 = or i8 %39, %34
  %41 = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %1, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 120000
  br i1 %43, label %44, label %49

44:                                               ; preds = %10
  %45 = getelementptr inbounds %struct.max8973_chip, ptr %0, i32 0, i32 10
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 1
  %48 = select i1 %47, i8 -128, i8 0
  br label %49

49:                                               ; preds = %44, %10
  %50 = phi i8 [ 0, %10 ], [ %48, %44 ]
  %51 = and i32 %36, 16
  %52 = icmp eq i32 %51, 0
  %53 = or i8 %50, 32
  %54 = select i1 %52, i8 %53, i8 %50
  %55 = lshr i32 %36, 16
  %56 = and i32 %55, 3
  switch i32 %56, label %63 [
    i32 0, label %57
    i32 1, label %64
    i32 2, label %59
    i32 3, label %61
  ]

57:                                               ; preds = %49
  %58 = or i8 %54, 12
  br label %64

59:                                               ; preds = %49
  %60 = or i8 %54, 4
  br label %64

61:                                               ; preds = %49
  %62 = or i8 %54, 8
  br label %64

63:                                               ; preds = %49
  unreachable

64:                                               ; preds = %61, %59, %57, %49
  %65 = phi i8 [ %62, %61 ], [ %60, %59 ], [ %58, %57 ], [ %54, %49 ]
  %66 = lshr i32 %36, 20
  %67 = and i32 %66, 3
  switch i32 %67, label %74 [
    i32 0, label %68
    i32 1, label %75
    i32 2, label %70
    i32 3, label %72
  ]

68:                                               ; preds = %64
  %69 = or i8 %65, 1
  br label %75

70:                                               ; preds = %64
  %71 = or i8 %65, 2
  br label %75

72:                                               ; preds = %64
  %73 = or i8 %65, 3
  br label %75

74:                                               ; preds = %64
  unreachable

75:                                               ; preds = %72, %70, %68, %64
  %76 = phi i8 [ %73, %72 ], [ %71, %70 ], [ %69, %68 ], [ %65, %64 ]
  %77 = load ptr, ptr %4, align 4
  %78 = zext i8 %40 to i32
  %79 = call i32 @regmap_write(ptr noundef %77, i32 noundef 2, i32 noundef %78) #7
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.27, i32 noundef 2, i32 noundef %79) #8
  br label %104

83:                                               ; preds = %75
  %84 = load ptr, ptr %4, align 4
  %85 = zext i8 %76 to i32
  %86 = call i32 @regmap_write(ptr noundef %84, i32 noundef 3, i32 noundef %85) #7
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.27, i32 noundef 3, i32 noundef %86) #8
  br label %104

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.max8973_chip, ptr %0, i32 0, i32 3
  %92 = load i8, ptr %91, align 4, !range !9
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.max8973_chip, ptr %0, i32 0, i32 10
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load ptr, ptr %4, align 4
  %100 = call i32 @regmap_update_bits_base(ptr noundef %99, i32 noundef 0, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef %100) #8
  br label %104

104:                                              ; preds = %102, %98, %94, %90, %88, %81, %8
  %105 = phi i32 [ %6, %8 ], [ %79, %81 ], [ %86, %88 ], [ %100, %102 ], [ %100, %98 ], [ %86, %94 ], [ %86, %90 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_gpiod_unhinge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @max8973_thermal_init(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.max8973_chip, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %41

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %6, i32 noundef 0, ptr noundef %0, ptr noundef nonnull @max77621_tz_ops) #7
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i32
  %11 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.29, i32 noundef %10) #8
  br label %41

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.max8973_chip, ptr %0, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %41, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @irq_get_irq_data(i32 noundef %14) #7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.irq_data, ptr %17, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 15
  %24 = or i32 %23, 8320
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i32 [ %24, %19 ], [ 8320, %16 ]
  %27 = load ptr, ptr %0, align 4
  %28 = load i32, ptr %13, align 4
  %29 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load ptr, ptr %27, align 4
  br label %34

34:                                               ; preds = %32, %25
  %35 = phi ptr [ %33, %32 ], [ %30, %25 ]
  %36 = tail call i32 @devm_request_threaded_irq(ptr noundef %27, i32 noundef %28, ptr noundef null, ptr noundef nonnull @max8973_thermal_irq, i32 noundef %26, ptr noundef %35, ptr noundef %0) #7
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load ptr, ptr %0, align 4
  %40 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.30, i32 noundef %40, i32 noundef %36) #8
  br label %41

41:                                               ; preds = %38, %34, %12, %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8973_dcdc_set_voltage_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.max8973_chip, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.max8973_chip, ptr %3, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.max8973_chip, ptr %3, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, 2048
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = getelementptr %struct.max8973_chip, ptr %3, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.max8973_chip, ptr %3, i32 0, i32 6, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %36, label %17

17:                                               ; preds = %11
  %18 = getelementptr %struct.max8973_chip, ptr %3, i32 0, i32 5, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.max8973_chip, ptr %3, i32 0, i32 6, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %1
  store i32 %13, ptr %18, align 4
  store i32 %19, ptr %12, align 4
  br i1 %22, label %36, label %23

23:                                               ; preds = %17, %2
  %24 = phi i32 [ %19, %17 ], [ %5, %2 ]
  %25 = phi i32 [ %19, %17 ], [ %7, %2 ]
  %26 = getelementptr inbounds %struct.max8973_chip, ptr %3, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %24, i32 noundef 127, i32 noundef %1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.21, i32 noundef %24, i32 noundef %28) #8
  br label %41

32:                                               ; preds = %23
  store i32 %24, ptr %4, align 4
  %33 = getelementptr %struct.max8973_chip, ptr %3, i32 0, i32 6, i32 %25
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %8, align 4
  %35 = icmp ult i32 %34, 2048
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %17, %11
  %37 = phi i32 [ %25, %32 ], [ %19, %17 ], [ %13, %11 ]
  %38 = phi i32 [ %34, %32 ], [ %9, %17 ], [ %9, %11 ]
  %39 = and i32 %37, 1
  %40 = tail call ptr @gpio_to_desc(i32 noundef %38) #7
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %40, i32 noundef %39) #7
  store i32 %37, ptr %6, align 4
  br label %41

41:                                               ; preds = %36, %32, %30
  %42 = phi i32 [ %28, %30 ], [ 0, %36 ], [ 0, %32 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8973_dcdc_get_voltage_sel(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.max8973_chip, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.max8973_chip, ptr %3, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %2) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 4
  %12 = load i32, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.22, i32 noundef %12, i32 noundef %8) #8
  br label %16

13:                                               ; preds = %1
  %14 = load i32, ptr %2, align 4
  %15 = and i32 %14, 127
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ %8, %10 ], [ %15, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8973_dcdc_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  switch i32 %1, label %13 [
    i32 1, label %5
    i32 2, label %4
  ]

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %2
  %6 = phi i32 [ 0, %4 ], [ 64, %2 ]
  %7 = getelementptr inbounds %struct.max8973_chip, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 2, i32 noundef 64, i32 noundef %6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.21, i32 noundef 2, i32 noundef %9) #8
  br label %13

13:                                               ; preds = %11, %5, %2
  %14 = phi i32 [ -22, %2 ], [ %9, %11 ], [ %9, %5 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8973_dcdc_get_mode(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.max8973_chip, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 2, ptr noundef nonnull %2) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.23, i32 noundef 2, i32 noundef %6) #8
  br label %15

10:                                               ; preds = %1
  %11 = load i32, ptr %2, align 4
  %12 = and i32 %11, 64
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 2, i32 1
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ %6, %8 ], [ %14, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_ramp_delay_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8973_thermal_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.max8973_chip, ptr %1, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  tail call void @thermal_zone_device_update(ptr noundef %4, i32 noundef 0) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8973_thermal_read_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.max8973_chip, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 4, ptr noundef nonnull %3) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.31, i32 noundef %6) #8
  br label %20

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.max8973_chip, ptr %0, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1000
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i32 [ %17, %14 ], [ 100000, %10 ]
  store i32 %19, ptr %1, align 4
  br label %20

20:                                               ; preds = %18, %8
  %21 = phi i32 [ %6, %8 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
