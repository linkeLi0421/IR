; ModuleID = '/llk/IR/drivers/power/supply/max17042_battery.c_pt.bc'
source_filename = "../drivers/power/supply/max17042_battery.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.max17042_reg_data = type { i8, i16 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max17042_chip = type { ptr, ptr, ptr, i32, ptr, %struct.work_struct, i32 }
%struct.max17042_platform_data = type { ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i32 }
%struct.max17042_config_data = type <{ i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [48 x i16] }>

@max17042_dt_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17042\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17047\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17050\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17055\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77849-battery\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@max17042_id = internal constant [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max17042\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"max17047\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"max17050\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"max17055\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"max77849-battery\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [47 x i8] c"author=MyungJoo Ham <myungjoo.ham@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [32 x i8] c"description=MAX17042 Fuel Gauge\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@max17042_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @max17042_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max17042_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max17042_pm_ops, ptr null, ptr null }, ptr @max17042_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"max17042\00", align 1
@max17042_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @max17042_suspend, ptr @max17042_resume, ptr @max17042_suspend, ptr @max17042_resume, ptr @max17042_suspend, ptr @max17042_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@max17042_psy_desc = internal constant %struct.power_supply_desc { ptr @.str.5, i32 1, ptr null, i32 0, ptr @max17042_battery_props, i32 26, ptr @max17042_get_property, ptr @max17042_set_property, ptr @max17042_property_is_writeable, ptr @max17042_external_power_changed, ptr null, i8 0, i32 0 }, align 4
@max17042_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 3, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to initialize regmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"no platform data provided\0A\00", align 1
@max17042_no_current_sense_psy_desc = internal constant %struct.power_supply_desc { ptr @.str.5, i32 1, ptr null, i32 0, ptr @max17042_battery_props, i32 24, ptr @max17042_get_property, ptr @max17042_set_property, ptr @max17042_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed: power supply register\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Failed to get IRQ\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"max170xx_battery\00", align 1
@max17042_battery_props = internal global [26 x i32] [i32 0, i32 3, i32 6, i32 7, i32 8, i32 9, i32 11, i32 12, i32 13, i32 14, i32 47, i32 22, i32 24, i32 26, i32 28, i32 68, i32 52, i32 55, i32 56, i32 54, i32 53, i32 2, i32 66, i32 60, i32 17, i32 18], align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"maxim,rsns-microohm\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"maxim,cold-temp\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"maxim,over-heat-temp\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"maxim,dead-volt\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"maxim,over-volt\00", align 1
@max17047_default_pdata_init_regs = internal global [1 x %struct.max17042_reg_data] [%struct.max17042_reg_data { i8 19, i16 24320 }], align 2
@.str.11 = private unnamed_addr constant [16 x i8] c"%s init failed\0A\00", align 1
@__func__.max17042_init_chip = private unnamed_addr constant [19 x i8] c"max17042_init_chip\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"%s lock verify failed\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"%s compare failed\0A\00", align 1
@__func__.max17042_model_data_compare = private unnamed_addr constant [28 x i8] c"max17042_model_data_compare\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"0x%x, 0x%x\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"\013%s: err %d\0A\00", align 1
@__func__.max17042_write_verify_reg = private unnamed_addr constant [26 x i8] c"max17042_write_verify_reg\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_of__max17042_dt_match_device_table = dso_local alias [6 x %struct.of_device_id], ptr @max17042_dt_match
@__mod_i2c__max17042_id_device_table = dso_local alias [6 x %struct.i2c_device_id], ptr @max17042_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @max17042_i2c_driver) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @max17042_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max17042_probe(ptr noundef %0, ptr noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.power_supply_config, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %10 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 20, i1 false)
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.i2c_algorithm, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %9) #9
  %17 = and i32 %16, 6291456
  %18 = icmp eq i32 %17, 6291456
  br i1 %18, label %19, label %224

19:                                               ; preds = %2
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 40, i32 noundef 3520) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %224, label %22

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 4
  %23 = icmp eq ptr %1, null
  br i1 %23, label %224, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.max17042_chip, ptr %20, i32 0, i32 3
  store i32 %26, ptr %27, align 4
  %28 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @max17042_regmap_config, ptr noundef null, ptr noundef null) #9
  %29 = getelementptr inbounds %struct.max17042_chip, ptr %20, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.1) #10
  br label %224

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %67, label %36

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %37 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 36, i32 noundef 3520) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %66, label %39

39:                                               ; preds = %36
  %40 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #9
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, ptr %5, align 4
  %44 = getelementptr inbounds %struct.max17042_platform_data, ptr %37, i32 0, i32 5
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.max17042_platform_data, ptr %37, i32 0, i32 3
  store i8 1, ptr %45, align 4
  br label %46

46:                                               ; preds = %42, %39
  %47 = getelementptr inbounds %struct.max17042_platform_data, ptr %37, i32 0, i32 8
  %48 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.7, ptr noundef %47, i32 noundef 1, i32 noundef 0) #9
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 -2147483648, ptr %47, align 4
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %struct.max17042_platform_data, ptr %37, i32 0, i32 9
  %53 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.8, ptr noundef %52, i32 noundef 1, i32 noundef 0) #9
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 2147483647, ptr %52, align 4
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr inbounds %struct.max17042_platform_data, ptr %37, i32 0, i32 6
  %58 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.9, ptr noundef %57, i32 noundef 1, i32 noundef 0) #9
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store i32 -2147483648, ptr %57, align 4
  br label %61

61:                                               ; preds = %60, %56
  %62 = getelementptr inbounds %struct.max17042_platform_data, ptr %37, i32 0, i32 7
  %63 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.10, ptr noundef %62, i32 noundef 1, i32 noundef 0) #9
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  store i32 2147483647, ptr %62, align 4
  br label %66

66:                                               ; preds = %65, %61, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %96

67:                                               ; preds = %32
  %68 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.max17042_chip, ptr %20, i32 0, i32 4
  store ptr %69, ptr %72, align 4
  br label %103

73:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %74 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 36, i32 noundef 3520) #9
  %75 = icmp eq ptr %74, null
  br i1 %75, label %94, label %76

76:                                               ; preds = %73
  %77 = and i32 %26, -2
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  store ptr @max17047_default_pdata_init_regs, ptr %74, align 4
  %80 = getelementptr inbounds %struct.max17042_platform_data, ptr %74, i32 0, i32 2
  store i32 1, ptr %80, align 4
  br label %81

81:                                               ; preds = %79, %76
  %82 = call i32 @regmap_read(ptr noundef %28, i32 noundef 43, ptr noundef nonnull %4) #9
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %4, align 4
  %86 = and i32 %85, 3
  %87 = icmp ne i32 %86, 3
  %88 = zext i1 %87 to i8
  %89 = getelementptr inbounds %struct.max17042_platform_data, ptr %74, i32 0, i32 3
  store i8 %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.max17042_platform_data, ptr %74, i32 0, i32 6
  store i32 3000, ptr %90, align 4
  %91 = getelementptr inbounds %struct.max17042_platform_data, ptr %74, i32 0, i32 7
  store i32 4500, ptr %91, align 4
  %92 = getelementptr inbounds %struct.max17042_platform_data, ptr %74, i32 0, i32 8
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.max17042_platform_data, ptr %74, i32 0, i32 9
  store i32 700, ptr %93, align 4
  br label %94

94:                                               ; preds = %84, %81, %73
  %95 = phi ptr [ %74, %84 ], [ null, %73 ], [ null, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %96

96:                                               ; preds = %94, %66
  %97 = phi ptr [ %37, %66 ], [ %95, %94 ]
  %98 = getelementptr inbounds %struct.max17042_chip, ptr %20, i32 0, i32 4
  store ptr %97, ptr %98, align 4
  %99 = icmp eq ptr %97, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %33, align 8
  br label %103

102:                                              ; preds = %96
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.2) #10
  br label %224

103:                                              ; preds = %100, %71
  %104 = phi ptr [ null, %71 ], [ %101, %100 ]
  %105 = phi ptr [ %72, %71 ], [ %98, %100 ]
  %106 = phi ptr [ %69, %71 ], [ %97, %100 ]
  %107 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %20, ptr %107, align 8
  %108 = getelementptr inbounds %struct.power_supply_config, ptr %6, i32 0, i32 2
  store ptr %20, ptr %108, align 4
  store ptr %104, ptr %6, align 4
  %109 = getelementptr inbounds %struct.max17042_platform_data, ptr %106, i32 0, i32 3
  %110 = load i8, ptr %109, align 4, !range !9
  %111 = icmp eq i8 %110, 0
  %112 = select i1 %111, ptr @max17042_no_current_sense_psy_desc, ptr @max17042_psy_desc
  %113 = getelementptr inbounds %struct.max17042_platform_data, ptr %106, i32 0, i32 5
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %103
  store i32 10000, ptr %113, align 4
  %117 = load ptr, ptr %105, align 4
  br label %118

118:                                              ; preds = %116, %103
  %119 = phi ptr [ %117, %116 ], [ %106, %103 ]
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %155, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.max17042_platform_data, ptr %119, i32 0, i32 2
  %124 = load i32, ptr %123, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %155

126:                                              ; preds = %122
  %127 = load ptr, ptr %29, align 4
  %128 = load i8, ptr %120, align 2
  %129 = zext i8 %128 to i32
  %130 = getelementptr %struct.max17042_reg_data, ptr %120, i32 0, i32 1
  %131 = load i16, ptr %130, align 2
  %132 = zext i16 %131 to i32
  %133 = call i32 @regmap_write(ptr noundef %127, i32 noundef %129, i32 noundef %132) #9
  %134 = load ptr, ptr %105, align 4
  %135 = getelementptr inbounds %struct.max17042_platform_data, ptr %134, i32 0, i32 2
  %136 = load i32, ptr %135, align 4
  %137 = icmp sgt i32 %136, 1
  br i1 %137, label %138, label %155

138:                                              ; preds = %138, %126
  %139 = phi ptr [ %151, %138 ], [ %134, %126 ]
  %140 = phi i32 [ %150, %138 ], [ 1, %126 ]
  %141 = load ptr, ptr %139, align 4
  %142 = load ptr, ptr %29, align 4
  %143 = getelementptr %struct.max17042_reg_data, ptr %141, i32 %140
  %144 = load i8, ptr %143, align 2
  %145 = zext i8 %144 to i32
  %146 = getelementptr %struct.max17042_reg_data, ptr %141, i32 %140, i32 1
  %147 = load i16, ptr %146, align 2
  %148 = zext i16 %147 to i32
  %149 = call i32 @regmap_write(ptr noundef %142, i32 noundef %145, i32 noundef %148) #9
  %150 = add nuw nsw i32 %140, 1
  %151 = load ptr, ptr %105, align 4
  %152 = getelementptr inbounds %struct.max17042_platform_data, ptr %151, i32 0, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %138, label %155

