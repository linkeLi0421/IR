; ModuleID = '/llk/IR/drivers/iio/light/cm36651.c_pt.bc'
source_filename = "../drivers/iio/light/cm36651.c"
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
%struct.lock_class_key = type {}
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.73, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.73 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.cm36651_data = type { ptr, ptr, ptr, ptr, %struct.mutex, ptr, i32, [4 x i32], i32, [2 x i8], [4 x i8], [4 x i16] }

@cm36651_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cm36651\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@cm36651_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"capella,cm36651\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [43 x i8] c"author=Beomho Seo <beomho.seo@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [58 x i8] c"description=CM36651 proximity/ambient light sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@cm36651_driver = internal global %struct.i2c_driver { i32 0, ptr @cm36651_probe, ptr @cm36651_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cm36651_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @cm36651_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"cm36651\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vled\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"get regulator vled failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"enable regulator vled failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: new i2c device failed\0A\00", align 1
@__func__.cm36651_probe = private unnamed_addr constant [14 x i8] c"cm36651_probe\00", align 1
@cm36651_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"&cm36651->lock\00", align 1
@cm36651_channels = internal constant [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.73 zeroinitializer, i32 262145, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @cm36651_event_spec, i32 1, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 6, i32 0, i32 17, i32 0, i32 0, %struct.anon.73 zeroinitializer, i32 262145, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 1 }, %struct.iio_chan_spec { i32 6, i32 0, i32 18, i32 1, i32 0, %struct.anon.73 zeroinitializer, i32 262145, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 1 }, %struct.iio_chan_spec { i32 6, i32 0, i32 19, i32 2, i32 0, %struct.anon.73 zeroinitializer, i32 262145, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 1 }, %struct.iio_chan_spec { i32 6, i32 0, i32 16, i32 3, i32 0, %struct.anon.73 zeroinitializer, i32 262145, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 1 }], align 4
@cm36651_info = internal constant %struct.iio_info { ptr null, ptr @cm36651_attribute_group, ptr @cm36651_read_raw, ptr null, ptr null, ptr @cm36651_write_raw, ptr null, ptr null, ptr @cm36651_read_prox_event_config, ptr @cm36651_write_prox_event_config, ptr @cm36651_read_prox_thresh, ptr @cm36651_write_prox_thresh, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"%s: register setup failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"%s: request irq failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"%s: regist device failed\0A\00", align 1
@cm36651_event_spec = internal constant [1 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 0, i32 3, i32 0, i32 0, i32 0 }], align 4
@cm36651_attribute_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cm36651_attributes, ptr null }, align 4
@cm36651_attributes = internal global [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_illuminance_integration_time_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_proximity_integration_time_available, i64 4), ptr null], align 4
@iio_const_attr_in_illuminance_integration_time_available = internal global %struct.iio_const_attr { ptr @.str.9, %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @iio_read_const_attr, ptr null } }, align 4
@iio_const_attr_in_proximity_integration_time_available = internal global %struct.iio_const_attr { ptr @.str.11, %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @iio_read_const_attr, ptr null } }, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"0.08 0.16 0.32 0.64\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"in_illuminance_integration_time_available\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"0.000320 0.000420 0.000520 0.000640\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"in_proximity_integration_time_available\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"CM36651 set operation mode failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"CM36651 read output failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Already proximity event enable state\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Proximity enable event failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"Already proximity event disable state\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Write register failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Integration time write failed\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"CS integration time write failed\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"PS integration time write failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"PS threshold write failed: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"%s: Data read failed: %d\0A\00", align 1
@__func__.cm36651_irq_handler = private unnamed_addr constant [20 x i8] c"cm36651_irq_handler\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"%s: Data read wrong: %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"
@switch.table.cm36651_read_raw = private unnamed_addr constant [4 x i32] [i32 80000, i32 160000, i32 320000, i32 640000], align 4
@switch.table.cm36651_read_raw.25 = private unnamed_addr constant [4 x i32] [i32 320, i32 420, i32 520, i32 640], align 4

