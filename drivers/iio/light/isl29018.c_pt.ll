; ModuleID = '/llk/IR/drivers/iio/light/isl29018.c_pt.bc'
source_filename = "../drivers/iio/light/isl29018.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type {}
%struct.isl29018_scale = type { i32, i32 }
%struct.isl29018_chip_info = type { ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.73, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.73 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.isl29018_chip = type { ptr, %struct.mutex, i32, i32, i32, i32, %struct.isl29018_scale, i32, i8, ptr }

@__initcall__kmod_isl29018__247_875_isl29018_driver_init6 = internal global ptr @isl29018_driver_init, section ".initcall6.init", align 4
@isl29018_driver = internal global %struct.i2c_driver { i32 0, ptr @isl29018_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @isl29018_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isl29018_pm_ops, ptr null, ptr null }, ptr @isl29018_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_isl29018_driver_exit = internal global ptr @isl29018_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [58 x i8] c"isl29018.description=ISL29018 Ambient Light Sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [41 x i8] c"isl29018.file=drivers/iio/light/isl29018\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [21 x i8] c"isl29018.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"isl29018\00", align 1
@isl29018_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isil,isl29018\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isil,isl29023\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isil,isl29035\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@isl29018_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @isl29018_suspend, ptr @isl29018_resume, ptr @isl29018_suspend, ptr @isl29018_resume, ptr @isl29018_suspend, ptr @isl29018_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@isl29018_id = internal constant [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"isl29018\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"isl29023\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"isl29035\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], align 4
@isl29018_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&chip->lock\00", align 1
@isl29018_scales = internal unnamed_addr constant [4 x [4 x %struct.isl29018_scale]] [[4 x %struct.isl29018_scale] [%struct.isl29018_scale { i32 0, i32 15258 }, %struct.isl29018_scale { i32 0, i32 61035 }, %struct.isl29018_scale { i32 0, i32 244140 }, %struct.isl29018_scale { i32 0, i32 976562 }], [4 x %struct.isl29018_scale] [%struct.isl29018_scale { i32 0, i32 244140 }, %struct.isl29018_scale { i32 0, i32 976562 }, %struct.isl29018_scale { i32 3, i32 906250 }, %struct.isl29018_scale { i32 15, i32 625000 }], [4 x %struct.isl29018_scale] [%struct.isl29018_scale { i32 3, i32 906250 }, %struct.isl29018_scale { i32 15, i32 625000 }, %struct.isl29018_scale { i32 62, i32 500000 }, %struct.isl29018_scale { i32 250, i32 0 }], [4 x %struct.isl29018_scale] [%struct.isl29018_scale { i32 62, i32 500000 }, %struct.isl29018_scale { i32 250, i32 0 }, %struct.isl29018_scale { i32 1000, i32 0 }, %struct.isl29018_scale { i32 4000, i32 0 }]], align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to get VCC regulator!\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to enable VCC regulator!\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"failed to setup regulator cleanup action!\0A\00", align 1
@isl29018_chip_info_tbl = internal unnamed_addr constant [3 x %struct.isl29018_chip_info] [%struct.isl29018_chip_info { ptr @isl29018_channels, i32 3, ptr @isl29018_info, ptr @isl29018_regmap_config }, %struct.isl29018_chip_info { ptr @isl29023_channels, i32 2, ptr @isl29023_info, ptr @isl29018_regmap_config }, %struct.isl29018_chip_info { ptr @isl29023_channels, i32 2, ptr @isl29023_info, ptr @isl29035_regmap_config }], align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"regmap initialization fails: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"\013failed to disable isl29018's VCC regulator!\0A\00", align 1
@isl29018_channels = internal constant [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.73 zeroinitializer, i32 262166, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 0, i32 0, %struct.anon.73 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 1 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.73 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], align 4
@isl29018_info = internal constant %struct.iio_info { ptr null, ptr @isl29018_group, ptr @isl29018_read_raw, ptr null, ptr null, ptr @isl29018_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@isl29018_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @isl29018_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 9, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@isl29023_channels = internal constant [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.73 zeroinitializer, i32 262166, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 0, i32 0, %struct.anon.73 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 1 }], align 4
@isl29023_info = internal constant %struct.iio_info { ptr null, ptr @isl29023_group, ptr @isl29018_read_raw, ptr null, ptr null, ptr @isl29018_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@isl29035_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @isl29018_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 16, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@isl29018_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @isl29018_attributes, ptr null }, align 4
@isl29018_attributes = internal global [4 x ptr] [ptr @iio_dev_attr_in_illuminance_scale_available, ptr @iio_dev_attr_in_illuminance_integration_time_available, ptr @iio_dev_attr_proximity_on_chip_ambient_infrared_suppression, ptr null], align 4
@iio_dev_attr_in_illuminance_scale_available = internal global %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @in_illuminance_scale_available_show, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, align 8
@iio_dev_attr_in_illuminance_integration_time_available = internal global %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @in_illuminance_integration_time_available_show, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, align 8
@iio_dev_attr_proximity_on_chip_ambient_infrared_suppression = internal global %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420 }, ptr @proximity_on_chip_ambient_infrared_suppression_show, ptr @proximity_on_chip_ambient_infrared_suppression_store }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"in_illuminance_scale_available\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%d.%06d \00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"in_illuminance_integration_time_available\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"0.%06d \00", align 1
@isl29018_int_utimes = internal unnamed_addr constant [3 x [4 x i32]] [[4 x i32] [i32 90000, i32 5630, i32 351, i32 21], [4 x i32] [i32 90000, i32 5600, i32 352, i32 22], [4 x i32] [i32 105000, i32 6500, i32 410, i32 25]], align 4
@.str.12 = private unnamed_addr constant [47 x i8] c"proximity_on_chip_ambient_infrared_suppression\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Error in setting operating mode err %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Error in reading LSB DATA with err %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Error in reading MSB DATA with error %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Error in setting operating mode\0A\00", align 1
@isl29023_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @isl29023_attributes, ptr null }, align 4
@isl29023_attributes = internal global [3 x ptr] [ptr @iio_dev_attr_in_illuminance_scale_available, ptr @iio_dev_attr_in_illuminance_integration_time_available, ptr null], align 4
@.str.18 = private unnamed_addr constant [41 x i8] c"Error reading ID register with error %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"Failed to clear isl29018 TEST reg.(%d)\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"Failed to clear isl29018 CMD1 reg.(%d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Init of isl29018 fails\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"failed to disable VCC regulator\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"failed to enable VCC regulator\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_isl29018_driver_exit, ptr @__initcall__kmod_isl29018__247_875_isl29018_driver_init6, ptr @isl29018_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @isl29018_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @isl29018_driver) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @isl29018_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @isl29018_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29018_probe(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = tail call ptr @devm_iio_device_alloc(ptr noundef %3, i32 noundef 60) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %65, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %4, ptr %9, align 8
  %10 = icmp eq ptr %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi i32 [ %13, %11 ], [ 0, %6 ]
  %16 = getelementptr inbounds %struct.isl29018_chip, ptr %8, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef nonnull @isl29018_probe.__key) #9
  %17 = getelementptr inbounds %struct.isl29018_chip, ptr %8, i32 0, i32 2
  store i32 %15, ptr %17, align 4
  %18 = getelementptr inbounds %struct.isl29018_chip, ptr %8, i32 0, i32 3
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.isl29018_chip, ptr %8, i32 0, i32 4
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.isl29018_chip, ptr %8, i32 0, i32 5
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.isl29018_chip, ptr %8, i32 0, i32 6
  store i64 65532611002368, ptr %21, align 4
  %22 = getelementptr inbounds %struct.isl29018_chip, ptr %8, i32 0, i32 8
  store i8 0, ptr %22, align 4
  %23 = tail call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.2) #9
  %24 = getelementptr inbounds %struct.isl29018_chip, ptr %8, i32 0, i32 9
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = ptrtoint ptr %23 to i32
  %28 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %27, ptr noundef nonnull @.str.3) #9
  br label %65