155:                                              ; preds = %138, %126, %122, %118
  %156 = phi ptr [ %119, %122 ], [ %119, %118 ], [ %134, %126 ], [ %151, %138 ]
  %157 = getelementptr inbounds %struct.max17042_platform_data, ptr %156, i32 0, i32 3
  %158 = load i8, ptr %157, align 4, !range !9
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load ptr, ptr %29, align 4
  %162 = call i32 @regmap_write(ptr noundef %161, i32 noundef 46, i32 noundef 0) #9
  %163 = load ptr, ptr %29, align 4
  %164 = call i32 @regmap_write(ptr noundef %163, i32 noundef 43, i32 noundef 3) #9
  %165 = load ptr, ptr %29, align 4
  %166 = call i32 @regmap_write(ptr noundef %165, i32 noundef 40, i32 noundef 7) #9
  br label %167

167:                                              ; preds = %160, %155
  %168 = call ptr @devm_power_supply_register(ptr noundef %11, ptr noundef nonnull %112, ptr noundef nonnull %6) #9
  %169 = getelementptr inbounds %struct.max17042_chip, ptr %20, i32 0, i32 2
  store ptr %168, ptr %169, align 4
  %170 = icmp ugt ptr %168, inttoptr (i32 -4096 to ptr)
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.3) #10
  %172 = load ptr, ptr %169, align 4
  %173 = ptrtoint ptr %172 to i32
  br label %224

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %176 = load i32, ptr %175, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %203, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr %168, align 8
  %180 = load ptr, ptr %179, align 4
  %181 = call i32 @devm_request_threaded_irq(ptr noundef %11, i32 noundef %176, ptr noundef null, ptr noundef nonnull @max17042_thread_handler, i32 noundef 8192, ptr noundef %180, ptr noundef nonnull %20) #9
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %197

183:                                              ; preds = %178
  %184 = load ptr, ptr %29, align 4
  %185 = call i32 @regmap_update_bits_base(ptr noundef %184, i32 noundef 29, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %186 = load ptr, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %187 = call i32 @regmap_read(ptr noundef %186, i32 noundef 6, ptr noundef nonnull %3) #9
  %188 = load i32, ptr %3, align 4
  %189 = lshr i32 %188, 8
  store i32 %189, ptr %3, align 4
  %190 = add i32 %188, 256
  %191 = and i32 %190, -256
  %192 = icmp ugt i32 %188, 511
  %193 = add nsw i32 %189, -1
  %194 = select i1 %192, i32 %193, i32 0
  %195 = or i32 %194, %191
  %196 = call i32 @regmap_write(ptr noundef %186, i32 noundef 3, i32 noundef %195) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %200

197:                                              ; preds = %178
  store i32 0, ptr %175, align 4
  %198 = icmp eq i32 %181, -16
  br i1 %198, label %203, label %199

199:                                              ; preds = %197
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.4) #10
  br label %200

200:                                              ; preds = %199, %183
  %201 = load i32, ptr %175, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200, %197, %174
  %204 = load ptr, ptr %29, align 4
  %205 = call i32 @regmap_write(ptr noundef %204, i32 noundef 3, i32 noundef 65280) #9
  br label %206

206:                                              ; preds = %203, %200
  %207 = load ptr, ptr %29, align 4
  %208 = call i32 @regmap_read(ptr noundef %207, i32 noundef 0, ptr noundef nonnull %7) #9
  %209 = load i32, ptr %7, align 4
  %210 = and i32 %209, 2
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %222, label %212

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.max17042_chip, ptr %20, i32 0, i32 5
  store i32 -32, ptr %213, align 4
  %214 = getelementptr inbounds %struct.max17042_chip, ptr %20, i32 0, i32 5, i32 1
  store volatile ptr %214, ptr %214, align 4
  %215 = getelementptr inbounds %struct.max17042_chip, ptr %20, i32 0, i32 5, i32 1, i32 1
  store ptr %214, ptr %215, align 4
  %216 = getelementptr inbounds %struct.max17042_chip, ptr %20, i32 0, i32 5, i32 2
  store ptr @max17042_init_worker, ptr %216, align 4
  %217 = call i32 @devm_add_action(ptr noundef %11, ptr noundef nonnull @max17042_stop_work, ptr noundef nonnull %20) #9
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %212
  %220 = load ptr, ptr @system_wq, align 4
  %221 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %220, ptr noundef %213) #9
  br label %224

222:                                              ; preds = %206
  %223 = getelementptr inbounds %struct.max17042_chip, ptr %20, i32 0, i32 6
  store i32 1, ptr %223, align 4
  br label %224

224:                                              ; preds = %222, %219, %212, %171, %102, %31, %22, %19, %2
  %225 = phi i32 [ -22, %31 ], [ %173, %171 ], [ -22, %102 ], [ -5, %2 ], [ -12, %19 ], [ %217, %212 ], [ 0, %222 ], [ 0, %219 ], [ -19, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  ret i32 %225
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max17042_thread_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.max17042_chip, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %4) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4
  %11 = and i32 %10, 17408
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %15 = call i32 @regmap_read(ptr noundef %14, i32 noundef 6, ptr noundef nonnull %3) #9
  %16 = load i32, ptr %3, align 4
  %17 = lshr i32 %16, 8
  store i32 %17, ptr %3, align 4
  %18 = add i32 %16, 256
  %19 = and i32 %18, -256
  %20 = icmp ugt i32 %16, 511
  %21 = add nsw i32 %17, -1
  %22 = select i1 %20, i32 %21, i32 0
  %23 = or i32 %22, %19
  %24 = call i32 @regmap_write(ptr noundef %14, i32 noundef 3, i32 noundef %23) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %25

25:                                               ; preds = %13, %9
  %26 = load ptr, ptr %5, align 4
  %27 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 0, i32 noundef 65525, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %28 = getelementptr inbounds %struct.max17042_chip, ptr %1, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  call void @power_supply_changed(ptr noundef %29) #9
  br label %30

30:                                               ; preds = %25, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max17042_init_worker(ptr nocapture noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = getelementptr i8, ptr %0, i32 -20
  %25 = getelementptr i8, ptr %0, i32 -4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.max17042_platform_data, ptr %26, i32 0, i32 4
  %28 = load i8, ptr %27, align 1, !range !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %787, label %30

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.max17042_platform_data, ptr %26, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %787, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %0, i32 -16
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 1
  %38 = load i16, ptr %37, align 1
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = zext i16 %38 to i32
  %42 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 44, i32 noundef %41) #9
  br label %43

43:                                               ; preds = %40, %34
  %44 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 2
  %45 = load i16, ptr %44, align 1
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = zext i16 %45 to i32
  %49 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 45, i32 noundef %48) #9
  br label %50

50:                                               ; preds = %47, %43
  %51 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 3
  %52 = load i16, ptr %51, align 1
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = zext i16 %52 to i32
  %56 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 46, i32 noundef %55) #9
  br label %57

57:                                               ; preds = %54, %50
  %58 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 4
  %59 = load i16, ptr %58, align 1
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = zext i16 %59 to i32
  %63 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 47, i32 noundef %62) #9
  br label %64

64:                                               ; preds = %61, %57
  %65 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 5
  %66 = load i16, ptr %65, align 1
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = zext i16 %66 to i32
  %70 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 1, i32 noundef %69) #9
  br label %71

71:                                               ; preds = %68, %64
  %72 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 6
  %73 = load i16, ptr %72, align 1
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = zext i16 %73 to i32
  %77 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 2, i32 noundef %76) #9
  br label %78

78:                                               ; preds = %75, %71
  %79 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 7
  %80 = load i16, ptr %79, align 1
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = zext i16 %80 to i32
  %84 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 3, i32 noundef %83) #9
  br label %85

85:                                               ; preds = %82, %78
  %86 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 8
  %87 = load i16, ptr %86, align 1
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = zext i16 %87 to i32
  %91 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 29, i32 noundef %90) #9
  br label %92

92:                                               ; preds = %89, %85
  %93 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 9
  %94 = load i16, ptr %93, align 1
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = zext i16 %94 to i32
  %98 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 63, i32 noundef %97) #9
  br label %99

99:                                               ; preds = %96, %92
  %100 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 11
  %101 = load i16, ptr %100, align 1
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = zext i16 %101 to i32
  %105 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 24, i32 noundef %104) #9
  br label %106

106:                                              ; preds = %103, %99
  %107 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 12
  %108 = load i16, ptr %107, align 1
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = zext i16 %108 to i32
  %112 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 30, i32 noundef %111) #9
  br label %113

113:                                              ; preds = %110, %106
  %114 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 13
  %115 = load i16, ptr %114, align 1
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = zext i16 %115 to i32
  %119 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 4, i32 noundef %118) #9
  br label %120

120:                                              ; preds = %117, %113
  %121 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 14
  %122 = load i16, ptr %121, align 1
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = zext i16 %122 to i32
  %126 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 40, i32 noundef %125) #9
  br label %127

127:                                              ; preds = %124, %120
  %128 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 15
  %129 = load i16, ptr %128, align 1
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = zext i16 %129 to i32
  %133 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 41, i32 noundef %132) #9
  br label %134

134:                                              ; preds = %131, %127
  %135 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 16
  %136 = load i16, ptr %135, align 1
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  %139 = zext i16 %136 to i32
  %140 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 42, i32 noundef %139) #9
  br label %141

141:                                              ; preds = %138, %134
  %142 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 17
  %143 = load i16, ptr %142, align 1
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = zext i16 %143 to i32
  %147 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 43, i32 noundef %146) #9
  br label %148

148:                                              ; preds = %145, %141
  %149 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 19
  %150 = load i16, ptr %149, align 1
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = zext i16 %150 to i32
  %154 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 16, i32 noundef %153) #9
  br label %155

155:                                              ; preds = %152, %148
  %156 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 20
  %157 = load i16, ptr %156, align 1
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = zext i16 %157 to i32
  %161 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 35, i32 noundef %160) #9
  br label %162

162:                                              ; preds = %159, %155
  %163 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 23
  %164 = load i16, ptr %163, align 1
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = zext i16 %164 to i32
  %168 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 69, i32 noundef %167) #9
  br label %169