@__mod_i2c__cm36651_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @cm36651_id
@__mod_of__cm36651_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @cm36651_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @cm36651_driver) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @cm36651_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cm36651_probe(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = tail call ptr @devm_iio_device_alloc(ptr noundef %3, i32 noundef 80) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %105, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  %10 = getelementptr inbounds %struct.cm36651_data, ptr %8, i32 0, i32 5
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = ptrtoint ptr %9 to i32
  %14 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %13, ptr noundef nonnull @.str.2) #6
  br label %105

15:                                               ; preds = %6
  %16 = tail call i32 @regulator_enable(ptr noundef %9) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  br label %105

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %4, ptr %20, align 8
  %21 = getelementptr inbounds %struct.cm36651_data, ptr %8, i32 0, i32 1
  store ptr %0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = tail call ptr @i2c_new_dummy_device(ptr noundef %23, i16 noundef zeroext 25) #6
  %25 = getelementptr inbounds %struct.cm36651_data, ptr %8, i32 0, i32 2
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.cm36651_probe) #7
  %28 = load ptr, ptr %25, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %101

30:                                               ; preds = %19
  %31 = load ptr, ptr %22, align 8
  %32 = tail call ptr @i2c_new_dummy_device(ptr noundef %31, i16 noundef zeroext 12) #6
  %33 = getelementptr inbounds %struct.cm36651_data, ptr %8, i32 0, i32 3
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.cm36651_probe) #7
  %36 = load ptr, ptr %33, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %98

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.cm36651_data, ptr %8, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %39, ptr noundef nonnull @.str.5, ptr noundef nonnull @cm36651_probe.__key) #6
  %40 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 13
  store ptr @cm36651_channels, ptr %40, align 8
  %41 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 14
  store i32 5, ptr %41, align 4
  %42 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 17
  store ptr @cm36651_info, ptr %42, align 8
  %43 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 15
  store ptr %1, ptr %43, align 8
  store i32 1, ptr %4, align 8
  %44 = load ptr, ptr %21, align 4
  %45 = load ptr, ptr %25, align 4
  %46 = getelementptr %struct.cm36651_data, ptr %8, i32 0, i32 9
  store i8 4, ptr %46, align 4
  %47 = getelementptr %struct.cm36651_data, ptr %8, i32 0, i32 9, i32 1
  store i8 8, ptr %47, align 1
  %48 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 0, i8 noundef zeroext 4) #6
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %81, label %50

50:                                               ; preds = %38
  %51 = load i8, ptr %47, align 1
  %52 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 1, i8 noundef zeroext %51) #6
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %81, label %54

54:                                               ; preds = %50
  %55 = getelementptr %struct.cm36651_data, ptr %8, i32 0, i32 10
  store i8 16, ptr %55, align 2
  %56 = getelementptr %struct.cm36651_data, ptr %8, i32 0, i32 10, i32 1
  store i8 5, ptr %56, align 1
  %57 = getelementptr %struct.cm36651_data, ptr %8, i32 0, i32 10, i32 2
  store i8 0, ptr %57, align 2
  %58 = getelementptr %struct.cm36651_data, ptr %8, i32 0, i32 10, i32 3
  store i8 7, ptr %58, align 1
  %59 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 0, i8 noundef zeroext 16) #6
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %81, label %61

61:                                               ; preds = %54
  %62 = load i8, ptr %56, align 1
  %63 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 1, i8 noundef zeroext %62) #6
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %81, label %65

65:                                               ; preds = %61
  %66 = load i8, ptr %57, align 1
  %67 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 2, i8 noundef zeroext %66) #6
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %65
  %70 = load i8, ptr %58, align 1
  %71 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 3, i8 noundef zeroext %70) #6
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %25, align 4
  %78 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %77, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  %79 = tail call i32 @llvm.smin.i32(i32 %78, i32 0) #6
  %80 = icmp sgt i32 %78, -1
  br i1 %80, label %83, label %81