29:                                               ; preds = %14
  %30 = tail call i32 @regulator_enable(ptr noundef %23) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #10
  br label %65

33:                                               ; preds = %29
  %34 = tail call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @isl29018_disable_regulator_action, ptr noundef %8) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %24, align 4
  %38 = tail call i32 @regulator_disable(ptr noundef %37) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %42

42:                                               ; preds = %40, %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #10
  br label %65

43:                                               ; preds = %33
  %44 = getelementptr [3 x %struct.isl29018_chip_info], ptr @isl29018_chip_info_tbl, i32 0, i32 %15
  %45 = getelementptr [3 x %struct.isl29018_chip_info], ptr @isl29018_chip_info_tbl, i32 0, i32 %15, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef %46, ptr noundef null, ptr noundef null) #9
  store ptr %47, ptr %8, align 4
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = ptrtoint ptr %47 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %50) #10
  br label %65

51:                                               ; preds = %43
  %52 = tail call fastcc i32 @isl29018_chip_init(ptr noundef %8)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = getelementptr [3 x %struct.isl29018_chip_info], ptr @isl29018_chip_info_tbl, i32 0, i32 %15, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 17
  store ptr %56, ptr %57, align 8
  %58 = load ptr, ptr %44, align 4
  %59 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 13
  store ptr %58, ptr %59, align 8
  %60 = getelementptr [3 x %struct.isl29018_chip_info], ptr @isl29018_chip_info_tbl, i32 0, i32 %15, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 14
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 15
  store ptr %1, ptr %63, align 8
  store i32 1, ptr %4, align 8
  %64 = tail call i32 @__devm_iio_device_register(ptr noundef %3, ptr noundef nonnull %4, ptr noundef null) #9
  br label %65

