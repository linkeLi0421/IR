; ModuleID = '/llk/IR/drivers/regulator/tps62360-regulator.c_pt.bc'
source_filename = "../drivers/regulator/tps62360-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.tps62360_chip = type { ptr, %struct.regulator_desc, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [4 x i32], [4 x i32], i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.tps62360_regulator_platform_data = type { ptr, i8, i8, i32, i32 }

@__initcall__kmod_tps62360_regulator__247_522_tps62360_init4 = internal global ptr @tps62360_init, section ".initcall4.init", align 4
@tps62360_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @tps62360_probe, ptr null, ptr null, ptr @tps62360_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tps62360_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tps62360_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_tps62360_cleanup = internal global ptr @tps62360_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [65 x i8] c"tps62360_regulator.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [65 x i8] c"tps62360_regulator.description=TPS6236x voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [61 x i8] c"tps62360_regulator.file=drivers/regulator/tps62360-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [34 x i8] c"tps62360_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"tps62360\00", align 1
@tps62360_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps62360\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps62361\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps62362\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps62363\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@tps62360_id = internal constant [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tps62360\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tps62361\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"tps62362\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"tps62363\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], align 4
@tps62360_dcdc_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @tps62360_dcdc_set_voltage_sel, ptr null, ptr @tps62360_dcdc_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps62360_set_mode, ptr @tps62360_get_mode, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error: No device match found\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"No device tree match or id table match found\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s(): Platform data not found\0A\00", align 1
@__func__.tps62360_probe = private unnamed_addr constant [15 x i8] c"tps62360_probe\00", align 1
@tps62360_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"%s(): regmap allocation failed with err %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"vsel0\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"%s(): Could not obtain vsel0 GPIO: %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"vsel1\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"%s(): Could not obtain vsel1 GPIO: %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"%s(): Init failed with err = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"%s(): regulator register failed with err %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"%s(): register %d update failed with err %d\0A\00", align 1
@__func__.tps62360_dcdc_set_voltage_sel = private unnamed_addr constant [30 x i8] c"tps62360_dcdc_set_voltage_sel\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"%s(): register %d read failed with err %d\0A\00", align 1
@__func__.tps62360_dcdc_get_voltage_sel = private unnamed_addr constant [30 x i8] c"tps62360_dcdc_get_voltage_sel\00", align 1
@__func__.tps62360_set_mode = private unnamed_addr constant [18 x i8] c"tps62360_set_mode\00", align 1
@__func__.tps62360_get_mode = private unnamed_addr constant [18 x i8] c"tps62360_get_mode\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Not able to get OF regulator init data\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"ti,vsel0-state-high\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"ti,vsel1-state-high\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"ti,enable-pull-down\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"ti,enable-vout-discharge\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"%s(): register %d write failed with err %d\0A\00", align 1
@__func__.tps62360_init_dcdc = private unnamed_addr constant [19 x i8] c"tps62360_init_dcdc\00", align 1
@__func__.tps62360_shutdown = private unnamed_addr constant [18 x i8] c"tps62360_shutdown\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_tps62360_cleanup, ptr @__initcall__kmod_tps62360_regulator__247_522_tps62360_init4, ptr @tps62360_cleanup], section "llvm.metadata"
@switch.table.tps62360_probe = private unnamed_addr constant [4 x i32] [i32 770000, i32 500000, i32 770000, i32 500000], align 4
@switch.table.tps62360_probe.19 = private unnamed_addr constant [4 x i32] [i32 64, i32 128, i32 64, i32 128], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tps62360_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tps62360_i2c_driver) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tps62360_cleanup() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @tps62360_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps62360_probe(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false)
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 304, i32 noundef 3520) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %182, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.tps62360_chip, ptr %8, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.tps62360_chip, ptr %8, i32 0, i32 1, i32 6
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.tps62360_chip, ptr %8, i32 0, i32 1, i32 10
  store ptr @tps62360_dcdc_ops, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tps62360_chip, ptr %8, i32 0, i32 1, i32 12
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tps62360_chip, ptr %8, i32 0, i32 1, i32 13
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tps62360_chip, ptr %8, i32 0, i32 1, i32 15
  store i32 10000, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %59, label %21

