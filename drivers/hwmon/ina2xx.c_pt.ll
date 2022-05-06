; ModuleID = '/llk/IR/drivers/hwmon/ina2xx.c_pt.bc'
source_filename = "../drivers/hwmon/ina2xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.ina2xx_config = type { i16, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.ina2xx_data = type { ptr, i32, i32, i32, %struct.mutex, ptr, [3 x ptr] }

@ina2xx_id = internal constant [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ina219\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ina220\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ina226\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ina230\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ina231\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], align 4
@ina2xx_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ina219\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ina220\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ina226\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ina230\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ina231\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author259 = internal constant [39 x i8] c"author=Lothar Felten <l-felten@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description260 = internal constant [26 x i8] c"description=ina2xx driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license261 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@ina2xx_driver = internal global %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @ina2xx_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ina2xx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ina2xx_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"ina2xx\00", align 1
@ina2xx_config = internal constant [2 x %struct.ina2xx_config] [%struct.ina2xx_config { i16 14751, i32 4096, i32 6, i32 100, i32 3, i32 4000, i32 20 }, %struct.ina2xx_config { i16 17703, i32 2048, i32 8, i32 400, i32 0, i32 1250, i32 25 }], align 4
@ina2xx_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"&data->config_lock\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"shunt-resistor\00", align 1
@ina2xx_regmap_config = internal global %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to allocate register map\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"error configuring the device: %d\0A\00", align 1
@ina2xx_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ina2xx_attrs, ptr null }, align 4
@ina226_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ina226_attrs, ptr null }, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"power monitor %s (Rshunt = %li uOhm)\0A\00", align 1
@ina2xx_attrs = internal global [6 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_curr1_input, ptr @sensor_dev_attr_power1_input, ptr @sensor_dev_attr_shunt_resistor, ptr null], align 4
@sensor_dev_attr_in0_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @ina2xx_value_show, ptr null }, i32 1 }, align 4
@sensor_dev_attr_in1_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @ina2xx_value_show, ptr null }, i32 2 }, align 4
@sensor_dev_attr_curr1_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @ina2xx_value_show, ptr null }, i32 4 }, align 4
@sensor_dev_attr_power1_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @ina2xx_value_show, ptr null }, i32 3 }, align 4
@sensor_dev_attr_shunt_resistor = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420 }, ptr @ina2xx_shunt_show, ptr @ina2xx_shunt_store }, i32 5 }, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"in0_input\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"chip not calibrated, reinitializing\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"unable to reinitialize the chip\0A\00", align 1
@ina2xx_get_value.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"drivers/hwmon/ina2xx.c\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"in1_input\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"curr1_input\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"power1_input\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"shunt_resistor\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%li\0A\00", align 1
@ina226_attrs = internal global [12 x ptr] [ptr @sensor_dev_attr_in0_crit, ptr @sensor_dev_attr_in0_lcrit, ptr @sensor_dev_attr_in0_crit_alarm, ptr @sensor_dev_attr_in0_lcrit_alarm, ptr @sensor_dev_attr_in1_crit, ptr @sensor_dev_attr_in1_lcrit, ptr @sensor_dev_attr_in1_crit_alarm, ptr @sensor_dev_attr_in1_lcrit_alarm, ptr @sensor_dev_attr_power1_crit, ptr @sensor_dev_attr_power1_crit_alarm, ptr @sensor_dev_attr_update_interval, ptr null], align 4
@sensor_dev_attr_in0_crit = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420 }, ptr @ina226_alert_show, ptr @ina226_alert_store }, i32 15 }, align 4
@sensor_dev_attr_in0_lcrit = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420 }, ptr @ina226_alert_show, ptr @ina226_alert_store }, i32 14 }, align 4
@sensor_dev_attr_in0_crit_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @ina226_alarm_show, ptr null }, i32 15 }, align 4
@sensor_dev_attr_in0_lcrit_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @ina226_alarm_show, ptr null }, i32 14 }, align 4
@sensor_dev_attr_in1_crit = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420 }, ptr @ina226_alert_show, ptr @ina226_alert_store }, i32 13 }, align 4
@sensor_dev_attr_in1_lcrit = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420 }, ptr @ina226_alert_show, ptr @ina226_alert_store }, i32 12 }, align 4
@sensor_dev_attr_in1_crit_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @ina226_alarm_show, ptr null }, i32 13 }, align 4
@sensor_dev_attr_in1_lcrit_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @ina226_alarm_show, ptr null }, i32 12 }, align 4
@sensor_dev_attr_power1_crit = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420 }, ptr @ina226_alert_show, ptr @ina226_alert_store }, i32 11 }, align 4
@sensor_dev_attr_power1_crit_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292 }, ptr @ina226_alarm_show, ptr null }, i32 11 }, align 4
@sensor_dev_attr_update_interval = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420 }, ptr @ina226_interval_show, ptr @ina226_interval_store }, i32 0 }, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"in0_crit\00", align 1
@ina226_reg_to_alert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ina226_alert_to_reg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"in0_lcrit\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"in0_crit_alarm\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"in0_lcrit_alarm\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"in1_crit\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"in1_lcrit\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"in1_crit_alarm\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"in1_lcrit_alarm\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"power1_crit\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"power1_crit_alarm\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"update_interval\00", align 1
@ina226_avg_tab = internal unnamed_addr constant [8 x i32] [i32 1, i32 4, i32 16, i32 64, i32 128, i32 256, i32 512, i32 1024], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_license261], section "llvm.metadata"