65:                                               ; preds = %54, %51, %49, %42, %32, %26, %2
  %66 = phi i32 [ %28, %26 ], [ %30, %32 ], [ %34, %42 ], [ %50, %49 ], [ %64, %54 ], [ -12, %2 ], [ %52, %51 ]
  ret i32 %66
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @isl29018_disable_regulator_action(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.isl29018_chip, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regulator_disable(ptr noundef %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @isl29018_chip_init(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = tail call ptr @regmap_get_device(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.isl29018_chip, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %9 = load ptr, ptr %0, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 15, ptr noundef nonnull %2) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.18, i32 noundef %10) #10
  br label %18

13:                                               ; preds = %8
  %14 = load i32, ptr %2, align 4
  %15 = lshr i32 %14, 3
  %16 = and i32 %15, 7
  store i32 %16, ptr %2, align 4
  %17 = icmp eq i32 %16, 5
  br i1 %17, label %20, label %18

18:                                               ; preds = %13, %12
  %19 = phi i32 [ -19, %13 ], [ %10, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %89

20:                                               ; preds = %13
  %21 = load ptr, ptr %0, align 4
  %22 = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 15, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %23 = icmp slt i32 %22, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br i1 %23, label %89, label %24

24:                                               ; preds = %20, %1
  %25 = load ptr, ptr %0, align 4
  %26 = call i32 @regmap_write(ptr noundef %25, i32 noundef 8, i32 noundef 0) #9
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.19, i32 noundef %26) #10
  br label %89

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 4
  %31 = call i32 @regmap_write(ptr noundef %30, i32 noundef 0, i32 noundef 0) #9
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.20, i32 noundef %31) #10
  br label %89

34:                                               ; preds = %29
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %35 = getelementptr inbounds %struct.isl29018_chip, ptr %0, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.isl29018_chip, ptr %0, i32 0, i32 6, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.isl29018_chip, ptr %0, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %40, i32 0
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %36
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %40, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %38
  br i1 %47, label %72, label %48

48:                                               ; preds = %44, %34
  %49 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %40, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, %36
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %40, i32 1, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, %38
  br i1 %55, label %72, label %56

56:                                               ; preds = %52, %48
  %57 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %40, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, %36
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %40, i32 2, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, %38
  br i1 %63, label %72, label %64

64:                                               ; preds = %60, %56
  %65 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %40, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, %36
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %40, i32 3, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, %38
  br i1 %71, label %72, label %79

72:                                               ; preds = %68, %60, %52, %44
  %73 = phi i32 [ 0, %44 ], [ 1, %52 ], [ 2, %60 ], [ 3, %68 ]
  %74 = phi ptr [ %41, %44 ], [ %49, %52 ], [ %57, %60 ], [ %65, %68 ]
  %75 = load i64, ptr %74, align 4
  %76 = load ptr, ptr %0, align 4
  %77 = call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 1, i32 noundef 3, i32 noundef %73, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72, %68, %64
  %80 = phi i32 [ -22, %64 ], [ -22, %68 ], [ %77, %72 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.21) #10
  br label %89

81:                                               ; preds = %72
  store i64 %75, ptr %35, align 4
  %82 = load i32, ptr %5, align 4
  %83 = load i32, ptr %39, align 4
  %84 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %82, i32 %83
  %85 = load i32, ptr %84, align 4
  %86 = call fastcc i32 @isl29018_set_integration_time(ptr noundef %0, i32 noundef %85)
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.21) #10
  br label %89

