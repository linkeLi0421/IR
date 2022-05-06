; ModuleID = '/llk/IR/drivers/regulator/da9210-regulator.c_pt.bc'
source_filename = "../drivers/regulator/da9210-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
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
%struct.da9210 = type { ptr, ptr }

@__initcall__kmod_da9210_regulator__247_230_da9210_regulator_driver_init6 = internal global ptr @da9210_regulator_driver_init, section ".initcall6.init", align 4
@da9210_regulator_driver = internal global %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @da9210_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @da9210_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @da9210_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_da9210_regulator_driver_exit = internal global ptr @da9210_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [64 x i8] c"da9210_regulator.author=S Twiss <stwiss.opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [71 x i8] c"da9210_regulator.description=Regulator device driver for Dialog DA9210\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [57 x i8] c"da9210_regulator.file=drivers/regulator/da9210-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [32 x i8] c"da9210_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"da9210\00", align 1
@da9210_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@da9210_i2c_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"da9210\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error: No device match found\0A\00", align 1
@da9210_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@da9210_reg = internal constant %struct.regulator_desc { ptr @.str.8, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 16, ptr @da9210_buck_ops, i32 0, i32 0, ptr null, i32 300000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9210_buck_limits, i32 0, i32 0, i32 216, i32 127, i32 0, i32 208, i32 15, i32 0, i32 0, i32 93, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to write to mask reg: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to register DA9210 regulator\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to request IRQ%u: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to update mask reg: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"No IRQ configured\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"DA9210\00", align 1
@da9210_buck_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@da9210_buck_limits = internal constant [16 x i32] [i32 1600000, i32 1800000, i32 2000000, i32 2200000, i32 2400000, i32 2600000, i32 2800000, i32 3000000, i32 3200000, i32 3400000, i32 3600000, i32 3800000, i32 4000000, i32 4200000, i32 4400000, i32 4600000], align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"I2C error : %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_da9210_regulator_driver_exit, ptr @__initcall__kmod_da9210_regulator__247_230_da9210_regulator_driver_init6, ptr @da9210_regulator_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @da9210_regulator_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @da9210_regulator_driver) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @da9210_regulator_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @da9210_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @da9210_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #5
  %6 = getelementptr inbounds i8, ptr %2, i32 20
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = tail call ptr @of_match_device(ptr noundef nonnull @da9210_dt_ids, ptr noundef %3) #5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  br label %66

16:                                               ; preds = %12, %1
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 8, i32 noundef 3520) #5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %66, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @da9210_regmap_config, ptr noundef null, ptr noundef null) #5
  %21 = getelementptr inbounds %struct.da9210, ptr %17, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %24) #6
  br label %66

25:                                               ; preds = %19
  store ptr %3, ptr %2, align 4
  br i1 %10, label %29, label %26

26:                                               ; preds = %25
  %27 = load ptr, ptr %7, align 8
  %28 = tail call ptr @of_get_regulator_init_data(ptr noundef %3, ptr noundef %27, ptr noundef nonnull @da9210_reg) #5
  br label %29

29:                                               ; preds = %26, %25
  %30 = phi ptr [ %28, %26 ], [ %5, %25 ]
  %31 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  store ptr %17, ptr %32, align 4
  %33 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  store ptr %20, ptr %33, align 4
  %34 = load ptr, ptr %7, align 8
  %35 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 3
  store ptr %34, ptr %35, align 4
  %36 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 84, i32 noundef -1) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load ptr, ptr %21, align 4
  %40 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 85, i32 noundef -1) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38, %29
  %43 = phi i32 [ %40, %38 ], [ %36, %29 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %43) #6
  br label %66

44:                                               ; preds = %38
  %45 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef nonnull @da9210_reg, ptr noundef nonnull %2) #5
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #6
  %48 = ptrtoint ptr %45 to i32
  br label %66

49:                                               ; preds = %44
  store ptr %45, ptr %17, align 4
  %50 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  %54 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %51, ptr noundef null, ptr noundef nonnull @da9210_irq_handler, i32 noundef 8328, ptr noundef nonnull @.str, ptr noundef nonnull %17) #5
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %50, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %57, i32 noundef %54) #6
  br label %66

58:                                               ; preds = %53
  %59 = load ptr, ptr %21, align 4
  %60 = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 85, i32 noundef 31, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %60) #6
  br label %66

63:                                               ; preds = %49
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.7) #6
  br label %64

64:                                               ; preds = %63, %58
  %65 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %17, ptr %65, align 8
  br label %66

66:                                               ; preds = %64, %62, %56, %47, %42, %23, %16, %15
  %67 = phi i32 [ %24, %23 ], [ %43, %42 ], [ %48, %47 ], [ %54, %56 ], [ %60, %62 ], [ 0, %64 ], [ -19, %15 ], [ -12, %16 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #5
  ret i32 %67
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @da9210_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.da9210, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 83, ptr noundef nonnull %3) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %53, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %1, align 4
  %14 = call i32 @regulator_notifier_call_chain(ptr noundef %13, i32 noundef 2, ptr noundef null) #5
  %15 = load i32, ptr %3, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i32 [ %15, %12 ], [ %9, %8 ]
  %18 = phi i32 [ 1, %12 ], [ 0, %8 ]
  %19 = and i32 %17, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %1, align 4
  %23 = call i32 @regulator_notifier_call_chain(ptr noundef %22, i32 noundef 1, ptr noundef null) #5
  %24 = or i32 %18, 2
  %25 = load i32, ptr %3, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i32 [ %25, %21 ], [ %17, %16 ]
  %28 = phi i32 [ %24, %21 ], [ %18, %16 ]
  %29 = and i32 %27, 12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %1, align 4
  %33 = call i32 @regulator_notifier_call_chain(ptr noundef %32, i32 noundef 16, ptr noundef null) #5
  %34 = load i32, ptr %3, align 4
  %35 = and i32 %34, 12
  %36 = or i32 %35, %28
  br label %37

37:                                               ; preds = %31, %26
  %38 = phi i32 [ %34, %31 ], [ %27, %26 ]
  %39 = phi i32 [ %36, %31 ], [ %28, %26 ]
  %40 = and i32 %38, 16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %1, align 4
  %44 = call i32 @regulator_notifier_call_chain(ptr noundef %43, i32 noundef 4, ptr noundef null) #5
  %45 = or i32 %39, 16
  br label %48

46:                                               ; preds = %37
  %47 = icmp eq i32 %39, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %45, %42 ], [ %39, %46 ]
  %50 = load ptr, ptr %4, align 4
  %51 = call i32 @regmap_write(ptr noundef %50, i32 noundef 83, i32 noundef %49) #5
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48, %2
  %54 = phi i32 [ %6, %2 ], [ %51, %48 ]
  %55 = load ptr, ptr %4, align 4
  %56 = call ptr @regmap_get_device(ptr noundef %55) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.9, i32 noundef %54) #6
  br label %57

57:                                               ; preds = %53, %48, %46
  %58 = phi i32 [ 0, %53 ], [ 0, %46 ], [ 1, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %58
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit_regmap(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_current_limit_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