21:                                               ; preds = %10
  %22 = tail call ptr @of_match_device(ptr noundef nonnull @tps62360_of_match, ptr noundef %5) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %58, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.of_device_id, ptr %22, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = icmp eq ptr %7, null
  br i1 %28, label %29, label %67

29:                                               ; preds = %24
  %30 = load ptr, ptr %18, align 8
  %31 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 16, i32 noundef 3520) #7
  %32 = icmp eq ptr %31, null
  br i1 %32, label %66, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %18, align 8
  %35 = tail call ptr @of_get_regulator_init_data(ptr noundef %5, ptr noundef %34, ptr noundef %12) #7
  store ptr %35, ptr %31, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.13) #8
  br label %66

38:                                               ; preds = %33
  %39 = tail call ptr @of_find_property(ptr noundef %30, ptr noundef nonnull @.str.14, ptr noundef null) #7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.tps62360_regulator_platform_data, ptr %31, i32 0, i32 3
  store i32 1, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = tail call ptr @of_find_property(ptr noundef %30, ptr noundef nonnull @.str.15, ptr noundef null) #7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.tps62360_regulator_platform_data, ptr %31, i32 0, i32 4
  store i32 1, ptr %47, align 4
  br label %48

48:                                               ; preds = %46, %43
  %49 = tail call ptr @of_find_property(ptr noundef %30, ptr noundef nonnull @.str.16, ptr noundef null) #7
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.tps62360_regulator_platform_data, ptr %31, i32 0, i32 2
  store i8 1, ptr %52, align 1
  br label %53

53:                                               ; preds = %51, %48
  %54 = tail call ptr @of_find_property(ptr noundef %30, ptr noundef nonnull @.str.17, ptr noundef null) #7
  %55 = icmp eq ptr %54, null
  br i1 %55, label %67, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.tps62360_regulator_platform_data, ptr %31, i32 0, i32 1
  store i8 1, ptr %57, align 4
  br label %67

58:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #8
  br label %182

59:                                               ; preds = %10
  %60 = icmp eq ptr %1, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #8
  br label %182

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq ptr %7, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %37, %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.tps62360_probe) #8
  br label %182

67:                                               ; preds = %62, %56, %53, %24
  %68 = phi i32 [ %64, %62 ], [ %27, %53 ], [ %27, %56 ], [ %27, %24 ]
  %69 = phi ptr [ %7, %62 ], [ %31, %53 ], [ %31, %56 ], [ %7, %24 ]
  %70 = getelementptr inbounds %struct.tps62360_regulator_platform_data, ptr %69, i32 0, i32 1
  %71 = load i8, ptr %70, align 4, !range !8
  %72 = getelementptr inbounds %struct.tps62360_chip, ptr %8, i32 0, i32 8
  store i8 %71, ptr %72, align 2
  %73 = getelementptr inbounds %struct.tps62360_regulator_platform_data, ptr %69, i32 0, i32 2
  %74 = load i8, ptr %73, align 1, !range !8
  %75 = getelementptr inbounds %struct.tps62360_chip, ptr %8, i32 0, i32 7
  store i8 %74, ptr %75, align 1
  store ptr %5, ptr %8, align 4
  %76 = icmp ult i32 %68, 4
  br i1 %76, label %77, label %182

77:                                               ; preds = %67
  %78 = getelementptr inbounds [4 x i32], ptr @switch.table.tps62360_probe, i32 0, i32 %68
  %79 = load i32, ptr %78, align 4
  %80 = shl i32 %68, 3
  %81 = lshr i32 2134867775, %80
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds [4 x i32], ptr @switch.table.tps62360_probe.19, i32 0, i32 %68
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.tps62360_chip, ptr %8, i32 0, i32 1, i32 14
  store i32 %79, ptr %85, align 4
  %86 = getelementptr inbounds %struct.tps62360_chip, ptr %8, i32 0, i32 6
  store i8 %82, ptr %86, align 4
  %87 = getelementptr inbounds %struct.tps62360_chip, ptr %8, i32 0, i32 1, i32 8
  store i32 %84, ptr %87, align 4
  %88 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @tps62360_regmap_config, ptr noundef null, ptr noundef null) #7
  %89 = getelementptr inbounds %struct.tps62360_chip, ptr %8, i32 0, i32 3
  store ptr %88, ptr %89, align 4
  %90 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %93