169:                                              ; preds = %166, %162
  %170 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 24
  %171 = load i16, ptr %170, align 1
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %169
  %174 = zext i16 %171 to i32
  %175 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 70, i32 noundef %174) #9
  br label %176

176:                                              ; preds = %173, %169
  %177 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 34
  %178 = load i16, ptr %177, align 1
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %176
  %181 = zext i16 %178 to i32
  %182 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 56, i32 noundef %181) #9
  br label %183

183:                                              ; preds = %180, %176
  %184 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 35
  %185 = load i16, ptr %184, align 1
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %183
  %188 = zext i16 %185 to i32
  %189 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 57, i32 noundef %188) #9
  br label %190

190:                                              ; preds = %187, %183
  %191 = getelementptr i8, ptr %0, i32 -8
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %229

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 18
  %196 = load i16, ptr %195, align 1
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = zext i16 %196 to i32
  %200 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 50, i32 noundef %199) #9
  br label %201

201:                                              ; preds = %198, %194
  %202 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 21
  %203 = load i16, ptr %202, align 1
  %204 = icmp eq i16 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %201
  %206 = zext i16 %203 to i32
  %207 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 51, i32 noundef %206) #9
  br label %208

208:                                              ; preds = %205, %201
  %209 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 30
  %210 = load i16, ptr %209, align 1
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %208
  %213 = zext i16 %210 to i32
  %214 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 18, i32 noundef %213) #9
  br label %215

215:                                              ; preds = %212, %208
  %216 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 36
  %217 = load i16, ptr %216, align 1
  %218 = icmp eq i16 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %215
  %220 = zext i16 %217 to i32
  %221 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 58, i32 noundef %220) #9
  br label %222

222:                                              ; preds = %219, %215
  %223 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 37
  %224 = load i16, ptr %223, align 1
  %225 = icmp eq i16 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %222
  %227 = zext i16 %224 to i32
  %228 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 59, i32 noundef %227) #9
  br label %229

229:                                              ; preds = %226, %222, %190
  %230 = load i32, ptr %191, align 4
  %231 = add i32 %230, -1
  %232 = icmp ult i32 %231, 3
  br i1 %232, label %233, label %261

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 22
  %235 = load i16, ptr %234, align 1
  %236 = icmp eq i16 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %233
  %238 = zext i16 %235 to i32
  %239 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 54, i32 noundef %238) #9
  br label %240

240:                                              ; preds = %237, %233
  %241 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 31
  %242 = load i16, ptr %241, align 1
  %243 = icmp eq i16 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %240
  %245 = zext i16 %242 to i32
  %246 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 36, i32 noundef %245) #9
  br label %247

247:                                              ; preds = %244, %240
  %248 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 32
  %249 = load i16, ptr %248, align 1
  %250 = icmp eq i16 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %247
  %252 = zext i16 %249 to i32
  %253 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 37, i32 noundef %252) #9
  br label %254

254:                                              ; preds = %251, %247
  %255 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 33
  %256 = load i16, ptr %255, align 1
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %254
  %259 = zext i16 %256 to i32
  %260 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 55, i32 noundef %259) #9
  br label %261

261:                                              ; preds = %258, %254, %229
  %262 = load i32, ptr %191, align 4
  %263 = add i32 %262, -2
  %264 = icmp ult i32 %263, 3
  br i1 %264, label %265, label %272

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.max17042_config_data, ptr %32, i32 0, i32 30
  %267 = load i16, ptr %266, align 1
  %268 = icmp eq i16 %267, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %265
  %270 = zext i16 %267 to i32
  %271 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 58, i32 noundef %270) #9
  br label %272

272:                                              ; preds = %269, %265, %261
  tail call void @msleep(i32 noundef 500) #9
  %273 = load ptr, ptr %25, align 4
  %274 = getelementptr inbounds %struct.max17042_platform_data, ptr %273, i32 0, i32 1
  %275 = load ptr, ptr %274, align 4
  %276 = load ptr, ptr %35, align 4
  %277 = getelementptr inbounds %struct.max17042_config_data, ptr %275, i32 0, i32 8
  %278 = load i16, ptr %277, align 1
  %279 = zext i16 %278 to i32
  %280 = tail call i32 @regmap_write(ptr noundef %276, i32 noundef 29, i32 noundef %279) #9
  %281 = getelementptr inbounds %struct.max17042_config_data, ptr %275, i32 0, i32 14
  %282 = load i16, ptr %281, align 1
  %283 = zext i16 %282 to i32
  %284 = tail call i32 @regmap_write(ptr noundef %276, i32 noundef 40, i32 noundef %283) #9
  %285 = getelementptr inbounds %struct.max17042_config_data, ptr %275, i32 0, i32 15
  %286 = load i16, ptr %285, align 1
  %287 = zext i16 %286 to i32
  %288 = tail call i32 @regmap_write(ptr noundef %276, i32 noundef 41, i32 noundef %287) #9
  %289 = getelementptr inbounds %struct.max17042_config_data, ptr %275, i32 0, i32 16
  %290 = load i16, ptr %289, align 1
  %291 = zext i16 %290 to i32
  %292 = tail call i32 @regmap_write(ptr noundef %276, i32 noundef 42, i32 noundef %291) #9
  %293 = load i32, ptr %191, align 4
  %294 = add i32 %293, -2
  %295 = icmp ult i32 %294, 3
  br i1 %295, label %296, label %301

296:                                              ; preds = %272
  %297 = getelementptr inbounds %struct.max17042_config_data, ptr %275, i32 0, i32 10
  %298 = load i16, ptr %297, align 1
  %299 = zext i16 %298 to i32
  %300 = tail call i32 @regmap_write(ptr noundef %276, i32 noundef 19, i32 noundef %299) #9
  br label %301

301:                                              ; preds = %296, %272
  %302 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %303 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %302, i32 noundef 3520, i32 noundef 96) #11
  %304 = icmp eq ptr %303, null
  br i1 %304, label %361, label %305

305:                                              ; preds = %301
  %306 = load ptr, ptr %35, align 4
  %307 = tail call i32 @regmap_write(ptr noundef %306, i32 noundef 98, i32 noundef 89) #9
  %308 = tail call i32 @regmap_write(ptr noundef %306, i32 noundef 99, i32 noundef 196) #9
  %309 = load ptr, ptr %35, align 4
  br label %310

310:                                              ; preds = %310, %305
  %311 = phi i32 [ 0, %305 ], [ %320, %310 ]
  %312 = add nuw nsw i32 %311, 128
  %313 = load ptr, ptr %25, align 4
  %314 = getelementptr inbounds %struct.max17042_platform_data, ptr %313, i32 0, i32 1
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr %struct.max17042_config_data, ptr %315, i32 0, i32 38, i32 %311
  %317 = load i16, ptr %316, align 1
  %318 = zext i16 %317 to i32
  %319 = tail call i32 @regmap_write(ptr noundef %309, i32 noundef %312, i32 noundef %318) #9
  %320 = add nuw nsw i32 %311, 1
  %321 = icmp eq i32 %320, 48
  br i1 %321, label %322, label %310

322:                                              ; preds = %310
  %323 = load ptr, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #9
  store i32 0, ptr %23, align 4, !annotation !8
  br label %324

324:                                              ; preds = %324, %322
  %325 = phi i32 [ 0, %322 ], [ %331, %324 ]
  %326 = add nuw nsw i32 %325, 128
  %327 = call i32 @regmap_read(ptr noundef %323, i32 noundef %326, ptr noundef nonnull %23) #9
  %328 = load i32, ptr %23, align 4
  %329 = trunc i32 %328 to i16
  %330 = getelementptr i16, ptr %303, i32 %325
  store i16 %329, ptr %330, align 2
  %331 = add nuw nsw i32 %325, 1
  %332 = icmp eq i32 %331, 48
  br i1 %332, label %333, label %324

333:                                              ; preds = %324
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #9
  %334 = load ptr, ptr %25, align 4
  %335 = getelementptr inbounds %struct.max17042_platform_data, ptr %334, i32 0, i32 1
  %336 = load ptr, ptr %335, align 4
  %337 = getelementptr inbounds %struct.max17042_config_data, ptr %336, i32 0, i32 38
  %338 = call i32 @bcmp(ptr noundef dereferenceable(48) %337, ptr noundef nonnull dereferenceable(48) %303, i32 48) #9
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %364, label %340

340:                                              ; preds = %333
  %341 = load ptr, ptr %24, align 4
  %342 = getelementptr inbounds %struct.i2c_client, ptr %341, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %342, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.max17042_model_data_compare) #10
  br label %343

343:                                              ; preds = %343, %340
  %344 = phi i32 [ 0, %340 ], [ %353, %343 ]
  %345 = load ptr, ptr %24, align 4
  %346 = getelementptr inbounds %struct.i2c_client, ptr %345, i32 0, i32 4
  %347 = getelementptr i16, ptr %337, i32 %344
  %348 = load i16, ptr %347, align 2
  %349 = zext i16 %348 to i32
  %350 = getelementptr i16, ptr %303, i32 %344
  %351 = load i16, ptr %350, align 2
  %352 = zext i16 %351 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %346, ptr noundef nonnull @.str.14, i32 noundef %349, i32 noundef %352) #10
  %353 = add nuw nsw i32 %344, 1
  %354 = icmp eq i32 %353, 48
  br i1 %354, label %355, label %343

355:                                              ; preds = %343
  %356 = load ptr, ptr %24, align 4
  %357 = getelementptr inbounds %struct.i2c_client, ptr %356, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %357, ptr noundef nonnull @.str.15) #10
  %358 = load ptr, ptr %35, align 4
  %359 = call i32 @regmap_write(ptr noundef %358, i32 noundef 98, i32 noundef 0) #9
  %360 = call i32 @regmap_write(ptr noundef %358, i32 noundef 99, i32 noundef 0) #9
  call void @kfree(ptr noundef nonnull %303) #9
  br label %361

361:                                              ; preds = %355, %301
  %362 = load ptr, ptr %24, align 4
  %363 = getelementptr inbounds %struct.i2c_client, ptr %362, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %363, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.max17042_init_chip) #10
  br label %789

364:                                              ; preds = %333
  %365 = load ptr, ptr %35, align 4
  %366 = call i32 @regmap_write(ptr noundef %365, i32 noundef 98, i32 noundef 0) #9
  %367 = call i32 @regmap_write(ptr noundef %365, i32 noundef 99, i32 noundef 0) #9
  call void @kfree(ptr noundef nonnull %303) #9
  %368 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %369 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %368, i32 noundef 3520, i32 noundef 96) #11
  %370 = icmp eq ptr %369, null
  br i1 %370, label %394, label %371