@__mod_i2c__ina2xx_id_device_table = dso_local alias [6 x %struct.i2c_device_id], ptr @ina2xx_id
@__mod_of__ina2xx_of_match_device_table = dso_local alias [6 x %struct.of_device_id], ptr @ina2xx_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @ina2xx_driver) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @ina2xx_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ina2xx_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %3) #6
  %9 = ptrtoint ptr %8 to i32
  br label %14

10:                                               ; preds = %1
  %11 = tail call ptr @i2c_match_id(ptr noundef nonnull @ina2xx_id, ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.i2c_device_id, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ %9, %7 ], [ %13, %10 ]
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 52, i32 noundef 3520) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %98, label %18

18:                                               ; preds = %14
  %19 = getelementptr [2 x %struct.ina2xx_config], ptr @ina2xx_config, i32 0, i32 %15
  store ptr %19, ptr %16, align 4
  %20 = getelementptr inbounds %struct.ina2xx_data, ptr %16, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef nonnull @ina2xx_probe.__key) #6
  %21 = load ptr, ptr %4, align 8
  %22 = call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load i32, ptr %2, align 4
  br label %34

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %28, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %31, %30 ], [ 10000, %26 ]
  store i32 %33, ptr %2, align 4
  br label %34

34:                                               ; preds = %32, %24
  %35 = phi i32 [ %25, %24 ], [ %33, %32 ]
  %36 = load ptr, ptr %16, align 4
  %37 = getelementptr inbounds %struct.ina2xx_config, ptr %36, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp sgt i32 %38, 0
  %40 = select i1 %39, i32 2, i32 -2
  %41 = sdiv i32 %38, %40
  %42 = add nsw i32 %41, 1000000000
  %43 = sdiv i32 %42, %38
  %44 = icmp slt i32 %35, 1
  %45 = icmp ult i32 %43, %35
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %34
  call void @mutex_lock(ptr noundef %20) #6
  %48 = getelementptr inbounds %struct.ina2xx_data, ptr %16, i32 0, i32 1
  store i32 %35, ptr %48, align 4
  %49 = lshr i32 %35, 1
  %50 = add i32 %43, %49
  %51 = udiv i32 %50, %35
  %52 = getelementptr inbounds %struct.ina2xx_data, ptr %16, i32 0, i32 2
  store i32 %51, ptr %52, align 4
  %53 = load ptr, ptr %16, align 4
  %54 = getelementptr inbounds %struct.ina2xx_config, ptr %53, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = mul i32 %55, %51
  %57 = getelementptr inbounds %struct.ina2xx_data, ptr %16, i32 0, i32 3
  store i32 %56, ptr %57, align 4
  call void @mutex_unlock(ptr noundef %20) #6
  %58 = load ptr, ptr %16, align 4
  br label %59