89:                                               ; preds = %88, %81, %79, %33, %28, %20, %18
  %90 = phi i32 [ %26, %28 ], [ %31, %33 ], [ %80, %79 ], [ %22, %20 ], [ %86, %88 ], [ %86, %81 ], [ %19, %18 ]
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29018_read_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 8
  %10 = load i8, ptr %9, align 4, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %86

12:                                               ; preds = %5
  switch i32 %4, label %86 [
    i32 0, label %13
    i32 1, label %13
    i32 18, label %60
    i32 2, label %70
    i32 4, label %78
  ]

13:                                               ; preds = %12, %12
  %14 = load i32, ptr %1, align 4
  switch i32 %14, label %86 [
    i32 6, label %15
    i32 7, label %35
    i32 8, label %39
  ]

15:                                               ; preds = %13
  %16 = tail call fastcc i32 @isl29018_read_sensor_input(ptr noundef %7, i32 noundef 1) #9
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %86, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = mul i32 %20, %16
  %22 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 6, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, %16
  %25 = udiv i32 %24, 1000000
  %26 = add i32 %25, %21
  %27 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = mul i32 %26, %28
  %30 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = mul i32 %26, %31
  %33 = udiv i32 %32, 1000000
  %34 = add i32 %33, %29
  store i32 %34, ptr %2, align 4
  br label %86

35:                                               ; preds = %13
  %36 = tail call fastcc i32 @isl29018_read_sensor_input(ptr noundef %7, i32 noundef 2) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %86, label %38

38:                                               ; preds = %35
  store i32 %36, ptr %2, align 4
  br label %86

39:                                               ; preds = %13
  %40 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 7
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %7, align 4
  %43 = tail call ptr @regmap_get_device(ptr noundef %42) #9
  %44 = load ptr, ptr %7, align 4
  %45 = shl i32 %41, 7
  %46 = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 1, i32 noundef 128, i32 noundef %45, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.17) #10
  br label %86

49:                                               ; preds = %39
  %50 = tail call fastcc i32 @isl29018_read_sensor_input(ptr noundef %7, i32 noundef 3) #9
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %86, label %52

52:                                               ; preds = %49
  %53 = icmp eq i32 %41, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  store i32 %50, ptr %2, align 4
  br label %86

