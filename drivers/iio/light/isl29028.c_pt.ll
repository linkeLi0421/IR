; ModuleID = '/llk/IR/drivers/iio/light/isl29028.c_pt.bc'
source_filename = "../drivers/iio/light/isl29028.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.73, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.73 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.isl29028_prox_data = type { i32, i32, i32 }
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
%struct.isl29028_chip = type { %struct.mutex, ptr, i32, i32, i8, i32, i32 }

@__initcall__kmod_isl29028__248_709_isl29028_driver_init6 = internal global ptr @isl29028_driver_init, section ".initcall6.init", align 4
@isl29028_driver = internal global %struct.i2c_driver { i32 0, ptr @isl29028_probe, ptr @isl29028_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @isl29028_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isl29028_pm_ops, ptr null, ptr null }, ptr @isl29028_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_isl29028_driver_exit = internal global ptr @isl29028_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description249 = internal constant [72 x i8] c"isl29028.description=ISL29028 Ambient Light and Proximity Sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [41 x i8] c"isl29028.file=drivers/iio/light/isl29028\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [24 x i8] c"isl29028.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [55 x i8] c"isl29028.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"isl29028\00", align 1
@isl29028_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isl,isl29028\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isil,isl29028\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isil,isl29030\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@isl29028_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isl29028_suspend, ptr @isl29028_resume, ptr null }, align 4
@isl29028_id = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"isl29028\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"isl29030\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@isl29028_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&chip->lock\00", align 1
@isl29028_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @isl29028_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 16, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: Error %d initializing regmap\0A\00", align 1
@__func__.isl29028_probe = private unnamed_addr constant [15 x i8] c"isl29028_probe\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%s(): Error %d writing to TEST1_MODE register\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"%s(): Error %d writing to TEST2_MODE register\0A\00", align 1
@isl29028_info = internal constant %struct.iio_info { ptr null, ptr @isl29108_group, ptr @isl29028_read_raw, ptr null, ptr null, ptr @isl29028_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@isl29028_channels = internal constant [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.73 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 0, i32 0, i32 0, i32 0, %struct.anon.73 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.73 zeroinitializer, i32 4097, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"%s(): iio registration failed with error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"%s(): Error %d clearing the CONFIGURE register\0A\00", align 1
@__func__.isl29028_clear_configure_reg = private unnamed_addr constant [29 x i8] c"isl29028_clear_configure_reg\00", align 1
@isl29108_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @isl29028_attributes, ptr null }, align 4
@isl29028_attributes = internal global [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_proximity_sampling_frequency_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_illuminance_scale_available, i64 4), ptr null], align 4
@iio_const_attr_in_proximity_sampling_frequency_available = internal global %struct.iio_const_attr { ptr @.str.7, %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @iio_read_const_attr, ptr null } }, align 4
@iio_const_attr_in_illuminance_scale_available = internal global %struct.iio_const_attr { ptr @.str.9, %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @iio_read_const_attr, ptr null } }, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"1.25 2.5 5 10 13.3 20 80 100\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"in_proximity_sampling_frequency_available\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"125 2000\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"in_illuminance_scale_available\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"%s(): mask value 0x%08lx is not supported\0A\00", align 1
@__func__.isl29028_read_raw = private unnamed_addr constant [18 x i8] c"isl29028_read_raw\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"%s(): Error %d enabling ALS mode\0A\00", align 1
@__func__.isl29028_als_get = private unnamed_addr constant [17 x i8] c"isl29028_als_get\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"%s(): Error %d setting the ALS scale\0A\00", align 1
@__func__.isl29028_set_als_scale = private unnamed_addr constant [23 x i8] c"isl29028_set_als_scale\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"%s(): Error %d reading register ALSIR_L\0A\00", align 1
@__func__.isl29028_read_als_ir = private unnamed_addr constant [21 x i8] c"isl29028_read_als_ir\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"%s(): Error %d reading register ALSIR_U\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"%s(): Error %d enabling IR mode\0A\00", align 1
@__func__.isl29028_ir_get = private unnamed_addr constant [16 x i8] c"isl29028_ir_get\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"%s(): Error %d reading register PROX_DATA\0A\00", align 1
@__func__.isl29028_read_proxim = private unnamed_addr constant [21 x i8] c"isl29028_read_proxim\00", align 1
@isl29028_prox_data = internal unnamed_addr constant [8 x %struct.isl29028_prox_data] [%struct.isl29028_prox_data { i32 1, i32 250000, i32 800 }, %struct.isl29028_prox_data { i32 2, i32 500000, i32 400 }, %struct.isl29028_prox_data { i32 5, i32 0, i32 200 }, %struct.isl29028_prox_data { i32 10, i32 0, i32 100 }, %struct.isl29028_prox_data { i32 13, i32 300000, i32 75 }, %struct.isl29028_prox_data { i32 20, i32 0, i32 50 }, %struct.isl29028_prox_data { i32 80, i32 0, i32 13 }, %struct.isl29028_prox_data { i32 100, i32 0, i32 0 }], align 4
@.str.18 = private unnamed_addr constant [47 x i8] c"%s(): Error %d setting the proximity sampling\0A\00", align 1
@__func__.isl29028_set_proxim_sampling = private unnamed_addr constant [29 x i8] c"isl29028_set_proxim_sampling\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"%s(): proximity: Mask value 0x%08lx is not supported\0A\00", align 1
@__func__.isl29028_write_raw = private unnamed_addr constant [19 x i8] c"isl29028_write_raw\00", align 1
@.str.20 = private unnamed_addr constant [68 x i8] c"%s(): proximity: Sampling frequency %d is not in the range [1:100]\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"%s(): light: Mask value 0x%08lx is not supported\0A\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"%s(): light: Lux scale %d is not in the set {125, 2000}\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"%s(): Unsupported channel type %x\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_isl29028_driver_exit, ptr @__initcall__kmod_isl29028__248_709_isl29028_driver_init6, ptr @isl29028_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @isl29028_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @isl29028_driver) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @isl29028_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @isl29028_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29028_probe(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = tail call ptr @devm_iio_device_alloc(ptr noundef %3, i32 noundef 44) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %4, ptr %9, align 8
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @isl29028_probe.__key) #6
  %10 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @isl29028_regmap_config, ptr noundef null, ptr noundef null) #6
  %11 = getelementptr inbounds %struct.isl29028_chip, ptr %8, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = ptrtoint ptr %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.isl29028_probe, i32 noundef %14) #7
  br label %47

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.isl29028_chip, ptr %8, i32 0, i32 4
  store i8 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.isl29028_chip, ptr %8, i32 0, i32 2
  store i32 20, ptr %17, align 4
  %18 = getelementptr inbounds %struct.isl29028_chip, ptr %8, i32 0, i32 3
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.isl29028_chip, ptr %8, i32 0, i32 5
  store i32 2000, ptr %19, align 4
  %20 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 14, i32 noundef 0) #6
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.isl29028_probe, i32 noundef %20) #7
  br label %47

