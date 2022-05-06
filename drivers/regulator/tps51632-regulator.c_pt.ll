; ModuleID = '/llk/IR/drivers/regulator/tps51632-regulator.c_pt.bc'
source_filename = "../drivers/regulator/tps51632-regulator.c"
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
%struct.tps51632_chip = type { ptr, %struct.regulator_desc, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.tps51632_regulator_platform_data = type { ptr, i8, i8, i32, i32 }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__initcall__kmod_tps51632_regulator__247_378_tps51632_init4 = internal global ptr @tps51632_init, section ".initcall4.init", align 4
@tps51632_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @tps51632_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tps51632_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tps51632_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_tps51632_cleanup = internal global ptr @tps51632_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [65 x i8] c"tps51632_regulator.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [65 x i8] c"tps51632_regulator.description=TPS51632 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [61 x i8] c"tps51632_regulator.file=drivers/regulator/tps51632-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [34 x i8] c"tps51632_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"tps51632\00", align 1
@tps51632_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps51632\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@tps51632_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tps51632\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error: No device match found\0A\00", align 1
@tps51632_dcdc_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps51632_dcdc_set_ramp_delay, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"No Platform data\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Invalid base_voltage_uV setting\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Invalid max_voltage_uV setting\0A\00", align 1
@tps51632_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @is_write_reg, ptr @is_read_reg, ptr @is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 20, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"regmap init failed, err %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Init failed, err = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"regulator register failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"SLEW reg write failed, err %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Not able to get OF regulator init data\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"ti,enable-pwm-dvfs\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"ti,dvfs-step-20mV\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"BASE reg write failed, err %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"VMAX read failed, err %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"VMAX write failed, err %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"DVFS reg write failed, err %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_tps51632_cleanup, ptr @__initcall__kmod_tps51632_regulator__247_378_tps51632_init4, ptr @tps51632_cleanup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tps51632_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tps51632_i2c_driver) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tps51632_cleanup() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @tps51632_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps51632_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false)
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @of_match_device(ptr noundef nonnull @tps51632_of_match, ptr noundef %5) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #8
  br label %164

13:                                               ; preds = %9, %2
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 256, i32 noundef 3520) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %164, label %16

16:                                               ; preds = %13
  store ptr %5, ptr %14, align 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  %18 = getelementptr inbounds %struct.tps51632_chip, ptr %14, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.tps51632_chip, ptr %14, i32 0, i32 1, i32 6
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.tps51632_chip, ptr %14, i32 0, i32 1, i32 18
  store i32 6000, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tps51632_chip, ptr %14, i32 0, i32 1, i32 14
  store i32 500000, ptr %21, align 4
  %22 = getelementptr inbounds %struct.tps51632_chip, ptr %14, i32 0, i32 1, i32 15
  store i32 10000, ptr %22, align 4
  %23 = getelementptr inbounds %struct.tps51632_chip, ptr %14, i32 0, i32 1, i32 16
  store i32 25, ptr %23, align 4
  %24 = getelementptr inbounds %struct.tps51632_chip, ptr %14, i32 0, i32 1, i32 8
  store i32 128, ptr %24, align 4
  %25 = getelementptr inbounds %struct.tps51632_chip, ptr %14, i32 0, i32 1, i32 10
  store ptr @tps51632_dcdc_ops, ptr %25, align 4
  %26 = getelementptr inbounds %struct.tps51632_chip, ptr %14, i32 0, i32 1, i32 12
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.tps51632_chip, ptr %14, i32 0, i32 1, i32 13
  store ptr null, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %29, i32 0, i32 1
  %33 = load i8, ptr %32, align 4, !range !8
  br label %65

34:                                               ; preds = %16
  %35 = load ptr, ptr %6, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %64, label %37

37:                                               ; preds = %34
  %38 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 16, i32 noundef 3520) #7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %64, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %6, align 8
  %42 = tail call ptr @of_get_regulator_init_data(ptr noundef %5, ptr noundef %41, ptr noundef %18) #7
  store ptr %42, ptr %38, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9) #8
  br label %64

45:                                               ; preds = %40
  %46 = tail call ptr @of_find_property(ptr noundef nonnull %35, ptr noundef nonnull @.str.10, ptr noundef null) #7
  %47 = icmp ne ptr %46, null
  %48 = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %38, i32 0, i32 1
  %49 = zext i1 %47 to i8
  store i8 %49, ptr %48, align 4
  %50 = tail call ptr @of_find_property(ptr noundef nonnull %35, ptr noundef nonnull @.str.11, ptr noundef null) #7
  %51 = icmp ne ptr %50, null
  %52 = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %38, i32 0, i32 2
  %53 = zext i1 %51 to i8
  store i8 %53, ptr %52, align 1
  %54 = getelementptr inbounds %struct.regulator_init_data, ptr %42, i32 0, i32 1, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 500000, i32 %55
  %58 = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %38, i32 0, i32 4
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.regulator_init_data, ptr %42, i32 0, i32 1, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 1520000, i32 %60
  %63 = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %38, i32 0, i32 3
  store i32 %62, ptr %63, align 4
  br label %65

64:                                               ; preds = %44, %37, %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #8
  br label %164

65:                                               ; preds = %45, %31
  %66 = phi i8 [ %33, %31 ], [ %49, %45 ]
  %67 = phi ptr [ %29, %31 ], [ %38, %45 ]
  %68 = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %67, i32 0, i32 1
  %69 = icmp eq i8 %66, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %67, i32 0, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, -1520001
  %74 = icmp ult i32 %73, -1020001
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3) #8
  br label %164

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %67, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = add i32 %78, -1520001
  %81 = icmp ult i32 %80, -1020001
  %82 = and i1 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #8
  br label %164