55:                                               ; preds = %52
  %56 = tail call fastcc i32 @isl29018_read_sensor_input(ptr noundef %7, i32 noundef 2) #9
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %86, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @llvm.usub.sat.i32(i32 %50, i32 %56) #9
  store i32 %59, ptr %2, align 4
  br label %86

60:                                               ; preds = %12
  %61 = load i32, ptr %1, align 4
  %62 = icmp eq i32 %61, 6
  br i1 %62, label %63, label %86

63:                                               ; preds = %60
  store i32 0, ptr %2, align 4
  %64 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %65, i32 %67
  %69 = load i32, ptr %68, align 4
  store i32 %69, ptr %3, align 4
  br label %86

70:                                               ; preds = %12
  %71 = load i32, ptr %1, align 4
  %72 = icmp eq i32 %71, 6
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  store i32 %75, ptr %2, align 4
  %76 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 6, i32 1
  %77 = load i32, ptr %76, align 4
  store i32 %77, ptr %3, align 4
  br label %86

78:                                               ; preds = %12
  %79 = load i32, ptr %1, align 4
  %80 = icmp eq i32 %79, 6
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  store i32 %83, ptr %2, align 4
  %84 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  store i32 %85, ptr %3, align 4
  br label %86

86:                                               ; preds = %81, %78, %73, %70, %63, %60, %58, %55, %54, %49, %48, %38, %35, %18, %15, %13, %12, %5
  %87 = phi i32 [ -22, %12 ], [ 2, %81 ], [ -22, %78 ], [ 2, %73 ], [ -22, %70 ], [ 2, %63 ], [ -22, %60 ], [ -16, %5 ], [ 1, %18 ], [ 1, %38 ], [ 1, %54 ], [ 1, %58 ], [ %56, %55 ], [ %50, %49 ], [ %46, %48 ], [ %36, %35 ], [ %16, %15 ], [ -22, %13 ]
  tail call void @mutex_unlock(ptr noundef %8) #9
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29018_write_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 8
  %10 = load i8, ptr %9, align 4, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %72

12:                                               ; preds = %5
  switch i32 %4, label %72 [
    i32 4, label %13
    i32 18, label %19
    i32 2, label %26
  ]

13:                                               ; preds = %12
  %14 = load i32, ptr %1, align 4
  %15 = icmp eq i32 %14, 6
  br i1 %15, label %16, label %72

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 3
  store i32 %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 4
  store i32 %3, ptr %18, align 4
  br label %72

19:                                               ; preds = %12
  %20 = load i32, ptr %1, align 4
  %21 = icmp ne i32 %20, 6
  %22 = icmp ne i32 %2, 0
  %23 = or i1 %22, %21
  br i1 %23, label %72, label %24

24:                                               ; preds = %19
  %25 = tail call fastcc i32 @isl29018_set_integration_time(ptr noundef %7, i32 noundef %3)
  br label %72

26:                                               ; preds = %12
  %27 = load i32, ptr %1, align 4
  %28 = icmp eq i32 %27, 6
  br i1 %28, label %29, label %72

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %31, i32 0
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %2
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %31, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %3
  br i1 %38, label %63, label %39

39:                                               ; preds = %35, %29
  %40 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %31, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, %2
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %31, i32 1, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, %3
  br i1 %46, label %63, label %47

47:                                               ; preds = %43, %39
  %48 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %31, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %2
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %31, i32 2, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, %3
  br i1 %54, label %63, label %55

55:                                               ; preds = %51, %47
  %56 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %31, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, %2
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %31, i32 3, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, %3
  br i1 %62, label %63, label %72

63:                                               ; preds = %59, %51, %43, %35
  %64 = phi i32 [ 0, %35 ], [ 1, %43 ], [ 2, %51 ], [ 3, %59 ]
  %65 = phi ptr [ %32, %35 ], [ %40, %43 ], [ %48, %51 ], [ %56, %59 ]
  %66 = load i64, ptr %65, align 4
  %67 = load ptr, ptr %7, align 4
  %68 = tail call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 1, i32 noundef 3, i32 noundef %64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 6
  store i64 %66, ptr %71, align 4
  br label %72