23:                                               ; preds = %15
  %24 = load ptr, ptr %11, align 4
  %25 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 15, i32 noundef 0) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.isl29028_probe, i32 noundef %25) #7
  br label %47

28:                                               ; preds = %23
  %29 = load ptr, ptr %11, align 4
  %30 = tail call ptr @regmap_get_device(ptr noundef %29) #6
  %31 = load ptr, ptr %11, align 4
  %32 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 1, i32 noundef 0) #6
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.isl29028_clear_configure_reg, i32 noundef %32) #7
  %35 = getelementptr inbounds %struct.isl29028_chip, ptr %8, i32 0, i32 6
  store i32 0, ptr %35, align 4
  store i8 0, ptr %16, align 4
  br label %47

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.isl29028_chip, ptr %8, i32 0, i32 6
  store i32 0, ptr %37, align 4
  store i8 0, ptr %16, align 4
  %38 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 17
  store ptr @isl29028_info, ptr %38, align 8
  %39 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 13
  store ptr @isl29028_channels, ptr %39, align 8
  %40 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 14
  store i32 3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 15
  store ptr %1, ptr %41, align 8
  store i32 1, ptr %4, align 8
  tail call void @pm_runtime_enable(ptr noundef %3) #6
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %3, i32 noundef 2000) #6
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #6
  %42 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 2, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @__devm_iio_device_register(ptr noundef %43, ptr noundef nonnull %4, ptr noundef null) #6
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.isl29028_probe, i32 noundef %44) #7
  br label %47

47:                                               ; preds = %46, %36, %34, %27, %22, %13, %2
  %48 = phi i32 [ %14, %13 ], [ %20, %22 ], [ %25, %27 ], [ %44, %46 ], [ -12, %2 ], [ 0, %36 ], [ %32, %34 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29028_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  tail call void @iio_device_unregister(ptr noundef %3) #6
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #6
  %7 = tail call i32 @__pm_runtime_set_status(ptr noundef %6, i32 noundef 2) #6
  %8 = getelementptr inbounds %struct.isl29028_chip, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @regmap_get_device(ptr noundef %9) #6
  %11 = load ptr, ptr %8, align 4
  %12 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 1, i32 noundef 0) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.isl29028_clear_configure_reg, i32 noundef %12) #7
  br label %15