81:                                               ; preds = %76, %73, %69, %65, %61, %54, %50, %38
  %82 = phi i32 [ %79, %76 ], [ %52, %50 ], [ %48, %38 ], [ %71, %69 ], [ %67, %65 ], [ %63, %61 ], [ %59, %54 ], [ %74, %73 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cm36651_probe) #7
  br label %95

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = tail call i32 @request_threaded_irq(i32 noundef %85, ptr noundef null, ptr noundef nonnull @cm36651_irq_handler, i32 noundef 8194, ptr noundef nonnull @.str, ptr noundef nonnull %4) #6
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.cm36651_probe) #7
  br label %95

89:                                               ; preds = %83
  %90 = tail call i32 @__iio_device_register(ptr noundef nonnull %4, ptr noundef nonnull @__this_module) #6
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %89
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cm36651_probe) #7
  %93 = load i32, ptr %84, align 4
  %94 = tail call ptr @free_irq(i32 noundef %93, ptr noundef nonnull %4) #6
  br label %95

95:                                               ; preds = %92, %88, %81
  %96 = phi i32 [ %82, %81 ], [ %86, %88 ], [ %90, %92 ]
  %97 = load ptr, ptr %33, align 4
  tail call void @i2c_unregister_device(ptr noundef %97) #6
  br label %98

98:                                               ; preds = %95, %35
  %99 = phi i32 [ %37, %35 ], [ %96, %95 ]
  %100 = load ptr, ptr %25, align 4
  tail call void @i2c_unregister_device(ptr noundef %100) #6
  br label %101

101:                                              ; preds = %98, %27
  %102 = phi i32 [ %29, %27 ], [ %99, %98 ]
  %103 = load ptr, ptr %10, align 4
  %104 = tail call i32 @regulator_disable(ptr noundef %103) #6
  br label %105

105:                                              ; preds = %101, %89, %18, %12, %2
  %106 = phi i32 [ %14, %12 ], [ %16, %18 ], [ %102, %101 ], [ -12, %2 ], [ 0, %89 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cm36651_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  tail call void @iio_device_unregister(ptr noundef %3) #6
  %6 = getelementptr inbounds %struct.cm36651_data, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regulator_disable(ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %3) #6
  %12 = getelementptr inbounds %struct.cm36651_data, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void @i2c_unregister_device(ptr noundef %13) #6
  %14 = getelementptr inbounds %struct.cm36651_data, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void @i2c_unregister_device(ptr noundef %15) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cm36651_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.cm36651_data, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cm36651_data, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @i2c_smbus_read_byte(ptr noundef %8) #6
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.cm36651_irq_handler, i32 noundef %9) #7
  br label %24

13:                                               ; preds = %2
  switch i32 %9, label %15 [
    i32 50, label %17
    i32 51, label %14
  ]

14:                                               ; preds = %13
  br label %17

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.cm36651_irq_handler, i32 noundef %9) #7
  br label %24

17:                                               ; preds = %14, %13
  %18 = phi i32 [ 2, %14 ], [ 1, %13 ]
  %19 = zext i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 48
  %21 = or i64 %20, 34359738369
  %22 = tail call i64 @iio_get_time_ns(ptr noundef %1) #6
  %23 = tail call i32 @iio_push_event(ptr noundef %1, i64 noundef %21, i64 noundef %22) #6
  br label %24

24:                                               ; preds = %17, %15, %11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cm36651_read_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cm36651_data, ptr %7, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %8) #6
  switch i32 %4, label %69 [
    i32 0, label %9
    i32 18, label %48
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cm36651_data, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %1, align 4
  switch i32 %12, label %69 [
    i32 6, label %14
    i32 8, label %13
  ]

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i32 [ 1, %13 ], [ 0, %9 ]
  %16 = tail call fastcc i32 @cm36651_set_operation_mode(ptr noundef %7, i32 noundef %15) #6
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %14
  tail call void @msleep(i32 noundef 50) #6
  %19 = load ptr, ptr %10, align 4
  %20 = load i32, ptr %1, align 4
  switch i32 %20, label %44 [
    i32 6, label %21
    i32 8, label %30
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = trunc i32 %23 to i8
  %25 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %19, i8 noundef zeroext %24) #6
  store i32 %25, ptr %2, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %21
  %28 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %44, label %69

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.cm36651_data, ptr %7, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @i2c_smbus_read_byte(ptr noundef %32) #6
  store i32 %33, ptr %2, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.cm36651_data, ptr %7, i32 0, i32 6
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %35
  %41 = load ptr, ptr %31, align 4
  %42 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %40, %30, %27, %21, %18, %14
  %45 = phi ptr [ @.str.13, %14 ], [ @.str.14, %40 ], [ @.str.14, %30 ], [ @.str.14, %27 ], [ @.str.14, %21 ], [ @.str.14, %18 ]
  %46 = phi i32 [ %16, %14 ], [ %42, %40 ], [ -22, %30 ], [ %28, %27 ], [ -22, %21 ], [ -22, %18 ]
  %47 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull %45) #7
  br label %69