72:                                               ; preds = %70, %63, %59, %55, %26, %24, %19, %16, %13, %12, %5
  %73 = phi i32 [ -22, %12 ], [ -22, %26 ], [ -22, %19 ], [ %25, %24 ], [ 0, %16 ], [ -22, %13 ], [ -16, %5 ], [ 0, %70 ], [ %68, %63 ], [ -22, %59 ], [ -22, %55 ]
  tail call void @mutex_unlock(ptr noundef %8) #9
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @in_illuminance_scale_available_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 552
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.isl29018_chip, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.isl29018_chip, ptr %5, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %8, i32 0
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %8, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %10, i32 noundef %12)
  %14 = getelementptr i8, ptr %2, i32 %13
  %15 = load i32, ptr %7, align 4
  %16 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %15, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %15, i32 1, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %14, ptr noundef nonnull @.str.9, i32 noundef %17, i32 noundef %19)
  %21 = add i32 %20, %13
  %22 = getelementptr i8, ptr %2, i32 %21
  %23 = load i32, ptr %7, align 4
  %24 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %23, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %23, i32 2, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %22, ptr noundef nonnull @.str.9, i32 noundef %25, i32 noundef %27)
  %29 = add i32 %28, %21
  %30 = getelementptr i8, ptr %2, i32 %29
  %31 = load i32, ptr %7, align 4
  %32 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %31, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %31, i32 3, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %30, ptr noundef nonnull @.str.9, i32 noundef %33, i32 noundef %35)
  %37 = add i32 %36, %29
  tail call void @mutex_unlock(ptr noundef %6) #9
  %38 = add i32 %37, -1
  %39 = getelementptr i8, ptr %2, i32 %38
  store i8 10, ptr %39, align 1
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @in_illuminance_integration_time_available_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 552
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.isl29018_chip, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %7, i32 0
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %9)
  %11 = getelementptr i8, ptr %2, i32 %10
  %12 = load i32, ptr %6, align 4
  %13 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %12, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %11, ptr noundef nonnull @.str.11, i32 noundef %14)
  %16 = add i32 %15, %10
  %17 = getelementptr i8, ptr %2, i32 %16
  %18 = load i32, ptr %6, align 4
  %19 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %18, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %17, ptr noundef nonnull @.str.11, i32 noundef %20)
  %22 = add i32 %21, %16
  %23 = getelementptr i8, ptr %2, i32 %22
  %24 = load i32, ptr %6, align 4
  %25 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %24, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %23, ptr noundef nonnull @.str.11, i32 noundef %26)
  %28 = add i32 %27, %22
  %29 = add i32 %28, -1
  %30 = getelementptr i8, ptr %2, i32 %29
  store i8 10, ptr %30, align 1
  ret i32 %28
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proximity_on_chip_ambient_infrared_suppression_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 552
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.isl29018_chip, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proximity_on_chip_ambient_infrared_suppression_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 552
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr %5, align 4
  %11 = icmp ult i32 %10, 2
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 1
  call void @mutex_lock(ptr noundef %14) #9
  %15 = load i32, ptr %5, align 4
  %16 = getelementptr inbounds %struct.isl29018_chip, ptr %7, i32 0, i32 7
  store i32 %15, ptr %16, align 4
  call void @mutex_unlock(ptr noundef %14) #9
  br label %17

17:                                               ; preds = %13, %4
  %18 = phi i32 [ %3, %13 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @isl29018_read_sensor_input(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = load ptr, ptr %0, align 4
  %6 = tail call ptr @regmap_get_device(ptr noundef %5) #9
  %7 = load ptr, ptr %0, align 4
  %8 = shl i32 %1, 5
  %9 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 0, i32 noundef %8) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.14, i32 noundef %9) #10
  br label %27