15:                                               ; preds = %14, %1
  %16 = getelementptr inbounds %struct.isl29028_chip, ptr %5, i32 0, i32 6
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.isl29028_chip, ptr %5, i32 0, i32 4
  store i8 0, ptr %17, align 4
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @isl29028_is_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = add i32 %1, -2
  %4 = icmp ult i32 %3, 9
  %5 = trunc i32 %3 to i9
  %6 = lshr i9 -63, %5
  %7 = and i9 %6, 1
  %8 = icmp ne i9 %7, 0
  %9 = select i1 %4, i1 %8, i1 false
  ret i1 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29028_read_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.isl29028_chip, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @regmap_get_device(ptr noundef %11) #6
  %13 = load ptr, ptr %10, align 4
  %14 = tail call ptr @regmap_get_device(ptr noundef %13) #6
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #6
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #6, !srcloc !9
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 0, i32 -1, ptr elementtype(i32) %18) #6, !srcloc !10
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %133, label %22

22:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  br label %133

23:                                               ; preds = %5
  tail call void @mutex_lock(ptr noundef %9) #6
  switch i32 %4, label %118 [
    i32 0, label %24
    i32 1, label %24
    i32 12, label %106
    i32 2, label %113
  ]

24:                                               ; preds = %23, %23
  %25 = load i32, ptr %1, align 4
  switch i32 %25, label %119 [
    i32 6, label %26
    i32 7, label %46
    i32 8, label %54
  ]

26:                                               ; preds = %24
  %27 = load ptr, ptr %10, align 4
  %28 = tail call ptr @regmap_get_device(ptr noundef %27) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !annotation !12
  %29 = tail call fastcc i32 @isl29028_set_als_ir_mode(ptr noundef %9, i32 noundef 1) #6
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.isl29028_als_get, i32 noundef %29) #7
  br label %44

32:                                               ; preds = %26
  %33 = call fastcc i32 @isl29028_read_als_ir(ptr noundef %9, ptr noundef nonnull %7) #6
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.isl29028_chip, ptr %9, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 125
  %39 = load i32, ptr %7, align 4
  %40 = select i1 %38, i32 31, i32 49
  %41 = select i1 %38, i32 1000, i32 100
  %42 = mul i32 %40, %39
  %43 = sdiv i32 %42, %41
  store i32 %43, ptr %2, align 4
  br label %44

44:                                               ; preds = %35, %32, %31
  %45 = phi i32 [ %29, %31 ], [ 0, %35 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  br label %103

46:                                               ; preds = %24
  %47 = load ptr, ptr %10, align 4
  %48 = tail call ptr @regmap_get_device(ptr noundef %47) #6
  %49 = tail call fastcc i32 @isl29028_set_als_ir_mode(ptr noundef %9, i32 noundef 2) #6
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.isl29028_ir_get, i32 noundef %49) #7
  br label %119

52:                                               ; preds = %46
  %53 = tail call fastcc i32 @isl29028_read_als_ir(ptr noundef %9, ptr noundef %2) #6
  br label %103

54:                                               ; preds = %24
  %55 = load ptr, ptr %10, align 4
  %56 = tail call ptr @regmap_get_device(ptr noundef %55) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !12
  %57 = getelementptr inbounds %struct.isl29028_chip, ptr %9, i32 0, i32 4
  %58 = load i8, ptr %57, align 4, !range !13
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %94

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.isl29028_chip, ptr %9, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.isl29028_chip, ptr %9, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = tail call fastcc i32 @isl29028_set_proxim_sampling(ptr noundef %9, i32 noundef %62, i32 noundef %64) #6
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %101, label %67

67:                                               ; preds = %60
  %68 = load ptr, ptr %10, align 4
  %69 = tail call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 1, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %101, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %61, align 4
  %73 = load i32, ptr %63, align 4
  switch i32 %72, label %101 [
    i32 1, label %74
    i32 2, label %76
    i32 5, label %78
    i32 10, label %80
    i32 13, label %82
    i32 20, label %84
    i32 80, label %86
    i32 100, label %88
  ]

74:                                               ; preds = %71
  %75 = icmp eq i32 %73, 250000
  br i1 %75, label %90, label %101