48:                                               ; preds = %5
  store i32 0, ptr %2, align 4
  %49 = load i32, ptr %1, align 4
  switch i32 %49, label %69 [
    i32 6, label %50
    i32 8, label %57
  ]

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr %struct.cm36651_data, ptr %7, i32 0, i32 7, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 26) #6
  %56 = icmp ult i32 %55, 4
  br i1 %56, label %62, label %69

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.cm36651_data, ptr %7, i32 0, i32 8
  %59 = load i32, ptr %58, align 4
  %60 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 28) #6
  %61 = icmp ult i32 %60, 4
  br i1 %61, label %64, label %69

62:                                               ; preds = %50
  %63 = getelementptr inbounds [4 x i32], ptr @switch.table.cm36651_read_raw, i32 0, i32 %55
  br label %66

64:                                               ; preds = %57
  %65 = getelementptr inbounds [4 x i32], ptr @switch.table.cm36651_read_raw.25, i32 0, i32 %60
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi ptr [ %65, %64 ], [ %63, %62 ]
  %68 = load i32, ptr %67, align 4
  store i32 %68, ptr %3, align 4
  br label %69

69:                                               ; preds = %66, %57, %50, %48, %44, %40, %35, %27, %9, %5
  %70 = phi i32 [ -22, %5 ], [ -22, %9 ], [ 1, %27 ], [ 1, %40 ], [ 1, %35 ], [ %46, %44 ], [ -22, %50 ], [ -22, %57 ], [ -22, %48 ], [ 2, %66 ]
  tail call void @mutex_unlock(ptr noundef %8) #6
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cm36651_write_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cm36651_data, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq i32 %4, 18
  br i1 %10, label %11, label %49

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.cm36651_data, ptr %7, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %1, align 4
  switch i32 %14, label %46 [
    i32 6, label %15
    i32 8, label %31
  ]

15:                                               ; preds = %11
  switch i32 %3, label %46 [
    i32 80000, label %19
    i32 160000, label %16
    i32 320000, label %17
    i32 640000, label %18
  ]

16:                                               ; preds = %15
  br label %19

17:                                               ; preds = %15
  br label %19

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18, %17, %16, %15
  %20 = phi i32 [ 64, %16 ], [ 128, %17 ], [ 192, %18 ], [ 0, %15 ]
  %21 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 1
  %24 = lshr i32 %20, %23
  %25 = trunc i32 %24 to i8
  %26 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 6, i8 noundef zeroext %25) #6
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %19
  %29 = load i32, ptr %21, align 4
  %30 = getelementptr %struct.cm36651_data, ptr %7, i32 0, i32 7, i32 %29
  store i32 %20, ptr %30, align 4
  br label %49

31:                                               ; preds = %11
  switch i32 %3, label %46 [
    i32 320, label %35
    i32 420, label %32
    i32 520, label %33
    i32 640, label %34
  ]

32:                                               ; preds = %31
  br label %35

33:                                               ; preds = %31
  br label %35

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34, %33, %32, %31
  %36 = phi i32 [ 16, %32 ], [ 32, %33 ], [ 48, %34 ], [ 0, %31 ]
  %37 = trunc i32 %36 to i8
  %38 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 0, i8 noundef zeroext %37) #6
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.cm36651_data, ptr %7, i32 0, i32 8
  store i32 %36, ptr %41, align 4
  br label %49