59:                                               ; preds = %47, %34
  %60 = phi ptr [ %36, %34 ], [ %58, %47 ]
  %61 = getelementptr inbounds %struct.ina2xx_config, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  store i32 %62, ptr getelementptr inbounds (%struct.regmap_config, ptr @ina2xx_regmap_config, i32 0, i32 19), align 4
  %63 = call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @ina2xx_regmap_config, ptr noundef null, ptr noundef null) #6
  %64 = getelementptr inbounds %struct.ina2xx_data, ptr %16, i32 0, i32 5
  store ptr %63, ptr %64, align 4
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  %67 = load ptr, ptr %64, align 4
  %68 = ptrtoint ptr %67 to i32
  br label %98

69:                                               ; preds = %59
  %70 = load ptr, ptr %16, align 4
  %71 = load i16, ptr %70, align 4
  %72 = zext i16 %71 to i32
  %73 = call i32 @regmap_write(ptr noundef %63, i32 noundef 0, i32 noundef %72) #6
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %69
  %76 = load ptr, ptr %64, align 4
  %77 = load ptr, ptr %16, align 4
  %78 = getelementptr inbounds %struct.ina2xx_config, ptr %77, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = call i32 @regmap_write(ptr noundef %76, i32 noundef 5, i32 noundef %79) #6
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75, %69
  %83 = phi i32 [ %80, %75 ], [ %73, %69 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %83) #7
  br label %98

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.ina2xx_data, ptr %16, i32 0, i32 6
  store ptr @ina2xx_group, ptr %85, align 4
  %86 = icmp eq i32 %15, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = getelementptr %struct.ina2xx_data, ptr %16, i32 0, i32 6, i32 1
  store ptr @ina226_group, ptr %88, align 4
  br label %89

89:                                               ; preds = %87, %84
  %90 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  %91 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %3, ptr noundef %90, ptr noundef nonnull %16, ptr noundef %85) #6
  %92 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = ptrtoint ptr %91 to i32
  br label %98

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.ina2xx_data, ptr %16, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef %90, i32 noundef %97) #7
  br label %98

98:                                               ; preds = %95, %93, %82, %66, %14
  %99 = phi i32 [ %68, %66 ], [ -19, %82 ], [ %94, %93 ], [ 0, %95 ], [ -12, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %99
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ina2xx_value_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.sensor_device_attribute, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ina2xx_data, ptr %7, i32 0, i32 5
  br label %11

11:                                               ; preds = %44, %3
  %12 = phi i32 [ 5, %3 ], [ %45, %44 ]
  %13 = load ptr, ptr %10, align 4
  %14 = call i32 @regmap_read(ptr noundef %13, i32 noundef %9, ptr noundef nonnull %5) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %97, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %20 = load ptr, ptr %10, align 4
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 5, ptr noundef nonnull %4) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %27 = load i32, ptr %5, align 4
  br label %48

28:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.8) #7
  %29 = load ptr, ptr %10, align 4
  %30 = load ptr, ptr %7, align 4
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = call i32 @regmap_write(ptr noundef %29, i32 noundef 0, i32 noundef %32) #6
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr %10, align 4
  %37 = load ptr, ptr %7, align 4
  %38 = getelementptr inbounds %struct.ina2xx_config, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = call i32 @regmap_write(ptr noundef %36, i32 noundef 5, i32 noundef %39) #6
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35, %28, %19
  %43 = phi i32 [ %40, %35 ], [ %21, %19 ], [ %33, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %97

44:                                               ; preds = %35
  call void @msleep(i32 noundef 69) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %45 = add nsw i32 %12, -1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %11

47:                                               ; preds = %44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9) #7
  br label %97

48:                                               ; preds = %26, %16
  %49 = phi i32 [ %27, %26 ], [ %17, %16 ]
  %50 = load i32, ptr %8, align 4
  %51 = trunc i32 %50 to i8
  switch i8 %51, label %91 [
    i8 1, label %52
    i8 2, label %65
    i8 3, label %77
    i8 4, label %81
    i8 5, label %94
  ]