76:                                               ; preds = %71
  %77 = icmp eq i32 %73, 500000
  br i1 %77, label %90, label %101

78:                                               ; preds = %71
  %79 = icmp eq i32 %73, 0
  br i1 %79, label %90, label %101

80:                                               ; preds = %71
  %81 = icmp eq i32 %73, 0
  br i1 %81, label %90, label %101

82:                                               ; preds = %71
  %83 = icmp eq i32 %73, 300000
  br i1 %83, label %90, label %101

84:                                               ; preds = %71
  %85 = icmp eq i32 %73, 0
  br i1 %85, label %90, label %101

86:                                               ; preds = %71
  %87 = icmp eq i32 %73, 0
  br i1 %87, label %90, label %101

88:                                               ; preds = %71
  %89 = icmp eq i32 %73, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %88, %86, %84, %82, %80, %78, %76, %74
  %91 = phi i32 [ 7, %88 ], [ 6, %86 ], [ 5, %84 ], [ 4, %82 ], [ 3, %80 ], [ 2, %78 ], [ 1, %76 ], [ 0, %74 ]
  %92 = getelementptr [8 x %struct.isl29028_prox_data], ptr @isl29028_prox_data, i32 0, i32 %91, i32 2
  %93 = load i32, ptr %92, align 4
  tail call void @msleep(i32 noundef %93) #6
  store i8 1, ptr %57, align 4
  br label %94

94:                                               ; preds = %90, %54
  %95 = load ptr, ptr %10, align 4
  %96 = call i32 @regmap_read(ptr noundef %95, i32 noundef 8, ptr noundef nonnull %6) #6
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.isl29028_read_proxim, i32 noundef %96) #7
  br label %101

99:                                               ; preds = %94
  %100 = load i32, ptr %6, align 4
  store i32 %100, ptr %2, align 4
  br label %101

101:                                              ; preds = %99, %98, %88, %86, %84, %82, %80, %78, %76, %74, %71, %67, %60
  %102 = phi i32 [ %96, %98 ], [ 0, %99 ], [ -22, %88 ], [ -22, %86 ], [ -22, %84 ], [ -22, %82 ], [ -22, %80 ], [ -22, %78 ], [ -22, %76 ], [ -22, %74 ], [ -22, %71 ], [ %69, %67 ], [ %65, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %103

103:                                              ; preds = %101, %52, %44
  %104 = phi i32 [ %102, %101 ], [ %45, %44 ], [ %53, %52 ]
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %119, label %125

106:                                              ; preds = %23
  %107 = load i32, ptr %1, align 4
  %108 = icmp eq i32 %107, 8
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.isl29028_chip, ptr %9, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  store i32 %111, ptr %2, align 4
  %112 = getelementptr inbounds %struct.isl29028_chip, ptr %9, i32 0, i32 3
  br label %121

113:                                              ; preds = %23
  %114 = load i32, ptr %1, align 4
  %115 = icmp eq i32 %114, 6
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.isl29028_chip, ptr %9, i32 0, i32 5
  br label %121

118:                                              ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.isl29028_read_raw, i32 noundef %4) #7
  br label %119

119:                                              ; preds = %118, %113, %106, %103, %51, %24
  %120 = phi i32 [ -22, %106 ], [ -22, %113 ], [ -22, %118 ], [ %104, %103 ], [ %49, %51 ], [ -22, %24 ]
  call void @mutex_unlock(ptr noundef %9) #6
  br label %133

121:                                              ; preds = %116, %109
  %122 = phi ptr [ %112, %109 ], [ %117, %116 ]
  %123 = phi ptr [ %3, %109 ], [ %2, %116 ]
  %124 = load i32, ptr %122, align 4
  store i32 %124, ptr %123, align 4
  br label %125

125:                                              ; preds = %121, %103
  call void @mutex_unlock(ptr noundef %9) #6
  %126 = load ptr, ptr %10, align 4
  %127 = call ptr @regmap_get_device(ptr noundef %126) #6
  %128 = call i64 @ktime_get_mono_fast_ns() #6
  %129 = getelementptr inbounds %struct.device, ptr %127, i32 0, i32 11, i32 22
  store volatile i64 %128, ptr %129, align 8
  %130 = call i32 @__pm_runtime_suspend(ptr noundef %127, i32 noundef 13) #6
  %131 = icmp slt i32 %130, 0
  %132 = select i1 %131, i32 %130, i32 1
  br label %133