371:                                              ; preds = %364
  %372 = load ptr, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #9
  store i32 0, ptr %22, align 4, !annotation !8
  br label %373

373:                                              ; preds = %373, %371
  %374 = phi i32 [ 0, %371 ], [ %380, %373 ]
  %375 = add nuw nsw i32 %374, 128
  %376 = call i32 @regmap_read(ptr noundef %372, i32 noundef %375, ptr noundef nonnull %22) #9
  %377 = load i32, ptr %22, align 4
  %378 = trunc i32 %377 to i16
  %379 = getelementptr i16, ptr %369, i32 %374
  store i16 %378, ptr %379, align 2
  %380 = add nuw nsw i32 %374, 1
  %381 = icmp eq i32 %380, 48
  br i1 %381, label %382, label %373

382:                                              ; preds = %373
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #9
  br label %383

383:                                              ; preds = %383, %382
  %384 = phi i32 [ 0, %382 ], [ %389, %383 ]
  %385 = phi i32 [ 0, %382 ], [ %390, %383 ]
  %386 = getelementptr i16, ptr %369, i32 %385
  %387 = load i16, ptr %386, align 2
  %388 = icmp eq i16 %387, 0
  %389 = select i1 %388, i32 %384, i32 -22
  %390 = add nuw nsw i32 %385, 1
  %391 = icmp eq i32 %390, 48
  br i1 %391, label %392, label %383

392:                                              ; preds = %383
  call void @kfree(ptr noundef nonnull %369) #9
  %393 = icmp eq i32 %389, 0
  br i1 %393, label %397, label %394

394:                                              ; preds = %392, %364
  %395 = load ptr, ptr %24, align 4
  %396 = getelementptr inbounds %struct.i2c_client, ptr %395, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %396, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.max17042_init_chip) #10
  br label %789

397:                                              ; preds = %392
  %398 = load ptr, ptr %25, align 4
  %399 = getelementptr inbounds %struct.max17042_platform_data, ptr %398, i32 0, i32 1
  %400 = load ptr, ptr %399, align 4
  %401 = load ptr, ptr %35, align 4
  %402 = getelementptr inbounds %struct.max17042_config_data, ptr %400, i32 0, i32 34
  %403 = load i16, ptr %402, align 1
  %404 = zext i16 %403 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #9
  store i32 0, ptr %21, align 4, !annotation !8
  br label %405

405:                                              ; preds = %405, %397
  %406 = phi i32 [ 8, %397 ], [ %413, %405 ]
  %407 = call i32 @regmap_write(ptr noundef %401, i32 noundef 56, i32 noundef %404) #9
  %408 = call i32 @regmap_read(ptr noundef %401, i32 noundef 56, ptr noundef nonnull %21) #9
  %409 = load i32, ptr %21, align 4
  %410 = icmp eq i32 %409, %404
  %411 = xor i1 %410, true
  %412 = sext i1 %411 to i32
  %413 = add i32 %406, %412
  %414 = icmp ne i32 %413, 0
  %415 = icmp ne i32 %409, %404
  %416 = select i1 %414, i1 %415, i1 false
  br i1 %416, label %405, label %417

417:                                              ; preds = %405
  %418 = select i1 %410, i32 %407, i32 -5
  %419 = icmp slt i32 %418, 0
  br i1 %419, label %420, label %422

420:                                              ; preds = %417
  %421 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.max17042_write_verify_reg, i32 noundef %418) #10
  br label %422

422:                                              ; preds = %420, %417
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #9
  %423 = getelementptr inbounds %struct.max17042_config_data, ptr %400, i32 0, i32 35
  %424 = load i16, ptr %423, align 1
  %425 = zext i16 %424 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #9
  store i32 0, ptr %20, align 4, !annotation !8
  br label %426

426:                                              ; preds = %426, %422
  %427 = phi i32 [ 8, %422 ], [ %434, %426 ]
  %428 = call i32 @regmap_write(ptr noundef %401, i32 noundef 57, i32 noundef %425) #9
  %429 = call i32 @regmap_read(ptr noundef %401, i32 noundef 57, ptr noundef nonnull %20) #9
  %430 = load i32, ptr %20, align 4
  %431 = icmp eq i32 %430, %425
  %432 = xor i1 %431, true
  %433 = sext i1 %432 to i32
  %434 = add i32 %427, %433
  %435 = icmp ne i32 %434, 0
  %436 = icmp ne i32 %430, %425
  %437 = select i1 %435, i1 %436, i1 false
  br i1 %437, label %426, label %438

438:                                              ; preds = %426
  %439 = select i1 %431, i32 %428, i32 -5
  %440 = icmp slt i32 %439, 0
  br i1 %440, label %441, label %443

441:                                              ; preds = %438
  %442 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.max17042_write_verify_reg, i32 noundef %439) #10
  br label %443

443:                                              ; preds = %441, %438
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #9
  %444 = getelementptr inbounds %struct.max17042_config_data, ptr %400, i32 0, i32 12
  %445 = load i16, ptr %444, align 1
  %446 = zext i16 %445 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #9
  store i32 0, ptr %19, align 4, !annotation !8
  br label %447

447:                                              ; preds = %447, %443
  %448 = phi i32 [ 8, %443 ], [ %455, %447 ]
  %449 = call i32 @regmap_write(ptr noundef %401, i32 noundef 30, i32 noundef %446) #9
  %450 = call i32 @regmap_read(ptr noundef %401, i32 noundef 30, ptr noundef nonnull %19) #9
  %451 = load i32, ptr %19, align 4
  %452 = icmp eq i32 %451, %446
  %453 = xor i1 %452, true
  %454 = sext i1 %453 to i32
  %455 = add i32 %448, %454
  %456 = icmp ne i32 %455, 0
  %457 = icmp ne i32 %451, %446
  %458 = select i1 %456, i1 %457, i1 false
  br i1 %458, label %447, label %459

459:                                              ; preds = %447
  %460 = select i1 %452, i32 %449, i32 -5
  %461 = icmp slt i32 %460, 0
  br i1 %461, label %462, label %464

462:                                              ; preds = %459
  %463 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.max17042_write_verify_reg, i32 noundef %460) #10
  br label %464

464:                                              ; preds = %462, %459
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #9
  %465 = load i32, ptr %191, align 4
  %466 = icmp eq i32 %465, 1
  br i1 %466, label %467, label %493

467:                                              ; preds = %464
  %468 = getelementptr inbounds %struct.max17042_config_data, ptr %400, i32 0, i32 36
  %469 = load i16, ptr %468, align 1
  %470 = zext i16 %469 to i32
  %471 = call i32 @regmap_write(ptr noundef %401, i32 noundef 58, i32 noundef %470) #9
  %472 = getelementptr inbounds %struct.max17042_config_data, ptr %400, i32 0, i32 37
  %473 = load i16, ptr %472, align 1
  %474 = zext i16 %473 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #9
  store i32 0, ptr %18, align 4, !annotation !8
  br label %475

475:                                              ; preds = %475, %467
  %476 = phi i32 [ 8, %467 ], [ %483, %475 ]
  %477 = call i32 @regmap_write(ptr noundef %401, i32 noundef 59, i32 noundef %474) #9
  %478 = call i32 @regmap_read(ptr noundef %401, i32 noundef 59, ptr noundef nonnull %18) #9
  %479 = load i32, ptr %18, align 4
  %480 = icmp eq i32 %479, %474
  %481 = xor i1 %480, true
  %482 = sext i1 %481 to i32
  %483 = add i32 %476, %482
  %484 = icmp ne i32 %483, 0
  %485 = icmp ne i32 %479, %474
  %486 = select i1 %484, i1 %485, i1 false
  br i1 %486, label %475, label %487

487:                                              ; preds = %475
  %488 = select i1 %480, i32 %477, i32 -5
  %489 = icmp slt i32 %488, 0
  br i1 %489, label %490, label %492

490:                                              ; preds = %487
  %491 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.max17042_write_verify_reg, i32 noundef %488) #10
  br label %492

492:                                              ; preds = %490, %487
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #9
  br label %578

493:                                              ; preds = %464
  %494 = getelementptr inbounds %struct.max17042_config_data, ptr %400, i32 0, i32 25
  %495 = load i16, ptr %494, align 1
  %496 = zext i16 %495 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #9
  store i32 0, ptr %17, align 4, !annotation !8
  br label %497

497:                                              ; preds = %497, %493
  %498 = phi i32 [ 8, %493 ], [ %505, %497 ]
  %499 = call i32 @regmap_write(ptr noundef %401, i32 noundef 18, i32 noundef %496) #9
  %500 = call i32 @regmap_read(ptr noundef %401, i32 noundef 18, ptr noundef nonnull %17) #9
  %501 = load i32, ptr %17, align 4
  %502 = icmp eq i32 %501, %496
  %503 = xor i1 %502, true
  %504 = sext i1 %503 to i32
  %505 = add i32 %498, %504
  %506 = icmp ne i32 %505, 0
  %507 = icmp ne i32 %501, %496
  %508 = select i1 %506, i1 %507, i1 false
  br i1 %508, label %497, label %509

509:                                              ; preds = %497
  %510 = select i1 %502, i32 %499, i32 -5
  %511 = icmp slt i32 %510, 0
  br i1 %511, label %512, label %514

512:                                              ; preds = %509
  %513 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.max17042_write_verify_reg, i32 noundef %510) #10
  br label %514

514:                                              ; preds = %512, %509
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #9
  %515 = getelementptr inbounds %struct.max17042_config_data, ptr %400, i32 0, i32 26
  %516 = load i16, ptr %515, align 1
  %517 = zext i16 %516 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #9
  store i32 0, ptr %16, align 4, !annotation !8
  br label %518

518:                                              ; preds = %518, %514
  %519 = phi i32 [ 8, %514 ], [ %526, %518 ]
  %520 = call i32 @regmap_write(ptr noundef %401, i32 noundef 34, i32 noundef %517) #9
  %521 = call i32 @regmap_read(ptr noundef %401, i32 noundef 34, ptr noundef nonnull %16) #9
  %522 = load i32, ptr %16, align 4
  %523 = icmp eq i32 %522, %517
  %524 = xor i1 %523, true
  %525 = sext i1 %524 to i32
  %526 = add i32 %519, %525
  %527 = icmp ne i32 %526, 0
  %528 = icmp ne i32 %522, %517
  %529 = select i1 %527, i1 %528, i1 false
  br i1 %529, label %518, label %530