91:                                               ; preds = %77
  %92 = ptrtoint ptr %88 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tps62360_probe, i32 noundef %92) #8
  br label %182

93:                                               ; preds = %77
  %94 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %8, ptr %94, align 8
  %95 = getelementptr inbounds %struct.tps62360_regulator_platform_data, ptr %69, i32 0, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = shl i32 %96, 1
  %98 = and i32 %97, 2
  %99 = getelementptr inbounds %struct.tps62360_regulator_platform_data, ptr %69, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 1
  %102 = or i32 %98, %101
  %103 = getelementptr inbounds %struct.tps62360_chip, ptr %8, i32 0, i32 12
  store i32 %102, ptr %103, align 4
  %104 = getelementptr %struct.tps62360_chip, ptr %8, i32 0, i32 10
  store i32 %102, ptr %104, align 4
  %105 = getelementptr inbounds %struct.tps62360_chip, ptr %8, i32 0, i32 9
  store i8 0, ptr %105, align 1
  %106 = load i32, ptr %99, align 4
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %107, i32 3, i32 7
  %109 = tail call ptr @devm_gpiod_get_optional(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %108) #7
  %110 = getelementptr inbounds %struct.tps62360_chip, ptr %8, i32 0, i32 4
  store ptr %109, ptr %110, align 4
  %111 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %111, label %112, label %116

112:                                              ; preds = %93
  %113 = ptrtoint ptr %109 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.tps62360_probe, i32 noundef %113) #8
  %114 = load ptr, ptr %110, align 4
  %115 = ptrtoint ptr %114 to i32
  br label %182

116:                                              ; preds = %93
  %117 = load i32, ptr %95, align 4
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 3, i32 7
  %120 = tail call ptr @devm_gpiod_get_optional(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %119) #7
  %121 = getelementptr inbounds %struct.tps62360_chip, ptr %8, i32 0, i32 5
  store ptr %120, ptr %121, align 4
  %122 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = ptrtoint ptr %120 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tps62360_probe, i32 noundef %124) #8
  %125 = load ptr, ptr %121, align 4
  %126 = ptrtoint ptr %125 to i32
  br label %182

127:                                              ; preds = %116
  %128 = load ptr, ptr %110, align 4
  %129 = icmp eq ptr %128, null
  %130 = icmp eq ptr %120, null
  %131 = select i1 %129, i1 true, i1 %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  store i8 1, ptr %105, align 1
  %133 = getelementptr %struct.tps62360_chip, ptr %8, i32 0, i32 10, i32 1
  store i32 1, ptr %133, align 4
  %134 = getelementptr %struct.tps62360_chip, ptr %8, i32 0, i32 10, i32 2
  store i32 2, ptr %134, align 4
  %135 = getelementptr %struct.tps62360_chip, ptr %8, i32 0, i32 10, i32 3
  store i32 3, ptr %135, align 4
  %136 = load i32, ptr %103, align 4
  store i32 %136, ptr %104, align 4
  %137 = getelementptr %struct.tps62360_chip, ptr %8, i32 0, i32 10, i32 %136
  store i32 0, ptr %137, align 4
  br label %138

138:                                              ; preds = %132, %127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  %139 = load i8, ptr %75, align 1, !range !8
  %140 = icmp eq i8 %139, 0
  %141 = load ptr, ptr %89, align 4
  %142 = select i1 %140, i32 0, i32 224
  %143 = tail call i32 @regmap_write(ptr noundef %141, i32 noundef 4, i32 noundef %142) #7
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.tps62360_init_dcdc, i32 noundef 4, i32 noundef %143) #8
  br label %159

147:                                              ; preds = %138
  %148 = load ptr, ptr %89, align 4
  %149 = tail call i32 @regmap_update_bits_base(ptr noundef %148, i32 noundef 6, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.tps62360_init_dcdc, i32 noundef 6, i32 noundef %149) #8
  br label %159