52:                                               ; preds = %48
  %53 = load ptr, ptr %7, align 4
  %54 = getelementptr inbounds %struct.ina2xx_config, ptr %53, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = shl i32 %49, 16
  %57 = ashr exact i32 %56, 16
  %58 = icmp slt i32 %56, 1
  %59 = icmp sgt i32 %55, 0
  %60 = xor i1 %58, %59
  %61 = select i1 %60, i32 2, i32 -2
  %62 = sdiv i32 %55, %61
  %63 = add nsw i32 %62, %57
  %64 = sdiv i32 %63, %55
  br label %94

65:                                               ; preds = %48
  %66 = load ptr, ptr %7, align 4
  %67 = getelementptr inbounds %struct.ina2xx_config, ptr %66, i32 0, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = lshr i32 %49, %68
  %70 = getelementptr inbounds %struct.ina2xx_config, ptr %66, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = mul i32 %69, %71
  %73 = icmp sgt i32 %72, 0
  %74 = select i1 %73, i32 500, i32 -500
  %75 = add i32 %74, %72
  %76 = sdiv i32 %75, 1000
  br label %94

77:                                               ; preds = %48
  %78 = getelementptr inbounds %struct.ina2xx_data, ptr %7, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = mul i32 %79, %49
  br label %94

81:                                               ; preds = %48
  %82 = shl i32 %49, 16
  %83 = ashr exact i32 %82, 16
  %84 = getelementptr inbounds %struct.ina2xx_data, ptr %7, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = mul i32 %85, %83
  %87 = icmp sgt i32 %86, 0
  %88 = select i1 %87, i32 500, i32 -500
  %89 = add i32 %88, %86
  %90 = sdiv i32 %89, 1000
  br label %94

91:                                               ; preds = %48
  %92 = load i1, ptr @ina2xx_get_value.__already_done, align 1
  br i1 %92, label %94, label %93, !prof !9

93:                                               ; preds = %91
  store i1 true, ptr @ina2xx_get_value.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 293, i32 noundef 9, ptr noundef null) #6
  br label %94

94:                                               ; preds = %93, %91, %81, %77, %65, %52, %48
  %95 = phi i32 [ %90, %81 ], [ %80, %77 ], [ %76, %65 ], [ %64, %52 ], [ %49, %48 ], [ 0, %93 ], [ 0, %91 ]
  %96 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %95) #6
  br label %97

97:                                               ; preds = %94, %47, %42, %11
  %98 = phi i32 [ %96, %94 ], [ %43, %42 ], [ -19, %47 ], [ %14, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ina2xx_shunt_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ina2xx_data, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef %7) #6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ina2xx_shunt_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr inbounds %struct.ina2xx_config, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  %16 = select i1 %15, i32 2, i32 -2
  %17 = sdiv i32 %14, %16
  %18 = add nsw i32 %17, 1000000000
  %19 = sdiv i32 %18, %14
  %20 = icmp slt i32 %11, 1
  %21 = icmp ult i32 %19, %11
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.ina2xx_data, ptr %7, i32 0, i32 4
  call void @mutex_lock(ptr noundef %24) #6
  %25 = getelementptr inbounds %struct.ina2xx_data, ptr %7, i32 0, i32 1
  store i32 %11, ptr %25, align 4
  %26 = lshr i32 %11, 1
  %27 = add i32 %19, %26
  %28 = udiv i32 %27, %11
  %29 = getelementptr inbounds %struct.ina2xx_data, ptr %7, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.ina2xx_config, ptr %30, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = mul i32 %32, %28
  %34 = getelementptr inbounds %struct.ina2xx_data, ptr %7, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  call void @mutex_unlock(ptr noundef %24) #6
  br label %35

35:                                               ; preds = %23, %10, %4
  %36 = phi i32 [ %8, %4 ], [ %3, %23 ], [ -22, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ina226_alert_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.ina2xx_data, ptr %6, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.ina2xx_data, ptr %6, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 6, ptr noundef nonnull %4) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %64

12:                                               ; preds = %3
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.sensor_device_attribute, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %61, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %8, align 4
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 7, ptr noundef nonnull %4) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %19
  %24 = load i32, ptr %14, align 4
  %25 = trunc i32 %24 to i8
  %26 = load i32, ptr %4, align 4
  switch i8 %25, label %27 [
    i8 15, label %30
    i8 14, label %30
    i8 13, label %43
    i8 12, label %43
    i8 11, label %56
  ]