530:                                              ; preds = %518
  %531 = select i1 %523, i32 %520, i32 -5
  %532 = icmp slt i32 %531, 0
  br i1 %532, label %533, label %535

533:                                              ; preds = %530
  %534 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.max17042_write_verify_reg, i32 noundef %531) #10
  br label %535

535:                                              ; preds = %533, %530
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #9
  %536 = getelementptr inbounds %struct.max17042_config_data, ptr %400, i32 0, i32 27
  %537 = load i16, ptr %536, align 1
  %538 = zext i16 %537 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #9
  store i32 0, ptr %15, align 4, !annotation !8
  br label %539

539:                                              ; preds = %539, %535
  %540 = phi i32 [ 8, %535 ], [ %547, %539 ]
  %541 = call i32 @regmap_write(ptr noundef %401, i32 noundef 50, i32 noundef %538) #9
  %542 = call i32 @regmap_read(ptr noundef %401, i32 noundef 50, ptr noundef nonnull %15) #9
  %543 = load i32, ptr %15, align 4
  %544 = icmp eq i32 %543, %538
  %545 = xor i1 %544, true
  %546 = sext i1 %545 to i32
  %547 = add i32 %540, %546
  %548 = icmp ne i32 %547, 0
  %549 = icmp ne i32 %543, %538
  %550 = select i1 %548, i1 %549, i1 false
  br i1 %550, label %539, label %551

551:                                              ; preds = %539
  %552 = select i1 %544, i32 %541, i32 -5
  %553 = icmp slt i32 %552, 0
  br i1 %553, label %554, label %556

554:                                              ; preds = %551
  %555 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.max17042_write_verify_reg, i32 noundef %552) #10
  br label %556

556:                                              ; preds = %554, %551
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #9
  %557 = getelementptr inbounds %struct.max17042_config_data, ptr %400, i32 0, i32 28
  %558 = load i16, ptr %557, align 1
  %559 = zext i16 %558 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #9
  store i32 0, ptr %14, align 4, !annotation !8
  br label %560

560:                                              ; preds = %560, %556
  %561 = phi i32 [ 8, %556 ], [ %568, %560 ]
  %562 = call i32 @regmap_write(ptr noundef %401, i32 noundef 66, i32 noundef %559) #9
  %563 = call i32 @regmap_read(ptr noundef %401, i32 noundef 66, ptr noundef nonnull %14) #9
  %564 = load i32, ptr %14, align 4
  %565 = icmp eq i32 %564, %559
  %566 = xor i1 %565, true
  %567 = sext i1 %566 to i32
  %568 = add i32 %561, %567
  %569 = icmp ne i32 %568, 0
  %570 = icmp ne i32 %564, %559
  %571 = select i1 %569, i1 %570, i1 false
  br i1 %571, label %560, label %572

572:                                              ; preds = %560
  %573 = select i1 %565, i32 %562, i32 -5
  %574 = icmp slt i32 %573, 0
  br i1 %574, label %575, label %577

575:                                              ; preds = %572
  %576 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.max17042_write_verify_reg, i32 noundef %573) #10
  br label %577

577:                                              ; preds = %575, %572
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #9
  br label %578

578:                                              ; preds = %577, %492
  %579 = load ptr, ptr %25, align 4
  %580 = getelementptr inbounds %struct.max17042_platform_data, ptr %579, i32 0, i32 1
  %581 = load ptr, ptr %580, align 4
  %582 = load ptr, ptr %35, align 4
  %583 = getelementptr inbounds %struct.max17042_config_data, ptr %581, i32 0, i32 19
  %584 = load i16, ptr %583, align 1
  %585 = zext i16 %584 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #9
  store i32 0, ptr %13, align 4, !annotation !8
  br label %586

586:                                              ; preds = %586, %578
  %587 = phi i32 [ 8, %578 ], [ %594, %586 ]
  %588 = call i32 @regmap_write(ptr noundef %582, i32 noundef 16, i32 noundef %585) #9
  %589 = call i32 @regmap_read(ptr noundef %582, i32 noundef 16, ptr noundef nonnull %13) #9
  %590 = load i32, ptr %13, align 4
  %591 = icmp eq i32 %590, %585
  %592 = xor i1 %591, true
  %593 = sext i1 %592 to i32
  %594 = add i32 %587, %593
  %595 = icmp ne i32 %594, 0
  %596 = icmp ne i32 %590, %585
  %597 = select i1 %595, i1 %596, i1 false
  br i1 %597, label %586, label %598

598:                                              ; preds = %586
  %599 = select i1 %591, i32 %588, i32 -5
  %600 = icmp slt i32 %599, 0
  br i1 %600, label %601, label %603

601:                                              ; preds = %598
  %602 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.max17042_write_verify_reg, i32 noundef %599) #10
  br label %603

603:                                              ; preds = %601, %598
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #9
  %604 = getelementptr inbounds %struct.max17042_config_data, ptr %581, i32 0, i32 11
  %605 = load i16, ptr %604, align 1
  %606 = zext i16 %605 to i32
  %607 = call i32 @regmap_write(ptr noundef %582, i32 noundef 24, i32 noundef %606) #9
  %608 = getelementptr inbounds %struct.max17042_config_data, ptr %581, i32 0, i32 20
  %609 = load i16, ptr %608, align 1
  %610 = zext i16 %609 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #9
  store i32 0, ptr %12, align 4, !annotation !8
  br label %611

611:                                              ; preds = %611, %603
  %612 = phi i32 [ 8, %603 ], [ %619, %611 ]
  %613 = call i32 @regmap_write(ptr noundef %582, i32 noundef 35, i32 noundef %610) #9
  %614 = call i32 @regmap_read(ptr noundef %582, i32 noundef 35, ptr noundef nonnull %12) #9
  %615 = load i32, ptr %12, align 4
  %616 = icmp eq i32 %615, %610
  %617 = xor i1 %616, true
  %618 = sext i1 %617 to i32
  %619 = add i32 %612, %618
  %620 = icmp ne i32 %619, 0
  %621 = icmp ne i32 %615, %610
  %622 = select i1 %620, i1 %621, i1 false
  br i1 %622, label %611, label %623

623:                                              ; preds = %611
  %624 = select i1 %616, i32 %613, i32 -5
  %625 = icmp slt i32 %624, 0
  br i1 %625, label %626, label %628

626:                                              ; preds = %623
  %627 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.max17042_write_verify_reg, i32 noundef %624) #10
  br label %628

628:                                              ; preds = %626, %623
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #9
  call void @msleep(i32 noundef 350) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  store i32 0, ptr %11, align 4, !annotation !8
  %629 = load ptr, ptr %35, align 4
  %630 = call i32 @regmap_read(ptr noundef %629, i32 noundef 255, ptr noundef nonnull %11) #9
  %631 = call i32 @regmap_write(ptr noundef %629, i32 noundef 96, i32 noundef 128) #9
  %632 = load i32, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  store i32 0, ptr %10, align 4, !annotation !8
  br label %633

633:                                              ; preds = %633, %628
  %634 = phi i32 [ 8, %628 ], [ %641, %633 ]
  %635 = call i32 @regmap_write(ptr noundef %629, i32 noundef 72, i32 noundef %632) #9
  %636 = call i32 @regmap_read(ptr noundef %629, i32 noundef 72, ptr noundef nonnull %10) #9
  %637 = load i32, ptr %10, align 4
  %638 = icmp eq i32 %637, %632
  %639 = xor i1 %638, true
  %640 = sext i1 %639 to i32
  %641 = add i32 %634, %640
  %642 = icmp ne i32 %641, 0
  %643 = icmp ne i32 %637, %632
  %644 = select i1 %642, i1 %643, i1 false
  br i1 %644, label %633, label %645

645:                                              ; preds = %633
  %646 = select i1 %638, i32 %635, i32 -5
  %647 = icmp slt i32 %646, 0
  br i1 %647, label %648, label %650

648:                                              ; preds = %645
  %649 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.max17042_write_verify_reg, i32 noundef %646) #10
  br label %650

650:                                              ; preds = %648, %645
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  %651 = call i32 @regmap_write(ptr noundef %629, i32 noundef 96, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4, !annotation !8
  %652 = load ptr, ptr %25, align 4
  %653 = getelementptr inbounds %struct.max17042_platform_data, ptr %652, i32 0, i32 1
  %654 = load ptr, ptr %653, align 4
  %655 = load ptr, ptr %35, align 4
  %656 = call i32 @regmap_read(ptr noundef %655, i32 noundef 53, ptr noundef nonnull %8) #9
  %657 = call i32 @regmap_read(ptr noundef %655, i32 noundef 255, ptr noundef nonnull %9) #9
  %658 = load i32, ptr %9, align 4
  %659 = lshr i32 %658, 8
  %660 = load i32, ptr %8, align 4
  %661 = mul i32 %659, %660
  %662 = udiv i32 %661, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !8
  br label %663

663:                                              ; preds = %663, %650
  %664 = phi i32 [ 8, %650 ], [ %671, %663 ]
  %665 = call i32 @regmap_write(ptr noundef %655, i32 noundef 15, i32 noundef %662) #9
  %666 = call i32 @regmap_read(ptr noundef %655, i32 noundef 15, ptr noundef nonnull %7) #9
  %667 = load i32, ptr %7, align 4
  %668 = icmp eq i32 %667, %662
  %669 = xor i1 %668, true
  %670 = sext i1 %669 to i32
  %671 = add i32 %664, %670
  %672 = icmp ne i32 %671, 0
  %673 = icmp ne i32 %667, %662
  %674 = select i1 %672, i1 %673, i1 false
  br i1 %674, label %663, label %675

675:                                              ; preds = %663
  %676 = select i1 %668, i32 %665, i32 -5
  %677 = icmp slt i32 %676, 0
  br i1 %677, label %678, label %680

678:                                              ; preds = %675
  %679 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.max17042_write_verify_reg, i32 noundef %676) #10
  br label %680

680:                                              ; preds = %678, %675
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  br label %681

681:                                              ; preds = %681, %680
  %682 = phi i32 [ 8, %680 ], [ %689, %681 ]
  %683 = call i32 @regmap_write(ptr noundef %655, i32 noundef 5, i32 noundef %662) #9
  %684 = call i32 @regmap_read(ptr noundef %655, i32 noundef 5, ptr noundef nonnull %6) #9
  %685 = load i32, ptr %6, align 4
  %686 = icmp eq i32 %685, %662
  %687 = xor i1 %686, true
  %688 = sext i1 %687 to i32
  %689 = add i32 %682, %688
  %690 = icmp ne i32 %689, 0
  %691 = icmp ne i32 %685, %662
  %692 = select i1 %690, i1 %691, i1 false
  br i1 %692, label %681, label %693