84:                                               ; preds = %76, %65
  %85 = phi i32 [ 1, %76 ], [ 0, %65 ]
  %86 = getelementptr inbounds %struct.tps51632_chip, ptr %14, i32 0, i32 1, i32 27
  store i32 %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.tps51632_chip, ptr %14, i32 0, i32 1, i32 28
  store i32 127, ptr %87, align 4
  %88 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @tps51632_regmap_config, ptr noundef null, ptr noundef null) #7
  %89 = getelementptr inbounds %struct.tps51632_chip, ptr %14, i32 0, i32 3
  store ptr %88, ptr %89, align 4
  %90 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = ptrtoint ptr %88 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %92) #8
  br label %164

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %14, ptr %94, align 8
  %95 = load i8, ptr %68, align 4, !range !8
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %138, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %67, i32 0, i32 4
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, -490001
  %101 = sdiv i32 %100, 10000
  %102 = add nsw i32 %101, 25
  %103 = tail call i32 @regmap_write(ptr noundef %88, i32 noundef 1, i32 noundef %102) #7
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.12, i32 noundef %103) #8
  br label %146

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %67, i32 0, i32 2
  %109 = load i8, ptr %108, align 1, !range !8
  %110 = icmp eq i8 %109, 0
  %111 = select i1 %110, i8 1, i8 3
  %112 = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %67, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %138, label %115

115:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  %116 = load ptr, ptr %89, align 4
  %117 = call i32 @regmap_read(ptr noundef %116, i32 noundef 4, ptr noundef nonnull %3) #7
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.13, i32 noundef %117) #8
  br label %136

121:                                              ; preds = %115
  %122 = load i32, ptr %3, align 4
  %123 = and i32 %122, 128
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load i32, ptr %112, align 4
  %127 = add i32 %126, -490001
  %128 = sdiv i32 %127, 10000
  %129 = add nsw i32 %128, 25
  %130 = load ptr, ptr %89, align 4
  %131 = call i32 @regmap_write(ptr noundef %130, i32 noundef 4, i32 noundef %129) #7
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  %134 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.14, i32 noundef %131) #8
  br label %136

135:                                              ; preds = %125, %121
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %138

136:                                              ; preds = %133, %119
  %137 = phi i32 [ %117, %119 ], [ %131, %133 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %146

138:                                              ; preds = %135, %107, %93
  %139 = phi i8 [ %111, %107 ], [ 0, %93 ], [ %111, %135 ]
  %140 = load ptr, ptr %89, align 4
  %141 = zext i8 %139 to i32
  %142 = call i32 @regmap_write(ptr noundef %140, i32 noundef 5, i32 noundef %141) #7
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.15, i32 noundef %142) #8
  br label %146

146:                                              ; preds = %144, %136, %105
  %147 = phi i32 [ %142, %144 ], [ %137, %136 ], [ %103, %105 ]
  %148 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.6, i32 noundef %147) #8
  br label %164

149:                                              ; preds = %138
  store ptr %5, ptr %4, align 4
  %150 = load ptr, ptr %67, align 4
  %151 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 1
  store ptr %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 2
  store ptr %14, ptr %152, align 4
  %153 = load ptr, ptr %89, align 4
  %154 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 4
  store ptr %153, ptr %154, align 4
  %155 = load ptr, ptr %6, align 8
  %156 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 3
  store ptr %155, ptr %156, align 4
  %157 = call ptr @devm_regulator_register(ptr noundef %5, ptr noundef %18, ptr noundef nonnull %4) #7
  %158 = icmp ugt ptr %157, inttoptr (i32 -4096 to ptr)
  br i1 %158, label %159, label %162

159:                                              ; preds = %149
  %160 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.7) #8
  %161 = ptrtoint ptr %157 to i32
  br label %164

162:                                              ; preds = %149
  %163 = getelementptr inbounds %struct.tps51632_chip, ptr %14, i32 0, i32 2
  store ptr %157, ptr %163, align 4
  br label %164

164:                                              ; preds = %162, %159, %146, %91, %83, %75, %64, %13, %12
  %165 = phi i32 [ -22, %75 ], [ -22, %83 ], [ %92, %91 ], [ %147, %146 ], [ %161, %159 ], [ 0, %162 ], [ -22, %64 ], [ -19, %12 ], [ -12, %13 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  ret i32 %165
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
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps51632_dcdc_set_ramp_delay(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = icmp eq i32 %1, 0
  %5 = add i32 %1, 5999
  %6 = sdiv i32 %5, 6000
  %7 = add nsw i32 %6, -1
  %8 = getelementptr inbounds %struct.tps51632_chip, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = shl nuw i32 1, %7
  %11 = select i1 %4, i32 1, i32 %10
  %12 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 7, i32 noundef %11) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.8, i32 noundef %12) #8
  br label %16

16:                                               ; preds = %14, %2
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @is_write_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = icmp ult i32 %1, 8
  %4 = trunc i32 %1 to i8
  %5 = lshr i8 -13, %4
  %6 = and i8 %5, 1
  %7 = icmp ne i8 %6, 0
  %8 = select i1 %3, i1 %7, i1 false
  ret i1 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @is_read_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = and i32 %1, -8
  %4 = icmp ne i32 %3, 8
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @is_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = add i32 %1, -2
  %4 = icmp ult i32 %3, 19
  %5 = trunc i32 %3 to i19
  %6 = lshr i19 -262141, %5
  %7 = and i19 %6, 1
  %8 = icmp ne i19 %7, 0
  %9 = select i1 %4, i1 %8, i1 false
  ret i1 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