12:                                               ; preds = %2
  tail call void @msleep(i32 noundef 100) #9
  %13 = load ptr, ptr %0, align 4
  %14 = call i32 @regmap_read(ptr noundef %13, i32 noundef 2, ptr noundef nonnull %3) #9
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.15, i32 noundef %14) #10
  br label %27

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 4
  %19 = call i32 @regmap_read(ptr noundef %18, i32 noundef 3, ptr noundef nonnull %4) #9
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.16, i32 noundef %19) #10
  br label %27

22:                                               ; preds = %17
  %23 = load i32, ptr %4, align 4
  %24 = shl i32 %23, 8
  %25 = load i32, ptr %3, align 4
  %26 = or i32 %24, %25
  br label %27

27:                                               ; preds = %22, %21, %16, %11
  %28 = phi i32 [ %9, %11 ], [ %14, %16 ], [ %19, %21 ], [ %26, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @isl29018_set_integration_time(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.isl29018_chip, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %4, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %4, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %4, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr [3 x [4 x i32]], ptr @isl29018_int_utimes, i32 0, i32 %4, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %20, label %72

20:                                               ; preds = %16, %12, %8, %2
  %21 = phi i32 [ 0, %2 ], [ 1, %8 ], [ 2, %12 ], [ 3, %16 ]
  %22 = load ptr, ptr %0, align 4
  %23 = shl nuw nsw i32 %21, 2
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 1, i32 noundef 12, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %72, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.isl29018_chip, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.isl29018_chip, ptr %0, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.isl29018_chip, ptr %0, i32 0, i32 6, i32 1
  %32 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %28, i32 0
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load i32, ptr %31, align 4
  %37 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %28, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %66, %57, %48, %35
  %41 = phi i32 [ 0, %35 ], [ 1, %48 ], [ 2, %57 ], [ 3, %66 ]
  %42 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %21, i32 %41
  %43 = load i64, ptr %42, align 4
  store i64 %43, ptr %29, align 4
  br label %71

44:                                               ; preds = %35, %26
  %45 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %28, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %30, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, ptr %31, align 4
  %50 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %28, i32 1, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %40, label %53

53:                                               ; preds = %48, %44
  %54 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %28, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %30, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, ptr %31, align 4
  %59 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %28, i32 2, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %40, label %62

62:                                               ; preds = %57, %53
  %63 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %28, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %30, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32, ptr %31, align 4
  %68 = getelementptr [4 x [4 x %struct.isl29018_scale]], ptr @isl29018_scales, i32 0, i32 %28, i32 3, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %40, label %71

71:                                               ; preds = %66, %62, %40
  store i32 %21, ptr %27, align 4
  br label %72

72:                                               ; preds = %71, %20, %16
  %73 = phi i32 [ 0, %71 ], [ %24, %20 ], [ -22, %16 ]
  ret i32 %73
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @isl29018_is_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = icmp ult i32 %1, 16
  %4 = trunc i32 %1 to i16
  %5 = lshr i16 -32499, %4
  %6 = and i16 %5, 1
  %7 = icmp ne i16 %6, 0
  %8 = select i1 %3, i1 %7, i1 false
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29018_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.isl29018_chip, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.isl29018_chip, ptr %5, i32 0, i32 8
  store i8 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.isl29018_chip, ptr %5, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regulator_disable(ptr noundef %9) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.22) #10
  br label %13

13:                                               ; preds = %12, %1
  tail call void @mutex_unlock(ptr noundef %6) #9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29018_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.isl29018_chip, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.isl29018_chip, ptr %5, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regulator_enable(ptr noundef %8) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23) #10
  br label %17

12:                                               ; preds = %1
  %13 = tail call fastcc i32 @isl29018_chip_init(ptr noundef %5)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.isl29018_chip, ptr %5, i32 0, i32 8
  store i8 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %12, %11
  %18 = phi i32 [ %9, %11 ], [ %13, %15 ], [ %13, %12 ]
  tail call void @mutex_unlock(ptr noundef %6) #9
  ret i32 %18
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