27:                                               ; preds = %23
  %28 = load i1, ptr @ina226_reg_to_alert.__already_done, align 1
  br i1 %28, label %61, label %29, !prof !9

29:                                               ; preds = %27
  store i1 true, ptr @ina226_reg_to_alert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 334, i32 noundef 9, ptr noundef null) #6
  br label %61

30:                                               ; preds = %23, %23
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr inbounds %struct.ina2xx_config, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = shl i32 %26, 16
  %35 = ashr exact i32 %34, 16
  %36 = icmp slt i32 %34, 1
  %37 = icmp sgt i32 %33, 0
  %38 = xor i1 %36, %37
  %39 = select i1 %38, i32 2, i32 -2
  %40 = sdiv i32 %33, %39
  %41 = add nsw i32 %40, %35
  %42 = sdiv i32 %41, %33
  br label %61

43:                                               ; preds = %23, %23
  %44 = and i32 %26, 65535
  %45 = load ptr, ptr %6, align 4
  %46 = getelementptr inbounds %struct.ina2xx_config, ptr %45, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = lshr i32 %44, %47
  %49 = getelementptr inbounds %struct.ina2xx_config, ptr %45, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = mul i32 %48, %50
  %52 = icmp sgt i32 %51, 0
  %53 = select i1 %52, i32 500, i32 -500
  %54 = add i32 %53, %51
  %55 = sdiv i32 %54, 1000
  br label %61

56:                                               ; preds = %23
  %57 = and i32 %26, 65535
  %58 = getelementptr inbounds %struct.ina2xx_data, ptr %6, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = mul i32 %59, %57
  br label %61

61:                                               ; preds = %56, %43, %30, %29, %27, %12
  %62 = phi i32 [ 0, %12 ], [ 0, %29 ], [ 0, %27 ], [ %60, %56 ], [ %55, %43 ], [ %42, %30 ]
  %63 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %62) #6
  br label %64

64:                                               ; preds = %61, %19, %3
  %65 = phi i32 [ %10, %3 ], [ %21, %19 ], [ %63, %61 ]
  call void @mutex_unlock(ptr noundef %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ina226_alert_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %79, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ina2xx_data, ptr %7, i32 0, i32 4
  call void @mutex_lock(ptr noundef %11) #6
  %12 = getelementptr inbounds %struct.ina2xx_data, ptr %7, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 6, i32 noundef 64512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %77, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr inbounds %struct.sensor_device_attribute, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i8
  %21 = load i32, ptr %5, align 4
  switch i8 %20, label %58 [
    i8 15, label %22
    i8 14, label %22
    i8 13, label %29
    i8 12, label %29
    i8 11, label %46
  ]

22:                                               ; preds = %16, %16
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.ina2xx_config, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = mul i32 %25, %21
  %27 = call i32 @llvm.smax.i32(i32 %26, i32 -32768) #6
  %28 = call i32 @llvm.smin.i32(i32 %27, i32 32767) #6
  br label %61

29:                                               ; preds = %16, %16
  %30 = mul i32 %21, 1000
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr inbounds %struct.ina2xx_config, ptr %31, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = shl i32 %30, %33
  %35 = getelementptr inbounds %struct.ina2xx_config, ptr %31, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp slt i32 %34, 1
  %38 = icmp sgt i32 %36, 0
  %39 = xor i1 %37, %38
  %40 = select i1 %39, i32 2, i32 -2
  %41 = sdiv i32 %36, %40
  %42 = add i32 %41, %34
  %43 = sdiv i32 %42, %36
  %44 = call i32 @llvm.smax.i32(i32 %43, i32 0) #6
  %45 = call i32 @llvm.umin.i32(i32 %44, i32 32767) #6
  br label %61

46:                                               ; preds = %16
  %47 = getelementptr inbounds %struct.ina2xx_data, ptr %7, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp slt i32 %21, 1
  %50 = icmp sgt i32 %48, 0
  %51 = xor i1 %49, %50
  %52 = select i1 %51, i32 2, i32 -2
  %53 = sdiv i32 %48, %52
  %54 = add i32 %53, %21
  %55 = sdiv i32 %54, %48
  %56 = call i32 @llvm.smax.i32(i32 %55, i32 0) #6
  %57 = call i32 @llvm.umin.i32(i32 %56, i32 65535) #6
  br label %61

58:                                               ; preds = %16
  %59 = load i1, ptr @ina226_alert_to_reg.__already_done, align 1
  br i1 %59, label %61, label %60, !prof !9

60:                                               ; preds = %58
  store i1 true, ptr @ina226_alert_to_reg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 362, i32 noundef 9, ptr noundef null) #6
  br label %61