42:                                               ; preds = %35, %19
  %43 = phi ptr [ @.str.20, %19 ], [ @.str.21, %35 ]
  %44 = phi i32 [ %26, %19 ], [ %38, %35 ]
  %45 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull %43) #7
  br label %46

46:                                               ; preds = %42, %31, %15, %11
  %47 = phi i32 [ -22, %11 ], [ -22, %31 ], [ -22, %15 ], [ %44, %42 ]
  %48 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.19) #7
  br label %49

49:                                               ; preds = %46, %40, %28, %5
  %50 = phi i32 [ %47, %46 ], [ -22, %5 ], [ %38, %40 ], [ %26, %28 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cm36651_read_prox_event_config(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.cm36651_data, ptr %6, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.cm36651_data, ptr %6, i32 0, i32 6
  %9 = load volatile i32, ptr %8, align 4
  %10 = lshr i32 %9, 2
  %11 = and i32 %10, 1
  tail call void @mutex_unlock(ptr noundef %7) #6
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cm36651_write_prox_event_config(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cm36651_data, ptr %7, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %8) #6
  %9 = icmp eq i32 %4, 0
  %10 = select i1 %9, i32 3, i32 2
  %11 = tail call fastcc i32 @cm36651_set_operation_mode(ptr noundef %7, i32 noundef %10)
  tail call void @mutex_unlock(ptr noundef %8) #6
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cm36651_read_prox_thresh(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef readnone %6) #4 {
  %8 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr %struct.cm36651_data, ptr %9, i32 0, i32 10, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  store i32 %12, ptr %5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cm36651_write_prox_thresh(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #2 {
  %8 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.cm36651_data, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = add i32 %5, -256
  %13 = icmp ult i32 %12, -253
  br i1 %13, label %23, label %14

14:                                               ; preds = %7
  %15 = trunc i32 %5 to i8
  %16 = getelementptr %struct.cm36651_data, ptr %9, i32 0, i32 10, i32 1
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.cm36651_data, ptr %9, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 1, i8 noundef zeroext %15) #6
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.22, i32 noundef %19) #7
  br label %23

23:                                               ; preds = %21, %14, %7
  %24 = phi i32 [ %19, %21 ], [ -22, %7 ], [ 0, %14 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cm36651_set_operation_mode(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cm36651_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cm36651_data, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  switch i32 %1, label %38 [
    i32 0, label %7
    i32 1, label %11
    i32 2, label %20
    i32 3, label %28
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cm36651_data, ptr %0, i32 0, i32 9
  %9 = load i8, ptr %8, align 4
  %10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext %9) #6
  br label %35

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.cm36651_data, ptr %0, i32 0, i32 6
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.cm36651_data, ptr %0, i32 0, i32 10
  %18 = load i8, ptr %17, align 2
  %19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext %18) #6
  br label %35

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.cm36651_data, ptr %0, i32 0, i32 6
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  tail call void @_set_bit(i32 noundef 2, ptr noundef %21) #6
  %26 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext 22) #6
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %38, label %42

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.cm36651_data, ptr %0, i32 0, i32 6
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %29) #6
  %34 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  br label %35

35:                                               ; preds = %33, %16, %7
  %36 = phi i32 [ %34, %33 ], [ %19, %16 ], [ %10, %7 ]
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35, %28, %25, %20, %2
  %39 = phi ptr [ @.str.15, %20 ], [ @.str.16, %25 ], [ @.str.17, %28 ], [ @.str.18, %2 ], [ @.str.18, %35 ]
  %40 = phi i32 [ -22, %20 ], [ %26, %25 ], [ -22, %28 ], [ -22, %2 ], [ %36, %35 ]
  %41 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull %39) #7
  br label %42

42:                                               ; preds = %38, %35, %25, %11
  %43 = phi i32 [ 2, %11 ], [ %36, %35 ], [ %26, %25 ], [ %40, %38 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