133:                                              ; preds = %125, %119, %22, %17
  %134 = phi i32 [ %132, %125 ], [ %120, %119 ], [ %15, %17 ], [ %15, %22 ]
  ret i32 %134
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29028_write_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.isl29028_chip, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @regmap_get_device(ptr noundef %9) #6
  %11 = load ptr, ptr %8, align 4
  %12 = tail call ptr @regmap_get_device(ptr noundef %11) #6
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #6
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #6, !srcloc !9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 0, i32 -1, ptr elementtype(i32) %16) #6, !srcloc !10
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %58, label %20

20:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  br label %58

21:                                               ; preds = %5
  tail call void @mutex_lock(ptr noundef %7) #6
  %22 = load i32, ptr %1, align 4
  switch i32 %22, label %46 [
    i32 8, label %23
    i32 6, label %30
  ]

23:                                               ; preds = %21
  %24 = icmp eq i32 %4, 12
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.isl29028_write_raw, i32 noundef %4) #7
  br label %47

26:                                               ; preds = %23
  %27 = add i32 %2, -101
  %28 = icmp ult i32 %27, -100
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.isl29028_write_raw, i32 noundef %2) #7
  br label %47

30:                                               ; preds = %21
  %31 = icmp eq i32 %4, 2
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.isl29028_write_raw, i32 noundef %4) #7
  br label %47

33:                                               ; preds = %30
  switch i32 %2, label %34 [
    i32 2000, label %35
    i32 125, label %35
  ]

34:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.isl29028_write_raw, i32 noundef %2) #7
  br label %47

35:                                               ; preds = %33, %33
  %36 = load ptr, ptr %8, align 4
  %37 = tail call ptr @regmap_get_device(ptr noundef %36) #6
  %38 = icmp eq i32 %2, 2000
  %39 = select i1 %38, i32 2, i32 0
  %40 = load ptr, ptr %8, align 4
  %41 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 1, i32 noundef 2, i32 noundef %39, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.isl29028_set_als_scale, i32 noundef %41) #7
  br label %47

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.isl29028_chip, ptr %7, i32 0, i32 5
  store i32 %2, ptr %45, align 4
  tail call void @mutex_unlock(ptr noundef %7) #6
  br label %52

46:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.isl29028_write_raw, i32 noundef %22) #7
  br label %47

47:                                               ; preds = %46, %43, %34, %32, %29, %25
  %48 = phi i32 [ %41, %43 ], [ -22, %29 ], [ -22, %25 ], [ -22, %34 ], [ -22, %32 ], [ -22, %46 ]
  tail call void @mutex_unlock(ptr noundef %7) #6
  br label %58

49:                                               ; preds = %26
  %50 = tail call fastcc i32 @isl29028_set_proxim_sampling(ptr noundef %7, i32 noundef %2, i32 noundef %3)
  tail call void @mutex_unlock(ptr noundef %7) #6
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49, %44
  %53 = load ptr, ptr %8, align 4
  %54 = tail call ptr @regmap_get_device(ptr noundef %53) #6
  %55 = tail call i64 @ktime_get_mono_fast_ns() #6
  %56 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 11, i32 22
  store volatile i64 %55, ptr %56, align 8
  %57 = tail call i32 @__pm_runtime_suspend(ptr noundef %54, i32 noundef 13) #6
  br label %58