153:                                              ; preds = %147
  %154 = load ptr, ptr %89, align 4
  %155 = call i32 @regmap_read(ptr noundef %154, i32 noundef 6, ptr noundef nonnull %3) #7
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.tps62360_init_dcdc, i32 noundef 6, i32 noundef %155) #8
  br label %159

159:                                              ; preds = %157, %151, %145
  %160 = phi i32 [ %155, %157 ], [ %149, %151 ], [ %143, %145 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %161 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.tps62360_probe, i32 noundef %160) #8
  br label %182

162:                                              ; preds = %153
  %163 = load i32, ptr %3, align 4
  %164 = lshr i32 %163, 5
  %165 = and i32 %164, 7
  %166 = shl nuw nsw i32 1, %165
  %167 = add nuw nsw i32 %166, 31999
  %168 = lshr i32 %167, %165
  %169 = getelementptr inbounds %struct.tps62360_chip, ptr %8, i32 0, i32 1, i32 18
  store i32 %168, ptr %169, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  store ptr %5, ptr %4, align 4
  %170 = load ptr, ptr %69, align 4
  %171 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 1
  store ptr %170, ptr %171, align 4
  %172 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 2
  store ptr %8, ptr %172, align 4
  %173 = load ptr, ptr %18, align 8
  %174 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 3
  store ptr %173, ptr %174, align 4
  %175 = call ptr @devm_regulator_register(ptr noundef %5, ptr noundef %12, ptr noundef nonnull %4) #7
  %176 = icmp ugt ptr %175, inttoptr (i32 -4096 to ptr)
  br i1 %176, label %177, label %180

177:                                              ; preds = %162
  %178 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.tps62360_probe, ptr noundef %1) #8
  %179 = ptrtoint ptr %175 to i32
  br label %182

180:                                              ; preds = %162
  %181 = getelementptr inbounds %struct.tps62360_chip, ptr %8, i32 0, i32 2
  store ptr %175, ptr %181, align 4
  br label %182

182:                                              ; preds = %180, %177, %159, %123, %112, %91, %67, %66, %61, %58, %2
  %183 = phi i32 [ %92, %91 ], [ %115, %112 ], [ %126, %123 ], [ %160, %159 ], [ %179, %177 ], [ 0, %180 ], [ -5, %66 ], [ -19, %58 ], [ -19, %61 ], [ -12, %2 ], [ -19, %67 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  ret i32 %183
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tps62360_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tps62360_chip, ptr %3, i32 0, i32 8
  %5 = load i8, ptr %4, align 2, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tps62360_chip, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 6, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.tps62360_shutdown, i32 noundef 6, i32 noundef %10) #8
  br label %14

14:                                               ; preds = %12, %7, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps62360_dcdc_set_voltage_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.tps62360_chip, ptr %3, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tps62360_chip, ptr %3, i32 0, i32 9
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %2
  %10 = getelementptr %struct.tps62360_chip, ptr %3, i32 0, i32 10, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.tps62360_chip, ptr %3, i32 0, i32 10, i32 0
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.tps62360_chip, ptr %3, i32 0, i32 11, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %51, label %17

17:                                               ; preds = %9
  %18 = getelementptr %struct.tps62360_chip, ptr %3, i32 0, i32 10, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.tps62360_chip, ptr %3, i32 0, i32 11, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = getelementptr %struct.tps62360_chip, ptr %3, i32 0, i32 10, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.tps62360_chip, ptr %3, i32 0, i32 11, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %17
  %30 = phi i32 [ %19, %17 ], [ %25, %23 ]
  %31 = phi i32 [ 4, %17 ], [ 8, %23 ]
  tail call void @llvm.memmove.p0.p0.i32(ptr noundef align 4 %18, ptr noundef align 4 %12, i32 %31, i1 false) #7
  store i32 %30, ptr %12, align 4
  br label %51

32:                                               ; preds = %23
  %33 = getelementptr %struct.tps62360_chip, ptr %3, i32 0, i32 11, i32 %11
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, %1
  tail call void @llvm.memmove.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %18, ptr noundef align 4 dereferenceable(12) %12, i32 12, i1 false) #7
  store i32 %11, ptr %12, align 4
  br i1 %35, label %51, label %36