61:                                               ; preds = %60, %58, %46, %29, %22
  %62 = phi i32 [ %57, %46 ], [ %45, %29 ], [ %28, %22 ], [ 0, %60 ], [ 0, %58 ]
  %63 = shl i32 %62, 16
  %64 = ashr exact i32 %63, 16
  %65 = call i32 @regmap_write(ptr noundef %17, i32 noundef 7, i32 noundef %64) #6
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %61
  %68 = load i32, ptr %5, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %12, align 4
  %72 = load i32, ptr %18, align 4
  %73 = shl nuw i32 1, %72
  %74 = call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 6, i32 noundef 64512, i32 noundef %73, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70, %67
  br label %77

77:                                               ; preds = %76, %70, %61, %10
  %78 = phi i32 [ %14, %10 ], [ %65, %61 ], [ %74, %70 ], [ %3, %76 ]
  call void @mutex_unlock(ptr noundef %11) #6
  br label %79

79:                                               ; preds = %77, %4
  %80 = phi i32 [ %78, %77 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ina226_alarm_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.ina2xx_data, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 6, ptr noundef nonnull %4) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load i32, ptr %4, align 4
  %13 = getelementptr inbounds %struct.sensor_device_attribute, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = shl nuw i32 1, %14
  %16 = or i32 %15, 16
  %17 = and i32 %16, %12
  %18 = icmp eq i32 %17, %16
  %19 = zext i1 %18 to i32
  %20 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %19) #6
  br label %21

21:                                               ; preds = %11, %3
  %22 = phi i32 [ %20, %11 ], [ %9, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ina226_interval_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.ina2xx_data, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %4) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i32, ptr %4, align 4
  %13 = lshr i32 %12, 9
  %14 = and i32 %13, 7
  %15 = getelementptr [8 x i32], ptr @ina226_avg_tab, i32 0, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, 2200
  %18 = icmp sgt i32 %17, 0
  %19 = select i1 %18, i32 500, i32 -500
  %20 = add i32 %19, %17
  %21 = sdiv i32 %20, 1000
  %22 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %21) #6
  br label %23

23:                                               ; preds = %11, %3
  %24 = phi i32 [ %22, %11 ], [ %9, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ina226_interval_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %39, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ina2xx_data, ptr %7, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = mul i32 %11, 1000
  %17 = icmp sgt i32 %16, 0
  %18 = select i1 %17, i32 1100, i32 -1100
  %19 = add i32 %18, %16
  %20 = icmp sgt i32 %19, 8799
  br i1 %20, label %21, label %34

21:                                               ; preds = %13
  %22 = icmp ugt i32 %19, 24199
  br i1 %22, label %23, label %34

23:                                               ; preds = %21
  %24 = icmp ugt i32 %19, 90199
  br i1 %24, label %25, label %34

25:                                               ; preds = %23
  %26 = icmp ugt i32 %19, 213399
  br i1 %26, label %27, label %34

27:                                               ; preds = %25
  %28 = icmp ugt i32 %19, 424599
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = icmp ugt i32 %19, 846999
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = icmp ugt i32 %19, 1691799
  %33 = select i1 %32, i32 3584, i32 3072
  br label %34

34:                                               ; preds = %31, %29, %27, %25, %23, %21, %13
  %35 = phi i32 [ 0, %13 ], [ 512, %21 ], [ 1024, %23 ], [ 1536, %25 ], [ 2048, %27 ], [ 2560, %29 ], [ %33, %31 ]
  %36 = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 0, i32 noundef 3584, i32 noundef %35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %37 = icmp slt i32 %36, 0
  %38 = select i1 %37, i32 %36, i32 %3
  br label %39

39:                                               ; preds = %34, %10, %4
  %40 = phi i32 [ %8, %4 ], [ -22, %10 ], [ %38, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