58:                                               ; preds = %52, %49, %47, %20, %15
  %59 = phi i32 [ %50, %49 ], [ %57, %52 ], [ %48, %47 ], [ %13, %15 ], [ %13, %20 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @isl29028_set_als_ir_mode(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.isl29028_chip, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %40, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.isl29028_chip, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.isl29028_chip, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @regmap_get_device(ptr noundef %10) #6
  %12 = icmp eq i32 %8, 2000
  %13 = select i1 %12, i32 2, i32 0
  %14 = load ptr, ptr %9, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 1, i32 noundef 2, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.isl29028_set_als_scale, i32 noundef %15) #7
  br label %40

18:                                               ; preds = %6
  store i32 %8, ptr %7, align 4
  switch i32 %1, label %35 [
    i32 1, label %19
    i32 2, label %26
    i32 0, label %29
  ]

19:                                               ; preds = %18
  %20 = load ptr, ptr %9, align 4
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %9, align 4
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 1, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %32

26:                                               ; preds = %18
  %27 = load ptr, ptr %9, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %32

29:                                               ; preds = %18
  %30 = load ptr, ptr %9, align 4
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %40

32:                                               ; preds = %26, %23
  %33 = phi i32 [ %28, %26 ], [ %25, %23 ]
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32, %18
  %36 = load ptr, ptr %9, align 4
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 1, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @msleep(i32 noundef 100) #6
  store i32 %1, ptr %3, align 4
  br label %40

40:                                               ; preds = %39, %35, %32, %29, %19, %17, %2
  %41 = phi i32 [ 0, %39 ], [ %31, %29 ], [ 0, %2 ], [ %21, %19 ], [ %33, %32 ], [ %37, %35 ], [ %15, %17 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @isl29028_read_als_ir(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.isl29028_chip, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @regmap_get_device(ptr noundef %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !12
  %8 = load ptr, ptr %5, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 9, ptr noundef nonnull %3) #6
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.isl29028_read_als_ir, i32 noundef %9) #7
  br label %24

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 4
  %14 = call i32 @regmap_read(ptr noundef %13, i32 noundef 10, ptr noundef nonnull %4) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.isl29028_read_als_ir, i32 noundef %14) #7
  br label %24

17:                                               ; preds = %12
  %18 = load i32, ptr %4, align 4
  %19 = shl i32 %18, 8
  %20 = and i32 %19, 3840
  %21 = load i32, ptr %3, align 4
  %22 = and i32 %21, 255
  %23 = or i32 %20, %22
  store i32 %23, ptr %1, align 4
  br label %24

24:                                               ; preds = %17, %16, %11
  %25 = phi i32 [ %9, %11 ], [ %14, %16 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @isl29028_set_proxim_sampling(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.isl29028_chip, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @regmap_get_device(ptr noundef %5) #6
  switch i32 %1, label %32 [
    i32 1, label %7
    i32 2, label %9
    i32 5, label %11
    i32 10, label %13
    i32 13, label %15
    i32 20, label %17
    i32 80, label %19
    i32 100, label %21
  ]

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 250000
  br i1 %8, label %23, label %32

9:                                                ; preds = %3
  %10 = icmp eq i32 %2, 500000
  br i1 %10, label %23, label %32

11:                                               ; preds = %3
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %23, label %32

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %23, label %32

15:                                               ; preds = %3
  %16 = icmp eq i32 %2, 300000
  br i1 %16, label %23, label %32

17:                                               ; preds = %3
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %23, label %32

19:                                               ; preds = %3
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %23, label %32

21:                                               ; preds = %3
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %21, %19, %17, %15, %13, %11, %9, %7
  %24 = phi i32 [ 112, %21 ], [ 96, %19 ], [ 80, %17 ], [ 64, %15 ], [ 48, %13 ], [ 32, %11 ], [ 16, %9 ], [ 0, %7 ]
  %25 = load ptr, ptr %4, align 4
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 1, i32 noundef 112, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.isl29028_set_proxim_sampling, i32 noundef %26) #7
  br label %32

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.isl29028_chip, ptr %0, i32 0, i32 2
  store i32 %1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.isl29028_chip, ptr %0, i32 0, i32 3
  store i32 %2, ptr %31, align 4
  br label %32

32:                                               ; preds = %29, %28, %21, %19, %17, %15, %13, %11, %9, %7, %3
  %33 = phi i32 [ %26, %28 ], [ %26, %29 ], [ -22, %3 ], [ -22, %7 ], [ -22, %9 ], [ -22, %11 ], [ -22, %13 ], [ -22, %15 ], [ -22, %17 ], [ -22, %19 ], [ -22, %21 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl29028_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  tail call void @mutex_lock(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.isl29028_chip, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @regmap_get_device(ptr noundef %7) #6
  %9 = load ptr, ptr %6, align 4
  %10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 1, i32 noundef 0) #6
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.isl29028_clear_configure_reg, i32 noundef %10) #7
  br label %13

13:                                               ; preds = %12, %1
  %14 = getelementptr inbounds %struct.isl29028_chip, ptr %5, i32 0, i32 6
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.isl29028_chip, ptr %5, i32 0, i32 4
  store i8 0, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %5) #6
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @isl29028_resume(ptr nocapture noundef readnone %0) #5 {
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2148057615}
!9 = !{i64 556722, i64 2148046693, i64 2148046719, i64 2148046766, i64 2148046788, i64 2148046816, i64 2148046836}
!10 = !{i64 543291, i64 543316, i64 543338, i64 543354, i64 543366, i64 543386, i64 543410, i64 543426, i64 543438}
!11 = !{i64 2148057741}
!12 = !{!"auto-init"}
!13 = !{i8 0, i8 2}