36:                                               ; preds = %32, %2
  %37 = phi i32 [ %5, %2 ], [ %11, %32 ]
  %38 = getelementptr inbounds %struct.tps62360_chip, ptr %3, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.tps62360_chip, ptr %3, i32 0, i32 6
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  %43 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef %37, i32 noundef %42, i32 noundef %1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.tps62360_dcdc_set_voltage_sel, i32 noundef %37, i32 noundef %43) #8
  br label %60

47:                                               ; preds = %36
  store i32 %37, ptr %4, align 4
  %48 = getelementptr %struct.tps62360_chip, ptr %3, i32 0, i32 11, i32 %37
  store i32 %1, ptr %48, align 4
  %49 = load i8, ptr %6, align 1, !range !8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %47, %32, %29, %9
  %52 = phi i32 [ %37, %47 ], [ %30, %29 ], [ %11, %32 ], [ %13, %9 ]
  %53 = getelementptr inbounds %struct.tps62360_chip, ptr %3, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = and i32 %52, 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %54, i32 noundef %55) #7
  %56 = getelementptr inbounds %struct.tps62360_chip, ptr %3, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = lshr i32 %52, 1
  %59 = and i32 %58, 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %57, i32 noundef %59) #7
  br label %60

60:                                               ; preds = %51, %47, %45
  %61 = phi i32 [ %43, %45 ], [ 0, %51 ], [ 0, %47 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps62360_dcdc_get_voltage_sel(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  %4 = getelementptr inbounds %struct.tps62360_chip, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tps62360_chip, ptr %3, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %2) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 4
  %12 = load i32, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.tps62360_dcdc_get_voltage_sel, i32 noundef %12, i32 noundef %8) #8
  br label %19

13:                                               ; preds = %1
  %14 = load i32, ptr %2, align 4
  %15 = getelementptr inbounds %struct.tps62360_chip, ptr %3, i32 0, i32 6
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = and i32 %14, %17
  br label %19

19:                                               ; preds = %13, %10
  %20 = phi i32 [ %8, %10 ], [ %18, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps62360_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  switch i32 %1, label %39 [
    i32 1, label %5
    i32 2, label %4
  ]

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %2
  %6 = phi i32 [ 0, %4 ], [ 128, %2 ]
  %7 = getelementptr inbounds %struct.tps62360_chip, ptr %3, i32 0, i32 9
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.tps62360_chip, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  br i1 %9, label %15, label %12

12:                                               ; preds = %5
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 128, i32 noundef %6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %23, label %27

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.tps62360_chip, ptr %3, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %17, i32 noundef 128, i32 noundef %6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 4
  %22 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.tps62360_set_mode, i32 noundef %22, i32 noundef %18) #8
  br label %39

23:                                               ; preds = %35, %31, %27, %12
  %24 = phi i32 [ 0, %12 ], [ 1, %27 ], [ 2, %31 ], [ 3, %35 ]
  %25 = phi i32 [ %13, %12 ], [ %29, %27 ], [ %33, %31 ], [ %37, %35 ]
  %26 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.tps62360_set_mode, i32 noundef %24, i32 noundef %25) #8
  br label %39

27:                                               ; preds = %12
  %28 = load ptr, ptr %10, align 4
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 1, i32 noundef 128, i32 noundef %6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %23, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %10, align 4
  %33 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 2, i32 noundef 128, i32 noundef %6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %23, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %10, align 4
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 3, i32 noundef 128, i32 noundef %6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %23, label %39

39:                                               ; preds = %35, %23, %20, %15, %2
  %40 = phi i32 [ %25, %23 ], [ -22, %2 ], [ %18, %20 ], [ %18, %15 ], [ %37, %35 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps62360_get_mode(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  %4 = getelementptr inbounds %struct.tps62360_chip, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tps62360_chip, ptr %3, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %2) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 4
  %12 = load i32, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.tps62360_get_mode, i32 noundef %12, i32 noundef %8) #8
  br label %18

13:                                               ; preds = %1
  %14 = load i32, ptr %2, align 4
  %15 = and i32 %14, 128
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 2, i32 1
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i32 [ %8, %10 ], [ %17, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #6

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