693:                                              ; preds = %681
  %694 = select i1 %686, i32 %683, i32 -5
  %695 = icmp slt i32 %694, 0
  br i1 %695, label %696, label %698

696:                                              ; preds = %693
  %697 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.max17042_write_verify_reg, i32 noundef %694) #10
  br label %698

698:                                              ; preds = %696, %693
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  %699 = getelementptr inbounds %struct.max17042_config_data, ptr %654, i32 0, i32 19
  %700 = load i16, ptr %699, align 1
  %701 = lshr i16 %700, 2
  %702 = zext i16 %701 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  br label %703

703:                                              ; preds = %703, %698
  %704 = phi i32 [ 8, %698 ], [ %711, %703 ]
  %705 = call i32 @regmap_write(ptr noundef %655, i32 noundef 69, i32 noundef %702) #9
  %706 = call i32 @regmap_read(ptr noundef %655, i32 noundef 69, ptr noundef nonnull %5) #9
  %707 = load i32, ptr %5, align 4
  %708 = icmp eq i32 %707, %702
  %709 = xor i1 %708, true
  %710 = sext i1 %709 to i32
  %711 = add i32 %704, %710
  %712 = icmp ne i32 %711, 0
  %713 = icmp ne i32 %707, %702
  %714 = select i1 %712, i1 %713, i1 false
  br i1 %714, label %703, label %715

715:                                              ; preds = %703
  %716 = select i1 %708, i32 %705, i32 -5
  %717 = icmp slt i32 %716, 0
  br i1 %717, label %718, label %720

718:                                              ; preds = %715
  %719 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.max17042_write_verify_reg, i32 noundef %716) #10
  br label %720

720:                                              ; preds = %718, %715
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  br label %721

721:                                              ; preds = %721, %720
  %722 = phi i32 [ 8, %720 ], [ %729, %721 ]
  %723 = call i32 @regmap_write(ptr noundef %655, i32 noundef 70, i32 noundef 12800) #9
  %724 = call i32 @regmap_read(ptr noundef %655, i32 noundef 70, ptr noundef nonnull %4) #9
  %725 = load i32, ptr %4, align 4
  %726 = icmp eq i32 %725, 12800
  %727 = xor i1 %726, true
  %728 = sext i1 %727 to i32
  %729 = add i32 %722, %728
  %730 = icmp ne i32 %729, 0
  %731 = icmp ne i32 %725, 12800
  %732 = select i1 %730, i1 %731, i1 false
  br i1 %732, label %721, label %733

733:                                              ; preds = %721
  %734 = select i1 %726, i32 %723, i32 -5
  %735 = icmp slt i32 %734, 0
  br i1 %735, label %736, label %738

736:                                              ; preds = %733
  %737 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.max17042_write_verify_reg, i32 noundef %734) #10
  br label %738

738:                                              ; preds = %736, %733
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %739 = load i16, ptr %699, align 1
  %740 = zext i16 %739 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  br label %741

741:                                              ; preds = %741, %738
  %742 = phi i32 [ 8, %738 ], [ %749, %741 ]
  %743 = call i32 @regmap_write(ptr noundef %655, i32 noundef 16, i32 noundef %740) #9
  %744 = call i32 @regmap_read(ptr noundef %655, i32 noundef 16, ptr noundef nonnull %3) #9
  %745 = load i32, ptr %3, align 4
  %746 = icmp eq i32 %745, %740
  %747 = xor i1 %746, true
  %748 = sext i1 %747 to i32
  %749 = add i32 %742, %748
  %750 = icmp ne i32 %749, 0
  %751 = icmp ne i32 %745, %740
  %752 = select i1 %750, i1 %751, i1 false
  br i1 %752, label %741, label %753

753:                                              ; preds = %741
  %754 = select i1 %746, i32 %743, i32 -5
  %755 = icmp slt i32 %754, 0
  br i1 %755, label %756, label %758

756:                                              ; preds = %753
  %757 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.max17042_write_verify_reg, i32 noundef %754) #10
  br label %758

758:                                              ; preds = %756, %753
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %759 = getelementptr inbounds %struct.max17042_config_data, ptr %654, i32 0, i32 11
  %760 = load i16, ptr %759, align 1
  %761 = zext i16 %760 to i32
  %762 = call i32 @regmap_write(ptr noundef %655, i32 noundef 24, i32 noundef %761) #9
  %763 = getelementptr inbounds %struct.max17042_config_data, ptr %654, i32 0, i32 20
  %764 = load i16, ptr %763, align 1
  %765 = zext i16 %764 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  br label %766

766:                                              ; preds = %766, %758
  %767 = phi i32 [ 8, %758 ], [ %774, %766 ]
  %768 = call i32 @regmap_write(ptr noundef %655, i32 noundef 35, i32 noundef %765) #9
  %769 = call i32 @regmap_read(ptr noundef %655, i32 noundef 35, ptr noundef nonnull %2) #9
  %770 = load i32, ptr %2, align 4
  %771 = icmp eq i32 %770, %765
  %772 = xor i1 %771, true
  %773 = sext i1 %772 to i32
  %774 = add i32 %767, %773
  %775 = icmp ne i32 %774, 0
  %776 = icmp ne i32 %770, %765
  %777 = select i1 %775, i1 %776, i1 false
  br i1 %777, label %766, label %778

778:                                              ; preds = %766
  %779 = select i1 %771, i32 %768, i32 -5
  %780 = icmp slt i32 %779, 0
  br i1 %780, label %781, label %783

781:                                              ; preds = %778
  %782 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.max17042_write_verify_reg, i32 noundef %779) #10
  br label %783

783:                                              ; preds = %781, %778
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %784 = load i32, ptr %9, align 4
  %785 = call i32 @regmap_write(ptr noundef %655, i32 noundef 6, i32 noundef %784) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  %786 = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %787

787:                                              ; preds = %783, %30, %1
  %788 = getelementptr i8, ptr %0, i32 16
  store i32 1, ptr %788, align 4
  br label %789

789:                                              ; preds = %787, %394, %361
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max17042_stop_work(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.max17042_chip, ptr %0, i32 0, i32 5
  %3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max17042_get_property(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #9
  %16 = getelementptr inbounds %struct.max17042_chip, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #9
  store i32 0, ptr %14, align 4, !annotation !8
  %18 = getelementptr inbounds %struct.max17042_chip, ptr %15, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %363, label %21

21:                                               ; preds = %3
  switch i32 %1, label %363 [
    i32 0, label %22
    i32 3, label %67
    i32 6, label %76
    i32 7, label %77
    i32 8, label %82
    i32 9, label %89
    i32 11, label %96
    i32 12, label %107
    i32 13, label %114
    i32 14, label %121
    i32 47, label %128
    i32 22, label %140
    i32 24, label %161
    i32 26, label %182
    i32 28, label %203
    i32 52, label %218
    i32 55, label %228
    i32 56, label %236
    i32 54, label %244
    i32 53, label %249
    i32 2, label %254
    i32 66, label %302
    i32 17, label %303
    i32 18, label %323
    i32 68, label %343
    i32 60, label %356
  ]

22:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  store i32 0, ptr %11, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #9
  store i32 0, ptr %12, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #9
  store i32 0, ptr %13, align 4, !annotation !8
  %23 = getelementptr inbounds %struct.max17042_chip, ptr %15, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @power_supply_am_i_supplied(ptr noundef %24) #9
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %65, label %27

27:                                               ; preds = %22
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %65, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %16, align 4
  %31 = call i32 @regmap_read(ptr noundef %30, i32 noundef 16, ptr noundef nonnull %11) #9
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %63, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %16, align 4
  %35 = call i32 @regmap_read(ptr noundef %34, i32 noundef 5, ptr noundef nonnull %12) #9
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %63, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %11, align 4
  %39 = load i32, ptr %12, align 4
  %40 = sub i32 %38, %39
  %41 = icmp slt i32 %40, 11
  br i1 %41, label %65, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.max17042_chip, ptr %15, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.max17042_platform_data, ptr %44, i32 0, i32 3
  %46 = load i8, ptr %45, align 4, !range !9
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %65, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %16, align 4
  %50 = call i32 @regmap_read(ptr noundef %49, i32 noundef 11, ptr noundef nonnull %13) #9
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %13, align 4
  %54 = shl i32 %53, 16
  %55 = ashr exact i32 %54, 16
  %56 = load ptr, ptr %43, align 4
  %57 = getelementptr inbounds %struct.max17042_platform_data, ptr %56, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = udiv i32 1562500, %58
  %60 = mul i32 %59, %55
  %61 = icmp slt i32 %60, 1
  %62 = select i1 %61, i32 2, i32 1
  br label %65

63:                                               ; preds = %48, %33, %29
  %64 = phi i32 [ %50, %48 ], [ %35, %33 ], [ %31, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  br label %363

65:                                               ; preds = %52, %42, %37, %27, %22
  %66 = phi i32 [ %62, %52 ], [ 0, %22 ], [ 2, %27 ], [ 4, %37 ], [ 1, %42 ]
  store i32 %66, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  br label %363

67:                                               ; preds = %21
  %68 = call i32 @regmap_read(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %14) #9
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %363, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %14, align 4
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store i32 0, ptr %2, align 4
  br label %363

75:                                               ; preds = %70
  store i32 1, ptr %2, align 4
  br label %363

76:                                               ; preds = %21
  store i32 2, ptr %2, align 4
  br label %363

77:                                               ; preds = %21
  %78 = call i32 @regmap_read(ptr noundef %17, i32 noundef 23, ptr noundef nonnull %14) #9
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %363, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr %14, align 4
  store i32 %81, ptr %2, align 4
  br label %363

82:                                               ; preds = %21
  %83 = call i32 @regmap_read(ptr noundef %17, i32 noundef 27, ptr noundef nonnull %14) #9
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %363, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr %14, align 4
  %87 = lshr i32 %86, 8
  %88 = mul i32 %87, 20000
  store i32 %88, ptr %2, align 4
  br label %363

89:                                               ; preds = %21
  %90 = call i32 @regmap_read(ptr noundef %17, i32 noundef 27, ptr noundef nonnull %14) #9
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %363, label %92

92:                                               ; preds = %89
  %93 = load i32, ptr %14, align 4
  %94 = and i32 %93, 255
  %95 = mul nuw nsw i32 %94, 20000
  store i32 %95, ptr %2, align 4
  br label %363

96:                                               ; preds = %21
  %97 = getelementptr inbounds %struct.max17042_chip, ptr %15, i32 0, i32 3
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 1
  %100 = select i1 %99, i32 18, i32 58
  %101 = call i32 @regmap_read(ptr noundef %17, i32 noundef %100, ptr noundef nonnull %14) #9
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %363, label %103

103:                                              ; preds = %96
  %104 = load i32, ptr %14, align 4
  %105 = lshr i32 %104, 7
  %106 = mul i32 %105, 10000
  store i32 %106, ptr %2, align 4
  br label %363

107:                                              ; preds = %21
  %108 = call i32 @regmap_read(ptr noundef %17, i32 noundef 9, ptr noundef nonnull %14) #9
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %363, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr %14, align 4
  %112 = mul i32 %111, 625
  %113 = lshr i32 %112, 3
  store i32 %113, ptr %2, align 4
  br label %363

114:                                              ; preds = %21
  %115 = call i32 @regmap_read(ptr noundef %17, i32 noundef 25, ptr noundef nonnull %14) #9
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %363, label %117

117:                                              ; preds = %114
  %118 = load i32, ptr %14, align 4
  %119 = mul i32 %118, 625
  %120 = lshr i32 %119, 3
  store i32 %120, ptr %2, align 4
  br label %363

121:                                              ; preds = %21
  %122 = call i32 @regmap_read(ptr noundef %17, i32 noundef 251, ptr noundef nonnull %14) #9
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %363, label %124

124:                                              ; preds = %121
  %125 = load i32, ptr %14, align 4
  %126 = mul i32 %125, 625
  %127 = lshr i32 %126, 3
  store i32 %127, ptr %2, align 4
  br label %363

128:                                              ; preds = %21
  %129 = getelementptr inbounds %struct.max17042_chip, ptr %15, i32 0, i32 4
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.max17042_platform_data, ptr %130, i32 0, i32 3
  %132 = load i8, ptr %131, align 4, !range !9
  %133 = icmp eq i8 %132, 0
  %134 = select i1 %133, i32 255, i32 6
  %135 = call i32 @regmap_read(ptr noundef %17, i32 noundef %134, ptr noundef nonnull %14) #9
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %363, label %137

137:                                              ; preds = %128
  %138 = load i32, ptr %14, align 4
  %139 = lshr i32 %138, 8
  store i32 %139, ptr %2, align 4
  br label %363

140:                                              ; preds = %21
  %141 = call i32 @regmap_read(ptr noundef %17, i32 noundef 24, ptr noundef nonnull %14) #9
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %363, label %143

143:                                              ; preds = %140
  %144 = load i32, ptr %14, align 4
  %145 = zext i32 %144 to i64
  %146 = mul nuw nsw i64 %145, 5000000
  %147 = getelementptr inbounds %struct.max17042_chip, ptr %15, i32 0, i32 4
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.max17042_platform_data, ptr %148, i32 0, i32 5
  %150 = load i32, ptr %149, align 4
  %151 = icmp ult i64 %146, 4294967296
  br i1 %151, label %152, label %155, !prof !10

152:                                              ; preds = %143
  %153 = trunc i64 %146 to i32
  %154 = udiv i32 %153, %150
  br label %159

155:                                              ; preds = %143
  %156 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %150, i64 %146) #12, !srcloc !11
  %157 = extractvalue { i64, i64 } %156, 1
  %158 = trunc i64 %157 to i32
  br label %159

159:                                              ; preds = %155, %152
  %160 = phi i32 [ %154, %152 ], [ %158, %155 ]
  store i32 %160, ptr %2, align 4
  br label %363

161:                                              ; preds = %21
  %162 = call i32 @regmap_read(ptr noundef %17, i32 noundef 16, ptr noundef nonnull %14) #9
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %363, label %164

164:                                              ; preds = %161
  %165 = load i32, ptr %14, align 4
  %166 = zext i32 %165 to i64
  %167 = mul nuw nsw i64 %166, 5000000
  %168 = getelementptr inbounds %struct.max17042_chip, ptr %15, i32 0, i32 4
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.max17042_platform_data, ptr %169, i32 0, i32 5
  %171 = load i32, ptr %170, align 4
  %172 = icmp ult i64 %167, 4294967296
  br i1 %172, label %173, label %176, !prof !10

173:                                              ; preds = %164
  %174 = trunc i64 %167 to i32
  %175 = udiv i32 %174, %171
  br label %180

176:                                              ; preds = %164
  %177 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %171, i64 %167) #12, !srcloc !11
  %178 = extractvalue { i64, i64 } %177, 1
  %179 = trunc i64 %178 to i32
  br label %180

180:                                              ; preds = %176, %173
  %181 = phi i32 [ %175, %173 ], [ %179, %176 ]
  store i32 %181, ptr %2, align 4
  br label %363

182:                                              ; preds = %21
  %183 = call i32 @regmap_read(ptr noundef %17, i32 noundef 5, ptr noundef nonnull %14) #9
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %363, label %185

185:                                              ; preds = %182
  %186 = load i32, ptr %14, align 4
  %187 = zext i32 %186 to i64
  %188 = mul nuw nsw i64 %187, 5000000
  %189 = getelementptr inbounds %struct.max17042_chip, ptr %15, i32 0, i32 4
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.max17042_platform_data, ptr %190, i32 0, i32 5
  %192 = load i32, ptr %191, align 4
  %193 = icmp ult i64 %188, 4294967296
  br i1 %193, label %194, label %197, !prof !10

194:                                              ; preds = %185
  %195 = trunc i64 %188 to i32
  %196 = udiv i32 %195, %192
  br label %201

197:                                              ; preds = %185
  %198 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %192, i64 %188) #12, !srcloc !11
  %199 = extractvalue { i64, i64 } %198, 1
  %200 = trunc i64 %199 to i32
  br label %201

201:                                              ; preds = %197, %194
  %202 = phi i32 [ %196, %194 ], [ %200, %197 ]
  store i32 %202, ptr %2, align 4
  br label %363

203:                                              ; preds = %21
  %204 = call i32 @regmap_read(ptr noundef %17, i32 noundef 77, ptr noundef nonnull %14) #9
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %363, label %206

206:                                              ; preds = %203
  %207 = load i32, ptr %14, align 4
  %208 = zext i32 %207 to i64
  %209 = shl i64 %208, 48
  %210 = ashr exact i64 %209, 48
  %211 = mul nsw i64 %210, 5000000
  %212 = getelementptr inbounds %struct.max17042_chip, ptr %15, i32 0, i32 4
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr inbounds %struct.max17042_platform_data, ptr %213, i32 0, i32 5
  %215 = load i32, ptr %214, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  store i32 0, ptr %10, align 4, !annotation !8
  %216 = call i64 @div_s64_rem(i64 noundef %211, i32 noundef %215, ptr noundef nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  %217 = trunc i64 %216 to i32
  store i32 %217, ptr %2, align 4
  br label %363

218:                                              ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4, !annotation !8
  %219 = call i32 @regmap_read(ptr noundef %17, i32 noundef 8, ptr noundef nonnull %9) #9
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  br label %363

222:                                              ; preds = %218
  %223 = load i32, ptr %9, align 4
  %224 = shl i32 %223, 16
  %225 = ashr exact i32 %224, 16
  %226 = mul nsw i32 %225, 10
  %227 = sdiv i32 %226, 256
  store i32 %227, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  br label %363

228:                                              ; preds = %21
  %229 = call i32 @regmap_read(ptr noundef %17, i32 noundef 2, ptr noundef nonnull %14) #9
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %363, label %231

231:                                              ; preds = %228
  %232 = load i32, ptr %14, align 4
  %233 = shl i32 %232, 24
  %234 = ashr exact i32 %233, 24
  %235 = mul nsw i32 %234, 10
  store i32 %235, ptr %2, align 4
  br label %363

236:                                              ; preds = %21
  %237 = call i32 @regmap_read(ptr noundef %17, i32 noundef 2, ptr noundef nonnull %14) #9
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %363, label %239

239:                                              ; preds = %236
  %240 = load i32, ptr %14, align 4
  %241 = shl i32 %240, 16
  %242 = ashr i32 %241, 24
  %243 = mul nsw i32 %242, 10
  store i32 %243, ptr %2, align 4
  br label %363

244:                                              ; preds = %21
  %245 = getelementptr inbounds %struct.max17042_chip, ptr %15, i32 0, i32 4
  %246 = load ptr, ptr %245, align 4
  %247 = getelementptr inbounds %struct.max17042_platform_data, ptr %246, i32 0, i32 8
  %248 = load i32, ptr %247, align 4
  store i32 %248, ptr %2, align 4
  br label %363

249:                                              ; preds = %21
  %250 = getelementptr inbounds %struct.max17042_chip, ptr %15, i32 0, i32 4
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr inbounds %struct.max17042_platform_data, ptr %251, i32 0, i32 9
  %253 = load i32, ptr %252, align 4
  store i32 %253, ptr %2, align 4
  br label %363

254:                                              ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4, !annotation !8
  %255 = call i32 @regmap_read(ptr noundef %17, i32 noundef 25, ptr noundef nonnull %8) #9
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %300, label %257

257:                                              ; preds = %254
  %258 = load i32, ptr %8, align 4
  %259 = load ptr, ptr %16, align 4
  %260 = call i32 @regmap_read(ptr noundef %259, i32 noundef 9, ptr noundef nonnull %8) #9
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %300, label %262

262:                                              ; preds = %257
  %263 = mul i32 %258, 625
  %264 = udiv i32 %263, 8000
  %265 = getelementptr inbounds %struct.max17042_chip, ptr %15, i32 0, i32 4
  %266 = load ptr, ptr %265, align 4
  %267 = getelementptr inbounds %struct.max17042_platform_data, ptr %266, i32 0, i32 6
  %268 = load i32, ptr %267, align 4
  %269 = icmp slt i32 %264, %268
  br i1 %269, label %298, label %270

270:                                              ; preds = %262
  %271 = load i32, ptr %8, align 4
  %272 = mul i32 %271, 625
  %273 = udiv i32 %272, 8000
  %274 = getelementptr inbounds %struct.max17042_platform_data, ptr %266, i32 0, i32 7
  %275 = load i32, ptr %274, align 4
  %276 = add i32 %275, 50
  %277 = icmp sgt i32 %273, %276
  br i1 %277, label %298, label %278

278:                                              ; preds = %270
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !8
  %279 = load ptr, ptr %16, align 4
  %280 = call i32 @regmap_read(ptr noundef %279, i32 noundef 8, ptr noundef nonnull %7) #9
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %278
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  br label %300

283:                                              ; preds = %278
  %284 = load i32, ptr %7, align 4
  %285 = shl i32 %284, 16
  %286 = ashr exact i32 %285, 16
  %287 = mul nsw i32 %286, 10
  %288 = sdiv i32 %287, 256
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  %289 = load ptr, ptr %265, align 4
  %290 = getelementptr inbounds %struct.max17042_platform_data, ptr %289, i32 0, i32 8
  %291 = load i32, ptr %290, align 4
  %292 = icmp slt i32 %288, %291
  br i1 %292, label %298, label %293

293:                                              ; preds = %283
  %294 = getelementptr inbounds %struct.max17042_platform_data, ptr %289, i32 0, i32 9
  %295 = load i32, ptr %294, align 4
  %296 = icmp sgt i32 %288, %295
  %297 = select i1 %296, i32 2, i32 1
  br label %298

298:                                              ; preds = %293, %283, %270, %262
  %299 = phi i32 [ 3, %262 ], [ 4, %270 ], [ 6, %283 ], [ %297, %293 ]
  store i32 %299, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  br label %363

300:                                              ; preds = %282, %257, %254
  %301 = phi i32 [ %255, %254 ], [ %260, %257 ], [ %280, %282 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  br label %363

302:                                              ; preds = %21
  store i32 1, ptr %2, align 4
  br label %363

303:                                              ; preds = %21
  %304 = getelementptr inbounds %struct.max17042_chip, ptr %15, i32 0, i32 4
  %305 = load ptr, ptr %304, align 4
  %306 = getelementptr inbounds %struct.max17042_platform_data, ptr %305, i32 0, i32 3
  %307 = load i8, ptr %306, align 4, !range !9
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %363, label %309

309:                                              ; preds = %303
  %310 = call i32 @regmap_read(ptr noundef %17, i32 noundef 10, ptr noundef nonnull %14) #9
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %363, label %312

312:                                              ; preds = %309
  %313 = load i32, ptr %14, align 4
  %314 = zext i32 %313 to i64
  %315 = shl i64 %314, 48
  %316 = ashr exact i64 %315, 48
  %317 = mul nsw i64 %316, 1562500
  %318 = load ptr, ptr %304, align 4
  %319 = getelementptr inbounds %struct.max17042_platform_data, ptr %318, i32 0, i32 5
  %320 = load i32, ptr %319, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  %321 = call i64 @div_s64_rem(i64 noundef %317, i32 noundef %320, ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  %322 = trunc i64 %321 to i32
  store i32 %322, ptr %2, align 4
  br label %363

323:                                              ; preds = %21
  %324 = getelementptr inbounds %struct.max17042_chip, ptr %15, i32 0, i32 4
  %325 = load ptr, ptr %324, align 4
  %326 = getelementptr inbounds %struct.max17042_platform_data, ptr %325, i32 0, i32 3
  %327 = load i8, ptr %326, align 4, !range !9
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %363, label %329

329:                                              ; preds = %323
  %330 = call i32 @regmap_read(ptr noundef %17, i32 noundef 11, ptr noundef nonnull %14) #9
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %363, label %332

332:                                              ; preds = %329
  %333 = load i32, ptr %14, align 4
  %334 = zext i32 %333 to i64
  %335 = shl i64 %334, 48
  %336 = ashr exact i64 %335, 48
  %337 = mul nsw i64 %336, 1562500
  %338 = load ptr, ptr %324, align 4
  %339 = getelementptr inbounds %struct.max17042_platform_data, ptr %338, i32 0, i32 5
  %340 = load i32, ptr %339, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %341 = call i64 @div_s64_rem(i64 noundef %337, i32 noundef %340, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %342 = trunc i64 %341 to i32
  store i32 %342, ptr %2, align 4
  br label %363

343:                                              ; preds = %21
  %344 = call i32 @regmap_read(ptr noundef %17, i32 noundef 30, ptr noundef nonnull %14) #9
  %345 = icmp slt i32 %344, 0
  br i1 %345, label %363, label %346

346:                                              ; preds = %343
  %347 = load i32, ptr %14, align 4
  %348 = zext i32 %347 to i64
  %349 = mul nuw nsw i64 %348, 1562500
  %350 = getelementptr inbounds %struct.max17042_chip, ptr %15, i32 0, i32 4
  %351 = load ptr, ptr %350, align 4
  %352 = getelementptr inbounds %struct.max17042_platform_data, ptr %351, i32 0, i32 5
  %353 = load i32, ptr %352, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %354 = call i64 @div_s64_rem(i64 noundef %349, i32 noundef %353, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %355 = trunc i64 %354 to i32
  store i32 %355, ptr %2, align 4
  br label %363

356:                                              ; preds = %21
  %357 = call i32 @regmap_read(ptr noundef %17, i32 noundef 17, ptr noundef nonnull %14) #9
  %358 = icmp slt i32 %357, 0
  br i1 %358, label %363, label %359

359:                                              ; preds = %356
  %360 = load i32, ptr %14, align 4
  %361 = mul i32 %360, 5625
  %362 = udiv i32 %361, 1000
  store i32 %362, ptr %2, align 4
  br label %363

363:                                              ; preds = %359, %356, %346, %343, %332, %329, %323, %312, %309, %303, %302, %300, %298, %249, %244, %239, %236, %231, %228, %222, %221, %206, %203, %201, %182, %180, %161, %159, %140, %137, %128, %124, %121, %117, %114, %110, %107, %103, %96, %92, %89, %85, %82, %80, %77, %76, %75, %74, %67, %65, %63, %21, %3
  %364 = phi i32 [ -11, %3 ], [ %68, %67 ], [ %78, %77 ], [ %83, %82 ], [ %90, %89 ], [ %101, %96 ], [ %108, %107 ], [ %115, %114 ], [ %122, %121 ], [ %135, %128 ], [ %141, %140 ], [ %162, %161 ], [ %183, %182 ], [ %204, %203 ], [ %229, %228 ], [ %237, %236 ], [ %301, %300 ], [ %310, %309 ], [ -22, %303 ], [ %330, %329 ], [ -22, %323 ], [ %344, %343 ], [ %357, %356 ], [ -22, %21 ], [ %64, %63 ], [ %219, %221 ], [ 0, %298 ], [ 0, %222 ], [ 0, %65 ], [ 0, %74 ], [ 0, %75 ], [ 0, %359 ], [ 0, %346 ], [ 0, %332 ], [ 0, %312 ], [ 0, %302 ], [ 0, %249 ], [ 0, %244 ], [ 0, %239 ], [ 0, %231 ], [ 0, %206 ], [ 0, %201 ], [ 0, %180 ], [ 0, %159 ], [ 0, %137 ], [ 0, %124 ], [ 0, %117 ], [ 0, %110 ], [ 0, %103 ], [ 0, %92 ], [ 0, %85 ], [ 0, %80 ], [ 0, %76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #9
  ret i32 %364
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max17042_set_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.max17042_chip, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  switch i32 %1, label %45 [
    i32 55, label %8
    i32 56, label %26
  ]

8:                                                ; preds = %3
  %9 = call i32 @regmap_read(ptr noundef %7, i32 noundef 2, ptr noundef nonnull %4) #9
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %2, align 4
  %13 = sdiv i32 %12, 10
  %14 = shl i32 %13, 24
  %15 = ashr exact i32 %14, 24
  %16 = load i32, ptr %4, align 4
  %17 = shl i32 %16, 16
  %18 = ashr i32 %17, 24
  %19 = icmp slt i32 %15, %18
  %20 = add nsw i32 %18, 255
  %21 = select i1 %19, i32 %13, i32 %20
  %22 = and i32 %16, 65280
  %23 = shl i32 %21, 24
  %24 = ashr exact i32 %23, 24
  %25 = add nsw i32 %24, %22
  br label %42

26:                                               ; preds = %3
  %27 = call i32 @regmap_read(ptr noundef %7, i32 noundef 2, ptr noundef nonnull %4) #9
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %2, align 4
  %31 = sdiv i32 %30, 10
  %32 = shl i32 %31, 24
  %33 = load i32, ptr %4, align 4
  %34 = shl i32 %33, 24
  %35 = icmp sgt i32 %32, %34
  %36 = add i32 %33, 1
  %37 = select i1 %35, i32 %31, i32 %36
  %38 = and i32 %33, 255
  %39 = shl i32 %37, 24
  %40 = ashr exact i32 %39, 16
  %41 = or i32 %40, %38
  br label %42

42:                                               ; preds = %29, %11
  %43 = phi i32 [ %41, %29 ], [ %25, %11 ]
  store i32 %43, ptr %4, align 4
  %44 = call i32 @regmap_write(ptr noundef %7, i32 noundef 2, i32 noundef %43) #9
  br label %45

45:                                               ; preds = %42, %26, %8, %3
  %46 = phi i32 [ %9, %8 ], [ %27, %26 ], [ -22, %3 ], [ %44, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @max17042_property_is_writeable(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = add i32 %1, -55
  %4 = icmp ult i32 %3, 2
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max17042_external_power_changed(ptr noundef %0) #2 {
  tail call void @power_supply_changed(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_am_i_supplied(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max17042_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  tail call void @disable_irq(i32 noundef %6) #9
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @irq_set_irq_wake(i32 noundef %11, i32 noundef 1) #9
  br label %13

13:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max17042_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef 0) #9
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  tail call void @enable_irq(i32 noundef %13) #9
  %14 = getelementptr inbounds %struct.max17042_chip, ptr %4, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %16 = call i32 @regmap_read(ptr noundef %15, i32 noundef 6, ptr noundef nonnull %2) #9
  %17 = load i32, ptr %2, align 4
  %18 = lshr i32 %17, 8
  store i32 %18, ptr %2, align 4
  %19 = add i32 %17, 256
  %20 = and i32 %19, -256
  %21 = icmp ugt i32 %17, 511
  %22 = add nsw i32 %18, -1
  %23 = select i1 %21, i32 %22, i32 0
  %24 = or i32 %23, %20
  %25 = call i32 @regmap_write(ptr noundef %15, i32 noundef 3, i32 noundef %24) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %26

26:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148711582, i64 2148711862, i64 2148712196, i64 2148712530}
